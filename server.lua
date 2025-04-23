RegisterServerEvent('r1_sell:sellItem', function(zoneKey, item, amount)
    local src = source
    local xPlayer = src

    local zone = Config.SellZones[zoneKey]
    if not zone then return end

    local itemConfig = zone.items[item]
    if not itemConfig or not itemConfig.give or not amount or amount <= 0 then return end

    local invCount = exports.ox_inventory:Search(src, 'count', item)
    if invCount < amount then
        TriggerClientEvent('ox_lib:notify', src, {
            type = 'error',
            title = 'Error',
            description = 'Nemáš dostatek "' .. itemConfig.label .. '".'
        })
        return
    end

    local removed = exports.ox_inventory:RemoveItem(src, item, amount)
    if not removed then
        TriggerClientEvent('ox_lib:notify', src, {
            type = 'error',
            title = 'Error',
            description = 'Failed to sell items.'
        })
        return
    end

    for _, reward in pairs(itemConfig.give) do
        local totalAmount = reward.amount * amount

        if reward.item == 'money' then
            exports.ox_inventory:AddItem(src, 'money', totalAmount)
        else
            exports.ox_inventory:AddItem(src, reward.item, totalAmount)
        end
    end

    TriggerClientEvent('ox_lib:notify', src, {
        type = 'success',
        title = 'Success',
        description = ('You sold %dx %s'):format(amount, itemConfig.label)
    })
end)
