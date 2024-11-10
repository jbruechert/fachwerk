-- mods/fachwerk/init.lua
-- ======================
-- See README.md for licensing and other information.

fachwerk = {}

local modpath = minetest.get_modpath("fachwerk")

dofile(modpath .."/api.lua")
if minetest.get_modpath("default") then
    dofile(modpath .. "/default_nodes.lua")
end
