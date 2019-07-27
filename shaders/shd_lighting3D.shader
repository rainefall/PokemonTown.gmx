//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vFragPos;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
    v_vFragPos = object_space_pos.xyz;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vFragPos;

uniform float pixelH;
uniform float pixelW;

uniform vec3 lightDirection;

uniform int depth;

uniform sampler2D normalMap;

void main()
{
    float ambientStrength = 0.1;
    vec3 amb = ambientStrength * vec3(1.0,1.0,1.0);
    
    vec4 objectColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );

    vec2 offsetx;
    offsetx.x = pixelW;
    vec2 offsety;
    offsety.y = pixelH;

    vec3 normal = vec3(0.0,0.0,1.0);
    
    /*
    if (texture2D(gm_BaseTexture, v_vTexcoord + offsetx).a < 0.5) {
        normal.x += 1.0;
    }
    if (texture2D(gm_BaseTexture, v_vTexcoord - offsetx).a < 0.5) {
        normal.x -= 1.0;
    }
    if (texture2D(gm_BaseTexture, v_vTexcoord + offsety).a < 0.5) {
        normal.y += 1.0;
    }
    if (texture2D(gm_BaseTexture, v_vTexcoord - offsety).a < 0.5) {
        normal.y -= 1.0;
    }
    */
    vec3 normalm = texture2D(normalMap, v_vTexcoord).rgb * 2.0 - 1.0;
    
    vec3 norm = normalize(normal);
    vec3 lightDir = normalize(-lightDirection);
    
    float diffStrength = max(dot(norm, lightDir), 0.0);
    vec3 diffColor = diffStrength * vec3(0.9,0.9,0.9);
        
    vec3 result = (diffColor + amb) * objectColor.xyz;
    
    gl_FragColor = vec4(result, objectColor.a);
}

