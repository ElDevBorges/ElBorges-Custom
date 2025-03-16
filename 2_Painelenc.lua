



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

local function loadScript(name)
  return dofile("/eldevborges/" .. name .. ".lua")
end

-- here you can set manually order of scripts
-- libraries should be loaded first
local luaFiles = {
  "vlib",
  "spyy_level",
  "configs", -- do not change this and above

}

for i, file in ipairs(luaFiles) do
  loadScript(file)
end

scriptFuncs = {};
comboSpellsWidget = {};
fugaSpellsWidgets = {};

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

storageProfiles = {
  comboSpells = {},
  fugaSpells = {},
  keySpells = {}
}

MAIN_DIRECTORY = "/bot/" .. modules.game_bot.contentsPanel.config:getCurrentOption().text .. "/storage/"
STORAGE_DIRECTORY = "" .. MAIN_DIRECTORY .. g_game.getWorldName() .. '.json';


if not g_resources.directoryExists(MAIN_DIRECTORY) then
  g_resources.makeDir(MAIN_DIRECTORY);
end

scriptFuncs.readProfile(STORAGE_DIRECTORY, function(result)
  storageProfiles = result
  if (type(storageProfiles.comboSpells) ~= 'table') then
      storageProfiles.comboSpells = {};
  end
  if (type(storageProfiles.fugaSpells) ~= 'table') then
      storageProfiles.fugaSpells = {};
  end
  if (type(storageProfiles.keySpells) ~= 'table') then
      storageProfiles.keySpells = {};
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
          scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles)
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
  scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
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
  scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end
]]--

function stopToCast()
  for index, value in ipairs(storageProfiles.fugaSpells) do
      if value.enabled and value.activeCooldown and value.activeCooldown >= now then return true; end
      if hppercent() <= calculatePercentage(value.selfHealth) + 5 then
          if (not value.totalCooldown or value.totalCooldown <= now) then
              return true;
          end
      end
  end
  return false;
end

function isAnySelectedKeyPressed()
  for index, value in ipairs(storageProfiles.keySpells) do
      if value.enabled and (modules.corelib.g_keyboard.isKeyPressed(value.keyPress)) then
          return true;
      end
  end
  return false;
end 

DelayMacro = {}
DelayMacro.horizontalScrollBar = [[
Panel
  height: 35
  margin-top: 3

  Label
    id: text
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
    text-align: center
    font: cipsoftFont

  HorizontalScrollBar
    id: scroll
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: prev.bottom
    margin-top: 3
    minimum: 0
    maximum: 10
    step: 1
    font: verdana-11px-rounded
]]
storage.scrollBars1 = storage.scrollBars1 or {}

local function addScrollBar(id, title, min, max, defaultValue)
	local widget = setupUI(DelayMacro.horizontalScrollBar, panel)

	widget.scroll:setRange(min, max)

	if max - min > 1000 then
		widget.scroll:setStep(100)
	elseif max - min > 100 then
		widget.scroll:setStep(10)
	end

	widget.scroll:setValue(storage.scrollBars1[id] or defaultValue)

	function widget.scroll.onValueChange(scroll, value)
		storage.scrollBars1[id] = value

		widget.scroll:setText(title ..value)
	end

	widget.text:setText('MACRO DELAY:')
	widget.scroll.onValueChange(widget.scroll, widget.scroll:getValue())
end

setDefaultTab('Main')

addScrollBar("macroDelay", "", 10, 1000, 200);

UI.Label('STACK+MUNDO'):setFont('cipsoftFont')

addTextEdit("Spell Stack, Spell Mundo, Key", storage.stackConfig or "Spell stack, Mundo, Distancia, Key", function(widget, text)
    storage.stackConfig = text;
end, rightPanel);

local isKeyPressed = modules.corelib.g_keyboard.isKeyPressed;
macro(1, function()
    local stackConfig = storage.stackConfig:split(',');
    local target = g_game.getAttackingCreature();
    local playerPos = pos();
    if isKeyPressed(stackConfig[3]) then
        if not g_game.isAttacking() then return; end
        local targetPos = target:getPosition();
        if not targetPos then return; end
        local distanceToTarget = getDistanceBetween(playerPos, targetPos);
        if distanceToTarget > 2 then
	    stopCombo = now + 150;
            say(stackConfig[1])
        end
            if distanceToTarget <= 2 then
	        stopCombo = now + 150;
                say(stackConfig[2])
            end
        end

end, rightPanel)

local key_func = {
 ["W"] = 0,
 ["A"] = 0,
 ["S"] = 0,
 ["D"] = 0,
}
onKeyPress(function(key)
  for chave, func in pairs(key_func) do
    if key == chave then
      g_game.setChaseMode(func)
    end
  end
end)

macro(1, function()
    local stackConfig = storage.stackConfig:split(',');
if isKeyPressed(stackConfig[3]) then
	g_game.setChaseMode(1)
end
end)




UI.Label('COMBO/FUGAS'):setFont('cipsoftFont')

scriptFuncs = {};
comboSpellsWidget = {};
fugaSpellsWidgets = {};

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

storageProfiles = {
    comboSpells = {},
    fugaSpells = {},
    keySpells = {}
}

MAIN_DIRECTORY = "/bot/" .. modules.game_bot.contentsPanel.config:getCurrentOption().text .. "/storage/"
STORAGE_DIRECTORY = "" .. MAIN_DIRECTORY .. g_game.getWorldName() .. '.json';


if not g_resources.directoryExists(MAIN_DIRECTORY) then
    g_resources.makeDir(MAIN_DIRECTORY);
end

function resetCooldowns()
    if storageProfiles then
        if storageProfiles.comboSpells then
            for _, spell in ipairs(storageProfiles.comboSpells) do
                spell.cooldownSpells = nil 
            end
        end
        if storageProfiles.fugaSpells then
            for _, spell in ipairs(storageProfiles.fugaSpells) do
                spell.totalCooldown = nil;
                spell.activeCooldown = nil;
            end
        end
     end
end


scriptFuncs.readProfile(STORAGE_DIRECTORY, function(result)
    storageProfiles = result;
    if (type(storageProfiles.comboSpells) ~= 'table') then
        storageProfiles.comboSpells = {};
    end
    if (type(storageProfiles.fugaSpells) ~= 'table') then
        storageProfiles.fugaSpells = {};
    end
    if (type(storageProfiles.keySpells) ~= 'table') then
        storageProfiles.keySpells = {};
    end
    resetCooldowns();
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

storage['iconScripts'] = storage['iconScripts'] or {
    comboMacro = true,
    fugaMacro = false,
    showInfos = false,
    keyMacro = false
}

local isOn = storage['iconScripts'];

function removeTable(tbl, index)
    table.remove(tbl, index)
end

function canCastFuga()
    for key, value in ipairs(storageProfiles.fugaSpells) do
        local isLifesActive = (value.activeCooldown and value.activeCooldown >= now) and (value.enableLifes and value.lifes > 0);
        local isMultipleActive = value.enableMultiple and value.count > 0 ;
        local isNormalActive = value.activeCooldown and value.activeCooldown >= now;
        if (isLifesActive or isNormalActive) then
            return true;
        end
    end
    return false;
end

function getPlayersAttack(multifloor)
    multifloor = multifloor or false;
    local count = 0;
    for _, spec in ipairs(getSpectators(multifloor)) do
        if spec:isPlayer() and spec:isTimedSquareVisible() and table.equals(spec:getTimedSquareColor(), colorToMatch) then
            count = count + 1;
	delay(3500)
        end
    end
    return count;
end

local storageAttackers = {};
local timeClean = 3;

onTextMessage(function(mode, text)
    if text:find('hitpoints due to an attack by') then
        local pattern = 'You lose (%d+) hitpoints due to an attack by (.+)%.'
        local hp, attackerName = text:match(pattern)
        local attackerCreature = getCreatureByName(attackerName)
        if attackerCreature and attackerCreature:isPlayer() then
            local alreadyExists = false
            for _, attackerInfo in ipairs(storageAttackers) do
                if attackerInfo.name == attackerName then
                    alreadyExists = true;
                    attackerInfo.time = os.time();
                    break
                end
            end
            if not alreadyExists then
                table.insert(storageAttackers, {name = attackerName, time = os.time()})
            end
        end
    end
end);

macro(1, function()
    local currentTime = os.time()
    for i = #storageAttackers, 1, -1 do
        local attackerInfo = storageAttackers[i]
        if (currentTime - attackerInfo.time) > timeClean then
            table.remove(storageAttackers, i)
        end
    end
end);

function calculatePercentage(var)
    local multiplier = #storageAttackers;
    return multiplier and var + (multiplier * 7) or var
end

function stopToCast()
    if not fugaIcon.title:isOn() then return false; end
    for index, value in ipairs(storageProfiles.fugaSpells) do
        if value.enabled and value.activeCooldown and value.activeCooldown >= now then return false; end
        if hppercent() <= calculatePercentage(value.selfHealth) + 3 then
            if (not value.totalCooldown or value.totalCooldown <= now) then
                return true;
            end
        end
    end
    return false;
end

-- Função para verificar se qualquer tecla está pressionada
function isAnySelectedKeyPressed()
    -- Garante que a tabela keySpells esteja inicializada
    if not storageProfiles then
        initializeStorageForCharacter(g_game.getCharacterName())
    end
    -- Verifica se keySpells é uma tabela antes de usar
    if type(storageProfiles.keySpells) ~= "table" then
        storageProfiles.keySpells = {}
    end
    
    for index, value in ipairs(storageProfiles.keySpells) do
        if value.enabled and modules.corelib.g_keyboard.isKeyPressed(value.keyPress) then
            return true
        end
    end
    return false
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
            scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles)
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
            stopCombo = now + 250;
            return say(t)
        end
    end
    for i = 0, 10 do
        stopCombo = now + 250;
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

