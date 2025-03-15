
--------------NuibariTime

xtela10nui,ytela10nui = 790, 300  -- posição na tela
timemagianui = "" -- nome da magia laranja ( letra minuscula )
tempoi1nui = 120000 -- cooldown da magia
tempoi2nui = 0 -- tempo da magia ativa
texto10nui = "NUIBARI" -- Nome que vai aparecer na tela

--

local widget = setupUI([[
Panel
  height: 400
  width: 900
]], g_ui.getRootWidget())

local timespell = g_ui.loadUIFromString([[
Label
  color: white
  background-color: black
  opacity: 0.85
  text-horizontal-auto-resize: true
]], widget)



macro(1, function()
 if not storage.time.nui1 or storage.time.nui1 < now then
  timespell:setText(texto10nui)
  timespell:setColor('green')
 elseif storage.time.nu1 >= now then
  timespell:setColor('blue')
  timespell:setText(texto10nui .. string.format("%.0f",(storage.time.nu1-now)/1000).. "s ")
 else
  timespell:setColor('red')
  timespell:setText(texto10nui .. string.format("%.0f",(storage.time.nui1-now)/1000).. "s ")
 end
end)

onTextMessage(function(mode, text)
    if text:find ('para usar a espada novamente.') then
        storage.time = storage.time or {}  -- Garante que storage.time seja uma tabela
        storage.time.nui1 = now + tempoi1nui
        storage.time.nu1= now + tempoi2nui
    end
end)

if type(storage.time) ~= 'table' or (not storage.time.nu1 or (storage.time.nui1 - now) > 60000) or (not storage.time.nu1 or (storage.time.nu1 - now) > 60000) then
    storage.time = {nui1 = 0, nu1 = 0}
end

timespell:setPosition({y = ytela10nui+40, x =  xtela10nui+10})

----------------------------




-----



setDefaultTab("PVP")
local panelName = "killSteal"
local ui = setupUI([[
Panel
  height: 50

  BotItem
    id: item
    anchors.top: parent.top
    anchors.left: parent.left
    margin-top: 2

  BotSwitch
    id: title
    anchors.top: parent.top
    anchors.left: item.right
    anchors.bottom: item.verticalCenter
    text-align: center
    !text: tr('Nuibari')
    margin-left: 2
    width: 90


  BotLabel
    id: help
    anchors.top: item.verticalCenter
    anchors.left: item.right
    anchors.right: parent.right
    anchors.bottom: item.bottom
    text-align: center
    margin-left: 2

  HorizontalScrollBar
    id: HP
    anchors.top: item.bottom
    anchors.left: parent.left
    anchors.right: parent.right
    margin-top: 3
    minimum: 1
    maximum: 100
    step: 1

]], parent)
ui:setId(panelName)

if not storage[panelName] then
  storage[panelName] = {
      id = 3072,
      title = enabled,
      enabled = false,
      setting = true,
      hp = 20
  }
end

ui.title:setOn(storage[panelName].enabled)
ui.title.onClick = function(widget)
  storage[panelName].enabled = not storage[panelName].enabled
  widget:setOn(storage[panelName].enabled)
end
local updateHpText = function()
    local desc
    if storage[panelName].setting then
        desc = "Target"
    else
        desc = "Enemy"
    end
    ui.help:setText("If " .. desc .. " HP<=" .. storage[panelName].hp .. "%")
end
updateHpText()
ui.HP.onValueChange = function(scroll, value)
  storage[panelName].hp = value
  updateHpText()
end
ui.item:setItemId(storage[panelName].id)
ui.item.onItemChange = function(widget)
  storage[panelName].id = widget:getItemId()
end
ui.HP:setValue(storage[panelName].hp)





macro(100, function()
    if not storage[panelName].enabled then return end

    local player = g_game.getLocalPlayer() -- Posição do jogador local

    -- Se "setting" estiver ativado
    if storage[panelName].setting then
        if g_game.isAttacking() and g_game.getAttackingCreature():isPlayer() and g_game.getAttackingCreature():getHealthPercent() <= storage[panelName].hp then
            if not storage.time.nui1 or storage.time.nui1 < now then
                -- Verifica se o target está a 1 SQM de distância
                local target = g_game.getAttackingCreature()
                local playerPos = player:getPosition()
                local targetPos = target:getPosition()

                local distanceX = math.abs(playerPos.x - targetPos.x)
                local distanceY = math.abs(playerPos.y - targetPos.y)

                if (distanceX == 1 and distanceY == 0) or (distanceX == 0 and distanceY == 1) or (distanceX == 1 and distanceY == 1) then
                    useWith(storage[panelName].id, target)
                end
            end
        end
    else
        -- Itera sobre os spectators
        for _, spec in pairs(getSpectators()) do
            if g_game.isAttacking() and g_game.getAttackingCreature():getHealthPercent() <= storage[panelName].hp then
                -- Verifica a distância entre o jogador e o spectator
                local specPos = spec:getPosition()
                local playerPos = player:getPosition()

                local distanceX = math.abs(playerPos.x - specPos.x)
                local distanceY = math.abs(playerPos.y - specPos.y)

                if (distanceX == 1 and distanceY == 0) or (distanceX == 0 and distanceY == 1) or (distanceX == 1 and distanceY == 1) then
                    useWith(storage[panelName].id, spec)
                end
            end
        end
    end
end)

