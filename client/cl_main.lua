local QBCore = exports['qb-core']:GetCoreObject()

-- Wallet
RegisterNetEvent('qb-items:client:use:wallet')
AddEventHandler('qb-items:client:use:wallet', function(WalletId)
	TriggerServerEvent("inventory:server:OpenInventory", "stash", 'wallet_'..WalletId, {maxweight = 5000, slots = 5})
	TriggerEvent("inventory:client:SetCurrentStash", 'wallet_'..WalletId)
end)

-- Briefcase
RegisterNetEvent('qb-items:client:use:briefcase')
AddEventHandler('qb-items:client:use:briefcase', function(BriefcaseId)
	TriggerServerEvent("inventory:server:OpenInventory", "stash", 'briefcase_'..BriefcaseId, {maxweight = 10000, slots = 10})
	TriggerEvent("inventory:client:SetCurrentStash", 'briefcase_'..BriefcaseId)
end)

-- Duffelbag
RegisterNetEvent('qb-items:client:use:duffelbag')
AddEventHandler('qb-items:client:use:duffelbag', function(DuffelbagId)
	TriggerServerEvent("inventory:server:OpenInventory", "stash", 'duffelbag_'..DuffelbagId, {maxweight = 10000, slots = 10})
	TriggerEvent("inventory:client:SetCurrentStash", 'duffelbag_'..DuffelbagId)
end)