combobotPanelName = "combobot"
local comboIcon = setupUI([[
Panel
  height: 20
  BotSwitch
    id: title
    anchors.top: parent.top
    anchors.left: parent.left
    text-align: center
    width: 130
    text: COMBO
    font: cipsoftFont

  Button
    id: settings
    anchors.top: prev.top
    anchors.left: prev.right
    anchors.right: parent.right
    margin-left: 3
    height: 17
    text: CONFIG
    font: cipsoftFont
]])
comboIcon:setId(combobotPanelName);

keyIcon = setupUI([[
Panel
  height: 20
  BotSwitch
    id: title
    anchors.top: parent.top
    anchors.left: parent.left
    text-align: center
    width: 130
    text: MANUAL KEYS
    font: cipsoftFont

  Button
    id: settings
    anchors.top: prev.top
    anchors.left: prev.right
    anchors.right: parent.right
    margin-left: 3
    height: 17
    text: CONFIG
    font: cipsoftFont
]])

comboInterface = setupUI([[
MainWindow
  text: Combo
  font: sans-bold-16px
  color: white
  size: 580 390
  anchors.centerIn: parent

  Panel
    anchors.top: parent.top
    anchors.right: sep2.left
    anchors.left: parent.left
    anchors.bottom: separator.top
    margin: 40 15 10 18
    image-border: 6
    padding: 3
    size: 100 100
    background-color: 
    opacity: 0.75

  Panel
    anchors.top: parent.top
    anchors.left: sep2.left
    anchors.right: parent.right
    anchors.bottom: separator.top
    margin: 40 15 10 18
    image-border: 6
    padding: 3
    size: 10 105
    background-color: 
    opacity: 0.75

  TextList
    background-color: black
    opacity: 0.75
    id: spellList
    anchors.left: parent.left
    anchors.top: parent.top
    padding: 1
    size: 510 150  
    margin-top: 140
    margin-left: 18
    vertical-scrollbar: spellListScrollBar
    background-color: 
    opacity: 0.55

  VerticalScrollBar
    id: spellListScrollBar
    anchors.top: spellList.top
    anchors.bottom: spellList.bottom
    anchors.right: spellList.right
    step: 10
    pixels-scroll: true
    background-color: white
    opacity: 0.90

  Button
    id: moveUp
    anchors.bottom: parent.bottom
    anchors.horizontalCenter: parent.horizontalCenter
    margin-bottom: 195
    margin-left: 10
    text: /\
    size: 20 20
    font: verdana-11px-rounded

  Button
    id: moveDown
    anchors.bottom: parent.bottom
    anchors.left: moveUp.left
    margin-bottom: 195
    margin-left: 25
    text: \/
    size: 20 20
    font: verdana-11px-rounded
    

  HorizontalSeparator
    id: separator
    anchors.right: parent.right
    anchors.left: parent.left
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.bottom: closeButton.top
    margin-bottom: 5
    margin-left: 15
    margin-right: 15

  Label
    id: castSpellLabel
    anchors.left: castSpell.right
    anchors.top: parent.top
    text: Magia:
    font: verdana-11px-rounded
    color: white
    margin-top: 40
    margin-left: -190

  TextEdit
    id: castSpell
    background-color: black
    anchors.left: spellList.right
    anchors.top: parent.top
    margin-top: 37
    margin-left: -440
    width: 150

  Label
    id: orangeSpellLabel
    anchors.left: orangeSpell.right
    anchors.top: parent.top
    text: Orange Msg:
    font: verdana-11px-rounded
    color: white
    margin-top: 70
    margin-left: -190

  TextEdit
    id: orangeSpell
    background-color: black
    anchors.left: spellList.right
    anchors.top: parent.top
    margin-top: 67
    margin-left: -405
    width: 115

  CheckBox
    id: sameSpell
    anchors.left: orangeSpellLabel.right
    anchors.top: parent.top
    margin-top: 70
    margin-left: 124
    image-source: /images/ui/checkbox_round
    tooltip: Orange Spell = Cast Spell?

    $hover !disabled:
      image-color: white
  
    $!checked:
      image-color: white
  
    $checked:
      image-color: white
  
    $disabled:
      image-color: #dfdfdf88
      color: #dfdfdf88
      opacity: 0.8
      change-cursor-image: false

  Label
    id: onScreenLabel
    anchors.left: orangeSpell.right
    anchors.top: parent.top
    text: Screen:
    font: verdana-11px-rounded
    color: white
    margin-top: 100
    margin-left: -190

  TextEdit
    id: onScreen
    background-color: white
    anchors.left: spellList.right
    anchors.top: parent.top
    margin-left: -433
    margin-top: 97
    width: 142

  Label
    id: cooldownLabel
    anchors.left: cooldown.left
    anchors.top: parent.top
    margin-top: 40
    margin-left: -60
    text: Cooldown:
    font: verdana-11px-rounded
    color: white

  HorizontalScrollBar
    id: cooldown
    anchors.left: spellList.right
    margin-left: -175
    anchors.top: parent.top
    margin-top: 40
    width: 160
    minimum: 0
    maximum: 60000
    step: 100

  Button
    id: findCD
    anchors.left: cooldown.right
    anchors.top: parent.top
    margin-top: 40
    margin-left: 5
    tooltip: Calcular cooldown automatico?
    text: !
    font: verdana-11px-rounded
    color: white
    size: 15 15

  Label
    id: distanceLabel
    anchors.left: cooldown.right
    anchors.top: parent.top
    margin-top: 70
    margin-left: -218
    text: Distance:
    color: white
    font: verdana-11px-rounded

  HorizontalScrollBar
    id: distance
    anchors.left: spellList.right
    margin-left: -175
    anchors.top: parent.top
    margin-top: 70
    width: 160
    minimum: 0
    maximum: 10
    step: 1

  Button
    id: insertSpell
    text: Adicionar
    font: verdana-11px-rounded
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    size: 190 20
    margin-bottom: 195
    margin-right: 20


  Button
    id: closeButton
    !text: tr('Close')
    color: white
    font: cipsoftFont
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    size: 50 20
    margin-right: 5
      
]], g_ui.getRootWidget())
comboInterface:hide();

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

fugaIcon = setupUI([[
Panel
  height: 40
  BotSwitch
    id: title
    anchors.top: parent.top
    anchors.left: parent.left
    text-align: center
    width: 130
    text: FUGAS
    font: cipsoftFont

  Button
    id: settings
    anchors.top: prev.top
    anchors.left: prev.right
    anchors.right: parent.right
    margin-left: 3
    height: 17
    text: CONFIG
    font: cipsoftFont

  CheckBox
    id: showInfos
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: prev.bottom
    margin-top: 5
    text: ENEMYS INFO?
    font: cipsoftFont
]])