UI.Separator()
--------------------------------------------------------------------------------
function traps ()
local configName = modules.game_bot.contentsPanel.config:getCurrentOption().text;

-- load all otui files, order doesn't matter
local configName = modules.game_bot.contentsPanel.config:getCurrentOption().text

local configFiles = g_resources.listDirectoryFiles("/bot/" .. configName .. "/vBot", true, false)
for i, file in ipairs(configFiles) do
  local ext = file:split(".")
  if ext[#ext]:lower() == "ui" or ext[#ext]:lower() == "otui" then
    g_ui.importStyle(file)
  end
end



scriptFuncs = {};
trapspellsWidgets = {};

scriptFuncs.readProfile = function(filePath, callback)
  if g_resources.fileExists(filePath) then
      local status, result = pcall(function()
          return json.decode(g_resources.readFileContents(filePath))
      end)
      if not status then
          return onError("Erro carregando arquivo (" .. filePath .. "). Para consertar o problema, exclua o arquivo. Detalhes: " .. result)
      end

      callback(result);
  end
end

scriptFuncs.saveProfile = function(configFile, content)
  local status, result = pcall(function()
      return json.encode(content, 2)
  end);

  if not status then
      return onError("Erro salvando configuração. Detalhes: " .. result);
  end

  if result:len() > 100 * 1024 * 1024 then
      return onError("Arquivo de configuração acima de 100MB, não será salvo.");
  end

  g_resources.writeFileContents(configFile, result);
end

storageProfilesTraps = {
  trapspells = {},
}

MAIN_DIRECTORY = "/bot/" .. modules.game_bot.contentsPanel.config:getCurrentOption().text .. "/storage/"
STORAGE_DIRECTORY = "" .. MAIN_DIRECTORY .. g_game.getWorldName() .. '.json';


if not g_resources.directoryExists(MAIN_DIRECTORY) then
  g_resources.makeDir(MAIN_DIRECTORY);
end

scriptFuncs.readProfile(STORAGE_DIRECTORY, function(result)
  storageProfilesTraps = result

  if (type(storageProfilesTraps.trapspells) ~= 'table') then
      storageProfilesTraps.trapspells = {};
  end

end);


scriptFuncs.reindexTable = function(t)
  if not t or type(t) ~= "table" then return end

  local i = 0
  for _, e in pairs(t) do
      i = i + 1
      e.index = i
  end
end

firstLetterUpper = function(str)
  return (str:gsub("(%a)([%w_']*)", function(first, rest) return first:upper()..rest:lower() end))
end

function formatTime(seconds)
  if seconds < 60 then
      return seconds .. 's'
  else
      local minutes = math.floor(seconds / 60)
      local remainingSeconds = seconds % 60
      return string.format("%dm %02ds", minutes, remainingSeconds)
  end
end


formatRemainingTime = function(time)
  local remainingTime = (time - now) / 1000;
  local timeText = '';
  timeText = string.format("%.0f", (time - now) / 1000).. "s";
  return timeText;
end


attachSpellWidgetCallbacks = function(widget, spellId, table)
  widget.onDragEnter = function(self, mousePos)
      if not modules.corelib.g_keyboard.isCtrlPressed() then
          return false
      end
      self:breakAnchors()
      self.movingReference = { x = mousePos.x - self:getX(), y = mousePos.y - self:getY() }
      return true
  end

  widget.onDragMove = function(self, mousePos, moved)
      local parentRect = self:getParent():getRect()
      local newX = math.min(math.max(parentRect.x, mousePos.x - self.movingReference.x), parentRect.x + parentRect.width - self:getWidth())
      local newY = math.min(math.max(parentRect.y - self:getParent():getMarginTop(), mousePos.y - self.movingReference.y), parentRect.y + parentRect.height - self:getHeight())
      self:move(newX, newY)
      if table[spellId] then
          table[spellId].widgetPos = {x = newX, y = newY}
          scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfilesTraps)
      end
      return true
  end

  widget.onDragLeave = function(self, pos)
      return true
  end
