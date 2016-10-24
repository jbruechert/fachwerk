-- mods/fachwerk/api.lua
-- =====================
-- See README.md for licensing and other information.

function fachwerk.register_fachwerk(basename, texture, description, craft_from)
	local group_def = {choppy = 2, oddly_breakable_by_hand = 2, cracky = 3}

	minetest.register_node("fachwerk:" .. basename, {
		description = "Timber-framed " .. description,
		tiles = {texture .. "^fachwerk_blank.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		groups = group_def,
		sounds = default.node_sound_stone_defaults()
	})

	minetest.register_node("fachwerk:" .. basename .. "_1", {
		description = "Timber-framed " .. description .. " Oblique Beam 1",
		tile_images = {
			texture .. "^fachwerk_blank.png", -- top
			texture .. "^fachwerk_blank.png", -- bottom
			texture .. "^fachwerk_beam_1.png",
			texture .. "^fachwerk_beam_1.png^[transformFX",
			texture .. "^fachwerk_beam_1.png^[transformFX",
			texture .. "^fachwerk_beam_1.png"
		},
		paramtype = "light",
		paramtype2 = "facedir",
		groups = group_def,
		sounds = default.node_sound_stone_defaults()
	})

	-- TODO: is this one really needed? the node above covers most of that already
	minetest.register_node("fachwerk:" .. basename .. "_2", {
		description = "Timber-framed " .. description .. " Oblique Beam 2",
		tiles = {
			texture .. "^fachwerk_blank.png", -- top
			texture .. "^fachwerk_blank.png", -- bottom
			texture .. "^fachwerk_beam_2.png",
			texture .. "^fachwerk_beam_2.png^[transformFX",
			texture .. "^fachwerk_beam_2.png^[transformFX",
			texture .. "^fachwerk_beam_2.png"
		},
		paramtype = "light",
		paramtype2 = "facedir",
		groups = group_def,
		sounds = default.node_sound_stone_defaults()
	})

	minetest.register_node("fachwerk:" .. basename .. "_cross", {
		description = "Timber-framed " .. description .. " Cross",
		tiles = {texture .. "^fachwerk_cross.png"},
		groups = group_def,
		sounds = default.node_sound_stone_defaults()
	})

	--
	-- Crafting
	--

	-- yields 8, after all we did add a lot of wood
	minetest.register_craft({
		output = "fachwerk:" .. basename .. " 8",
		recipe = {
			{"group:wood", "group:wood", "group:wood"},
			{"group:wood", craft_from, "group:wood"},
			{"group:wood", "group:wood", "group:wood"}
		}
	})

	minetest.register_craft({
		output = "fachwerk:" .. basename .. "_cross 8",
		recipe = {
			{"group:wood", craft_from, "group:wood"},
			{craft_from, "group:wood", craft_from},
			{"group:wood", craft_from, "group:wood"}
		}
	})

	minetest.register_craft({
		output = "fachwerk:" .. basename .. "_1 8",
		recipe = {
			{craft_from, "group:wood", craft_from},
			{craft_from, craft_from, craft_from},
			{"group:wood", craft_from, craft_from}
		}
	})

	minetest.register_craft({
		output = "fachwerk:" .. basename .. "_2 8",
		recipe = {
			{craft_from, craft_from, "group:wood"},
			{craft_from, craft_from, craft_from },
			{craft_from, "group:wood", craft_from}
		}
	})
end
