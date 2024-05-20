local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("wallet", function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-items:client:use:wallet', source, item.info.walletid)
    end
end)

QBCore.Functions.CreateUseableItem("briefcase", function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-items:client:use:briefcase', source, item.info.briefcaseid)
    end
end)

QBCore.Functions.CreateUseableItem("duffelbag", function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('qb-items:client:use:duffelbag', source, item.info.duffelbagid)
    end
end)