end
--[[
function toMoveUp(window, table)
  local action = window.spellList:getFocusedChild();
  if (not action) then return; end
  local index = window.spellList:getChildIndex(action);
  if (index < 2) then return; end
  window.spellList:moveChildToIndex(action, index - 1);
  window.spellList:ensureChildVisible(action);
  table[index].index = index - 1;
  table[index - 1].index = index;
  table.sort(table, function(a,b) return a.index < b.index end)
  scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfilesTraps);
end

function toMoveDown(window, table)
  local action = window.spellList:getFocusedChild();
  if (not action) then return; end
  local index = window.spellList:getChildIndex(action);
  if (index < 2) then return; end
  window.spellList:moveChildToIndex(action, index - 1);
  window.spellList:ensureChildVisible(action);
  table[index].index = index - 1;
  table[index - 1].index = index;
  table.sort(table, function(a,b) return a.index < b.index end)
  scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfilesTraps);
end
]]--




scriptFuncs = {};
trapspellsWidgets = {};

scriptFuncs.readProfile = function(filePath, callback)
    if g_resources.fileExists(filePath) then
        local status, result = pcall(function()
            return json.decode(g_resources.readFileContents(filePath))
        end)
        if not status then
            return onError("Erro carregando arquivo (" .. filePath .. "). Para consertar o problema, exclua o arquivo. Detalhes: " .. result)
        end

        callback(result);
    end
end

scriptFuncs.saveProfile = function(configFile, content)
    local status, result = pcall(function()
        return json.encode(content, 2)
    end);

    if not status then
        return onError("Erro salvando configuração. Detalhes: " .. result);
    end

    if result:len() > 100 * 1024 * 1024 then
        return onError("Arquivo de configuração acima de 100MB, não será salvo.");
    end

    g_resources.writeFileContents(configFile, result);
end

storageProfilesTraps = {
    trapspells = {},
}

MAIN_DIRECTORY = "/bot/" .. modules.game_bot.contentsPanel.config:getCurrentOption().text .. "/storage/"
STORAGE_DIRECTORY = "" .. MAIN_DIRECTORY .. g_game.getWorldName() .. '.json';


if not g_resources.directoryExists(MAIN_DIRECTORY) then
    g_resources.makeDir(MAIN_DIRECTORY);
end



scriptFuncs.reindexTable = function(t)
    if not t or type(t) ~= "table" then return end

    local i = 0
    for _, e in pairs(t) do
        i = i + 1
        e.index = i
    end
end

firstLetterUpper = function(str)
    return (str:gsub("(%a)([%w_']*)", function(first, rest) return first:upper()..rest:lower() end))
end

storage['iconScripts'] = storage['iconScripts'] or {
 
    trapMacro = false,


}

local isOn = storage['iconScripts'];

function removeTable(tbl, index)
    table.remove(tbl, index)
end

function canCasttrap()
    for key, value in ipairs(storageProfilesTraps.trapspells) do
        local isLifesActive = (value.activeCooldown and value.activeCooldown >= now) and (value.enableLifes and value.lifes > 0);
        local isMultipleActive = value.enableMultiple and value.count > 0;
        local isNormalActive = value.activeCooldown and value.activeCooldown >= now;

        -- Se as condições para lançar o feitiço estiverem ativadas, ou se o alvo for um jogador
        if (isLifesActive or isNormalActive) then
            return true
        end
    end
    return false
end





function stopToCast()
    if not trapIcon.title:isOn() then return false; end
    for index, value in ipairs(storageProfilesTraps.trapspells) do
        if value.enabled and value.activeCooldown and value.activeCooldown >= now then return false; end
        if g_game.getAttackingCreature() and g_game.getAttackingCreature():getHealthPercent() <= calculatePercentage(value.selfHealth) + 3 and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer() then
            if (not value.totalCooldown or value.totalCooldown <= now) then
                return true;
            end
        end
    end
    return false;
end


function formatTime(seconds)
    if seconds < 60 then
        return seconds .. 's'
    else
        local minutes = math.floor(seconds / 60)
        local remainingSeconds = seconds % 60
        return string.format("%dm %02ds", minutes, remainingSeconds)
    end
end

formatRemainingTime = function(time)
    local remainingTime = (time - now) / 1000;
    local timeText = '';
    timeText = string.format("%.0f", (time - now) / 1000).. "s";
    return timeText;
end

