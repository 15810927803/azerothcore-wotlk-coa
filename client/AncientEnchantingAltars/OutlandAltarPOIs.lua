local markers = {
    {"mystic-altar-netherstorm", "紫罗兰塔顶", 2232.94, 2254.14, 134.892},
    {"mystic-altar-terokkar", "法力陵墓上方的阳台", -3211.93, 5093.37, -74.7549},
    {"mystic-altar-nagrand", "奥舒冈深处", -2720.4, 8331.78, -80.7903},
}

local function RegisterMarkers()
    if not DB_MapPOI or not DB_MapPOI.CreatePOI then return end
    for _, marker in ipairs(markers) do
        DB_MapPOI.CreatePOI(marker[1], ANCIENT_ENCHANTING_ALTAR or "远古附魔祭坛",
            marker[2], marker[3], marker[4], marker[5], Enum.POIType.Townsfolk,
            EnumUtil.CombineMasks(Enum.POIFlags.ShowOnMinimap, Enum.POIFlags.HasTooltip),
            188, 1.5, nil, 530)
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent", RegisterMarkers)