fugaInterface = setupUI([[
UIWindow
  text: Fugas Panel
  size: 530 285
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
    margin: 30 20 15 11
    image-border: 6
    background-color: black
    opacity: 0.75
    padding: 3
    size: 320 235

  TextList
    id: spellList
    anchors.left: parent.left
    anchors.top: parent.top
    padding: 1
    size: 240 215  
    margin-top: 30
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

  CheckBox
    id: reviveOption
    anchors.bottom: parent.bottom
    anchors.horizontalCenter: parent.horizontalCenter
    margin-bottom: 65
    margin-left: 30
    image-source: /images/ui/checkbox_round
    tooltip: Fuga de Reviver [ex: izanagi]

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

  CheckBox
    id: lifesOption
    anchors.bottom: parent.bottom
    anchors.left: reviveOption.right
    margin-bottom: 65
    margin-left: 5
    image-source: /images/ui/checkbox_round
    tooltip: Fuga de Vidas [ex: Jiongu no Jutsu]

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

  CheckBox
    id: multipleOption
    anchors.bottom: parent.bottom
    anchors.left: lifesOption.right
    margin-bottom: 65
    margin-left: 5
    image-source: /images/ui/checkbox_round
    tooltip: Fuga de Diversos Scapes [ex: Bangata Karasu]

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
fugaInterface:hide();

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


keyInterface = setupUI([[
MainWindow
  text: Fuga Panel
  size: 300 400

  Panel
    image-source: /images/ui/panel_flat
    anchors.right: parent.right
    anchors.left: parent.left
    anchors.top: parent.top
    anchors.bottom: separator.top
    margin: 5 5 5 5
    image-border: 6
    padding: 3
    size: 320 235

  TextList
    id: spellList
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    padding: 1
    size: 240 215  
    margin-top: 11
    vertical-scrollbar: spellListScrollBar

  Label
    id: castSpellLabel
    anchors.right: parent.right
    anchors.bottom: castSpell.top
    text: Spell Name
    margin-bottom: 5
    margin-right: 75

  TextEdit
    id: castSpell
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    margin-bottom: 60
    margin-right: 14
    width: 125

  Label
    id: keyLabel
    anchors.left: parent.left
    anchors.bottom: castSpell.top
    text: Key
    margin-bottom: 5
    margin-left: 15

  TextEdit
    id: key
    anchors.left: parent.left
    anchors.bottom: parent.bottom
    margin-bottom: 60
    margin-left: 14
    width: 70
    editable: false

  VerticalScrollBar
    id: spellListScrollBar
    anchors.top: spellList.top
    anchors.bottom: spellList.bottom
    anchors.right: spellList.right
    step: 14
    pixels-scroll: true

  Button
    id: insertKey
    text: Insert Key
    font: cipsoftFont
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    size: 60 25
    margin-right: 5
    margin-bottom: 5

  HorizontalSeparator
    id: separator
    anchors.right: parent.right
    anchors.left: parent.left
    anchors.bottom: closeButton.top
    margin-bottom: 5

  Button
    id: closeButton
    !text: tr('Close')
    font: cipsoftFont
    anchors.left: parent.left
    anchors.bottom: parent.bottom
    size: 45 25
    margin-left: 4
    margin-bottom: 5
      
]], g_ui.getRootWidget())
keyInterface:hide();

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

comboIcon.title:setOn(isOn.comboMacro);
comboIcon.title.onClick = function(widget)
    isOn.comboMacro = not isOn.comboMacro;
    widget:setOn(isOn.comboMacro);
    scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end

comboIcon.settings.onClick = function(widget)
    if not comboInterface:isVisible() then
        comboInterface:show();
        comboInterface:raise();
        comboInterface:focus();
    else
        comboInterface:hide();
        scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
    end
end

comboInterface.closeButton.onClick = function(widget)
    comboInterface:hide();
    scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

comboInterface.cooldown:setText('0ms')
comboInterface.cooldown.onValueChange = function(widget, value)
    if value >= 1000 then
        widget:setText(value/1000 .. 's')
    else
        widget:setText(value .. 'ms')
    end
end

comboInterface.distance:setText('0')
comboInterface.distance.onValueChange = function(widget, value)
    widget:setText(value)
end


comboInterface.sameSpell:setChecked(true);
comboInterface.orangeSpell:setEnabled(false);
comboInterface.sameSpell.onCheckChange = function(widget, checked)
    if checked then
        comboInterface.orangeSpell:setEnabled(false)
    else
        comboInterface.orangeSpell:setEnabled(true)
        comboInterface.orangeSpell:setText(comboInterface.castSpell:getText())
    end
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function refreshComboList(list, table)
    if table then
        for i, child in pairs(list.spellList:getChildren()) do
            child:destroy();
        end
        for _, widget in pairs(comboSpellsWidget) do
            widget:destroy()
        end
        for index, entry in ipairs(table) do
            local label = setupUI(spellEntry, list.spellList)
            local newWidget = setupUI(widgetConfig, g_ui.getRootWidget())
            newWidget:setText(firstLetterUpper(entry.spellCast))
            attachSpellWidgetCallbacks(newWidget, entry.index, storageProfiles.comboSpells)
            if not entry.widgetPos then
                entry.widgetPos = {x = 0, y = 50}
            end
            newWidget:setPosition(entry.widgetPos)
            comboSpellsWidget[entry.index] = newWidget;
            comboSpellsWidget[entry.index] = newWidget;
            label.onDoubleClick = function(widget)
                local spellTable = entry;
                list.castSpell:setText(spellTable.spellCast);
                list.orangeSpell:setText(spellTable.orangeSpell);
                list.onScreen:setText(spellTable.onScreen);
                list.cooldown:setValue(spellTable.cooldown);
                list.distance:setValue(spellTable.distance);
                for i, v in ipairs(storageProfiles.comboSpells) do
                    if v == entry then
                        removeTable(storageProfiles.comboSpells, i)
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
                scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
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
                scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
            end
            if entry.enableTimeSpell then
                newWidget:show();
            else
                newWidget:hide();
            end
            label.remove.onClick = function(widget)
                for i, v in ipairs(storageProfiles.comboSpells) do
                    if v == entry then
                        removeTable(storageProfiles.comboSpells, i)
                    end
                end
                scriptFuncs.reindexTable(table);
                newWidget:destroy();
                label:destroy();
            end
            label.onClick = function(widget)
                comboInterface.moveDown:show();
                comboInterface.moveUp:show();
            end
            label.textToSet:setText(firstLetterUpper('Jutsu: '.. entry.spellCast .. ' | Cooldown: ' .. entry.cooldown ..' | Distance: '.. entry.distance ..''));
	    label.textToSet:setColor("white")
	    label.textToSet:setFont("verdana-11px-rounded")
            label:setTooltip('Msg Laranja: ' .. entry.orangeSpell .. ' | Nome na Tela: ' .. entry.onScreen .. ' ')
        end
        
    end
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

comboInterface.insertSpell.onClick = function(widget)
  local spellName = comboInterface.castSpell:getText():trim():lower();
  local orangeMsg = comboInterface.orangeSpell:getText():trim():lower();
  local onScreen = comboInterface.onScreen:getText();
  orangeMsg = (orangeMsg:len() == 0) and spellName or orangeMsg;
  local cooldown = comboInterface.cooldown:getValue();
  local distance = comboInterface.distance:getValue();
  if (not spellName or spellName:len() == 0) then
      return warn('Invalid Spell Name.');
  end
  if (not comboInterface.sameSpell:isChecked() and comboInterface.orangeSpell:getText():len() == 0) then
      return warn('Invalid Orange Spell.')
  end
  if (not onScreen or onScreen:len() == 0) then
      return warn('Invalid Text On Screen')
  end
  if (cooldown == 0) then
      return warn('Invalid Cooldown.')
  end
  if (distance == 0) then
      return warn('Invalid Distance')
  end
  local newSpell = {
      index = #storageProfiles.comboSpells + 1,
      spellCast = spellName,
      onScreen = onScreen,
      orangeSpell = orangeMsg,
      cooldown = cooldown,
      distance = distance,
      enableTimeSpell = true,
      enabled = true
  }
  table.insert(storageProfiles.comboSpells, newSpell)
  scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles)
  refreshComboList(comboInterface, storageProfiles.comboSpells)
  comboInterface.castSpell:clearText();
  comboInterface.orangeSpell:clearText();
  comboInterface.onScreen:clearText();
  comboInterface.sameSpell:setChecked(true);
  comboInterface.orangeSpell:setEnabled(false);
  comboInterface.cooldown:setValue(0);
  pillsInterface.distance:setValue(0);
end

refreshComboList(comboInterface, storageProfiles.comboSpells);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

comboInterface.moveUp.onClick = function()
  local action = comboInterface.spellList:getFocusedChild();
  if (not action) then return; end
  local index = comboInterface.spellList:getChildIndex(action);
  if (index < 2) then return; end
  comboInterface.spellList:moveChildToIndex(action, index - 1);
  comboInterface.spellList:ensureChildVisible(action);
  storageProfiles.comboSpells[index].index = index - 1;
  storageProfiles.comboSpells[index - 1].index = index;
  table.sort(storageProfiles.comboSpells, function(a,b) return a.index < b.index end)
  scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end

comboInterface.moveDown.onClick = function()
  local action = comboInterface.spellList:getFocusedChild()
  if not action then return end
  local index = comboInterface.spellList:getChildIndex(action)
  if index >= comboInterface.spellList:getChildCount() then return end
  comboInterface.spellList:moveChildToIndex(action, index + 1);
  comboInterface.spellList:ensureChildVisible(action);
  storageProfiles.comboSpells[index].index = index + 1;
  storageProfiles.comboSpells[index + 1].index = index;
  table.sort(storageProfiles.comboSpells, function(a,b) return a.index < b.index end)
  scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

comboInterface.findCD.onClick = function(widget)
    detectOrangeSpell, testSpell = true, true;
    spellTime = {0, ''}
end

macro(1, function()
    if testSpell then
        say(comboInterface.castSpell:getText())
    end
end);



onTalk(function(name, level, mode, text, channelId, pos)
    if not detectOrangeSpell then return; end
    if player:getName() ~= name then return; end

    local verifying = comboInterface.orangeSpell:getText():len() > 0 and comboInterface.orangeSpell:getText():lower():trim() or comboInterface.castSpell:getText():lower():trim();

    if text:lower():trim() == verifying then
        if spellTime[2] == verifying then
            comboInterface.cooldown:setValue(now - spellTime[1]);
            spellTime = {now, verifying}
            detectOrangeSpell = false;
            testSpell = false;
        else
            spellTime = {now, verifying}
        end
    end
end);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

macro(1, function()
    if not (comboSpellsWidget or storageProfiles.comboSpells) then return; end
    for index, spellConfig in ipairs(storageProfiles.comboSpells) do
        local widget = comboSpellsWidget[spellConfig.index];
        if widget then
            if (not spellConfig.cooldownSpells or spellConfig.cooldownSpells < now) then
                widget:setColor('green')
                widget:setText(firstLetterUpper(spellConfig.onScreen) .. ' |  0s')
            else
                widget:setColor('red')
                widget:setText(firstLetterUpper(spellConfig.onScreen) .. ' | ' .. formatRemainingTime(spellConfig.cooldownSpells))
            end
        end
    end
end);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

fugaIcon.title:setOn(isOn.fugaMacro);
fugaIcon.title.onClick = function(widget)
    isOn.fugaMacro = not isOn.fugaMacro;
    widget:setOn(isOn.fugaMacro);
    scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end

fugaIcon.settings.onClick = function(widget)
    if not fugaInterface:isVisible() then
        fugaInterface:show();
        fugaInterface:raise();
        fugaInterface:focus();
    else
        fugaInterface:hide();
        scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
    end
end

fugaInterface.closeButton.onClick = function(widget)
    fugaInterface:hide();
    scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

fugaInterface.hppercent:setText('0%')
fugaInterface.hppercent.onValueChange = function(widget, value)
    widget:setText(value .. '%')
end

fugaInterface.cooldownTotal:setText('0s')
fugaInterface.cooldownTotal.onValueChange = function(widget, value)
    local formattedTime = formatTime(value)
    widget:setText(value .. 's')
    --widget:setText(formattedTime)
end

fugaInterface.cooldownActive:setText('0s')
fugaInterface.cooldownActive.onValueChange = function(widget, value)
    local formattedTime = formatTime(value)
    widget:setText(value .. 's')
    --widget:setText(formattedTime)
end


fugaIcon.showInfos:setChecked(isOn.showInfos)
fugaIcon.showInfos.onClick = function(widget)
    isOn.showInfos = not isOn.showInfos
    widget:setChecked(isOn.showInfos)
end

fugaInterface.sameSpell:setChecked(true);
fugaInterface.orangeSpell:setEnabled(false);
fugaInterface.sameSpell.onCheckChange = function(widget, checked)
    if checked then
        fugaInterface.orangeSpell:setEnabled(false)
    else
        fugaInterface.orangeSpell:setEnabled(true)
        fugaInterface.orangeSpell:setText(fugaInterface.castSpell:getText())
    end
end

fugaInterface.lifesValue:hide();
fugaInterface.lifesOption.onCheckChange = function(self, checked)
    if checked then
        fugaInterface.multipleOption:hide();
        fugaInterface.lifesValue:show();
    else
        fugaInterface.multipleOption:show();
        fugaInterface.lifesValue:hide();
    end
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function refreshFugaList(list, table)
    if table then
        for i, child in pairs(list.spellList:getChildren()) do
            child:destroy();
        end
        for _, widget in pairs(fugaSpellsWidgets) do
            widget:destroy();
        end
        for index, entry in ipairs(table) do
            local label = setupUI(spellEntry, list.spellList)
            local newWidget = setupUI(widgetConfig, g_ui.getRootWidget())
            newWidget:setText(firstLetterUpper(entry.spellCast))
            attachSpellWidgetCallbacks(newWidget, entry.index, storageProfiles.fugaSpells)
  
            if not entry.widgetPos then
                entry.widgetPos = {x = 0, y = 50}
            end
            if entry.enableTimeSpell then
              newWidget:show();
            else
              newWidget:hide();
            end
            newWidget:setPosition(entry.widgetPos)
            fugaSpellsWidgets[entry.index] = newWidget;
            label.onDoubleClick = function(widget)
                local spellTable = entry;
                list.castSpell:setText(spellTable.spellCast);
                list.orangeSpell:setText(spellTable.orangeSpell);
                list.onScreen:setText(spellTable.onScreen);
                list.hppercent:setValue(spellTable.selfHealth);
                list.cooldownTotal:setValue(spellTable.cooldownTotal);
                list.cooldownActive:setValue(spellTable.cooldownActive);
                for i, v in ipairs(storageProfiles.fugaSpells) do
                    if v == entry then
                        removeTable(storageProfiles.fugaSpells, i)
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
                scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
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
                scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
            end
            label.remove.onClick = function(widget)
                for i, v in ipairs(storageProfiles.fugaSpells) do
                    if v == entry then
                        removeTable(storageProfiles.fugaSpells, i)
                    end
                end
                scriptFuncs.reindexTable(table);
                newWidget:destroy();
                label:destroy();
            end
            label.onClick = function(widget)
                fugaInterface.moveDown:show();
                fugaInterface.moveUp:show();
            end
            label.textToSet:setText(firstLetterUpper(entry.spellCast));
	    label.textToSet:setColor("white")
	    label.textToSet:setFont("verdana-11px-rounded")
            label:setTooltip('Orange Message: ' .. entry.orangeSpell .. ' | On Screen: ' .. entry.onScreen .. ' | Total Cooldown: ' .. entry.cooldownTotal.. 's | Active Cooldown: ' .. entry.cooldownActive .. 's | Hppercent: ' .. entry.selfHealth)
        end
    end
  end
  
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

fugaInterface.moveUp.onClick = function()
  local action = fugaInterface.spellList:getFocusedChild();
  if (not action) then return; end
  local index = fugaInterface.spellList:getChildIndex(action);
  if (index < 2) then return; end
  fugaInterface.spellList:moveChildToIndex(action, index - 1);
  fugaInterface.spellList:ensureChildVisible(action);
  storageProfiles.fugaSpells[index].index = index - 1;
  storageProfiles.fugaSpells[index - 1].index = index;
  table.sort(storageProfiles.fugaSpells, function(a,b) return a.index < b.index end)
  scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end

fugaInterface.moveDown.onClick = function()
  local action = fugaInterface.spellList:getFocusedChild()
  if not action then return; end
  local index = fugaInterface.spellList:getChildIndex(action)
  if index >= fugaInterface.spellList:getChildCount() then return end
  fugaInterface.spellList:moveChildToIndex(action, index + 1);
  fugaInterface.spellList:ensureChildVisible(action);
  storageProfiles.fugaSpells[index].index = index + 1;
  storageProfiles.fugaSpells[index + 1].index = index;
  table.sort(storageProfiles.fugaSpells, function(a,b) return a.index < b.index end)
  scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

fugaInterface.insertSpell.onClick = function(widget)
    local spellName = fugaInterface.castSpell:getText():trim();
    local orangeMsg = fugaInterface.orangeSpell:getText():trim();
    local onScreen = fugaInterface.onScreen:getText();
    orangeMsg = (orangeMsg:len() == 0) and spellName or orangeMsg;
    local hppercent = fugaInterface.hppercent:getValue();
    local cooldownTotal = fugaInterface.cooldownTotal:getValue();
    local cooldownActive = fugaInterface.cooldownActive:getValue();
    
    if spellName:len() == 0 then
        return warn('Invalid Spell Name.');
    end
    if not fugaInterface.sameSpell:isChecked() and orangeMsg:len() == 0 then
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
        index = #storageProfiles.fugaSpells + 1,
        spellCast = spellName,
        orangeSpell = orangeMsg,
        onScreen = onScreen,
        selfHealth = hppercent,
        cooldownActive = cooldownActive,
        cooldownTotal = cooldownTotal,
        enableTimeSpell = true,
        enabled = true
    }
  
    if fugaInterface.lifesOption:isChecked() then
        spellConfig.lifes = 0;
        spellConfig.enableLifes = true;
        if fugaInterface.lifesValue:getValue() == 0 then
          return warn('Invalid Life Value.')
        end
        spellConfig.amountLifes = fugaInterface.lifesValue:getValue();
    end
    if fugaInterface.reviveOption:isChecked() then
        spellConfig.enableRevive = true;
        spellConfig.alreadyChecked = false;
    end
    if fugaInterface.multipleOption:isChecked() then
        spellConfig.enableMultiple = true; 
        spellConfig.count = 3;
    end
    table.insert(storageProfiles.fugaSpells, spellConfig)
    refreshFugaList(fugaInterface, storageProfiles.fugaSpells)
    scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles)
  
    fugaInterface.castSpell:clearText()
    fugaInterface.orangeSpell:clearText()
    fugaInterface.onScreen:clearText()
    fugaInterface.cooldownTotal:setValue(0)
    fugaInterface.cooldownActive:setValue(0)
    fugaInterface.hppercent:setValue(0)
    fugaInterface.reviveOption:setChecked(false);
    fugaInterface.lifesOption:setChecked(false);
    fugaInterface.multipleOption:setChecked(false);
    fugaInterface.multipleOption:show();
    fugaInterface.lifesValue:hide();
  end
  
  refreshFugaList(fugaInterface, storageProfiles.fugaSpells);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