attachSpellWidgetCallbacks = function(widget, spellId, table)
    widget.onDragEnter = function(self, mousePos)
        if not modules.corelib.g_keyboard.isCtrlPressed() then
            return false
        end
        self:breakAnchors()
        self.movingReference = { x = mousePos.x - self:getX(), y = mousePos.y - self:getY() }
        return true
    end

    widget.onDragMove = function(self, mousePos, moved)
        local parentRect = self:getParent():getRect()
        local newX = math.min(math.max(parentRect.x, mousePos.x - self.movingReference.x), parentRect.x + parentRect.width - self:getWidth())
        local newY = math.min(math.max(parentRect.y - self:getParent():getMarginTop(), mousePos.y - self.movingReference.y), parentRect.y + parentRect.height - self:getHeight())
        self:move(newX, newY)
        if table[spellId] then
            table[spellId].widgetPos = {x = newX, y = newY}
            scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfilesTraps)
        end
        return true
    end

    widget.onDragLeave = function(self, pos)
        return true
    end
end

forceSay = function(t)
    if type(t) ~= 'table' then
        for i = 0, 10 do
            
            return say(t)
        end
    end
    for i = 0, 10 do
      
        return say(t.toSay or t.text)
    end
end


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local spellEntry = [[
UIWidget
  background-color: alpha
  text-offset: 18 0
  focusable: true
  height: 16

  CheckBox
    id: enabled
    anchors.left: parent.left
    anchors.verticalCenter: parent.verticalCenter
    width: 15
    height: 15
    margin-top: 2
    margin-left: 3
    image-source: /images/ui/checkbox_round

    $hover !disabled:
      image-color: white
  
    $!checked:
      image-color: #FF4500
  
    $checked:
      image-color: #FF4500
  
    $disabled:
      image-color: #dfdfdf88
      color: #dfdfdf88
      opacity: 0.8
      change-cursor-image: false

  $focus:
    background-color: 
    opacity: 0.4

  CheckBox
    id: showTimespell
    anchors.left: enabled.left
    anchors.verticalCenter: parent.verticalCenter
    width: 15
    height: 15
    margin-top: 2
    margin-left: 15
    image-source: /images/ui/checkbox_round

    $hover !disabled:
      image-color: white
  
    $!checked:
      image-color: #FF4500
  
    $checked:
      image-color: #FF4500
  
    $disabled:
      image-color: #dfdfdf88
      color: #dfdfdf88
      opacity: 0.8
      change-cursor-image: false

  $focus:
    background-color: gray		
    opacity: 0.9


  Label
    id: textToSet
    anchors.left: showTimespell.left
    anchors.verticalCenter: parent.verticalCenter
    margin-left: 20

  Button
    id: remove
    !text: tr('x')
    color: #FF4500
    anchors.right: parent.right
    margin-right: 15
    width: 15
    height: 15
    tooltip: Remove Spell
]]

local widgetConfig = [[
UIWidget
  background-color: black
  font: verdana-11px-rounded
  opacity: 0.70
  padding: 0 8
  focusable: true
  phantom: false
  draggable: true
  text-auto-resize: true
]]

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

trapIcon = setupUI([[
Panel
  height: 25
  BotSwitch
    id: title
    anchors.top: parent.top
    anchors.left: parent.left
    text-align: center
    width: 130
    height: 20
    text: traps
    font: cipsoftFont

  Button
    id: settings
    anchors.top: prev.top
    anchors.left: prev.right
    anchors.right: parent.right
    margin-left: 3
    height: 25
    text: CONFIG
    font: cipsoftFont

]])

