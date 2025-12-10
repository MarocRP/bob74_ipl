-- The Tongva Estate: 26.074, -1398.979, -75.0
exports("GetMansion3", function()
    return Mansion3
end)

Mansion3 = {
    interiorId = 303617,

    Ipl = {
        Exterior = {
            ipl = {
                "hei_ch1_09_mansion_shared",
                "m25_2_ch1_09_mansion_interior_a",
                "m25_2_ch1_09_mansion_interior_b",
                "m25_2_ch1_09_mansion_interior_c",
                "hei_ch1_09_mansion_private",
                "hei_ch1_09_mansion_furniture",
                "hei_ch1_09_mansion_firepit",
                "hei_ch1_09_mansion_railings_p"
            },

            Load = function()
                EnableIpl(Mansion3.Ipl.Exterior.ipl, true)
            end,
            Remove = function()
                EnableIpl(Mansion3.Ipl.Exterior.ipl, false)
            end
        }
    },

    Style = {
        cali = "set_style_cali",
        loft = "set_style_loft",
        holly = "set_style_holly",

        Set = function(style, refresh)
            Mansion3.Style.Clear(refresh)

            SetIplPropState(Mansion3.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(Mansion3.interiorId, Mansion3.Style.default, false, refresh)
        end
    },

    LoadDefault = function()
        -- Exterior
        Mansion3.Ipl.Exterior.Load()

        -- Interior
        Mansion3.Style.Set(Mansion3.Style.cali, false)

        RefreshInterior(Mansion3.interiorId)
    end
}