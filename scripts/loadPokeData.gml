// AI STYLES
// 0: basic
// 1: rampage
// 2: assassin
// 3: smart
// 4: turret

return json_decode("
{
    'geodude':{
        'type':'rock',
        'hp':40,
        'damage':8,
        'speed':1,
        'ai':'rampage',
        'startlvl':0
    },
    'graveler':{
        'type':'rock',
        'hp':55,
        'damage':9.5,
        'speed':1,
        'ai':'rampage',
        'startlvl':5
    },
    'golem':{
        'type':'rock',
        'hp':80,
        'damage':12,
        'speed':1,
        'ai':'rampage',
        'startlvl':10
    }
}
");