storage.widgetPos = storage.widgetPos or {};
informationWidget = {};

local widgetNames = {
  'showText',
}

for i, widgetName in ipairs(widgetNames) do
    informationWidget[widgetName] = setupUI(widgetConfig, g_ui.getRootWidget())
end

local function attachSpellWidgetCallbacks(key)
  informationWidget[key].onDragEnter = function(widget, mousePos)
      if not modules.corelib.g_keyboard.isCtrlPressed() then
        return false
      end
      widget:breakAnchors()
      widget.movingReference = { x = mousePos.x - widget:getX(), y = mousePos.y - widget:getY() }
      return true
  end

  informationWidget[key].onDragMove = function(widget, mousePos, moved)
      local parentRect = widget:getParent():getRect()
      local x = math.min(math.max(parentRect.x, mousePos.x - widget.movingReference.x), parentRect.x + parentRect.width - widget:getWidth())
      local y = math.min(math.max(parentRect.y - widget:getParent():getMarginTop(), mousePos.y - widget.movingReference.y), parentRect.y + parentRect.height - widget:getHeight())        
      widget:move(x, y)
      return true
  end

  informationWidget[key].onDragLeave = function(widget, pos)
    storage.widgetPos[key] = {}
    storage.widgetPos[key].x = widget:getX();
    storage.widgetPos[key].y = widget:getY();
    return true
  end
