-- mods/fachwerk/nodes.lua
-- =======================
-- See README.md for licensing and other information.

-- Optional fachwerk types you can enable if you like
-- Registers desert stone, white, grey and yellow wool, wood and junglewood
local additional_fachwerk_types = false

-- fachwerk.register_fachwerk(basename, texture, description, craft_from)
fachwerk.register_fachwerk("clay", "default_clay.png", "Clay", "default:clay")
fachwerk.register_fachwerk("brick", "default_brick.png", "Bricks", "default:brick")
fachwerk.register_fachwerk("stone_brick", "default_stone_brick.png", "Stone Brick", "default:stonebrick")
fachwerk.register_fachwerk("cobble", "default_cobble.png", "Cobble", "default:cobble")
fachwerk.register_fachwerk("stone", "default_stone.png", "Stone", "default:stone")

if additional_fachwerk_types == true then
	fachwerk.register_fachwerk("desert_stone", "default_desert_stone.png", "Desert Stone", "default:desert_stone")
	fachwerk.register_fachwerk("white", "wool_white.png", "White Wool", "wool:white")
	fachwerk.register_fachwerk("grey", "wool_grey.png", "Grey Wool", "wool:grey")
	fachwerk.register_fachwerk("yellow", "wool_yellow.png", "Yellow Wool", "wool:yellow")
	fachwerk.register_fachwerk("wood", "default_wood.png", "Wood", "default:wood")
	fachwerk.register_fachwerk("junglewood", "default_junglewood.png", "Junglewood", "default:junglewood")
end

--
-- Special Nodes (these are not supported by the API)
--

minetest.register_node("fachwerk:framed_glass", {
	description = "Timber-framed Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"fachwerk_blank.png^default_glass_detail.png", "default_glass_detail.png"},
	inventory_image = minetest.inventorycube("fachwerk_blank.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3,oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})