trapInterface = setupUI([[
MainWindow
  text: traps Panel
  size: 600 350
  font: sans-bold-16px
  color: red
  background-color: black
  opacity: 0.90
  anchors.centerIn: parent
  
  Panel
    anchors.top: parent.top
    anchors.right: sep2.left
    anchors.left: parent.left
    anchors.bottom: separator.top
    margin: 30 20 15 11
    image-border: 6
    background-color: black
    opacity: 0.75
    padding: 3
    size: 320 235

  Panel
    anchors.top: parent.top
    anchors.left: sep2.left
    anchors.right: parent.right
    anchors.bottom: separator.top
    margin: 10 20 15 11
    image-border: 6
    background-color: black
    opacity: 0.75
    padding: 3
    size: 360 235

  TextList
    id: spellList
    anchors.left: parent.left
    anchors.top: parent.top
    padding: 1
    size: 260 215  
    margin-top: 10
    margin-left: 11
    vertical-scrollbar: spellListScrollBar
    background-color: black
    opacity: 0.90
    
  VerticalScrollBar
    id: spellListScrollBar
    anchors.top: spellList.top
    anchors.bottom: spellList.bottom
    anchors.right: spellList.right
    step: 14
    pixels-scroll: true

  Button
    id: moveUp
    anchors.bottom: parent.bottom
    anchors.horizontalCenter: parent.horizontalCenter
    margin-bottom: 45
    margin-left: 50
    text: Move Up
    size: 60 17
    font: cipsoftFont

  Button
    id: moveDown
    anchors.bottom: parent.bottom
    anchors.left: moveUp.left
    margin-bottom: 45
    margin-left: 65
    text: Move Down
    size: 60 17
    font: cipsoftFont
    
  VerticalSeparator
    id: sep2
    anchors.top: parent.top
    anchors.bottom: closeButton.top
    anchors.horizontalCenter: parent.horizontalCenter
    margin-left: 3
    margin-top: 30
    margin-bottom: 5

  HorizontalSeparator
    id: separator
    anchors.right: parent.right
    anchors.left: parent.left
    anchors.bottom: closeButton.top
    margin-bottom: 5
    margin-left: 11
    margin-right: 19

  Label
    id: castSpellLabel
    anchors.left: castSpell.right
    anchors.top: parent.top
    text: Cast Spell
    margin-top: 36
    margin-left: 5
    color: white

  TextEdit
    id: castSpell
    anchors.left: spellList.right
    anchors.top: parent.top
    margin-left: 40
    margin-top: 33
    width: 125
    background-color: white

  Label
    id: orangeSpellLabel
    anchors.left: orangeSpell.right
    anchors.top: parent.top
    text: Msg Laranja 
    margin-top: 66
    margin-left: 5
    color: white

  TextEdit
    id: orangeSpell
    anchors.left: spellList.right
    anchors.top: parent.top
    margin-top: 63
    margin-left: 40
    width: 125
    background-color: white

  CheckBox
    id: sameSpell
    anchors.left: orangeSpellLabel.right
    anchors.top: parent.top
    margin-top: 66
    margin-left: 3
    image-source: /images/ui/checkbox_round
    tooltip: Orange Spell = Cast Spell?

    $hover !disabled:
      image-color: white
  
    $!checked:
      image-color: red
  
    $checked:
      image-color: red
  
    $disabled:
      image-color: #dfdfdf88
      color: #dfdfdf88
      opacity: 0.8
      change-cursor-image: false

  Label
    id: onScreenLabel
    anchors.left: orangeSpell.right
    anchors.top: parent.top
    text: Nome na Tela
    margin-top: 96
    margin-left: 5
    color: white

  TextEdit
    id: onScreen
    anchors.left: spellList.right
    anchors.top: parent.top
    margin-left: 40
    margin-top: 93
    width: 125
    background-color: white

  Label
    id: hppercentLabel
    anchors.left: hppercent.right
    anchors.top: parent.top
    margin-top: 125
    margin-left: 10
    text: HP Percent
    color: white

  HorizontalScrollBar
    id: hppercent
    anchors.left: spellList.right
    margin-left: 40
    anchors.top: parent.top
    margin-top: 125
    width: 125
    minimum: 0
    maximum: 100
    step: 1

  Label
    id: cooldownTotalLabel
    anchors.left: hppercent.right
    anchors.top: parent.top
    margin-top: 155
    margin-left: 10
    text: CD Total
    color: white

  HorizontalScrollBar
    id: cooldownTotal
    anchors.left: spellList.right
    margin-left: 40
    anchors.top: parent.top
    margin-top: 155
    width: 125
    minimum: 0
    maximum: 180
    step: 1

  Label
    id: cooldownActiveLabel
    anchors.left: hppercent.right
    anchors.top: parent.top
    margin-top: 185
    margin-left: 10
    text: CD Ativo
    color: white

  HorizontalScrollBar
    id: cooldownActive
    anchors.left: spellList.right
    margin-left: 40
    anchors.top: parent.top
    margin-top: 185
    width: 125
    minimum: 0
    maximum: 180
    step: 1



  SpinBox
    id: lifesValue
    anchors.bottom: parent.bottom
    anchors.left: lifesOption.right
    margin-bottom: 65
    margin-left: 5
    size: 27 20
    minimum: 0
    maximum: 10
    step: 1
    editable: true
    focusable: true

  Button
    id: insertSpell
    text: Insert Spell
    font: cipsoftFont
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    size: 60 21
    margin-bottom: 45
    margin-right: 20

  Button
    id: closeButton
    !text: tr('Close')
    color: white
    font: cipsoftFont
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    size: 45 21
    margin-right: 5

      
]], g_ui.getRootWidget())
trapInterface:hide();

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

trapIcon.title:setOn(isOn.trapMacro);
trapIcon.title.onClick = function(widget)
    isOn.trapMacro = not isOn.trapMacro;
    widget:setOn(isOn.trapMacro);
    scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfilesTraps);
end

trapIcon.settings.onClick = function(widget)
    if not trapInterface:isVisible() then
        trapInterface:show();
        trapInterface:raise();
        trapInterface:focus();
    else
        trapInterface:hide();
        scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfilesTraps);
    end