end

for key, value in pairs(informationWidget) do
  attachSpellWidgetCallbacks(key)
  informationWidget[key]:setPosition(
      storage.widgetPos[key] or {0, 50}
  )
end

local toShow = informationWidget['showText'];

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

macro(100, function()
  if isOn.showInfos then
      for _, value in ipairs(storageProfiles.fugaSpells) do
          if value.selfHealth then
              toShow:show()
              toShow:setText('INIMIGOS: ' .. getPlayersAttack(false) .. ' | PERCENT: ' .. calculatePercentage(value.selfHealth) .. '%')
              return;
          end
      end
  else
      toShow:hide();
  end
end);
 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
macro(1, function()
    if not (fugaSpellsWidgets and storageProfiles.fugaSpells) then return; end
    
    for index, spellConfig in ipairs(storageProfiles.fugaSpells) do
        local widget = fugaSpellsWidgets[spellConfig.index];
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

keyIcon.title:setOn(isOn.keyMacro);
keyIcon.title.onClick = function(widget)
    isOn.keyMacro = not isOn.keyMacro;
    widget:setOn(isOn.keyMacro);
    scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end

keyIcon.settings.onClick = function(widget)
    if not keyInterface:isVisible() then
        keyInterface:show();
        keyInterface:raise();
        keyInterface:focus();
    else
        keyInterface:hide();
        scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
    end
end

keyInterface.closeButton.onClick = function(widget)
    keyInterface:hide();
    scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

keyInterface.key.onHoverChange = function(widget, hovered)
  if hovered then
      x = true;
      onKeyPress(function(key)
          if not x then return; end
          widget:setText(key)
      end)
  else
      x = false;
  end
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function refreshKeyList(list, table)
  if table then
      for i, child in pairs(list.spellList:getChildren()) do
          child:destroy();
      end
      for index, entry in ipairs(table) do
          local label = setupUI(spellEntry, list.spellList)
          label.showTimespell:hide();
          label.onDoubleClick = function(widget)
              local spellTable = entry;
              list.key:setText(spellTable.keyPress);
              list.castSpell:setText(spellTable.spellCast);
              for i, v in ipairs(storageProfiles.keySpells) do
                  if v == entry then
                      removeTable(storageProfiles.keySpells, i)
                  end
              end
              scriptFuncs.reindexTable(table);
              label:destroy();
          end
          label.enabled:setChecked(entry.enabled);
          label.enabled:setTooltip(not entry.enabled and 'Enable Spell' or 'Disable Spell');
          label.enabled.onClick = function(widget)
              entry.enabled = not entry.enabled;
              label.enabled:setChecked(entry.enabled);
              label.enabled:setTooltip(not entry.enabled and 'Enable Spell' or 'Disable Spell');
              scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
          end
          label.remove.onClick = function(widget)
              for i, v in ipairs(storageProfiles.keySpells) do
                  if v == entry then
                      removeTable(storageProfiles.keySpells, i)
                  end
              end
              scriptFuncs.reindexTable(storageProfiles.keySpells);
              label:destroy();
          end
          label.textToSet:setText(firstLetterUpper(entry.spellCast) .. ' | Key: ' .. entry.keyPress);
      end
  end
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

keyInterface.insertKey.onClick = function(widget)
  local keyPressed = keyInterface.key:getText();
  local spellName = keyInterface.castSpell:getText():lower():trim();

  if not keyPressed or keyPressed:len() == 0 then
      return warn('Invalid Key.')
  end
  for _, config in ipairs(storageProfiles.keySpells) do
    if config.keyPress == keyPressed then
      return warn('Key Already Added.')
    end
  end
  table.insert(storageProfiles.keySpells, {
      index = #storageProfiles.keySpells+1,
      spellCast = spellName,
      keyPress = keyPressed,
      enabled = true
  });
  refreshKeyList(keyInterface, storageProfiles.keySpells)
  scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
  keyInterface.key:clearText();
  keyInterface.castSpell:clearText();
end

refreshKeyList(keyInterface, storageProfiles.keySpells);

macro(storage.scrollBars1.macroDelay, function()
    if (not comboIcon.title:isOn()) then return; end
    if stopCombo and stopCombo >= now then return; end
    if stopToCast() or isAnySelectedKeyPressed() or not g_game.isAttacking() then return; end
    local playerPos = player:getPosition();
    local target = g_game.getAttackingCreature();
    local targetPos = target:getPosition();
    if not targetPos then return; end
    local targetDistance = getDistanceBetween(playerPos, targetPos);
    for index, value in ipairs(storageProfiles.comboSpells) do
        if value.enabled and targetDistance <= value.distance then
            if (not value.cooldownSpells or value.cooldownSpells <= now) then
                say(value.spellCast)
            end
        end
    end
end);

local selfPlayer = g_game.getLocalPlayer();
macro(1, function()
    if not fugaIcon.title:isOn() then return; end
    if isInPz() then return; end
    local selfHealth = selfPlayer:getHealthPercent();
    for key, value in ipairs(storageProfiles.fugaSpells) do
        if value.enabled and selfHealth <= calculatePercentage(value.selfHealth) then
            if (not value.totalCooldown or value.totalCooldown <= now) then
                if not canCastFuga() then
			  stopCombo = now + 250;
                    forceSay(value.spellCast);
                end
            end
        end
    end
end);

macro(1, function()
if not g_mouse.isPressed(7) then return; end
    if not fugaIcon.title:isOn() then return; end
    for key, value in ipairs(storageProfiles.fugaSpells) do
       if value.enabled and (g_mouse.isPressed(7))then
            if (not value.totalCooldown or value.totalCooldown <= now) then
                if not canCastFuga() then
		    stopCombo = now + 250;
                    return forceSay(value.spellCast);
        end
            end
        end
    end
end)

macro(storage.scrollBars1.macroDelay, function()
  if not keyIcon.title:isOn() then return; end
  if modules.game_console:isChatEnabled() then return; end
  for index, value in ipairs(storageProfiles.keySpells) do
      if value.enabled and (modules.corelib.g_keyboard.areKeysPressed(value.keyPress)) then
	stopCombo = now + 250;
          say(value.spellCast)
      end
  end
end);

onTalk(function(name, level, mode, text, channelId, pos)
    text = text:lower();
    if name ~= player:getName() then return; end
    if text == 'Bijuu Yaiba' then
        yaibaSlow = os.time() + 15
    end
    for index, value in ipairs(CONFIG.pot) do
        if text == value.orangeText:lower() then
            value.exhaust = now + value.cooldown;
        end
    end
    for index, value in ipairs(CONFIG.pot2) do
        if text == value.orangeText:lower() then
            value.exhaust = now + value.cooldown;
        end
    end
    for index, value in ipairs(storageProfiles.comboSpells) do
        if text == value.orangeSpell then
            value.cooldownSpells = now + value.cooldown;
        end
    end
    for index, value in ipairs(storageProfiles.fugaSpells) do
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

onTextMessage(function(mode, text)
    for key, value in ipairs(storageProfiles.fugaSpells) do
        if value.enableLifes then
            if text:lower():find('morreu e renasceu') and value.activeCooldown and value.activeCooldown >= now then
                value.lifes = value.lifes - 1;
            end
        end
    end
end);

onPlayerPositionChange(function(newPos, oldPos)
    local izanagiPos = { x = 1214, y = 686, z = 6 };
    for key, value in ipairs(storageProfiles.fugaSpells) do
        if value.enableRevive and value.spellCast == 'izanagi' then
            if newPos.x == izanagiPos.x and newPos.y == izanagiPos.y and newPos.z == izanagiPos.z then
                value.activeCooldown = nil;
                value.alreadyChecked = true;
            end
        end
    end
end);

UI.Separator()

UI.Label('PAINEL MACROS'):setFont('cipsoftFont')

local panelName = "extras"
local ui = setupUI([[
Panel
  height: 40
  background-color: 
  opacity: 


  Button
    id: editPainel
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: parent.right
    height: 20
    font: cipsoftFont
    text: "- Essencial -"
    color: yellow
    
  Button
    id: editMusica
    anchors.top: editPainel.bottom
    anchors.left: parent.left
    anchors.right: parent.right
    height: 20
    font: cipsoftFont
    text: "ESPECIAIS"
    color: yellow


]])

  ui:setId(PanelName)

if not storage[panelName] then
  storage[panelName] = {
}
end

local settings = storage[panelName]
PainelsWindow = UI.createWidget('PainelWindow', rootWidget)
PainelsWindow:hide()

extrasWindow = UI.createWindow('ExtrasWindow', rootWidget)
extrasWindow:hide()

extrasWindow.closeButton.onClick = function(widget)
  extrasWindow:hide()
end

local rightPanel = extrasWindow.content.right
local leftPanel = extrasWindow.content.left

-- Definições dos botões
ui.editMusica.onClick = function(widget)
  extrasWindow:show()
  extrasWindow:raise()
  extrasWindow:focus()
end
 PainelsWindow.closeButton.onClick = function(widget)
    PainelsWindow:hide()
  end


ui.editPainel.onClick = function(widget)
    PainelsWindow:show()
    PainelsWindow:raise()
    PainelsWindow:focus()
end






---------------------------------

local configSeloBuff1 = {
    cooldownSelo1 = 5000, 
    possibleTexts = { 
        'jutsu foi selado'
    },
}

onTextMessage(function(mode, text)
    text = text:lower();
    for _, possibleText in ipairs(configSeloBuff1.possibleTexts) do
        filterText = possibleText:trim():lower();
        if text:find(filterText) then
            configSeloBuff1.cooldownUse = now + configSeloBuff1.cooldownSelo1;
            break;
        end
    end
end);








--------PISCAR
macro(100, function()
for _, spec in ipairs(getSpectators(posz())) do
    if spec:isPlayer() then
        if spec == player then
            player:setMarked("black")
        elseif spec:isPartyMember() then
            spec:setMarked("yellow")
        elseif spec:getEmblem() ~= 1 then
            spec:setMarked("red")
        end
    end
end
end)
UI.Separator()
------------------------------selarbiju
------------------------


UI.Label('Selar Bijuu:', leftPanel):setFont('cipsoftFont')

local panelName = "Selar"
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
    !text: tr('Kekkai Shihou Fuujin')
    margin-left: 2
    width: 180


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

]], leftPanel)
ui:setId(panelName)

