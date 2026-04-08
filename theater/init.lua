local S = core.get_translator("theater")

-- BOX (juste pour sélection/collision)
local cinema_box = {
    type = "fixed",
    fixed = {-2.3, -1.15, -0.1, 2.3, 1.7, 0.1}
}
-- Écran éteint
minetest.register_node("theater:cinema_screen_off", {
    description = S("Écran de cinéma (éteint)"),
    drawtype = "mesh",
    mesh = "theater.obj",

    tiles = {"cinema_off.png"},

    paramtype = "light",
    paramtype2 = "facedir",

    selection_box = cinema_box,
    collision_box = cinema_box,

    groups = {cracky=3, oddly_breakable_by_hand=3},

    on_rightclick = function(pos, node, clicker)
        minetest.set_node(pos, {name="theater:cinema_screen_on"})
    end
})

-- Écran allumé (animation propre, 1 seule surface)
minetest.register_node("theater:cinema_screen_on", {
    description = S("Écran de cinéma (allumé)"),
    drawtype = "mesh",
    mesh = "theater.obj",

    tiles = {{
        name = "frame_002.png",
        animation = {
            type = "vertical_frames",
            aspect_w = 100,
            aspect_h = 56,
            length = 20.0
        }
    }},

    paramtype = "light",
    paramtype2 = "facedir",

    light_source = 8,

    selection_box = cinema_box,
    collision_box = cinema_box,

    groups = {cracky=3, oddly_breakable_by_hand=3},

    on_rightclick = function(pos, node, clicker)
        minetest.set_node(pos, {name="theater:cinema_screen_off"})
    end
})