end

trapInterface.closeButton.onClick = function(widget)
    trapInterface:hide();
    scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfilesTraps);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

trapInterface.hppercent:setText('0%')
trapInterface.hppercent.onValueChange = function(widget, value)
    widget:setText(value .. '%')
end

trapInterface.cooldownTotal:setText('0s')
trapInterface.cooldownTotal.onValueChange = function(widget, value)
    local formattedTime = formatTime(value)
    widget:setText(value .. 's')
    --widget:setText(formattedTime)
end

trapInterface.cooldownActive:setText('0s')
trapInterface.cooldownActive.onValueChange = function(widget, value)
    local formattedTime = formatTime(value)
    widget:setText(value .. 's')
    --widget:setText(formattedTime)
end



trapInterface.sameSpell:setChecked(true);
trapInterface.orangeSpell:setEnabled(false);
trapInterface.sameSpell.onCheckChange = function(widget, checked)
    if checked then
        trapInterface.orangeSpell:setEnabled(false)
    else
        trapInterface.orangeSpell:setEnabled(true)
        trapInterface.orangeSpell:setText(trapInterface.castSpell:getText())
    end
end

trapInterface.lifesValue:hide();
    if checked then
        trapInterface.multipleOption:hide();
        trapInterface.lifesValue:show();
    else
        trapInterface.lifesValue:hide();
    end


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function refreshtrapList(list, table)
    if table then
        for i, child in pairs(list.spellList:getChildren()) do
            child:destroy();
        end
        for _, widget in pairs(trapspellsWidgets) do
            widget:destroy();
        end
        for index, entry in ipairs(table) do
            local label = setupUI(spellEntry, list.spellList)
            local newWidget = setupUI(widgetConfig, g_ui.getRootWidget())
            newWidget:setText(firstLetterUpper(entry.spellCast))
            attachSpellWidgetCallbacks(newWidget, entry.index, storageProfilesTraps.trapspells)
  
            if not entry.widgetPos then
                entry.widgetPos = {x = 0, y = 50}
            end
            if entry.enableTimeSpell then
              newWidget:show();
            else
              newWidget:hide();
            end
            newWidget:setPosition(entry.widgetPos)
            trapspellsWidgets[entry.index] = newWidget;
            label.onDoubleClick = function(widget)
                local spellTable = entry;
                list.castSpell:setText(spellTable.spellCast);
                list.orangeSpell:setText(spellTable.orangeSpell);
                list.onScreen:setText(spellTable.onScreen);
                list.hppercent:setValue(spellTable.selfHealth);
                list.cooldownTotal:setValue(spellTable.cooldownTotal);
                list.cooldownActive:setValue(spellTable.cooldownActive);
                for i, v in ipairs(storageProfilesTraps.trapspells) do
                    if v == entry then
                        removeTable(storageProfilesTraps.trapspells, i)
                    end
                end
                scriptFuncs.reindexTable(table);
                newWidget:destroy();
                label:destroy();
            end
            label.enabled:setChecked(entry.enabled);
            label.enabled:setTooltip(not entry.enabled and 'Enable Spell' or 'Disable Spell');
            label.enabled.onClick = function(widget)
                entry.enabled = not entry.enabled;
                label.enabled:setChecked(entry.enabled);
                label.enabled:setTooltip(not entry.enabled and 'Enable Spell' or 'Disable Spell');
                scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfilesTraps);
            end
            label.showTimespell:setChecked(entry.enableTimeSpell)
            label.showTimespell:setTooltip(not entry.enableTimeSpell and 'Enable Time Spell' or 'Disable Time Spell');
            label.showTimespell.onClick = function(widget)
                entry.enableTimeSpell = not entry.enableTimeSpell;
                label.showTimespell:setChecked(entry.enableTimeSpell);
                label.showTimespell:setTooltip(not entry.enableTimeSpell and 'Enable Time Spell' or 'Disable Time Spell');
                if entry.enableTimeSpell then
                    newWidget:show();
                else
                    newWidget:hide();
                end
                scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfilesTraps);
            end
            label.remove.onClick = function(widget)
                for i, v in ipairs(storageProfilesTraps.trapspells) do
                    if v == entry then
                        removeTable(storageProfilesTraps.trapspells, i)
                    end
                end
                scriptFuncs.reindexTable(table);
                newWidget:destroy();
                label:destroy();
            end
            label.onClick = function(widget)
                trapInterface.moveDown:show();
                trapInterface.moveUp:show();
            end
            label.textToSet:setText(firstLetterUpper(entry.spellCast));
	    label.textToSet:setColor("white")
	    label.textToSet:setFont("verdana-11px-rounded")
            label:setTooltip('Orange Message: ' .. entry.orangeSpell .. ' | On Screen: ' .. entry.onScreen .. ' | Total Cooldown: ' .. entry.cooldownTotal.. 's | Active Cooldown: ' .. entry.cooldownActive .. 's | Hppercent: ' .. entry.selfHealth)
        end
    end
  end
  
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

