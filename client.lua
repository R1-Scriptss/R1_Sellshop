local spawnedNPCs = {}

CreateThread(function()
    for zone, data in pairs(Config.SellZones) do
        local npc = data.npc
        RequestModel(npc.model)
        while not HasModelLoaded(npc.model) do Wait(0) end

        local ped = CreatePed(0, npc.model, npc.coords.x, npc.coords.y, npc.coords.z, npc.coords.w, false, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        table.insert(spawnedNPCs, ped)

        exports.ox_target:addLocalEntity(ped, {
            {
                name = 'sell_items_' .. zone,
                icon = 'fas fa-hand-holding-usd',
                label = 'Sell Shop',
                onSelect = function()
                    openSellMenu(zone)
                end
            }
        })
    end
end)

function openSellMenu(zoneKey)
    local data = Config.SellZones[zoneKey]
    if not data then return end

    local options = {}

    for item, info in pairs(data.items) do
        local count = exports.ox_inventory:Search('count', item)

        table.insert(options, {
            title = ("%s"):format(info.label),
            description = "Ammout: " .. count,
            icon = "box",
            disabled = count <= 0,
            onSelect = function()
                if count > 0 then
                    openAmountInput(zoneKey, item)
                else
                    lib.notify({
                        type = 'error',
                        title = 'Error',
                        description = 'You have no "' .. info.label .. '" for sale.'
                    })
                end
            end
        })
    end

    lib.registerContext({
        id = 'sell_menu_' .. zoneKey,
        title = 'Sell Shop',
        options = options
    })

    lib.showContext('sell_menu_' .. zoneKey)
end

function openAmountInput(zoneKey, item)
    local maxAmount = exports.ox_inventory:Search('count', item)
    if maxAmount <= 0 then
        lib.notify({
            type = 'error',
            title = 'Error',
            description = 'You have no pieces for sale.'
        })
        return
    end

    local input = lib.inputDialog('Enter the number to sell', {
        {
            type = 'number',
            label = 'number of pieces',
            min = 1,
            max = maxAmount,
            required = true
        }
    })

    if input and input[1] then
        TriggerServerEvent('r1_sell:sellItem', zoneKey, item, tonumber(input[1]))
    end
end
