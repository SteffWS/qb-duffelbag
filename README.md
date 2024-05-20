# Steff Scripts qb-duffelbag

## Overview
The qb-duffelbag script introduces three distinct items – wallets, duffel bags, and briefcases – providing players with a comprehensive storage solution.

## Features
- **Flexible Storage**: Choose between wallets, duffel bags, or briefcases to store your personal documents.
- **Customizable Slots**: Adjust the number of slots according to your preference to organize your documents efficiently.

## Installation
1. **Image Integration**: Drag images from `qb-duffelbag/images` into `lj-inventory` script's `html/images`.
2. **Modify Items Configuration**: In `qb-core/shared/items.lua`, add the following items:
```lua
wallet = { name = "wallet", label = "Wallet", weight = 500, type = "item", image = "wallet.png", unique = true, useable = true, shouldClose = false, combinable = nil, description = "" },
duffelbag = { name = "duffelbag", label = "Duffelbag", weight = 500, type = "item", image = "duffelbag.png", unique = true, useable = true, shouldClose = false, combinable = nil, description = "" },
briefcase = { name = "briefcase", label = "Briefcase", weight = 500, type = "item", image = "briefcase.png", unique = true, useable = true, shouldClose = false, combinable = nil, description = "" },
```

3. **Update UI**: Find the `stickynote` section in `lj-inventory/lj/app.js` and paste the following code snippet below it:
```javascript
 else if (itemData.name == "wallet") {
     $(".item-info-title").html('<p>'+itemData.label+'</p>')
     $(".item-info-description").html('<p><strong>Wallet identification number: </strong><span>' + itemData.info.walletid);    
 } else if (itemData.name == "duffelbag") {
     $(".item-info-title").html('<p>'+itemData.label+'</p>')
     $(".item-info-description").html('<p><strong>Wallet identification number: </strong><span>' + itemData.info.duffelbagid);    
 } else if (itemData.name == "briefcase") {
    $(".item-info-title").html('<p>'+itemData.label+'</p>')
     $(".item-info-description").html('<p><strong>Wallet identification number: </strong><span>' + itemData.info.briefcaseid); 
```

4. **Modify Server Logic**: In `lj-inventory/server/main.lua`, find the section for handling `Itemshop` and insert the following code snippet after the `cash` condition:
```lua
 elseif itemData['name'] == 'wallet' then
     info.walletid = math.random(11111,99999)
 elseif itemData['name'] == 'duffelbag' then
     info.duffelbagid = math.random(11111,99999)
 elseif itemData['name'] == 'briefcase' then
     info.briefcaseid = math.random(11111,99999)
```

5. **Additional Logic**: In the same `lj-inventory/server/main.lua` file, find the section for handling `markedbills` and insert the following code snippet after the `elseif` condition:
```lua
if itemData.name == 'billetera' then itemData.info.walletid = math.random(11111,99999) end -- Wallet item
if itemData.name == 'duffelbag' then itemData.info.duffelbag = math.random(11111,99999) end -- Duffelbag item
if itemData.name == 'briefcase' then itemData.info.briefcase = math.random(11111,99999) end -- Briefcase item
```

6. **Adding items to shop**: Navigate to `qb-shops/config` and add the code below to any shop you want.
```lua
        {name = 'wallet',            price = 250, amount = 50, info = {}, type = 'item'},
        {name = 'duffelbag',         price = 300, amount = 50, info = {}, type = 'item'},
        {name = 'briefcase',         price = 500, amount = 50, info = {}, type = 'item'},
```

## Contact
For any issues, suggestions, or custom requests, join our Discord community.

- Our Discord: https://discord.gg/SyNGm3eXmP

- Project Link: https://github.com/SteffWS/qb-wallet