trapInterface.moveUp.onClick = function()
  local action = trapInterface.spellList:getFocusedChild();
  if (not action) then return; end
  local index = trapInterface.spellList:getChildIndex(action);
  if (index < 2) then return; end
  trapInterface.spellList:moveChildToIndex(action, index - 1);
  trapInterface.spellList:ensureChildVisible(action);
  storageProfilesTraps.trapspells[index].index = index - 1;
  storageProfilesTraps.trapspells[index - 1].index = index;
  table.sort(storageProfilesTraps.trapspells, function(a,b) return a.index < b.index end)
  scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfilesTraps);
end

trapInterface.moveDown.onClick = function()
  local action = trapInterface.spellList:getFocusedChild()
  if not action then return; end
  local index = trapInterface.spellList:getChildIndex(action)
  if index >= trapInterface.spellList:getChildCount() then return end
  trapInterface.spellList:moveChildToIndex(action, index + 1);
  trapInterface.spellList:ensureChildVisible(action);
  storageProfilesTraps.trapspells[index].index = index + 1;
  storageProfilesTraps.trapspells[index + 1].index = index;
  table.sort(storageProfilesTraps.trapspells, function(a,b) return a.index < b.index end)
  scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfilesTraps);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

trapInterface.insertSpell.onClick = function(widget)
    local spellName = trapInterface.castSpell:getText():trim();
    local orangeMsg = trapInterface.orangeSpell:getText():trim();
    local onScreen = trapInterface.onScreen:getText();
    orangeMsg = (orangeMsg:len() == 0) and spellName or orangeMsg;
    local hppercent = trapInterface.hppercent:getValue();
    local cooldownTotal = trapInterface.cooldownTotal:getValue();
    local cooldownActive = trapInterface.cooldownActive:getValue();
    
    if spellName:len() == 0 then
        return warn('Invalid Spell Name.');
    end
    if not trapInterface.sameSpell:isChecked() and orangeMsg:len() == 0 then
        return warn('Invalid Orange Spell.')
    end
    if onScreen:len() == 0 then
        return warn('Invalid Text On Screen')
    end
    if hppercent == 0 then
        return warn('Invalid Hppercent.')
    end
    if cooldownTotal == 0 then
        return warn('Invalid Cooldown Total.')
    end
  
    local spellConfig = {
        index = #storageProfilesTraps.trapspells + 1,
        spellCast = spellName,
        orangeSpell = orangeMsg,
        onScreen = onScreen,
        selfHealth = hppercent,
        cooldownActive = cooldownActive,
        cooldownTotal = cooldownTotal,
        enableTimeSpell = true,
        enabled = true
    }
  

    table.insert(storageProfilesTraps.trapspells, spellConfig)
    refreshtrapList(trapInterface, storageProfilesTraps.trapspells)
    scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfilesTraps)
  
    trapInterface.castSpell:clearText()
    trapInterface.orangeSpell:clearText()
    trapInterface.onScreen:clearText()
    trapInterface.cooldownTotal:setValue(0)
    trapInterface.cooldownActive:setValue(0)
    trapInterface.hppercent:setValue(0)
    trapInterface.reviveOption:setChecked(false);
    trapInterface.lifesOption:setChecked(false);
    trapInterface.multipleOption:setChecked(false);
    trapInterface.multipleOption:show();
    trapInterface.lifesValue:hide();
  end
  
  refreshtrapList(trapInterface, storageProfilesTraps.trapspells);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
macro(1, function()
    if not (trapspellsWidgets and storageProfilesTraps.trapspells) then return; end
    
    for index, spellConfig in ipairs(storageProfilesTraps.trapspells) do
        local widget = trapspellsWidgets[spellConfig.index];
        if widget then
            local textToSet = firstLetterUpper(spellConfig.onScreen)
            local color = 'green'
            if spellConfig.activeCooldown and spellConfig.activeCooldown > now then
                textToSet = textToSet .. ': ' .. formatRemainingTime(spellConfig.activeCooldown)
                color = '#00FFFF'
                if spellConfig.enableLifes and spellConfig.lifes == 0 then
                    spellConfig.activeCooldown = nil;
                end
            elseif spellConfig.totalCooldown and spellConfig.totalCooldown > now then
                textToSet = textToSet .. ': ' .. formatRemainingTime(spellConfig.totalCooldown)
                color = '#FF4040'
            else
                textToSet = textToSet .. ': 0s'
                if spellConfig.enableMultiple and spellConfig.canReset then
                    spellConfig.count = 3;
                    spellConfig.canReset = false;
                end
                if spellConfig.enableLifes then
                    spellConfig.lifes = 0;
                end
                if spellConfig.enableRevive then
                    spellConfig.alreadyChecked = false;
                end
            end
            if spellConfig.enableMultiple and spellConfig.count > 0 then
                textToSet = '' .. spellConfig.count .. ' | ' .. textToSet
            end
            if spellConfig.enableLifes and spellConfig.lifes > 0 then
                textToSet = '' .. spellConfig.lifes .. ' | ' .. textToSet
            end
            widget:setText(textToSet)
            widget:setColor(color)
        end
    end
end);