if not storage[panelName] then
  storage[panelName] = {
      id = 3155,
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
    ui.help:setText("If " .. desc .. " HP<" .. storage[panelName].hp .. "%")
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


macro(1, function()
 if not storage[panelName].enabled then return end

 if storage[panelName].setting then
    if g_game.isAttacking() and g_game.getAttackingCreature():getHealthPercent() < storage[panelName].hp then
        say "Kekkai Shihou Fuujin"
        say "Kekkai Shihou Fuujin"
        say "Kekkai Shihou Fuujin"
     
    end
    end
end)
-------------------


UI.Label('TIME SPELLS:', rightPanel):setFont('cipsoftFont')

-- Tools UI (Activate & Setup);
setDefaultTab("Main")
timeSpellPanelName = "timespellbot"
local ui = setupUI([[
Panel
  height: 17
  BotSwitch
    id: title
    anchors.top: parent.top
    anchors.left: parent.left
    text-align: center
    width: 130
    !text: tr('TIME SPELL')
    font: cipsoftFont

  Button
    id: settings
    anchors.top: prev.top
    anchors.left: prev.right
    anchors.right: parent.right
    margin-left: 3
    height: 17
    text: CONFIG
    font: cipsoftFont
]], rightPanel)
ui:setId(timeSpellPanelName);

local windowUI = setupUI([[
MainWindow
  !text: tr('CONFIG OTHERS TIMES')
  font: sans-bold-16px
  color: white
  size: 520 312
  
  Panel
    id: MainPanel
    image-source: /images/ui/panel_flat
    anchors.top: parent.top
    anchors.left: parent.left
    image-border: 6
    padding: 3
    size: 492 225

    
    TextList
      id: spellList
      anchors.left: parent.left
      anchors.bottom: parent.bottom
      padding: 1
      size: 270 212    
      margin-bottom: 3
      margin-left: 3
      vertical-scrollbar: spellListScrollBar
      
    VerticalScrollBar
      id: spellListScrollBar
      anchors.top: spellList.top
      anchors.bottom: spellList.bottom
      anchors.right: spellList.right
      step: 14
      pixels-scroll: true

    Label
      id: spellNameLabel
      anchors.left: spellList.right
      anchors.top: spellList.top
      text: Spell Name:
      margin-top: 10
      margin-left: 7

    TextEdit
      id: spellName
      anchors.left: spellNameLabel.right
      anchors.top: parent.top
      margin-top: 5
      margin-left: 12
      width: 125

    Label
      id: onScreenLabel
      anchors.left: spellNameLabel.left
      anchors.top: spellName.bottom
      margin-top: 10
      text: On Screen:

    TextEdit
      id: onScreen
      anchors.left: onScreenLabel.right
      anchors.top: prev.top
      margin-top: -5
      margin-left: 17
      width: 125

    Label
      id: activeTimeLabel
      anchors.left: onScreenLabel.left
      anchors.top: onScreen.bottom
      text: Active Time:
      margin-top: 10

    TextEdit
      id: activeTime
      anchors.left: activeTimeLabel.right
      anchors.top: prev.top
      margin-top: -5
      margin-left: 5
      width: 125

    Label
      id: totalTimeLabel
      anchors.left: activeTimeLabel.left
      anchors.top: activeTime.bottom
      text: Total Time:
      margin-top: 10

    TextEdit
      id: totalTime
      anchors.left: totalTimeLabel.right
      anchors.top: prev.top
      margin-top: -5
      margin-left: 13
      width: 125

    Label
      id: posXLabel
      anchors.left: totalTimeLabel.left
      anchors.top: totalTime.bottom
      text: X:
      margin-top: 10

    TextEdit
      id: posX
      anchors.left: posXLabel.right
      anchors.top: prev.top
      margin-top: -5
      margin-left: 68
      width: 35

    Label
      id: posYLabel
      anchors.left: posX.right
      anchors.top: posX.top
      text: Y:
      margin-top: 5
      margin-left: 25

    TextEdit
      id: posY
      anchors.left: posYLabel.right
      anchors.top: prev.top
      margin-top: -5
      margin-left: 21
      width: 35

    Button
      id: addSpell
      anchors.left: spellList.right
      anchors.bottom: parent.bottom
      margin-bottom: 2
      margin-left: 8
      text: Add
      size: 200 17
      font: cipsoftFont

  VerticalSeparator
    id: sep
    anchors.top: parent.top
    anchors.left: prev.right
    anchors.bottom: MainPanel.bottom
    margin-left: 10
    margin-bottom: 5
    
  Label
    anchors.left: prev.right
    anchors.right: parent.right
    anchors.top: parent.top
    text-align: center
    text: 

  HorizontalSeparator
    anchors.left: prev.left
    anchors.top: prev.bottom  
    anchors.right: prev.right
    margin-top: 5
    margin-left: 10

  Label 
    id: FirstAditionalLabel
    anchors.top: prev.bottom
    anchors.left: prev.left
    margin-top: 10
    margin-left: 5
    text: 

  Label 
    anchors.top: prev.bottom
    anchors.left: prev.left
    margin-top: 10
    text: 

  Label 
    anchors.top: prev.bottom
    anchors.left: prev.left
    margin-top: 10
    text: 

  Label 
    anchors.top: prev.bottom
    anchors.left: prev.left
    margin-top: 10
    text: 

  Label 
    anchors.top: prev.bottom
    anchors.left: prev.left
    margin-top: 10
    text: 

  HorizontalSeparator
    id: separator
    anchors.right: parent.right
    anchors.left: parent.left
    anchors.bottom: closeButton.top
    margin-bottom: 8    

  Button
    id: closeButton
    !text: tr('Close')
    font: cipsoftFont
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    size: 45 21
    margin-top: 15
    margin-right: 5
      
]], g_ui.getRootWidget());
windowUI:hide();
local configName = modules.game_bot.contentsPanel.config:getCurrentOption().text;
TimeSpellConfig = {
    spells = {},
};

local spellsWidgets = {};

local timeSpellFile = "/bot/" .. configName .. "/".. name() .. "_TimeSpell.json";
local MainPanel = windowUI.MainPanel;

local editActiveTime = nil;
local editTotalTime = nil;

if g_resources.fileExists(timeSpellFile) then
    local status, result = pcall(function() 
      return json.decode(g_resources.readFileContents(timeSpellFile)) 
    end)
    if not status then
      return onError("Error loading file (" .. timeSpellFile .. "). To fix the problem, delete TimeSpell.json. Details:" .. result)
    end
    TimeSpellConfig = result
    if (type(TimeSpellConfig.spells) ~= 'table') then
        TimeSpellConfig.spells = {};
    end

    for i, object in pairs(TimeSpellConfig.spells) do
        if (object.totalCd - now > object.totalTime) then
            TimeSpellConfig.spells[i].totalCd = 0;
            TimeSpellConfig.spells[i].activeCd = 0;
        end
    end
end

function timeSpellConfigSave()
    local configFile =  timeSpellFile;

    local status, result = pcall(function() 
        return json.encode(TimeSpellConfig, 2) 
    end);

    if not status then
        return onError("Error saving configuration. Details: " .. result);
    end
      
    if result:len() > 100 * 1024 * 1024 then
        return onError("Configuration file over 100MB will not be saved.");
    end

    g_resources.writeFileContents(timeSpellFile, result);
end

ui.title:setOn(TimeSpellConfig.enabled);
ui.title.onClick = function(widget)
    TimeSpellConfig.enabled = not TimeSpellConfig.enabled;
    widget:setOn(TimeSpellConfig.enabled);

    timeSpellConfigSave();

    if (not TimeSpellConfig.enabled) then
        for i, widget in pairs(spellsWidgets) do
            if (widget ~= nil) then
                spellsWidgets[i]:destroy();
                spellsWidgets[i] = nil;
            end
        end
    end
end
ui.settings.onClick = function(widget)
    windowUI:show();
    windowUI:raise();
    windowUI:focus();
end
windowUI.closeButton.onClick = function(widget)
    windowUI:hide();
    timeSpellConfigSave();
end

local destroySpellWidget = function(key)
    spellsWidgets[key]:destroy();
    spellsWidgets[key] = nil;
end

local refreshSpells = function()
    if TimeSpellConfig.spells then
      for i, child in pairs(MainPanel.spellList:getChildren()) do
        child:destroy();
      end
      for _, entry in pairs(TimeSpellConfig.spells) do
        local label = UI.createWidget('SpellEntry', MainPanel.spellList);
        label.onDoubleClick = function(widget)
            local spellTable = entry;
            TimeSpellConfig.spells[entry.spell] = nil;
            reindexTable(TimeSpellConfig.spells);
            if (spellsWidgets[spellTable.spell] ~= nil) then
                spellsWidgets[spellTable.spell]:destroy();
                spellsWidgets[spellTable.spell] = nil;
            end
            MainPanel.spellName:setText(spellTable.spell);
            MainPanel.onScreen:setText(spellTable.onScreen);
            MainPanel.activeTime:setText(spellTable.activeTime);
            MainPanel.totalTime:setText(spellTable.totalTime);
            MainPanel.posX:setText(spellTable.x);
            MainPanel.posY:setText(spellTable.y);
            label:destroy();
        end
        label.enabled:setChecked(entry.enabled);
        label.enabled.onClick = function(widget)
          entry.enabled = not entry.enabled;
          label.enabled:setChecked(entry.enabled);
        end
        label.remove.onClick = function(widget)
          TimeSpellConfig.spells[entry.spell] = nil;
          destroySpellWidget(entry.spell);
          reindexTable(TimeSpellConfig.spells);
          label:destroy();
        end
        label:setText('['.. entry.onScreen .. ']: Cooldown: ' .. entry.totalTime / 1000 .. 's');
      end
    end
end

refreshSpells();

MainPanel.addSpell.onClick = function(widget)

    local spellName = MainPanel.spellName:getText():trim():lower();
    local onScreenName = MainPanel.onScreen:getText():trim();
    local activeTime = tonumber(MainPanel.activeTime:getText()) or 0;
    local totalTime = tonumber(MainPanel.totalTime:getText());
    local posX = tonumber(MainPanel.posX:getText()) or 0;
    local posY = tonumber(MainPanel.posY:getText()) or 39;

    if (not totalTime) then
        return warn('TimeSpell: Enter a valid cooldown.');
    end

    if (not posX) then
        return warn('TimeSpell: Enter a valid Y position.');
    end

    if (not posY) then
        return warn('TimeSpell: Enter a valid Y position.');
    end

    if (spellName:len() == 0) then
        return warn('TimeSpell: Enter a valid spell.');
    end

    if (onScreenName:len() == 0) then
        return warn('TimeSpell: Put a name on OnScreen.');
    end

    TimeSpellConfig.spells[spellName] = { 
      index = #TimeSpellConfig.spells+1, 
      spell = spellName, 
      onScreen = onScreenName, 
      activeTime = activeTime,
      activeCd = 0,
      totalTime = totalTime,
      totalCd = 0,
      x = posX,
      y = posY,
      enabled = true,
    };

    MainPanel.spellName:setText('');
    MainPanel.onScreen:setText('');
    MainPanel.activeTime:setText('');
    MainPanel.totalTime:setText('');
    MainPanel.posX:setText('');
    MainPanel.posY:setText('');
    refreshSpells();
end

local spellWidget = [[
UIWidget
  background-color: black
  font: verdana-11px-rounded
  opacity: 0.70
  padding: 0 8
  focusable: true
  phantom: false
  draggable: true
  text-auto-resize: true
]];


local function formatRemainingTime(time)
    local remainingTime = (time - now) / 1000;
    local timeText = '';
    timeText = string.format("%.0f", (time - now) / 1000).. "s";
    return timeText;
end

local function attachSpellWidgetCallbacks(key)
    spellsWidgets[key].onDragEnter = function(widget, mousePos)
        if not modules.corelib.g_keyboard.isCtrlPressed() then
          return false
        end
        widget:breakAnchors()
        widget.movingReference = { x = mousePos.x - widget:getX(), y = mousePos.y - widget:getY() }
        return true
    end
  
    spellsWidgets[key].onDragMove = function(widget, mousePos, moved)
        local parentRect = widget:getParent():getRect()
        local x = math.min(math.max(parentRect.x, mousePos.x - widget.movingReference.x), parentRect.x + parentRect.width - widget:getWidth())
        local y = math.min(math.max(parentRect.y - widget:getParent():getMarginTop(), mousePos.y - widget.movingReference.y), parentRect.y + parentRect.height - widget:getHeight())        
        widget:move(x, y)
        return true
    end
  
    spellsWidgets[key].onDragLeave = function(widget, pos)
      TimeSpellConfig.spells[key].x = widget:getX();
      TimeSpellConfig.spells[key].y = widget:getY();
      timeSpellConfigSave();
      return true
    end
end

local TimeSpellMacro = macro(100, function() 
    if (not ui.title:isOn()) then return; end

    for index, object in pairs(TimeSpellConfig.spells) do
      if (not object.enabled and spellsWidgets[object.spell] ~= nil) then
          spellsWidgets[object.spell]:destroy();
          spellsWidgets[object.spell] = nil;
      elseif (object.enabled) then
          if (spellsWidgets[object.spell] == nil) then
              spellsWidgets[object.spell] = setupUI(spellWidget, g_ui.getRootWidget());
              spellsWidgets[object.spell]:setPosition({ x = object.x, y = object.y })
              attachSpellWidgetCallbacks(object.spell);
          end
          
          if (not object.totalCd or object.totalCd < now) then
              spellsWidgets[object.spell]:setText(object.onScreen .. ': 0s');
              spellsWidgets[object.spell]:setColor('green');
          elseif (object.activeCd >= now) then
              spellsWidgets[object.spell]:setColor('#00FFFF');
              local timeText = formatRemainingTime(object.activeCd);
              spellsWidgets[object.spell]:setText(object.onScreen .. ': ' .. timeText);
          else
              spellsWidgets[object.spell]:setColor('#FF4040');
              local timeText = formatRemainingTime(object.totalCd);
              spellsWidgets[object.spell]:setText(object.onScreen .. ': ' .. timeText);
          end
      end
    end
end);

onTalk(function(name, level, mode, text, channelId, pos)
    if (name ~= player:getName()) then return; end

    text = text:lower();
    if (TimeSpellConfig.spells[text] == nil) then return; end
    if (TimeSpellConfig.spells[text].activeTime > 0) then
        TimeSpellConfig.spells[text].activeCd = now + TimeSpellConfig.spells[text].activeTime;
    end
    TimeSpellConfig.spells[text].totalCd = now + TimeSpellConfig.spells[text].totalTime;
    timeSpellConfigSave();
end);


local spellEntry = [[
SpellEntry < Label
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

  $focus:
    background-color: #00000055

  Button
    id: remove
    !text: tr('x')
    anchors.right: parent.right
    margin-right: 15
    width: 15
    height: 15
]]

local configName = modules.game_bot.contentsPanel.config:getCurrentOption().text



------------------------PAINEL-----------------------------

rootWidget = g_ui.getRootWidget()
if rootWidget then
    PainelsWindow = UI.createWidget('PainelWindow', rootWidget)
    PainelsWindow:hide()
    TabBar = PainelsWindow.paTabBar
    TabBar:setContentWidget(PainelsWindow.paImagem)
   for v = 1, 1 do
   

hpPanel4 = g_ui.createWidget("hpPanel") -- Creates Panel
cmbPanel2 = g_ui.createWidget("cPanel") -- Creates Panel
hpPanel = g_ui.createWidget("hpPanel") -- Creates Panel

hpPanel2 = g_ui.createWidget("hpPanel") -- Creates Panel

hpPanel3 = g_ui.createWidget("hpPanel") -- Creates Panel






TabBar:addTab("Buff", hpPanel4)
        color= UI.Label("ElDevBorges",hpPanel4)
color:setColor("orange")
        UI.Separator(hpPanel4)
        color= UI.Label("Buffs:",hpPanel4)
color:setColor("red")



warning = function() end

local startTime = 0
local duration = 0
local isRunning = false

local function startCronometro(newDuration)
    startTime = now
    duration = newDuration
    isRunning = true
    selado = true
end

local function stopCronometro()
    isRunning = false
    selado = false
end

onTextMessage(function(mode, text)
    local match = text:lower():match('seu jutsu foi selado por (%d+) segundos')
    if match then
        local newDuration = tonumber(match)
        if newDuration then
            startCronometro(newDuration)
        end
    end
end)


macro(100, function()
    if isRunning then
        local elapsedTime = (now - startTime) / 1000
        if elapsedTime >= duration then
            stopCronometro()
        end
    end
end)



local buff1 = storage.kekkeiBuff
local buff2 = storage.Buff
local medicinekekkei = tonumber(storage.kekkeiMedicine)
local medicinebuff = tonumber(storage.buffMedicine)

buff = macro(1000, 'buff', function()
    if player:getSkillLevel(3) <= medicinekekkei and not isInProtectionZone() and not selado then
        say(buff1)
    end

    schedule(1000, function()
        if player:getSkillLevel(3) <= medicinebuff and not isInProtectionZone() and not selado then
            say(buff2)
        end
    end)
end,hpPanel4)

addIcon("buff", {item = 10825, text = "BUFF"}, buff)





addTextEdit("FollowPlayer", storage.kekkeiBuff or "kekkei genkai", function(widget, text)
    storage.kekkeiBuff = text;
end,hpPanel4);

labelBuff = UI.Label ("Buff",hpPanel4)
addTextEdit("FollowPlayer", storage.Buff or "Buff", function(widget, text)
    storage.Buff = text;
end,hpPanel4);

labelBuff = UI.Label ("MedicineSkill sem kekkei",hpPanel4)
addTextEdit("FollowPlayer", storage.kekkeiMedicine or 0, function(widget, text)
    storage.kekkeiMedicine = text;
end, hpPanel4);

labelBuff = UI.Label ("MedicineSkill com kekkei",hpPanel4)
addTextEdit("FollowPlayer", storage.buffMedicine or 0, function(widget, text)
    storage.buffMedicine = text;
end,hpPanel4);


TabBar:addTab("Curas", hpPanel)
        color= UI.Label("ElDevBorges",hpPanel)
color:setColor("orange")
        UI.Separator(hpPanel)
        
        

UI.Label('ID BIJUU:', hpPanel):setFont('cipsoftFont')

addTextEdit("outfitBijuu", storage.outfitBijuu or "302", function(widget, text)
	storage.outfitBijuu = tonumber(text)
end, hpPanel)

UI.Separator(leftPanel)


CONFIG = {
   regen = {
        {spell = 'big regeneration', cooldown = 100},
    },
    regenBju = {
        {spell = 'bijuu regeneration', cooldown = 100},
    },
    pot = {
        {id = 107, orangeText = 'i feel better!', cooldown = 400},
    },
  yaiba = {
        {spell = 'bijuu yaiba', cooldown = 14000},
    },
    pot2 = {
        {id = 11813, orangeText = 'i feel better!', cooldown = 400},
    }
  }


macro(1, function()
    local hppercent = hppercent();
    if isInPz() then return; end
    if player:getOutfit().type == storage.outfitBijuu and hppercent <= 99 then
        for index, value in ipairs(CONFIG.regenBju) do
            if (not value.exhaust or value.exhaust <= now) then
                say(value.spell)
            end
        end
    end
end)



os = os or modules.os;
local playerName = player:getName()





OutfitCheck = function()
	return player:getOutfit().type == tonumber(OutfitBijuu)
end

onTalk(function(name, _, _, text)
    if name == player:getName() then
        if text == 'Bijuu Yaiba' then
            yaibaSlow = os.time() + 15
        end
    end
end)

macro(1,'big regeneration', function()
    if isInPz() then
        return
    end
    if yaibaSlow and yaibaSlow >= os.time() then return; end
        if player:getOutfit().type == 302 then
        say('bijuu yaiba')
    end
end)







-- Configuração



onTalk(function(name, level, mode, text, channelId, pos)
 if name ~= player:getName() then return end
 if text:lower() == id and storage.time.t < now then
  storage.time.t = now + tempo1
 end
end, leftPanel)
 




-----------CORRER

TabBar:addTab("Correr", hpPanel3)
UI.Label('CORRER:', hpPanel3):setFont('cipsoftFont')
addTextEdit("hasteSpell", storage.hasteSpell or "concentrate chakra feet", function(widget, text)
    storage.hasteSpell = text
end, hpPanel3)

macro(1, 'Correr', function()
    if getPlayersAttack() >= 1 then return; end
    delay(100)
    local isSealed = storage.sealedTypes and storage.sealedTypes.speed and storage.sealedTypes.speed >= os.time();
    if (not isSealed and not hasHaste()) then
        say(storage.hasteSpell);
    end
end, hpPanel3)

-----------BUGMAP
local bugMap = {};

bugmap = macro(1, "Bug Map", function()
    if (modules.game_console:isChatEnabled() or modules.corelib.g_keyboard.isCtrlPressed()) then return; end
    local pos = pos();
    for key, config in pairs(bugMap.directions) do
        if (bugMap.isKeyPressed(key)) then
            if (storage.bugMapCheck or config.direction) then
                if (config.direction) then
					turn(config.direction);
				end
                local tile = g_map.getTile({x = pos.x + config.x, y = pos.y + config.y, z = pos.z});
                if (tile) then
					return g_game.use(tile:getTopUseThing());
				end
            end
        end
    end
end, hpPanel3);

bugmap = addIcon("Bug Map", {item = 10610, text = "Bug Map"}, bugmap)



bugMap.checkBox = setupUI([[
CheckBox
  id: checkBox
  font: cipsoftFont
  text: Diagonal ON?
]], hpPanel3);

bugMap.checkBox.onCheckChange = function(widget, checked)
    storage.bugMapCheck = checked;
end

if storage.bugMapCheck == nil then
	storage.bugMapCheck = true;
end

bugMap.checkBox:setChecked(storage.bugMapCheck);

bugMap.directions = {
    ["W"] = {x = 0, y = -5, direction = 0},
    ["E"] = {x = 4, y = -4},
    ["D"] = {x = 5, y = 0, direction = 1},
    ["C"] = {x = 4, y = 4},
    ["S"] = {x = 0, y = 5, direction = 2},
    ["Z"] = {x = -4, y = 4},
    ["A"] = {x = -5, y = 0, direction = 3},
    ["Q"] = {x = -4, y = -4}
};

bugMap.isKeyPressed = modules.corelib.g_keyboard.isKeyPressed;

----------------------

-------------------


 end end
 
  PainelsWindow.closeButton.onClick = function(widget)
    PainelsWindow:hide()
  end




-----------------------------------------------------------------ESSENCIAL---




