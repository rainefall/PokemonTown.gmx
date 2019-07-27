///createBuildingUIMap()
mp = json_decode('
{
    "sel": {
        "x":480,
        "y":270,
        "scale":0,
        "angle":0
    },
    "options":{
        "root":[
            "mode",
            "home",
            "return",
            "target"
        ],
        "mode":[
            "auto",
            "sentry",
            "manual"
        ]
    },
    "option_s":"",
    "men":"root"
}
');

if mode == mode_auto {
    var options = mp[? "options"];
    ds_list_delete(options[? "root"], ds_list_find_index(options[? "root"], "target"));
    ds_list_delete(options[? "root"], ds_list_find_index(options[? "root"], "home"));
}

return mp;
