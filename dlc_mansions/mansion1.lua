-- The Vinewood Residence: 26.074, -1398.979, -75.0
exports("GetMansion1", function()
    return Mansion1
end)

Mansion1 = {
    interiorId = 304385,

    Ipl = {
        Exterior = {
            ipl = {
                "m25_2_ch2_04_mansion_interior_a",
                "m25_2_ch2_04_mansion_interior_b",
                "m25_2_ch2_04_mansion_interior_c",
                "apa_ch2_04_mansion_shared",
                "apa_ch2_04_mansion_private",
                "apa_ch2_04_mansion_furniture",
                "apa_ch2_04_mansion_firepit",
                "apa_ch2_04_mansion_railings_p"
            },

            Load = function()
                EnableIpl(Mansion1.Ipl.Exterior.ipl, true)
            end,
            Remove = function()
                EnableIpl(Mansion1.Ipl.Exterior.ipl, false)
            end
        }
    },

    Style = {
        cali = "set_style_cali",
        loft = "set_style_loft",
        holly = "set_style_holly",

        Set = function(style, refresh)
            Mansion1.Style.Clear(refresh)

            SetIplPropState(Mansion1.interiorId, style, true, refresh)
        end,
        Clear = function(refresh)
            SetIplPropState(Mansion1.interiorId, Mansion1.Style.default, false, refresh)
        end
    },

    LoadDefault = function()
        -- Exterior
        Mansion1.Ipl.Exterior.Load()

        -- Interior
        Mansion1.Style.Set(Mansion1.Style.cali, false)

        RefreshInterior(Mansion1.interiorId)
    end
}