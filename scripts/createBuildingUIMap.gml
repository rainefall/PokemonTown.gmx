///createBuildingUIMap()
mp = json_decode('
{
    "sel": {
        "x":480,
        "y":270,
        "scale":0,
        "angle":0
    },
    "options":[
        "move",
        "delete",
        "return"
    ],
    "option_s":""
}
');

// you can't delete the town hall, you bloody idiot
if data[? "id"] == "townHall"
    ds_list_delete(mp[? "options"], ds_list_find_index(mp[? "options"],"delete"));

return mp;
