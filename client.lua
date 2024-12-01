local QBCore = exports['qb-core']:GetCoreObject()

-- Çarpışmaları tamamen devre dışı bırakma
CreateThread(function()
    while true do
        local ped = PlayerPedId() -- Oyuncunun ped'i (karakteri)
        local pedCoords = GetEntityCoords(ped) -- Oyuncunun koordinatları
        local vehicles = GetVehiclesInArea(pedCoords, 10.0) -- Oyuncu etrafındaki araçları tespit et

        -- Oyuncunun etkileşimde olduğu araçlarla çarpışmayı devre dışı bırak
        for _, vehicle in ipairs(vehicles) do
            SetEntityNoCollisionEntity(ped, vehicle, true) -- Oyuncu ve araç arasındaki çarpışmayı devre dışı bırak
        end

        -- Oyuncu bir araç tarafından hasar aldıysa
        if HasEntityBeenDamagedByAnyVehicle(ped) then
            -- Çarpma etkilerini tamamen devre dışı bırak
            ClearPedTasksImmediately(ped) -- Oyuncunun animasyonlarını sıfırla
            SetEntityHealth(ped, GetEntityMaxHealth(ped)) -- Sağlığı maksimumda tut
            ClearEntityLastDamageEntity(ped) -- Hasar geçmişini sıfırla
        end

        Citizen.Wait(0) -- Performans için döngüyü her kare çalıştırır
    end
end)

-- Bir alan içerisindeki tüm araçları döndürür
function GetVehiclesInArea(coords, radius)
    local vehicles = {}
    local handle, veh = FindFirstVehicle()
    local success

    repeat
        local vehCoords = GetEntityCoords(veh)
        if #(coords - vehCoords) <= radius then
            table.insert(vehicles, veh)
        end
        success, veh = FindNextVehicle(handle)
    until not success

    EndFindVehicle(handle)
    return vehicles
end