----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


local selfPlayer = g_game.getLocalPlayer();
macro(1, function()
    if not trapIcon.title:isOn() then return; end
    if isInPz() then return; end
    local selfHealth = selfPlayer:getHealthPercent();
    for key, value in ipairs(storageProfilesTraps.trapspells) do
        if value.enabled and g_game.isAttacking() and g_game.getAttackingCreature():getHealthPercent() <= calculatePercentage(value.selfHealth) then
            if (not value.totalCooldown or value.totalCooldown <= now) then
                if not canCasttrap() and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer() then
               
				forceSay(value.spellCast);
			
                end
            end
        end
    end
end);

onTalk(function(name, level, mode, text, channelId, pos)
    text = text:lower();
    if (name ~= player:getName()) then return; end
    
    for index, value in ipairs(storageProfilesTraps.trapspells) do
        if text == value.orangeSpell then
            if value.enableLifes then
                value.activeCooldown = now + (value.cooldownActive * 1000) - 250;
                value.totalCooldown = now + (value.cooldownTotal * 1000) - 250;
                value.lifes = value.amountLifes;
            end
            if value.enableRevive and not value.alreadyChecked then
                value.totalCooldown = now + (value.cooldownTotal * 1000) - 250;
                value.activeCooldown = now + (value.cooldownActive * 1000) - 250;
                value.alreadyChecked = true;
            end
            if value.enableMultiple then
                if value.count > 0 then
                    value.count = value.count - 1
                    value.activeCooldown = now + (value.cooldownActive * 1000) - 250
                    if value.count == 0 then
                        value.totalCooldown = now + (value.cooldownTotal * 1000) - 250
                        value.canReset = true;
                        break;
                    end
                end
            end
            if not (value.enableLifes or value.enableRevive or value.enableMultiple) then
                value.activeCooldown = now + (value.cooldownActive * 1000) - 250;
                value.totalCooldown = now + (value.cooldownTotal * 1000) - 250;
                warn(text)
                break
            end
        end
    end
end);
end
 traps()




------------------------- POTIONS
 UI.Separator()
Panels.HealthItem()
Panels.HealthItem()
 UI.Separator()
Panels.ManaItem()
Panels.ManaItem()
 UI.Separator()
-----------------------

---------------QuebraTrap





local quebrarTrap = macro(200, "Kabutowari [*]", function()
    local player = g_game.getLocalPlayer()  -- Obtém o jogador local
    local pos = player:getPosition()  -- Posição atual do jogador
    local direction = player:getDirection()  -- Direção em que o jogador está olhando

    -- Determina a posição à frente com base na direção
    local frontPos = {x = pos.x, y = pos.y, z = pos.z}
    if direction == 0 then  -- Norte
        frontPos.y = frontPos.y - 1
    elseif direction == 1 then  -- Leste
        frontPos.x = frontPos.x + 1
    elseif direction == 2 then  -- Sul
        frontPos.y = frontPos.y + 1
    elseif direction == 3 then  -- Oeste
        frontPos.x = frontPos.x - 1
    end

    -- Obtém o tile à frente
    local tile = g_map.getTile(frontPos)
    if not tile then return end  -- Se o tile não existir, saia da macro

    -- Usa o item no tile à frente
    local itemId = 10675  -- Substitua pelo ID do item que deseja usar
    g_game.useInventoryItemWith(itemId, tile:getTopUseThing())
end)

-- Função chamada quando a tecla "-" é pressionada
function ativarquebrarTrap()
   quebrarTrap.setOn()  -- Ativa o combo
end

-- Função chamada quando a tecla "-" é liberada
function desativarquebrarTrap()
    quebrarTrap.setOff()  -- Desativa o combo
end

g_keyboard.bindKeyDown("*", ativarquebrarTrap)
g_keyboard.bindKeyUp("*", desativarquebrarTrap)

-------------------







-------
