-- Richman Villa: 26.074, -1398.979, -75.0
exports("GetMansion2", function()
    return Mansion2
end)

Mansion2 = {
    interiorId = 302593,

    Ipl = {
        Exterior = {
            ipl = {
                "hei_ch1_06e_mansion_shared",
                "hei_ch1_06f_mansion_shared",
                "m25_2_ch1_06e_mansion_interior_a",
                "m25_2_ch1_06e_mansion_interior_b",
                "m25_2_ch1_06e_mansion_interior_c",
                "hei_ch1_06e_mansion_private",
                "hei_ch1_06e_mansion_furniture",
                "hei_ch1_06e_mansion_firepit",
                "hei_ch1_06e_mansion_railings_p"
            },

            Load = function()
                EnableIpl(Mansion2.Ipl.Exterior.ipl, true)
            end,
            Remove = function()
                EnableIpl(Mansion2.Ipl.Exterior.ipl, false)
            end
        }
    },

    Style = {
        cali = "set_style_cali",
        loft = "set_style_loft",
        holly = "set_style_holly",

        Set = function(style, refresh)
            Mansion2.Style.Clear(refresh)

            SetIplPropState(Mansion2.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(Mansion2.interiorId, Mansion2.Style.default, false, refresh)
        end
    },

    LoadDefault = function()
        -- Exterior
        Mansion2.Ipl.Exterior.Load()

        -- Interior
        Mansion2.Style.Set(Mansion2.Style.cali, false)

        RefreshInterior(Mansion2.interiorId)
    end
}