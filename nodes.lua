--							Node id			texturedescription 			crafting recepie
--							fachwerk_		Timber-framed ...			

fachwerk.register_fachwerk( "clay", 		"default_clay.png",			"clay",			"default:clay" );
fachwerk.register_fachwerk( "brick",  		"default_brick.png",		"bricks",		"default:brick" );
fachwerk.register_fachwerk( "stone_brick",	"default_stone_brick.png",	"stone bricks",	"default:stonebrick" );

fachwerk.register_fachwerk( "cobble",		"default_cobble.png",		"cobble",		"default:cobble" );
fachwerk.register_fachwerk( "stone",		"default_stone.png",		"stone", 		"default:stone" );

fachwerk.register_fachwerk( "stone",		"default_stone.png",		"stone", 		"default:stone" );

-- optional fachwerk types you can enable if you like
--[[

fachwerk.register_fachwerk( "desert_stone","default_desert_stone.png","desert stone", "default:desert_stone" );
fachwerk.register_fachwerk( "white",       "wool_white.png",          "white",        "wool:white" );
fachwerk.register_fachwerk( "grey",        "wool_grey.png",           "grey",         "wool:grey" );
fachwerk.register_fachwerk( "yellow",      "wool_yellow.png",         "yellow",       "wool:yellow" );
fachwerk.register_fachwerk( "wood",        "default_wood.png",        "wood",         "default:wood" );
fachwerk.register_fachwerk( "junglewood",  "default_junglewood.png",  "junglewood",   "default:junglewood" );
   ]]

--nodes wich are not supported by the api

minetest.register_node("fachwerk:framed_glass", {
	description = "Timber-framed Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"fachwerk_blank.png", "fachwerk_blank.png^default_glass_detail.png"},
	inventory_image = minetest.inventorycube("fachwerk_blank.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3,oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})
