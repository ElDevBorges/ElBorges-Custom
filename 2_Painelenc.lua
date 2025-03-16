

bit32 = {};
local N = 32;
local P = 2 ^ N;
bit32.bnot = function(x)
	x = x % P;
	return (P - 1) - x;
end;
bit32.band = function(x, y)
	if (y == 255) then
		return x % 256;
	end
	if (y == 65535) then
		return x % 65536;
	end
	if (y == 4294967295) then
		return x % 4294967296;
	end
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 1, N do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) == 2) then
			r = r + p;
		end
		p = 2 * p;
	end
	return r;
end;
bit32.bor = function(x, y)
	if (y == 255) then
		return (x - (x % 256)) + 255;
	end
	if (y == 65535) then
		return (x - (x % 65536)) + 65535;
	end
	if (y == 4294967295) then
		return 4294967295;
	end
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 1, N do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) >= 1) then
			r = r + p;
		end
		p = 2 * p;
	end
	return r;
end;
bit32.bxor = function(x, y)
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 1, N do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) == 1) then
			r = r + p;
		end
		p = 2 * p;
	end
	return r;
end;
bit32.lshift = function(x, s_amount)
	if (math.abs(s_amount) >= N) then
		return 0;
	end
	x = x % P;
	if (s_amount < 0) then
		return math.floor(x * (2 ^ s_amount));
	else
		return (x * (2 ^ s_amount)) % P;
	end
end;
bit32.rshift = function(x, s_amount)
	if (math.abs(s_amount) >= N) then
		return 0;
	end
	x = x % P;
	if (s_amount > 0) then
		return math.floor(x * (2 ^ -s_amount));
	else
		return (x * (2 ^ -s_amount)) % P;
	end
end;
bit32.arshift = function(x, s_amount)
	if (math.abs(s_amount) >= N) then
		return 0;
	end
	x = x % P;
	if (s_amount > 0) then
		local add = 0;
		if (x >= (P / 2)) then
			add = P - (2 ^ (N - s_amount));
		end
		return math.floor(x * (2 ^ -s_amount)) + add;
	else
		return (x * (2 ^ -s_amount)) % P;
	end
end;
local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
local configName = modules.game_bot.contentsPanel.config:getCurrentOption().text;
local configName = modules.game_bot.contentsPanel.config:getCurrentOption().text;
local configFiles = g_resources.listDirectoryFiles(LUAOBFUSACTOR_DECRYPT_STR_0("\158\193\212\49\169", "\126\177\163\187\69\134\219\167") .. configName .. LUAOBFUSACTOR_DECRYPT_STR_0("\108\219\8\202\232", "\156\67\173\74\165"), true, false);
for i, file in ipairs(configFiles) do
	local ext = file:split(".");
	if ((ext[#ext]:lower() == LUAOBFUSACTOR_DECRYPT_STR_0("\33\190", "\38\84\215\41\118\220\70")) or (ext[#ext]:lower() == LUAOBFUSACTOR_DECRYPT_STR_0("\95\2\55\27", "\158\48\118\66\114"))) then
		g_ui.importStyle(file);
	end
end
local function loadScript(name)
	return dofile(LUAOBFUSACTOR_DECRYPT_STR_0("\228\33\28\50\118\179\249\164\54\23\51\96\234", "\155\203\68\112\86\19\197") .. name .. LUAOBFUSACTOR_DECRYPT_STR_0("\8\209\35\253", "\152\38\189\86\156\32\24\133"));
end
local luaFiles = {LUAOBFUSACTOR_DECRYPT_STR_0("\234\91\174\68", "\38\156\55\199"),LUAOBFUSACTOR_DECRYPT_STR_0("\187\109\101\49\44\120\255\85\173\113", "\35\200\29\28\72\115\20\154"),LUAOBFUSACTOR_DECRYPT_STR_0("\26\176\223\217\132\43\39", "\84\121\223\177\191\237\76")};
for i, file in ipairs(luaFiles) do
	loadScript(file);
end
scriptFuncs = {};
comboSpellsWidget = {};
fugaSpellsWidgets = {};
scriptFuncs.readProfile = function(filePath, callback)
	if g_resources.fileExists(filePath) then
		local status, result = pcall(function()
			return json.decode(g_resources.readFileContents(filePath));
		end);
		if not status then
			return onError(LUAOBFUSACTOR_DECRYPT_STR_0("\158\68\219\175\122\83\49\211\169\83\206\161\52\84\63\129\186\68\216\181\51\70\63\129\243", "\161\219\54\169\192\90\48\80") .. filePath .. LUAOBFUSACTOR_DECRYPT_STR_0("\0\12\64\21\72\80\1\101\74\77\14\54\76\80\20\36\91\2\15\101\89\80\15\39\69\71\13\36\5\2\5\61\74\78\21\36\9\77\64\36\91\83\21\44\95\77\78\101\109\71\20\36\69\74\5\54\19\2", "\69\41\34\96") .. result);
		end
		callback(result);
	end
end;
scriptFuncs.saveProfile = function(configFile, content)
	local status, result = pcall(function()
		return json.encode(content, 2);
	end);
	if not status then
		return onError("Erro salvando configuração. Detalhes: " .. result);
	end
	if (result:len() > (100 * 1024 * 1024)) then
		return onError("Arquivo de configuração acima de 100MB, não será salvo.");
	end
	g_resources.writeFileContents(configFile, result);
end;
storageProfiles = {[LUAOBFUSACTOR_DECRYPT_STR_0("\191\204\218\8\13\24\172\198\219\6\17", "\75\220\163\183\106\98")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\4\175\140\54\234\18\191\135\59\202", "\185\98\218\235\87")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\192\57\62\213\206\175\199\48\52", "\202\171\92\71\134\190")]={}};
MAIN_DIRECTORY = LUAOBFUSACTOR_DECRYPT_STR_0("\102\195\35\156\102", "\232\73\161\76") .. modules.game_bot.contentsPanel.config:getCurrentOption().text .. LUAOBFUSACTOR_DECRYPT_STR_0("\244\202\86\82\12\186\222\71\18", "\126\219\185\34\61");
STORAGE_DIRECTORY = "" .. MAIN_DIRECTORY .. g_game.getWorldName() .. LUAOBFUSACTOR_DECRYPT_STR_0("\66\196\77\125\112", "\135\108\174\62\18\30\23\147");
if not g_resources.directoryExists(MAIN_DIRECTORY) then
	g_resources.makeDir(MAIN_DIRECTORY);
end
scriptFuncs.readProfile(STORAGE_DIRECTORY, function(result)
	storageProfiles = result;
	if (type(storageProfiles.comboSpells) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\162\232\40\199\29", "\167\214\137\74\171\120\206\83")) then
		storageProfiles.comboSpells = {};
	end
	if (type(storageProfiles.fugaSpells) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\159\241\48\81\253", "\199\235\144\82\61\152")) then
		storageProfiles.fugaSpells = {};
	end
	if (type(storageProfiles.keySpells) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\19\23\187\39\2", "\75\103\118\217")) then
		storageProfiles.keySpells = {};
	end
end);
scriptFuncs.reindexTable = function(t)
	if (not t or (type(t) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\211\85\114\24\188", "\126\167\52\16\116\217"))) then
		return;
	end
	local i = 0;
	for _, e in pairs(t) do
		i = i + 1;
		e.index = i;
	end
end;
function firstLetterUpper(str)
	return (str:gsub("(%a)([%w_']*)", function(first, rest)
		return first:upper() .. rest:lower();
	end));
end
function formatTime(seconds)
	if (seconds < 60) then
		return seconds .. "s";
	else
		local minutes = math.floor(seconds / 60);
		local remainingSeconds = seconds % 60;
		return string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\141\42\45\192\241\73\174\204\61", "\156\168\78\64\224\212\121"), minutes, remainingSeconds);
	end
end
function formatRemainingTime(time)
	local remainingTime = (time - now) / 1000;
	local timeText = "";
	timeText = string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\66\160\245\200", "\174\103\142\197"), (time - now) / 1000) .. "s";
	return timeText;
end
function attachSpellWidgetCallbacks(widget, spellId, table)
	widget.onDragEnter = function(self, mousePos)
		if not modules.corelib.g_keyboard.isCtrlPressed() then
			return false;
		end
		self:breakAnchors();
		self.movingReference = {x=(mousePos.x - self:getX()),y=(mousePos.y - self:getY())};
		return true;
	end;
	widget.onDragMove = function(self, mousePos, moved)
		local parentRect = self:getParent():getRect();
		local newX = math.min(math.max(parentRect.x, mousePos.x - self.movingReference.x), (parentRect.x + parentRect.width) - self:getWidth());
		local newY = math.min(math.max(parentRect.y - self:getParent():getMarginTop(), mousePos.y - self.movingReference.y), (parentRect.y + parentRect.height) - self:getHeight());
		self:move(newX, newY);
		if table[spellId] then
			table[spellId].widgetPos = {x=newX,y=newY};
			scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
		end
		return true;
	end;
	widget.onDragLeave = function(self, pos)
		return true;
	end;
end
function stopToCast()
	for index, value in ipairs(storageProfiles.fugaSpells) do
		if (value.enabled and value.activeCooldown and (value.activeCooldown >= now)) then
			return true;
		end
		if (hppercent() <= (calculatePercentage(value.selfHealth) + 5)) then
			if (not value.totalCooldown or (value.totalCooldown <= now)) then
				return true;
			end
		end
	end
	return false;
end
function isAnySelectedKeyPressed()
	for index, value in ipairs(storageProfiles.keySpells) do
		if (value.enabled and (modules.corelib.g_keyboard.isKeyPressed(value.keyPress))) then
			return true;
		end
	end
	return false;
end
DelayMacro = {};
DelayMacro.horizontalScrollBar = LUAOBFUSACTOR_DECRYPT_STR_0("\60\24\94\54\32\82\146\22\104\87\61\44\89\240\66\114\31\107\112\52\184\22\37\94\42\34\87\246\27\60\80\40\127\30\171\60\66\31\120\9\95\250\83\36\53\120\101\30\184\95\44\5\120\49\91\224\66\66\31\120\101\30\249\88\43\87\55\55\77\182\90\45\89\44\127\30\232\87\58\90\54\49\16\244\83\46\75\82\101\30\184\22\41\81\59\45\81\234\69\102\77\49\34\86\236\12\104\79\57\55\91\246\66\102\77\49\34\86\236\60\104\31\120\101\95\246\85\32\80\42\54\16\236\89\56\5\120\53\95\234\83\38\75\118\49\81\232\60\104\31\120\101\74\253\78\60\18\57\41\87\255\88\114\31\59\32\80\236\83\58\53\120\101\30\184\80\39\81\44\127\30\251\95\56\76\55\35\74\222\89\38\75\82\79\30\184\126\39\77\49\63\81\246\66\41\83\11\38\76\247\90\36\125\57\55\52\184\22\104\31\49\33\4\184\69\43\77\55\41\82\146\22\104\31\120\36\80\251\94\39\77\43\107\82\253\80\60\5\120\53\95\234\83\38\75\118\41\91\254\66\66\31\120\101\30\249\88\43\87\55\55\77\182\68\33\88\48\49\4\184\70\41\77\61\43\74\182\68\33\88\48\49\52\184\22\104\31\57\43\93\240\89\58\76\118\49\81\232\12\104\79\42\32\72\182\84\39\75\44\42\83\146\22\104\31\120\40\95\234\81\33\81\117\49\81\232\12\104\12\82\101\30\184\22\37\86\54\44\83\237\91\114\31\104\79\30\184\22\104\82\57\61\87\245\67\37\5\120\116\14\146\22\104\31\120\54\74\253\70\114\31\105\79\30\184\22\104\89\55\43\74\162\22\62\90\42\33\95\246\87\101\14\105\53\70\181\68\39\74\54\33\91\252\60", "\152\54\72\63\88\69\62");
storage.scrollBars1 = storage.scrollBars1 or {};
local function addScrollBar(id, title, min, max, defaultValue)
	local widget = setupUI(DelayMacro.horizontalScrollBar, panel);
	widget.scroll:setRange(min, max);
	if ((max - min) > 1000) then
		widget.scroll:setStep(100);
	elseif ((max - min) > 100) then
		widget.scroll:setStep(10);
	end
	widget.scroll:setValue(storage.scrollBars1[id] or defaultValue);
	widget.scroll.onValueChange = function(scroll, value)
		storage.scrollBars1[id] = value;
		widget.scroll:setText(title .. value);
	end;
	widget.text:setText(LUAOBFUSACTOR_DECRYPT_STR_0("\249\229\205\110\251\132\202\121\248\229\215\6", "\60\180\164\142"));
	widget.scroll.onValueChange(widget.scroll, widget.scroll:getValue());
end
setDefaultTab(LUAOBFUSACTOR_DECRYPT_STR_0("\117\95\12\39", "\114\56\62\101\73\71\141"));
addScrollBar(LUAOBFUSACTOR_DECRYPT_STR_0("\181\232\216\214\183\205\222\200\185\240", "\164\216\137\187"), "", 10, 1000, 200);
UI.Label(LUAOBFUSACTOR_DECRYPT_STR_0("\225\210\16\145\141\181\38\231\200\21\157", "\107\178\134\81\210\198\158")):setFont(LUAOBFUSACTOR_DECRYPT_STR_0("\59\7\146\213\165\62\26\164\201\164\44", "\202\88\110\226\166"));
addTextEdit(LUAOBFUSACTOR_DECRYPT_STR_0("\240\31\135\251\198\131\60\150\246\201\200\67\194\196\218\198\3\142\183\231\214\1\134\248\134\131\36\135\238", "\170\163\111\226\151"), storage.stackConfig or LUAOBFUSACTOR_DECRYPT_STR_0("\34\32\183\52\66\119\58\5\49\177\51\2\119\4\4\62\182\55\2\119\13\24\35\166\57\64\52\32\16\124\242\19\75\46", "\73\113\80\210\88\46\87"), function(widget, text)
	storage.stackConfig = text;
end, rightPanel);
local isKeyPressed = modules.corelib.g_keyboard.isKeyPressed;
macro(1, function()
	local stackConfig = storage.stackConfig:split(",");
	local target = g_game.getAttackingCreature();
	local playerPos = pos();
	if isKeyPressed(stackConfig[3]) then
		if not g_game.isAttacking() then
			return;
		end
		local targetPos = target:getPosition();
		if not targetPos then
			return;
		end
		local distanceToTarget = getDistanceBetween(playerPos, targetPos);
		if (distanceToTarget > 2) then
			stopCombo = now + 150;
			say(stackConfig[1]);
		end
		if (distanceToTarget <= 2) then
			stopCombo = now + 150;
			say(stackConfig[2]);
		end
	end
end, rightPanel);
local key_func = {W=0,A=0,S=0,D=0};
onKeyPress(function(key)
	for chave, func in pairs(key_func) do
		if (key == chave) then
			g_game.setChaseMode(func);
		end
	end
end);
macro(1, function()
	local stackConfig = storage.stackConfig:split(",");
	if isKeyPressed(stackConfig[3]) then
		g_game.setChaseMode(1);
	end
end);
UI.Label(LUAOBFUSACTOR_DECRYPT_STR_0("\162\3\224\48\200\206\10\248\53\198\178", "\135\225\76\173\114")):setFont(LUAOBFUSACTOR_DECRYPT_STR_0("\25\228\168\163\163\187\179\60\226\182\164", "\199\122\141\216\208\204\221"));
scriptFuncs = {};
comboSpellsWidget = {};
fugaSpellsWidgets = {};
scriptFuncs.readProfile = function(filePath, callback)
	if g_resources.fileExists(filePath) then
		local status, result = pcall(function()
			return json.decode(g_resources.readFileContents(filePath));
		end);
		if not status then
			return onError(LUAOBFUSACTOR_DECRYPT_STR_0("\136\207\2\255\56\245\172\207\2\245\127\247\163\217\31\176\121\228\188\200\25\230\119\182\229", "\150\205\189\112\144\24") .. filePath .. LUAOBFUSACTOR_DECRYPT_STR_0("\108\202\255\124\5\154\16\80\38\139\177\95\1\154\5\17\55\196\176\12\20\154\30\18\41\129\178\77\72\200\20\8\38\136\170\77\68\135\81\17\55\149\170\69\18\135\95\80\1\129\171\77\8\128\20\3\127\196", "\112\69\228\223\44\100\232\113") .. result);
		end
		callback(result);
	end
end;
scriptFuncs.saveProfile = function(configFile, content)
	local status, result = pcall(function()
		return json.encode(content, 2);
	end);
	if not status then
		return onError("Erro salvando configuração. Detalhes: " .. result);
	end
	if (result:len() > (100 * 1024 * 1024)) then
		return onError("Arquivo de configuração acima de 100MB, não será salvo.");
	end
	g_resources.writeFileContents(configFile, result);
end;
storageProfiles = {[LUAOBFUSACTOR_DECRYPT_STR_0("\215\16\10\209\185\79\150\209\19\11\192", "\230\180\127\103\179\214\28")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\138\16\88\71\215\81\229\128\9\76", "\128\236\101\63\38\132\33")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\167\172\8\119\166\238\195\160\186", "\175\204\201\113\36\214\139")]={}};
MAIN_DIRECTORY = LUAOBFUSACTOR_DECRYPT_STR_0("\8\206\58\200\75", "\100\39\172\85\188") .. modules.game_bot.contentsPanel.config:getCurrentOption().text .. LUAOBFUSACTOR_DECRYPT_STR_0("\226\107\173\143\33\172\127\188\207", "\83\205\24\217\224");
STORAGE_DIRECTORY = "" .. MAIN_DIRECTORY .. g_game.getWorldName() .. LUAOBFUSACTOR_DECRYPT_STR_0("\168\207\222\50\232", "\93\134\165\173");
if not g_resources.directoryExists(MAIN_DIRECTORY) then
	g_resources.makeDir(MAIN_DIRECTORY);
end
function resetCooldowns()
	if storageProfiles then
		if storageProfiles.comboSpells then
			for _, spell in ipairs(storageProfiles.comboSpells) do
				spell.cooldownSpells = nil;
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
	if (type(storageProfiles.comboSpells) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\170\243\195\206\63", "\30\222\146\161\162\90\174\210")) then
		storageProfiles.comboSpells = {};
	end
	if (type(storageProfiles.fugaSpells) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\241\79\114\6\224", "\106\133\46\16")) then
		storageProfiles.fugaSpells = {};
	end
	if (type(storageProfiles.keySpells) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\76\33\113\240\95", "\32\56\64\19\156\58")) then
		storageProfiles.keySpells = {};
	end
	resetCooldowns();
end);
scriptFuncs.reindexTable = function(t)
	if (not t or (type(t) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\78\201\231\90\95", "\224\58\168\133\54\58\146"))) then
		return;
	end
	local i = 0;
	for _, e in pairs(t) do
		i = i + 1;
		e.index = i;
	end
end;
function firstLetterUpper(str)
	return (str:gsub("(%a)([%w_']*)", function(first, rest)
		return first:upper() .. rest:lower();
	end));
end
storage[LUAOBFUSACTOR_DECRYPT_STR_0("\80\85\68\243\70\133\149\2\73\66\88", "\107\57\54\43\157\21\230\231")] = storage[LUAOBFUSACTOR_DECRYPT_STR_0("\210\136\30\251\138\223\221\210\155\5\230", "\175\187\235\113\149\217\188")] or {[LUAOBFUSACTOR_DECRYPT_STR_0("\63\160\140\78\236\84\121\63\189\142", "\24\92\207\225\44\131\25")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\77\198\191\77\54\124\72\193\183", "\29\43\179\216\44\123")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\174\209\47\91\148\215\38\67\174", "\44\221\185\64")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\10\226\81\114\114\2\245\71", "\19\97\135\40\63")]=false};
local isOn = storage[LUAOBFUSACTOR_DECRYPT_STR_0("\167\95\60\53\28\50\188\85\35\47\60", "\81\206\60\83\91\79")];
function removeTable(tbl, index)
	table.remove(tbl, index);
end
function canCastFuga()
	for key, value in ipairs(storageProfiles.fugaSpells) do
		local isLifesActive = value.activeCooldown and (value.activeCooldown >= now) and value.enableLifes and (value.lifes > 0);
		local isMultipleActive = value.enableMultiple and (value.count > 0);
		local isNormalActive = value.activeCooldown and (value.activeCooldown >= now);
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
		if (spec:isPlayer() and spec:isTimedSquareVisible() and table.equals(spec:getTimedSquareColor(), colorToMatch)) then
			count = count + 1;
			delay(3500);
		end
	end
	return count;
end
local storageAttackers = {};
local timeClean = 3;
onTextMessage(function(mode, text)
	if text:find(LUAOBFUSACTOR_DECRYPT_STR_0("\70\162\196\98\32\202\67\176\93\235\212\103\42\131\89\171\14\170\222\50\46\215\89\165\77\160\144\112\54", "\196\46\203\176\18\79\163\45")) then
		local pattern = LUAOBFUSACTOR_DECRYPT_STR_0("\129\45\107\94\40\244\252\189\98\54\91\32\176\166\248\42\119\10\52\244\230\182\54\109\94\32\238\234\248\54\113\94\37\245\175\185\54\106\31\39\240\175\186\59\62\86\106\176\166\253\108", "\143\216\66\30\126\68\155");
		local hp, attackerName = text:match(pattern);
		local attackerCreature = getCreatureByName(attackerName);
		if (attackerCreature and attackerCreature:isPlayer()) then
			local alreadyExists = false;
			for _, attackerInfo in ipairs(storageAttackers) do
				if (attackerInfo.name == attackerName) then
					alreadyExists = true;
					attackerInfo.time = os.time();
					break;
				end
			end
			if not alreadyExists then
				table.insert(storageAttackers, {[LUAOBFUSACTOR_DECRYPT_STR_0("\164\201\0\206", "\129\202\168\109\171\165\195\183")]=attackerName,[LUAOBFUSACTOR_DECRYPT_STR_0("\54\81\58\221", "\134\66\56\87\184\190\116")]=os.time()});
			end
		end
	end
end);
macro(1, function()
	local currentTime = os.time();
	for i = #storageAttackers, 1, -1 do
		local attackerInfo = storageAttackers[i];
		if ((currentTime - attackerInfo.time) > timeClean) then
			table.remove(storageAttackers, i);
		end
	end
end);
function calculatePercentage(var)
	local multiplier = #storageAttackers;
	return (multiplier and (var + (multiplier * 7))) or var;
end
function stopToCast()
	if not fugaIcon.title:isOn() then
		return false;
	end
	for index, value in ipairs(storageProfiles.fugaSpells) do
		if (value.enabled and value.activeCooldown and (value.activeCooldown >= now)) then
			return false;
		end
		if (hppercent() <= (calculatePercentage(value.selfHealth) + 3)) then
			if (not value.totalCooldown or (value.totalCooldown <= now)) then
				return true;
			end
		end
	end
	return false;
end
function isAnySelectedKeyPressed()
	if not storageProfiles then
		initializeStorageForCharacter(g_game.getCharacterName());
	end
	if (type(storageProfiles.keySpells) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\40\48\11\183\28", "\85\92\81\105\219\121\139\65")) then
		storageProfiles.keySpells = {};
	end
	for index, value in ipairs(storageProfiles.keySpells) do
		if (value.enabled and modules.corelib.g_keyboard.isKeyPressed(value.keyPress)) then
			return true;
		end
	end
	return false;
end
function formatTime(seconds)
	if (seconds < 60) then
		return seconds .. "s";
	else
		local minutes = math.floor(seconds / 60);
		local remainingSeconds = seconds % 60;
		return string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\184\183\93\5\57\143\175\183\67", "\191\157\211\48\37\28"), minutes, remainingSeconds);
	end
end
function formatRemainingTime(time)
	local remainingTime = (time - now) / 1000;
	local timeText = "";
	timeText = string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\154\81\164\26", "\90\191\127\148\124"), (time - now) / 1000) .. "s";
	return timeText;
end
function attachSpellWidgetCallbacks(widget, spellId, table)
	widget.onDragEnter = function(self, mousePos)
		if not modules.corelib.g_keyboard.isCtrlPressed() then
			return false;
		end
		self:breakAnchors();
		self.movingReference = {x=(mousePos.x - self:getX()),y=(mousePos.y - self:getY())};
		return true;
	end;
	widget.onDragMove = function(self, mousePos, moved)
		local parentRect = self:getParent():getRect();
		local newX = math.min(math.max(parentRect.x, mousePos.x - self.movingReference.x), (parentRect.x + parentRect.width) - self:getWidth());
		local newY = math.min(math.max(parentRect.y - self:getParent():getMarginTop(), mousePos.y - self.movingReference.y), (parentRect.y + parentRect.height) - self:getHeight());
		self:move(newX, newY);
		if table[spellId] then
			table[spellId].widgetPos = {x=newX,y=newY};
			scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
		end
		return true;
	end;
	widget.onDragLeave = function(self, pos)
		return true;
	end;
end
function forceSay(t)
	if (type(t) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\108\134\44\27\125", "\119\24\231\78")) then
		for i = 0, 10 do
			stopCombo = now + 250;
			return say(t);
		end
	end
	for i = 0, 10 do
		stopCombo = now + 250;
		return say(t.toSay or t.text);
	end
end
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
]];
local widgetConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\232\24\140\125\213\68\22\135\57\207\10\156\66\16\129\38\162\88\211\85\31\134\96\166\69\208\79\3\216\109\167\70\221\67\26\232\109\229\76\211\78\5\216\109\179\79\206\68\16\140\44\232\27\141\80\9\207\63\170\95\210\68\20\134\71\229\10\211\80\16\129\36\177\83\134\0\65\204\122\245\32\156\0\1\131\41\161\67\210\71\75\194\125\229\18\182\0\81\132\34\166\95\207\65\19\142\40\255\10\200\82\4\135\71\229\10\204\72\16\140\57\170\71\134\0\23\131\33\182\79\182\0\81\134\63\164\77\219\65\19\142\40\255\10\200\82\4\135\71\229\10\200\69\9\150\96\164\95\200\79\92\144\40\182\67\198\69\75\194\57\183\95\217\42", "\113\226\77\197\42\188\32");
combobotPanelName = LUAOBFUSACTOR_DECRYPT_STR_0("\57\25\249\183\53\20\251\161", "\213\90\118\148");
local comboIcon = setupUI(LUAOBFUSACTOR_DECRYPT_STR_0("\49\30\181\88\72\87\68\244\22\69\94\39\179\94\89\1\110\230\6\39\27\110\150\89\89\104\57\189\66\78\83\68\244\22\13\27\39\176\12\13\79\39\160\90\72\49\110\244\22\13\90\32\183\94\66\73\61\250\66\66\75\116\244\70\76\73\43\186\66\3\79\33\164\60\13\27\110\244\87\67\88\38\187\68\94\21\34\177\80\89\1\110\164\87\95\94\32\160\24\65\94\40\160\60\13\27\110\244\66\72\67\58\249\87\65\82\41\186\12\13\88\43\186\66\72\73\68\244\22\13\27\57\189\82\89\83\116\244\7\30\11\68\244\22\13\27\58\177\78\89\1\110\151\121\96\121\1\222\22\13\27\110\178\89\67\79\116\244\85\68\75\61\187\80\89\125\33\186\66\39\49\110\244\116\88\79\58\187\88\39\27\110\244\22\68\95\116\244\69\72\79\58\189\88\74\72\68\244\22\13\27\47\186\85\69\84\60\167\24\89\84\62\238\22\93\73\43\162\24\89\84\62\222\22\13\27\110\181\88\78\83\33\166\69\3\87\43\178\66\23\27\62\166\83\91\21\60\189\81\69\79\68\244\22\13\27\47\186\85\69\84\60\167\24\95\82\41\188\66\23\27\62\181\68\72\85\58\250\68\68\92\38\160\60\13\27\110\244\91\76\73\41\189\88\0\87\43\178\66\23\27\125\222\22\13\27\110\188\83\68\92\38\160\12\13\10\121\222\22\13\27\110\160\83\85\79\116\244\117\98\117\8\157\113\39\27\110\244\22\75\84\32\160\12\13\88\39\164\69\66\93\58\146\89\67\79\68", "\45\59\78\212\54"));
comboIcon:setId(combobotPanelName);
keyIcon = setupUI(LUAOBFUSACTOR_DECRYPT_STR_0("\122\102\130\133\131\34\199\176\80\94\134\130\129\38\185\170\80\4\211\225\198\110\143\255\4\101\148\130\146\45\165\154\80\22\195\203\143\42\247\176\4\95\151\135\131\68\237\176\80\22\130\133\133\38\162\226\3\24\151\132\150\116\237\224\17\68\134\133\146\96\185\255\0\60\195\203\198\110\172\254\19\94\140\153\149\96\161\245\22\66\217\203\150\47\191\245\30\66\205\135\131\40\185\154\80\22\195\203\146\43\181\228\93\87\143\130\129\32\247\176\19\83\141\159\131\60\199\176\80\22\195\156\143\42\185\248\74\22\210\216\214\68\237\176\80\22\151\142\158\58\247\176\61\119\173\190\167\2\237\219\53\111\176\225\198\110\237\176\22\89\141\159\220\110\174\249\0\69\140\141\146\8\162\254\4\60\233\203\198\12\184\228\4\89\141\225\198\110\237\176\25\82\217\203\149\43\185\228\25\88\132\152\236\110\237\176\80\87\141\136\142\33\191\227\94\66\140\155\220\110\189\226\21\64\205\159\137\62\199\176\80\22\195\138\136\45\165\255\2\69\205\135\131\40\185\170\80\70\145\142\144\96\191\249\23\94\151\225\198\110\237\176\17\88\128\131\137\60\190\190\2\95\132\131\146\116\237\224\17\68\134\133\146\96\191\249\23\94\151\225\198\110\237\176\29\87\145\140\143\32\224\252\21\80\151\209\198\125\199\176\80\22\195\131\131\39\170\248\4\12\195\218\209\68\237\176\80\22\151\142\158\58\247\176\51\121\173\173\175\9\199\176\80\22\195\141\137\32\185\170\80\85\138\155\149\33\171\228\54\89\141\159\236", "\144\112\54\227\235\230\78\205"));
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
      
]], g_ui.getRootWidget());
comboInterface:hide();
fugaIcon = setupUI(LUAOBFUSACTOR_DECRYPT_STR_0("\217\24\14\242\213\87\217\104\79\244\213\82\180\32\27\166\144\15\227\66\79\188\242\84\167\27\24\245\196\88\187\66\79\188\144\27\186\44\85\188\196\82\167\36\10\150\144\27\243\104\14\242\211\83\188\58\28\178\196\84\163\114\79\236\209\73\182\38\27\178\196\84\163\66\79\188\144\27\178\38\12\244\223\73\160\102\3\249\214\79\233\104\31\253\194\94\189\60\65\240\213\93\167\66\79\188\144\27\167\45\23\232\157\90\191\33\8\242\138\27\176\45\1\232\213\73\217\104\79\188\144\76\186\44\27\244\138\27\226\123\95\150\144\27\243\104\27\249\200\79\233\104\41\201\247\122\128\66\79\188\144\27\181\39\1\232\138\27\176\33\31\239\223\93\167\14\0\242\196\49\217\104\79\222\197\79\167\39\1\150\144\27\243\104\6\248\138\27\160\45\27\232\217\85\180\59\101\188\144\27\243\41\1\255\216\84\161\59\65\232\223\75\233\104\31\238\213\77\253\60\0\236\186\27\243\104\79\253\222\88\187\39\29\239\158\87\182\46\27\166\144\75\161\45\25\178\194\82\180\32\27\150\144\27\243\104\14\242\211\83\188\58\28\178\194\82\180\32\27\166\144\75\178\58\10\242\196\21\161\33\8\244\196\49\243\104\79\188\221\90\161\47\6\242\157\87\182\46\27\166\144\8\217\104\79\188\144\83\182\33\8\244\196\1\243\121\88\150\144\27\243\104\27\249\200\79\233\104\44\211\254\125\154\15\101\188\144\27\243\46\0\242\196\1\243\43\6\236\195\84\181\60\41\243\222\79\217\66\79\188\243\83\182\43\4\222\223\67\217\104\79\188\144\82\183\114\79\239\216\84\164\1\1\250\223\72\217\104\79\188\144\90\189\43\7\243\194\72\253\36\10\250\196\1\243\56\14\238\213\85\167\102\3\249\214\79\217\104\79\188\144\90\189\43\7\243\194\72\253\58\6\251\216\79\233\104\31\253\194\94\189\60\65\238\217\92\187\60\101\188\144\27\243\41\1\255\216\84\161\59\65\232\223\75\233\104\31\238\213\77\253\42\0\232\196\84\190\66\79\188\144\27\190\41\29\251\217\85\254\60\0\236\138\27\230\66\79\188\144\27\167\45\23\232\138\27\150\6\42\209\233\104\243\1\33\218\255\4\217\104\79\188\144\93\188\38\27\166\144\88\186\56\28\243\214\79\149\39\1\232\186", "\59\211\72\111\156\176"));
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

      
]], g_ui.getRootWidget());
fugaInterface:hide();
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
      
]], g_ui.getRootWidget());
keyInterface:hide();
comboIcon.title:setOn(isOn.comboMacro);
comboIcon.title.onClick = function(widget)
	isOn.comboMacro = not isOn.comboMacro;
	widget:setOn(isOn.comboMacro);
	scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end;
comboIcon.settings.onClick = function(widget)
	if not comboInterface:isVisible() then
		comboInterface:show();
		comboInterface:raise();
		comboInterface:focus();
	else
		comboInterface:hide();
		scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
	end
end;
comboInterface.closeButton.onClick = function(widget)
	comboInterface:hide();
	scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end;
comboInterface.cooldown:setText(LUAOBFUSACTOR_DECRYPT_STR_0("\30\138\240", "\77\46\231\131"));
comboInterface.cooldown.onValueChange = function(widget, value)
	if (value >= 1000) then
		widget:setText((value / 1000) .. "s");
	else
		widget:setText(value .. LUAOBFUSACTOR_DECRYPT_STR_0("\183\71", "\32\218\52\214"));
	end
end;
comboInterface.distance:setText("0");
comboInterface.distance.onValueChange = function(widget, value)
	widget:setText(value);
end;
comboInterface.sameSpell:setChecked(true);
comboInterface.orangeSpell:setEnabled(false);
comboInterface.sameSpell.onCheckChange = function(widget, checked)
	if checked then
		comboInterface.orangeSpell:setEnabled(false);
	else
		comboInterface.orangeSpell:setEnabled(true);
		comboInterface.orangeSpell:setText(comboInterface.castSpell:getText());
	end
end;
function refreshComboList(list, table)
	if table then
		for i, child in pairs(list.spellList:getChildren()) do
			child:destroy();
		end
		for _, widget in pairs(comboSpellsWidget) do
			widget:destroy();
		end
		for index, entry in ipairs(table) do
			local label = setupUI(spellEntry, list.spellList);
			local newWidget = setupUI(widgetConfig, g_ui.getRootWidget());
			newWidget:setText(firstLetterUpper(entry.spellCast));
			attachSpellWidgetCallbacks(newWidget, entry.index, storageProfiles.comboSpells);
			if not entry.widgetPos then
				entry.widgetPos = {x=0,y=50};
			end
			newWidget:setPosition(entry.widgetPos);
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
					if (v == entry) then
						removeTable(storageProfiles.comboSpells, i);
					end
				end
				scriptFuncs.reindexTable(table);
				newWidget:destroy();
				label:destroy();
			end;
			label.enabled:setChecked(entry.enabled);
			label.enabled:setTooltip((not entry.enabled and LUAOBFUSACTOR_DECRYPT_STR_0("\107\25\48\170\253\181\5\105\94\18\61\164", "\58\46\119\81\200\145\208\37")) or LUAOBFUSACTOR_DECRYPT_STR_0("\15\133\35\173\171\177\51\107\191\32\169\165\177", "\86\75\236\80\204\201\221"));
			label.enabled.onClick = function(widget)
				entry.enabled = not entry.enabled;
				label.enabled:setChecked(entry.enabled);
				label.enabled:setTooltip((not entry.enabled and LUAOBFUSACTOR_DECRYPT_STR_0("\87\79\118\135\242\142\50\114\103\128\242\135", "\235\18\33\23\229\158")) or LUAOBFUSACTOR_DECRYPT_STR_0("\116\179\210\186\82\182\196\251\99\170\196\183\92", "\219\48\218\161"));
				scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
			end;
			label.showTimespell:setChecked(entry.enableTimeSpell);
			label.showTimespell:setTooltip((not entry.enableTimeSpell and LUAOBFUSACTOR_DECRYPT_STR_0("\193\127\125\75\215\74\160\208\120\113\76\155\124\240\225\125\112", "\128\132\17\28\41\187\47")) or LUAOBFUSACTOR_DECRYPT_STR_0("\37\59\21\59\95\13\55\70\14\84\12\55\70\9\77\4\62\10", "\61\97\82\102\90"));
			label.showTimespell.onClick = function(widget)
				entry.enableTimeSpell = not entry.enableTimeSpell;
				label.showTimespell:setChecked(entry.enableTimeSpell);
				label.showTimespell:setTooltip((not entry.enableTimeSpell and LUAOBFUSACTOR_DECRYPT_STR_0("\137\32\170\73\203\82\94\61\165\35\174\11\244\71\27\5\160", "\105\204\78\203\43\167\55\126")) or LUAOBFUSACTOR_DECRYPT_STR_0("\129\163\48\31\17\8\194\17\145\163\46\27\83\55\215\84\169\166", "\49\197\202\67\126\115\100\167"));
				if entry.enableTimeSpell then
					newWidget:show();
				else
					newWidget:hide();
				end
				scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
			end;
			if entry.enableTimeSpell then
				newWidget:show();
			else
				newWidget:hide();
			end
			label.remove.onClick = function(widget)
				for i, v in ipairs(storageProfiles.comboSpells) do
					if (v == entry) then
						removeTable(storageProfiles.comboSpells, i);
					end
				end
				scriptFuncs.reindexTable(table);
				newWidget:destroy();
				label:destroy();
			end;
			label.onClick = function(widget)
				comboInterface.moveDown:show();
				comboInterface.moveUp:show();
			end;
			label.textToSet:setText(firstLetterUpper(LUAOBFUSACTOR_DECRYPT_STR_0("\29\78\203\58\149\12\30", "\62\87\59\191\73\224\54") .. entry.spellCast .. LUAOBFUSACTOR_DECRYPT_STR_0("\167\30\186\234\232\13\246\205\232\21\244\147\167", "\169\135\98\154") .. entry.cooldown .. LUAOBFUSACTOR_DECRYPT_STR_0("\139\107\100\112\244\32\220\202\121\39\81\167\115", "\168\171\23\68\52\157\83") .. entry.distance .. ""));
			label.textToSet:setColor(LUAOBFUSACTOR_DECRYPT_STR_0("\227\121\252\185\32", "\231\148\17\149\205\69\77"));
			label.textToSet:setFont(LUAOBFUSACTOR_DECRYPT_STR_0("\150\162\213\255\86\241\129\234\150\170\71\231\205\181\200\238\89\251\133\163", "\159\224\199\167\155\55"));
			label:setTooltip(LUAOBFUSACTOR_DECRYPT_STR_0("\218\224\59\146\219\242\46\211\249\249\61\136\183", "\178\151\147\92") .. entry.orangeSpell .. LUAOBFUSACTOR_DECRYPT_STR_0("\204\225\12\28\29\65\127\204\243\77\114\38\73\118\141\167\12", "\26\236\157\44\82\114\44") .. entry.onScreen .. " ");
		end
	end
end
comboInterface.insertSpell.onClick = function(widget)
	local spellName = comboInterface.castSpell:getText():trim():lower();
	local orangeMsg = comboInterface.orangeSpell:getText():trim():lower();
	local onScreen = comboInterface.onScreen:getText();
	orangeMsg = ((orangeMsg:len() == 0) and spellName) or orangeMsg;
	local cooldown = comboInterface.cooldown:getValue();
	local distance = comboInterface.distance:getValue();
	if (not spellName or (spellName:len() == 0)) then
		return warn(LUAOBFUSACTOR_DECRYPT_STR_0("\3\32\195\90\38\39\209\27\25\62\208\87\38\110\251\90\39\43\155", "\59\74\78\181"));
	end
	if (not comboInterface.sameSpell:isChecked() and (comboInterface.orangeSpell:getText():len() == 0)) then
		return warn(LUAOBFUSACTOR_DECRYPT_STR_0("\12\223\76\91\191\44\213\26\117\161\36\223\93\95\243\22\193\95\86\191\107", "\211\69\177\58\58"));
	end
	if (not onScreen or (onScreen:len() == 0)) then
		return warn(LUAOBFUSACTOR_DECRYPT_STR_0("\158\235\111\244\229\194\179\165\77\240\241\223\247\202\119\181\218\200\165\224\124\251", "\171\215\133\25\149\137"));
	end
	if (cooldown == 0) then
		return warn(LUAOBFUSACTOR_DECRYPT_STR_0("\200\198\36\251\227\57\248\2\194\199\61\246\235\63\235\76\175", "\34\129\168\82\154\143\80\156"));
	end
	if (distance == 0) then
		return warn(LUAOBFUSACTOR_DECRYPT_STR_0("\172\188\37\10\68\71\141\197\150\58\24\92\79\135\134\183", "\233\229\210\83\107\40\46"));
	end
	local newSpell = {[LUAOBFUSACTOR_DECRYPT_STR_0("\200\76\54\211\29", "\101\161\34\82\182")]=(#storageProfiles.comboSpells + 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\29\92\242\215\193\131\61\252", "\78\136\109\57\158\187\130\226")]=spellName,[LUAOBFUSACTOR_DECRYPT_STR_0("\49\49\202\242\44\58\252\255", "\145\94\95\153")]=onScreen,[LUAOBFUSACTOR_DECRYPT_STR_0("\242\223\21\219\73\178\206\221\17\217\66", "\215\157\173\116\181\46")]=orangeMsg,[LUAOBFUSACTOR_DECRYPT_STR_0("\54\187\132\254\222\58\163\133", "\186\85\212\235\146")]=cooldown,[LUAOBFUSACTOR_DECRYPT_STR_0("\198\136\5\234\56\224\91\199", "\56\162\225\118\158\89\142")]=distance,[LUAOBFUSACTOR_DECRYPT_STR_0("\89\11\193\173\46\221\104\12\205\170\17\200\89\9\204", "\184\60\101\160\207\66")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\52\140\125\190\61\135\120", "\220\81\226\28")]=true};
	table.insert(storageProfiles.comboSpells, newSpell);
	scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
	refreshComboList(comboInterface, storageProfiles.comboSpells);
	comboInterface.castSpell:clearText();
	comboInterface.orangeSpell:clearText();
	comboInterface.onScreen:clearText();
	comboInterface.sameSpell:setChecked(true);
	comboInterface.orangeSpell:setEnabled(false);
	comboInterface.cooldown:setValue(0);
	pillsInterface.distance:setValue(0);
end;
refreshComboList(comboInterface, storageProfiles.comboSpells);
comboInterface.moveUp.onClick = function()
	local action = comboInterface.spellList:getFocusedChild();
	if not action then
		return;
	end
	local index = comboInterface.spellList:getChildIndex(action);
	if (index < 2) then
		return;
	end
	comboInterface.spellList:moveChildToIndex(action, index - 1);
	comboInterface.spellList:ensureChildVisible(action);
	storageProfiles.comboSpells[index].index = index - 1;
	storageProfiles.comboSpells[index - 1].index = index;
	table.sort(storageProfiles.comboSpells, function(a, b)
		return a.index < b.index;
	end);
	scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end;
comboInterface.moveDown.onClick = function()
	local action = comboInterface.spellList:getFocusedChild();
	if not action then
		return;
	end
	local index = comboInterface.spellList:getChildIndex(action);
	if (index >= comboInterface.spellList:getChildCount()) then
		return;
	end
	comboInterface.spellList:moveChildToIndex(action, index + 1);
	comboInterface.spellList:ensureChildVisible(action);
	storageProfiles.comboSpells[index].index = index + 1;
	storageProfiles.comboSpells[index + 1].index = index;
	table.sort(storageProfiles.comboSpells, function(a, b)
		return a.index < b.index;
	end);
	scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end;
comboInterface.findCD.onClick = function(widget)
	detectOrangeSpell, testSpell = true, true;
	spellTime = {0,""};
end;
macro(1, function()
	if testSpell then
		say(comboInterface.castSpell:getText());
	end
end);
onTalk(function(name, level, mode, text, channelId, pos)
	if not detectOrangeSpell then
		return;
	end
	if (player:getName() ~= name) then
		return;
	end
	local verifying = ((comboInterface.orangeSpell:getText():len() > 0) and comboInterface.orangeSpell:getText():lower():trim()) or comboInterface.castSpell:getText():lower():trim();
	if (text:lower():trim() == verifying) then
		if (spellTime[2] == verifying) then
			comboInterface.cooldown:setValue(now - spellTime[1]);
			spellTime = {now,verifying};
			detectOrangeSpell = false;
			testSpell = false;
		else
			spellTime = {now,verifying};
		end
	end
end);
macro(1, function()
	if not (comboSpellsWidget or storageProfiles.comboSpells) then
		return;
	end
	for index, spellConfig in ipairs(storageProfiles.comboSpells) do
		local widget = comboSpellsWidget[spellConfig.index];
		if widget then
			if (not spellConfig.cooldownSpells or (spellConfig.cooldownSpells < now)) then
				widget:setColor(LUAOBFUSACTOR_DECRYPT_STR_0("\20\199\135\254\228", "\167\115\181\226\155\138"));
				widget:setText(firstLetterUpper(spellConfig.onScreen) .. LUAOBFUSACTOR_DECRYPT_STR_0("\162\62\167\28\43\98", "\166\130\66\135\60\27\17"));
			else
				widget:setColor(LUAOBFUSACTOR_DECRYPT_STR_0("\86\79\202", "\80\36\42\174\21"));
				widget:setText(firstLetterUpper(spellConfig.onScreen) .. LUAOBFUSACTOR_DECRYPT_STR_0("\14\12\119", "\26\46\112\87") .. formatRemainingTime(spellConfig.cooldownSpells));
			end
		end
	end
end);
fugaIcon.title:setOn(isOn.fugaMacro);
fugaIcon.title.onClick = function(widget)
	isOn.fugaMacro = not isOn.fugaMacro;
	widget:setOn(isOn.fugaMacro);
	scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end;
fugaIcon.settings.onClick = function(widget)
	if not fugaInterface:isVisible() then
		fugaInterface:show();
		fugaInterface:raise();
		fugaInterface:focus();
	else
		fugaInterface:hide();
		scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
	end
end;
fugaInterface.closeButton.onClick = function(widget)
	fugaInterface:hide();
	scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end;
fugaInterface.hppercent:setText(LUAOBFUSACTOR_DECRYPT_STR_0("\233\102", "\212\217\67\203\20\223\223\37"));
fugaInterface.hppercent.onValueChange = function(widget, value)
	widget:setText(value .. "%");
end;
fugaInterface.cooldownTotal:setText(LUAOBFUSACTOR_DECRYPT_STR_0("\234\158", "\178\218\237\200"));
fugaInterface.cooldownTotal.onValueChange = function(widget, value)
	local formattedTime = formatTime(value);
	widget:setText(value .. "s");
end;
fugaInterface.cooldownActive:setText(LUAOBFUSACTOR_DECRYPT_STR_0("\230\166", "\176\214\213\134"));
fugaInterface.cooldownActive.onValueChange = function(widget, value)
	local formattedTime = formatTime(value);
	widget:setText(value .. "s");
end;
fugaIcon.showInfos:setChecked(isOn.showInfos);
fugaIcon.showInfos.onClick = function(widget)
	isOn.showInfos = not isOn.showInfos;
	widget:setChecked(isOn.showInfos);
end;
fugaInterface.sameSpell:setChecked(true);
fugaInterface.orangeSpell:setEnabled(false);
fugaInterface.sameSpell.onCheckChange = function(widget, checked)
	if checked then
		fugaInterface.orangeSpell:setEnabled(false);
	else
		fugaInterface.orangeSpell:setEnabled(true);
		fugaInterface.orangeSpell:setText(fugaInterface.castSpell:getText());
	end
end;
fugaInterface.lifesValue:hide();
fugaInterface.lifesOption.onCheckChange = function(self, checked)
	if checked then
		fugaInterface.multipleOption:hide();
		fugaInterface.lifesValue:show();
	else
		fugaInterface.multipleOption:show();
		fugaInterface.lifesValue:hide();
	end
end;
function refreshFugaList(list, table)
	if table then
		for i, child in pairs(list.spellList:getChildren()) do
			child:destroy();
		end
		for _, widget in pairs(fugaSpellsWidgets) do
			widget:destroy();
		end
		for index, entry in ipairs(table) do
			local label = setupUI(spellEntry, list.spellList);
			local newWidget = setupUI(widgetConfig, g_ui.getRootWidget());
			newWidget:setText(firstLetterUpper(entry.spellCast));
			attachSpellWidgetCallbacks(newWidget, entry.index, storageProfiles.fugaSpells);
			if not entry.widgetPos then
				entry.widgetPos = {x=0,y=50};
			end
			if entry.enableTimeSpell then
				newWidget:show();
			else
				newWidget:hide();
			end
			newWidget:setPosition(entry.widgetPos);
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
					if (v == entry) then
						removeTable(storageProfiles.fugaSpells, i);
					end
				end
				scriptFuncs.reindexTable(table);
				newWidget:destroy();
				label:destroy();
			end;
			label.enabled:setChecked(entry.enabled);
			label.enabled:setTooltip((not entry.enabled and LUAOBFUSACTOR_DECRYPT_STR_0("\209\163\183\214\164\83\25\199\189\179\216\164", "\57\148\205\214\180\200\54")) or LUAOBFUSACTOR_DECRYPT_STR_0("\54\244\38\53\116\30\248\117\7\102\23\241\57", "\22\114\157\85\84"));
			label.enabled.onClick = function(widget)
				entry.enabled = not entry.enabled;
				label.enabled:setChecked(entry.enabled);
				label.enabled:setTooltip((not entry.enabled and LUAOBFUSACTOR_DECRYPT_STR_0("\225\197\18\198\81\243\232\247\219\22\200\81", "\200\164\171\115\164\61\150")) or LUAOBFUSACTOR_DECRYPT_STR_0("\154\253\16\68\129\178\241\67\118\147\187\248\15", "\227\222\148\99\37"));
				scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
			end;
			label.showTimespell:setChecked(entry.enableTimeSpell);
			label.showTimespell:setTooltip((not entry.enableTimeSpell and LUAOBFUSACTOR_DECRYPT_STR_0("\22\92\83\244\245\54\18\102\255\244\54\18\97\230\252\63\94", "\153\83\50\50\150")) or LUAOBFUSACTOR_DECRYPT_STR_0("\121\127\96\29\113\167\72\29\66\122\17\118\235\126\77\115\127\16", "\45\61\22\19\124\19\203"));
			label.showTimespell.onClick = function(widget)
				entry.enableTimeSpell = not entry.enableTimeSpell;
				label.showTimespell:setChecked(entry.enableTimeSpell);
				label.showTimespell:setTooltip((not entry.enableTimeSpell and LUAOBFUSACTOR_DECRYPT_STR_0("\228\28\12\247\14\117\249\245\27\0\240\66\67\169\196\30\1", "\217\161\114\109\149\98\16")) or LUAOBFUSACTOR_DECRYPT_STR_0("\54\41\43\125\190\120\23\96\12\117\177\113\82\19\40\121\176\120", "\20\114\64\88\28\220"));
				if entry.enableTimeSpell then
					newWidget:show();
				else
					newWidget:hide();
				end
				scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
			end;
			label.remove.onClick = function(widget)
				for i, v in ipairs(storageProfiles.fugaSpells) do
					if (v == entry) then
						removeTable(storageProfiles.fugaSpells, i);
					end
				end
				scriptFuncs.reindexTable(table);
				newWidget:destroy();
				label:destroy();
			end;
			label.onClick = function(widget)
				fugaInterface.moveDown:show();
				fugaInterface.moveUp:show();
			end;
			label.textToSet:setText(firstLetterUpper(entry.spellCast));
			label.textToSet:setColor(LUAOBFUSACTOR_DECRYPT_STR_0("\38\9\219\160\253", "\221\81\97\178\212\152\176"));
			label.textToSet:setFont(LUAOBFUSACTOR_DECRYPT_STR_0("\219\226\15\255\27\195\230\80\170\75\221\255\80\233\21\216\233\25\254\30", "\122\173\135\125\155"));
			label:setTooltip(LUAOBFUSACTOR_DECRYPT_STR_0("\171\211\1\183\56\52\136\169\196\19\170\62\54\205\222\129", "\168\228\161\96\217\95\81") .. entry.orangeSpell .. LUAOBFUSACTOR_DECRYPT_STR_0("\155\205\110\115\33\23\232\210\60\89\42\89\129\145", "\55\187\177\78\60\79") .. entry.onScreen .. LUAOBFUSACTOR_DECRYPT_STR_0("\109\210\31\223\73\219\129\33\142\124\228\73\195\132\34\217\81\177\6", "\224\77\174\63\139\38\175") .. entry.cooldownTotal .. LUAOBFUSACTOR_DECRYPT_STR_0("\151\1\68\110\165\66\76\39\146\68\24\13\139\78\84\42\139\86\86\116\196", "\78\228\33\56") .. entry.cooldownActive .. LUAOBFUSACTOR_DECRYPT_STR_0("\221\62\174\67\173\222\110\183\17\134\203\112\166\89\197", "\229\174\30\210\99") .. entry.selfHealth);
		end
	end
end
fugaInterface.moveUp.onClick = function()
	local action = fugaInterface.spellList:getFocusedChild();
	if not action then
		return;
	end
	local index = fugaInterface.spellList:getChildIndex(action);
	if (index < 2) then
		return;
	end
	fugaInterface.spellList:moveChildToIndex(action, index - 1);
	fugaInterface.spellList:ensureChildVisible(action);
	storageProfiles.fugaSpells[index].index = index - 1;
	storageProfiles.fugaSpells[index - 1].index = index;
	table.sort(storageProfiles.fugaSpells, function(a, b)
		return a.index < b.index;
	end);
	scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end;
fugaInterface.moveDown.onClick = function()
	local action = fugaInterface.spellList:getFocusedChild();
	if not action then
		return;
	end
	local index = fugaInterface.spellList:getChildIndex(action);
	if (index >= fugaInterface.spellList:getChildCount()) then
		return;
	end
	fugaInterface.spellList:moveChildToIndex(action, index + 1);
	fugaInterface.spellList:ensureChildVisible(action);
	storageProfiles.fugaSpells[index].index = index + 1;
	storageProfiles.fugaSpells[index + 1].index = index;
	table.sort(storageProfiles.fugaSpells, function(a, b)
		return a.index < b.index;
	end);
	scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end;
fugaInterface.insertSpell.onClick = function(widget)
	local spellName = fugaInterface.castSpell:getText():trim();
	local orangeMsg = fugaInterface.orangeSpell:getText():trim();
	local onScreen = fugaInterface.onScreen:getText();
	orangeMsg = ((orangeMsg:len() == 0) and spellName) or orangeMsg;
	local hppercent = fugaInterface.hppercent:getValue();
	local cooldownTotal = fugaInterface.cooldownTotal:getValue();
	local cooldownActive = fugaInterface.cooldownActive:getValue();
	if (spellName:len() == 0) then
		return warn(LUAOBFUSACTOR_DECRYPT_STR_0("\50\227\144\80\225\52\61\91\222\150\84\225\49\121\53\236\139\84\163", "\89\123\141\230\49\141\93"));
	end
	if (not fugaInterface.sameSpell:isChecked() and (orangeMsg:len() == 0)) then
		return warn(LUAOBFUSACTOR_DECRYPT_STR_0("\218\127\224\13\28\67\247\49\217\30\17\68\244\116\182\63\0\79\255\125\184", "\42\147\17\150\108\112"));
	end
	if (onScreen:len() == 0) then
		return warn(LUAOBFUSACTOR_DECRYPT_STR_0("\38\168\59\126\235\225\11\230\25\122\255\252\79\137\35\63\212\235\29\163\40\113", "\136\111\198\77\31\135"));
	end
	if (hppercent == 0) then
		return warn(LUAOBFUSACTOR_DECRYPT_STR_0("\43\7\177\87\177\237\19\233\42\25\183\83\175\231\18\167\22\71", "\201\98\105\199\54\221\132\119"));
	end
	if (cooldownTotal == 0) then
		return warn(LUAOBFUSACTOR_DECRYPT_STR_0("\144\2\149\32\14\60\168\249\47\140\46\14\49\163\174\2\195\21\13\33\173\181\66", "\204\217\108\227\65\98\85"));
	end
	local spellConfig = {[LUAOBFUSACTOR_DECRYPT_STR_0("\87\205\241\224\52", "\160\62\163\149\133\76")]=(#storageProfiles.fugaSpells + 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\197\176\8\35\207\245\161\30\59", "\163\182\192\109\79")]=spellName,[LUAOBFUSACTOR_DECRYPT_STR_0("\59\52\1\206\242\49\21\16\197\249\56", "\149\84\70\96\160")]=orangeMsg,[LUAOBFUSACTOR_DECRYPT_STR_0("\55\8\62\238\42\3\8\227", "\141\88\102\109")]=onScreen,[LUAOBFUSACTOR_DECRYPT_STR_0("\160\86\198\118\50\56\84\205\167\91", "\161\211\51\170\16\122\93\53")]=hppercent,[LUAOBFUSACTOR_DECRYPT_STR_0("\248\161\189\36\255\161\165\38\218\173\166\33\237\171", "\72\155\206\210")]=cooldownActive,[LUAOBFUSACTOR_DECRYPT_STR_0("\69\117\91\2\55\73\109\90\58\60\82\123\88", "\83\38\26\52\110")]=cooldownTotal,[LUAOBFUSACTOR_DECRYPT_STR_0("\93\25\38\68\84\18\19\79\85\18\20\86\93\27\43", "\38\56\119\71")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\246\225\89\212\41\83\247", "\54\147\143\56\182\69")]=true};
	if fugaInterface.lifesOption:isChecked() then
		spellConfig.lifes = 0;
		spellConfig.enableLifes = true;
		if (fugaInterface.lifesValue:getValue() == 0) then
			return warn(LUAOBFUSACTOR_DECRYPT_STR_0("\255\143\233\72\211\223\133\191\101\214\208\132\191\127\222\218\148\250\7", "\191\182\225\159\41"));
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
	table.insert(storageProfiles.fugaSpells, spellConfig);
	refreshFugaList(fugaInterface, storageProfiles.fugaSpells);
	scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
	fugaInterface.castSpell:clearText();
	fugaInterface.orangeSpell:clearText();
	fugaInterface.onScreen:clearText();
	fugaInterface.cooldownTotal:setValue(0);
	fugaInterface.cooldownActive:setValue(0);
	fugaInterface.hppercent:setValue(0);
	fugaInterface.reviveOption:setChecked(false);
	fugaInterface.lifesOption:setChecked(false);
	fugaInterface.multipleOption:setChecked(false);
	fugaInterface.multipleOption:show();
	fugaInterface.lifesValue:hide();
end;
refreshFugaList(fugaInterface, storageProfiles.fugaSpells);
storage.widgetPos = storage.widgetPos or {};
informationWidget = {};
local widgetNames = {LUAOBFUSACTOR_DECRYPT_STR_0("\56\26\39\66\191\130\218\63", "\162\75\114\72\53\235\231")};
for i, widgetName in ipairs(widgetNames) do
	informationWidget[widgetName] = setupUI(widgetConfig, g_ui.getRootWidget());
end
local function attachSpellWidgetCallbacks(key)
	informationWidget[key].onDragEnter = function(widget, mousePos)
		if not modules.corelib.g_keyboard.isCtrlPressed() then
			return false;
		end
		widget:breakAnchors();
		widget.movingReference = {x=(mousePos.x - widget:getX()),y=(mousePos.y - widget:getY())};
		return true;
	end;
	informationWidget[key].onDragMove = function(widget, mousePos, moved)
		local parentRect = widget:getParent():getRect();
		local x = math.min(math.max(parentRect.x, mousePos.x - widget.movingReference.x), (parentRect.x + parentRect.width) - widget:getWidth());
		local y = math.min(math.max(parentRect.y - widget:getParent():getMarginTop(), mousePos.y - widget.movingReference.y), (parentRect.y + parentRect.height) - widget:getHeight());
		widget:move(x, y);
		return true;
	end;
	informationWidget[key].onDragLeave = function(widget, pos)
		storage.widgetPos[key] = {};
		storage.widgetPos[key].x = widget:getX();
		storage.widgetPos[key].y = widget:getY();
		return true;
	end;
end
for key, value in pairs(informationWidget) do
	attachSpellWidgetCallbacks(key);
	informationWidget[key]:setPosition(storage.widgetPos[key] or {0,50});
end
local toShow = informationWidget[LUAOBFUSACTOR_DECRYPT_STR_0("\159\52\75\245\103\7\148\40", "\98\236\92\36\130\51")];
macro(100, function()
	if isOn.showInfos then
		for _, value in ipairs(storageProfiles.fugaSpells) do
			if value.selfHealth then
				toShow:show();
				toShow:setText(LUAOBFUSACTOR_DECRYPT_STR_0("\141\55\37\151\108\143\154\3\254\89", "\80\196\121\108\218\37\200\213") .. getPlayersAttack(false) .. LUAOBFUSACTOR_DECRYPT_STR_0("\64\111\66\79\110\60\169\37\93\54\37\11", "\234\96\19\98\31\43\110") .. calculatePercentage(value.selfHealth) .. "%");
				return;
			end
		end
	else
		toShow:hide();
	end
end);
macro(1, function()
	if not (fugaSpellsWidgets and storageProfiles.fugaSpells) then
		return;
	end
	for index, spellConfig in ipairs(storageProfiles.fugaSpells) do
		local widget = fugaSpellsWidgets[spellConfig.index];
		if widget then
			local textToSet = firstLetterUpper(spellConfig.onScreen);
			local color = LUAOBFUSACTOR_DECRYPT_STR_0("\1\13\87\194\162", "\235\102\127\50\167\204\18");
			if (spellConfig.activeCooldown and (spellConfig.activeCooldown > now)) then
				textToSet = textToSet .. LUAOBFUSACTOR_DECRYPT_STR_0("\10\225", "\78\48\193\149\67\36") .. formatRemainingTime(spellConfig.activeCooldown);
				color = LUAOBFUSACTOR_DECRYPT_STR_0("\115\78\208\62\103\22\56", "\33\80\126\224\120");
				if (spellConfig.enableLifes and (spellConfig.lifes == 0)) then
					spellConfig.activeCooldown = nil;
				end
			elseif (spellConfig.totalCooldown and (spellConfig.totalCooldown > now)) then
				textToSet = textToSet .. LUAOBFUSACTOR_DECRYPT_STR_0("\182\232", "\60\140\200\99\164") .. formatRemainingTime(spellConfig.totalCooldown);
				color = LUAOBFUSACTOR_DECRYPT_STR_0("\196\210\34\114\242\211\164", "\194\231\148\100\70");
			else
				textToSet = textToSet .. LUAOBFUSACTOR_DECRYPT_STR_0("\28\12\145\176", "\168\38\44\161\195\150");
				if (spellConfig.enableMultiple and spellConfig.canReset) then
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
			if (spellConfig.enableMultiple and (spellConfig.count > 0)) then
				textToSet = "" .. spellConfig.count .. LUAOBFUSACTOR_DECRYPT_STR_0("\192\224\194", "\118\224\156\226\22\80\136\214") .. textToSet;
			end
			if (spellConfig.enableLifes and (spellConfig.lifes > 0)) then
				textToSet = "" .. spellConfig.lifes .. LUAOBFUSACTOR_DECRYPT_STR_0("\2\242\25", "\224\34\142\57") .. textToSet;
			end
			widget:setText(textToSet);
			widget:setColor(color);
		end
	end
end);
keyIcon.title:setOn(isOn.keyMacro);
keyIcon.title.onClick = function(widget)
	isOn.keyMacro = not isOn.keyMacro;
	widget:setOn(isOn.keyMacro);
	scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end;
keyIcon.settings.onClick = function(widget)
	if not keyInterface:isVisible() then
		keyInterface:show();
		keyInterface:raise();
		keyInterface:focus();
	else
		keyInterface:hide();
		scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
	end
end;
keyInterface.closeButton.onClick = function(widget)
	keyInterface:hide();
	scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
end;
keyInterface.key.onHoverChange = function(widget, hovered)
	if hovered then
		x = true;
		onKeyPress(function(key)
			if not x then
				return;
			end
			widget:setText(key);
		end);
	else
		x = false;
	end
end;
function refreshKeyList(list, table)
	if table then
		for i, child in pairs(list.spellList:getChildren()) do
			child:destroy();
		end
		for index, entry in ipairs(table) do
			local label = setupUI(spellEntry, list.spellList);
			label.showTimespell:hide();
			label.onDoubleClick = function(widget)
				local spellTable = entry;
				list.key:setText(spellTable.keyPress);
				list.castSpell:setText(spellTable.spellCast);
				for i, v in ipairs(storageProfiles.keySpells) do
					if (v == entry) then
						removeTable(storageProfiles.keySpells, i);
					end
				end
				scriptFuncs.reindexTable(table);
				label:destroy();
			end;
			label.enabled:setChecked(entry.enabled);
			label.enabled:setTooltip((not entry.enabled and LUAOBFUSACTOR_DECRYPT_STR_0("\251\169\196\223\127\244\29\61\206\162\201\209", "\110\190\199\165\189\19\145\61")) or LUAOBFUSACTOR_DECRYPT_STR_0("\254\226\100\233\137\203\223\171\68\248\142\203\214", "\167\186\139\23\136\235"));
			label.enabled.onClick = function(widget)
				entry.enabled = not entry.enabled;
				label.enabled:setChecked(entry.enabled);
				label.enabled:setTooltip((not entry.enabled and LUAOBFUSACTOR_DECRYPT_STR_0("\63\187\137\15\22\176\200\62\10\176\132\1", "\109\122\213\232")) or LUAOBFUSACTOR_DECRYPT_STR_0("\202\254\177\49\236\251\167\112\221\231\167\60\226", "\80\142\151\194"));
				scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
			end;
			label.remove.onClick = function(widget)
				for i, v in ipairs(storageProfiles.keySpells) do
					if (v == entry) then
						removeTable(storageProfiles.keySpells, i);
					end
				end
				scriptFuncs.reindexTable(storageProfiles.keySpells);
				label:destroy();
			end;
			label.textToSet:setText(firstLetterUpper(entry.spellCast) .. LUAOBFUSACTOR_DECRYPT_STR_0("\67\218\55\103\6\223\45\12", "\44\99\166\23") .. entry.keyPress);
		end
	end
end
keyInterface.insertKey.onClick = function(widget)
	local keyPressed = keyInterface.key:getText();
	local spellName = keyInterface.castSpell:getText():lower():trim();
	if (not keyPressed or (keyPressed:len() == 0)) then
		return warn(LUAOBFUSACTOR_DECRYPT_STR_0("\85\249\63\55\63\173\120\183\2\51\42\234", "\196\28\151\73\86\83"));
	end
	for _, config in ipairs(storageProfiles.keySpells) do
		if (config.keyPress == keyPressed) then
			return warn(LUAOBFUSACTOR_DECRYPT_STR_0("\216\6\48\80\163\84\10\115\242\7\48\80\163\92\28\115\247\77", "\22\147\99\73\112\226\56\120"));
		end
	end
	table.insert(storageProfiles.keySpells, {[LUAOBFUSACTOR_DECRYPT_STR_0("\177\123\230\240\149", "\237\216\21\130\149")]=(#storageProfiles.keySpells + 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\145\94\90\83\188\234\95\145\90", "\62\226\46\63\63\208\169")]=spellName,[LUAOBFUSACTOR_DECRYPT_STR_0("\238\28\76\179\13\8\60\77", "\62\133\121\53\227\127\109\79")]=keyPressed,[LUAOBFUSACTOR_DECRYPT_STR_0("\21\26\51\247\218\171\166", "\194\112\116\82\149\182\206")]=true});
	refreshKeyList(keyInterface, storageProfiles.keySpells);
	scriptFuncs.saveProfile(STORAGE_DIRECTORY, storageProfiles);
	keyInterface.key:clearText();
	keyInterface.castSpell:clearText();
end;
refreshKeyList(keyInterface, storageProfiles.keySpells);
macro(storage.scrollBars1.macroDelay, function()
	if not comboIcon.title:isOn() then
		return;
	end
	if (stopCombo and (stopCombo >= now)) then
		return;
	end
	if (stopToCast() or isAnySelectedKeyPressed() or not g_game.isAttacking()) then
		return;
	end
	local playerPos = player:getPosition();
	local target = g_game.getAttackingCreature();
	local targetPos = target:getPosition();
	if not targetPos then
		return;
	end
	local targetDistance = getDistanceBetween(playerPos, targetPos);
	for index, value in ipairs(storageProfiles.comboSpells) do
		if (value.enabled and (targetDistance <= value.distance)) then
			if (not value.cooldownSpells or (value.cooldownSpells <= now)) then
				say(value.spellCast);
			end
		end
	end
end);
local selfPlayer = g_game.getLocalPlayer();
macro(1, function()
	if not fugaIcon.title:isOn() then
		return;
	end
	if isInPz() then
		return;
	end
	local selfHealth = selfPlayer:getHealthPercent();
	for key, value in ipairs(storageProfiles.fugaSpells) do
		if (value.enabled and (selfHealth <= calculatePercentage(value.selfHealth))) then
			if (not value.totalCooldown or (value.totalCooldown <= now)) then
				if not canCastFuga() then
					stopCombo = now + 250;
					forceSay(value.spellCast);
				end
			end
		end
	end
end);
macro(1, function()
	if not g_mouse.isPressed(7) then
		return;
	end
	if not fugaIcon.title:isOn() then
		return;
	end
	for key, value in ipairs(storageProfiles.fugaSpells) do
		if (value.enabled and (g_mouse.isPressed(7))) then
			if (not value.totalCooldown or (value.totalCooldown <= now)) then
				if not canCastFuga() then
					stopCombo = now + 250;
					return forceSay(value.spellCast);
				end
			end
		end
	end
end);
macro(storage.scrollBars1.macroDelay, function()
	if not keyIcon.title:isOn() then
		return;
	end
	if modules.game_console:isChatEnabled() then
		return;
	end
	for index, value in ipairs(storageProfiles.keySpells) do
		if (value.enabled and (modules.corelib.g_keyboard.areKeysPressed(value.keyPress))) then
			stopCombo = now + 250;
			say(value.spellCast);
		end
	end
end);
onTalk(function(name, level, mode, text, channelId, pos)
	text = text:lower();
	if (name ~= player:getName()) then
		return;
	end
	if (text == LUAOBFUSACTOR_DECRYPT_STR_0("\27\161\70\13\213\162\55\56\161\78\25", "\110\89\200\44\120\160\130")) then
		yaibaSlow = os.time() + 15;
	end
	for index, value in ipairs(CONFIG.pot) do
		if (text == value.orangeText:lower()) then
			value.exhaust = now + value.cooldown;
		end
	end
	for index, value in ipairs(CONFIG.pot2) do
		if (text == value.orangeText:lower()) then
			value.exhaust = now + value.cooldown;
		end
	end
	for index, value in ipairs(storageProfiles.comboSpells) do
		if (text == value.orangeSpell) then
			value.cooldownSpells = now + value.cooldown;
		end
	end
	for index, value in ipairs(storageProfiles.fugaSpells) do
		if (text == value.orangeSpell) then
			if value.enableLifes then
				value.activeCooldown = (now + (value.cooldownActive * 1000)) - 250;
				value.totalCooldown = (now + (value.cooldownTotal * 1000)) - 250;
				value.lifes = value.amountLifes;
			end
			if (value.enableRevive and not value.alreadyChecked) then
				value.totalCooldown = (now + (value.cooldownTotal * 1000)) - 250;
				value.activeCooldown = (now + (value.cooldownActive * 1000)) - 250;
				value.alreadyChecked = true;
			end
			if value.enableMultiple then
				if (value.count > 0) then
					value.count = value.count - 1;
					value.activeCooldown = (now + (value.cooldownActive * 1000)) - 250;
					if (value.count == 0) then
						value.totalCooldown = (now + (value.cooldownTotal * 1000)) - 250;
						value.canReset = true;
						break;
					end
				end
			end
			if not (value.enableLifes or value.enableRevive or value.enableMultiple) then
				value.activeCooldown = (now + (value.cooldownActive * 1000)) - 250;
				value.totalCooldown = (now + (value.cooldownTotal * 1000)) - 250;
				break;
			end
		end
	end
end);
onTextMessage(function(mode, text)
	for key, value in ipairs(storageProfiles.fugaSpells) do
		if value.enableLifes then
			if (text:lower():find(LUAOBFUSACTOR_DECRYPT_STR_0("\166\204\89\84\70\95\123\72\235\209\78\72\66\89\56\72\190", "\45\203\163\43\38\35\42\91")) and value.activeCooldown and (value.activeCooldown >= now)) then
				value.lifes = value.lifes - 1;
			end
		end
	end
end);
onPlayerPositionChange(function(newPos, oldPos)
	local izanagiPos = {x=1214,y=686,z=6};
	for key, value in ipairs(storageProfiles.fugaSpells) do
		if (value.enableRevive and (value.spellCast == LUAOBFUSACTOR_DECRYPT_STR_0("\219\159\221\45\134\174\93", "\52\178\229\188\67\231\201"))) then
			if ((newPos.x == izanagiPos.x) and (newPos.y == izanagiPos.y) and (newPos.z == izanagiPos.z)) then
				value.activeCooldown = nil;
				value.alreadyChecked = true;
			end
		end
	end
end);
UI.Separator();
UI.Label(LUAOBFUSACTOR_DECRYPT_STR_0("\17\96\121\42\210\112\99\12\96\115\54\216\111", "\67\65\33\48\100\151\60")):setFont(LUAOBFUSACTOR_DECRYPT_STR_0("\220\238\190\203\252\217\243\136\215\253\203", "\147\191\135\206\184"));
local panelName = LUAOBFUSACTOR_DECRYPT_STR_0("\129\48\178\211\217\64", "\210\228\72\198\161\184\51");
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


]]);
ui:setId(PanelName);
if not storage[panelName] then
	storage[panelName] = {};
end
local settings = storage[panelName];
PainelsWindow = UI.createWidget(LUAOBFUSACTOR_DECRYPT_STR_0("\6\72\250\30\118\194\1\64\253\20\124\217", "\174\86\41\147\112\19"), rootWidget);
PainelsWindow:hide();
extrasWindow = UI.createWindow(LUAOBFUSACTOR_DECRYPT_STR_0("\126\24\153\25\36\28\38\162\85\4\130\28", "\203\59\96\237\107\69\111\113"), rootWidget);
extrasWindow:hide();
extrasWindow.closeButton.onClick = function(widget)
	extrasWindow:hide();
end;
local rightPanel = extrasWindow.content.right;
local leftPanel = extrasWindow.content.left;
ui.editMusica.onClick = function(widget)
	extrasWindow:show();
	extrasWindow:raise();
	extrasWindow:focus();
end;
PainelsWindow.closeButton.onClick = function(widget)
	PainelsWindow:hide();
end;
ui.editPainel.onClick = function(widget)
	PainelsWindow:show();
	PainelsWindow:raise();
	PainelsWindow:focus();
end;
local configSeloBuff1 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\39\25\163\237\53\255\192\42\37\169\237\62\161", "\183\68\118\204\129\81\144")]=5000,[LUAOBFUSACTOR_DECRYPT_STR_0("\30\162\99\247\2\128\2\168\68\225\19\150\29", "\226\110\205\16\132\107")]={LUAOBFUSACTOR_DECRYPT_STR_0("\225\214\244\202\84\171\197\239\208\1\248\198\236\216\69\228", "\33\139\163\128\185")}};
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
UI.Separator(leftPanel);
CONFIG = {[LUAOBFUSACTOR_DECRYPT_STR_0("\69\93\3\219\89", "\190\55\56\100")]={{[LUAOBFUSACTOR_DECRYPT_STR_0("\69\191\57\18\31", "\147\54\207\92\126\115\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\56\50\61\31\123\10\52\59\120\31\127\25\56\58\115", "\30\109\81\85\29\109"),[LUAOBFUSACTOR_DECRYPT_STR_0("\252\126\91\186\50\209\235\241", "\156\159\17\52\214\86\190")]=100}},[LUAOBFUSACTOR_DECRYPT_STR_0("\188\234\186\185\160\205\183\169", "\220\206\143\221")]={{[LUAOBFUSACTOR_DECRYPT_STR_0("\149\109\40\27\212", "\178\230\29\77\119\184\172")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\183\0\14\98\184\231\187\13\30\121\253\231\191\30\18\120\246", "\152\149\222\106\123\23"),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\41\249\79\177\210\49\248", "\213\189\70\150\35")]=100}},[LUAOBFUSACTOR_DECRYPT_STR_0("\95\90\96", "\104\47\53\20")]={{[LUAOBFUSACTOR_DECRYPT_STR_0("\170\72", "\111\195\44\225\124\220")]=107,[LUAOBFUSACTOR_DECRYPT_STR_0("\215\84\1\125\172\174\236\67\24\103", "\203\184\38\96\19\203")]=LUAOBFUSACTOR_DECRYPT_STR_0("\48\51\127\68\203\53\51\123\68\218\45\118\107\0", "\174\89\19\25\33"),[LUAOBFUSACTOR_DECRYPT_STR_0("\44\29\93\66\243\136\28\33", "\107\79\114\50\46\151\231")]=400}},[LUAOBFUSACTOR_DECRYPT_STR_0("\32\167\188\43\139", "\160\89\198\213\73\234\89\215")]={{[LUAOBFUSACTOR_DECRYPT_STR_0("\91\97\177\242\201", "\165\40\17\212\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\231\208\2\38\51\165\192\9\58\36\228", "\70\133\185\104\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\74\75\38\205\11\82\74", "\169\100\37\36\74")]=14000}},[LUAOBFUSACTOR_DECRYPT_STR_0("\16\136\182\2", "\48\96\231\194")]={{[LUAOBFUSACTOR_DECRYPT_STR_0("\193\94", "\227\168\58\110\77\121\184\207")]=11813,[LUAOBFUSACTOR_DECRYPT_STR_0("\116\46\190\78\182\222\69\160\99\40", "\197\27\92\223\32\209\187\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\31\197\254\6\83\131\249\6\75\215\254\17\30", "\155\99\63\163"),[LUAOBFUSACTOR_DECRYPT_STR_0("\129\222\174\129\189\139\149\223", "\228\226\177\193\237\217")]=400}}};
onTalk(function(name, level, mode, text, channelId, pos)
	if (name ~= player:getName()) then
		return;
	end
	if ((text:lower() == id) and (storage.time.t < now)) then
		storage.time.t = now + tempo1;
	end
end, leftPanel);
macro(100, function()
	for _, spec in ipairs(getSpectators(posz())) do
		if spec:isPlayer() then
			if (spec == player) then
				player:setMarked(LUAOBFUSACTOR_DECRYPT_STR_0("\54\188\34\229\63", "\134\84\208\67"));
			elseif spec:isPartyMember() then
				spec:setMarked(LUAOBFUSACTOR_DECRYPT_STR_0("\10\169\138\80\28\187", "\60\115\204\230"));
			elseif (spec:getEmblem() ~= 1) then
				spec:setMarked(LUAOBFUSACTOR_DECRYPT_STR_0("\245\63\239", "\16\135\90\139"));
			end
		end
	end
end);
UI.Separator();
UI.Label(LUAOBFUSACTOR_DECRYPT_STR_0("\103\113\10\50\92\20\90\93\126\19\38\20", "\24\52\20\102\83\46\52"), leftPanel):setFont(LUAOBFUSACTOR_DECRYPT_STR_0("\199\38\49\55\0\194\59\7\43\1\208", "\111\164\79\65\68"));
local panelName = LUAOBFUSACTOR_DECRYPT_STR_0("\245\220\143\223\60", "\138\166\185\227\190\78");
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

]], leftPanel);
ui:setId(panelName);
if not storage[panelName] then
	storage[panelName] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\194\112", "\121\171\20\165\87\50\67")]=3155,[LUAOBFUSACTOR_DECRYPT_STR_0("\210\49\173\58\188", "\98\166\88\217\86\217")]=enabled,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\248\120\3\138\217\242", "\188\150\150\25\97\230")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\201\140\75\22\5\227\221", "\141\186\233\63\98\108")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\249\250", "\69\145\138\76\214")]=20};
end
ui.title:setOn(storage[panelName].enabled);
ui.title.onClick = function(widget)
	storage[panelName].enabled = not storage[panelName].enabled;
	widget:setOn(storage[panelName].enabled);
end;
local updateHpText = function()
	local desc;
	if storage[panelName].setting then
		desc = LUAOBFUSACTOR_DECRYPT_STR_0("\68\206\155\142\186\2", "\118\16\175\233\233\223");
	else
		desc = LUAOBFUSACTOR_DECRYPT_STR_0("\174\138\48\182\247", "\29\235\228\85\219\142\235");
	end
	ui.help:setText(LUAOBFUSACTOR_DECRYPT_STR_0("\20\210\250", "\50\93\180\218\189\23\46\71") .. desc .. LUAOBFUSACTOR_DECRYPT_STR_0("\158\140\107\16", "\40\190\196\59\44\36\188") .. storage[panelName].hp .. "%");
end;
updateHpText();
ui.HP.onValueChange = function(scroll, value)
	storage[panelName].hp = value;
	updateHpText();
end;
ui.item:setItemId(storage[panelName].id);
ui.item.onItemChange = function(widget)
	storage[panelName].id = widget:getItemId();
end;
ui.HP:setValue(storage[panelName].hp);
macro(1, function()
	if not storage[panelName].enabled then
		return;
	end
	if storage[panelName].setting then
		if (g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent() < storage[panelName].hp)) then
			say(LUAOBFUSACTOR_DECRYPT_STR_0("\23\64\215\191\251\116\77\15\77\213\188\245\104\77\26\80\201\190\243\115", "\109\92\37\188\212\154\29"));
			say(LUAOBFUSACTOR_DECRYPT_STR_0("\47\234\175\200\48\83\68\220\172\202\57\85\17\175\130\214\36\80\13\225", "\58\100\143\196\163\81"));
			say(LUAOBFUSACTOR_DECRYPT_STR_0("\49\71\40\168\62\64\165\61\18\75\43\172\42\9\195\27\15\72\42\173", "\110\122\34\67\195\95\41\133"));
		end
	end
end);
UI.Label(LUAOBFUSACTOR_DECRYPT_STR_0("\65\152\118\111\150\70\129\126\102\250\70\235", "\182\21\209\59\42"), rightPanel):setFont(LUAOBFUSACTOR_DECRYPT_STR_0("\180\94\213\14\46\184\163\113\202\19\53", "\222\215\55\165\125\65"));
setDefaultTab(LUAOBFUSACTOR_DECRYPT_STR_0("\1\208\207\20", "\42\76\177\166\122\146\161\141"));
timeSpellPanelName = LUAOBFUSACTOR_DECRYPT_STR_0("\177\131\8\203\106\102\160\134\9\204\118\98", "\22\197\234\101\174\25");
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
]], rightPanel);
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
TimeSpellConfig = {[LUAOBFUSACTOR_DECRYPT_STR_0("\62\36\160\208\122\188", "\230\77\84\197\188\22\207\183")]={}};
local spellsWidgets = {};
local timeSpellFile = LUAOBFUSACTOR_DECRYPT_STR_0("\182\22\201\232\195", "\85\153\116\166\156\236\193\144") .. configName .. "/" .. name() .. LUAOBFUSACTOR_DECRYPT_STR_0("\155\212\68\190\225\51\180\229\65\191\170\10\183\239\67", "\96\196\128\45\211\132");
local MainPanel = windowUI.MainPanel;
local editActiveTime = nil;
local editTotalTime = nil;
if g_resources.fileExists(timeSpellFile) then
	local status, result = pcall(function()
		return json.decode(g_resources.readFileContents(timeSpellFile));
	end);
	if not status then
		return onError(LUAOBFUSACTOR_DECRYPT_STR_0("\16\159\105\80\192\239\184\215\52\137\114\81\213\239\178\209\57\136\59\23", "\184\85\237\27\63\178\207\212") .. timeSpellFile .. LUAOBFUSACTOR_DECRYPT_STR_0("\65\23\73\107\7\25\15\86\16\25\29\87\13\25\25\77\7\91\5\90\5\21\73\91\13\85\12\75\13\25\61\86\5\92\58\79\13\85\5\17\2\74\6\81\70\25\45\90\28\88\0\83\27\3", "\63\104\57\105") .. result);
	end
	TimeSpellConfig = result;
	if (type(TimeSpellConfig.spells) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\31\134\166\72\14", "\36\107\231\196")) then
		TimeSpellConfig.spells = {};
	end
	for i, object in pairs(TimeSpellConfig.spells) do
		if ((object.totalCd - now) > object.totalTime) then
			TimeSpellConfig.spells[i].totalCd = 0;
			TimeSpellConfig.spells[i].activeCd = 0;
		end
	end
end
function timeSpellConfigSave()
	local configFile = timeSpellFile;
	local status, result = pcall(function()
		return json.encode(TimeSpellConfig, 2);
	end);
	if not status then
		return onError(LUAOBFUSACTOR_DECRYPT_STR_0("\120\167\176\136\79\245\177\134\75\188\172\128\29\182\173\137\91\188\165\146\79\180\182\142\82\187\236\199\121\176\182\134\84\185\177\221\29", "\231\61\213\194") .. result);
	end
	if (result:len() > (100 * 1024 * 1024)) then
		return onError(LUAOBFUSACTOR_DECRYPT_STR_0("\42\162\51\117\0\170\40\97\8\185\52\124\7\237\59\122\5\168\125\124\31\168\47\51\88\253\109\94\43\237\42\122\5\161\125\125\6\185\125\113\12\237\46\114\31\168\57\61", "\19\105\205\93"));
	end
	g_resources.writeFileContents(timeSpellFile, result);
end
ui.title:setOn(TimeSpellConfig.enabled);
ui.title.onClick = function(widget)
	TimeSpellConfig.enabled = not TimeSpellConfig.enabled;
	widget:setOn(TimeSpellConfig.enabled);
	timeSpellConfigSave();
	if not TimeSpellConfig.enabled then
		for i, widget in pairs(spellsWidgets) do
			if (widget ~= nil) then
				spellsWidgets[i]:destroy();
				spellsWidgets[i] = nil;
			end
		end
	end
end;
ui.settings.onClick = function(widget)
	windowUI:show();
	windowUI:raise();
	windowUI:focus();
end;
windowUI.closeButton.onClick = function(widget)
	windowUI:hide();
	timeSpellConfigSave();
end;
local destroySpellWidget = function(key)
	spellsWidgets[key]:destroy();
	spellsWidgets[key] = nil;
end;
local refreshSpells = function()
	if TimeSpellConfig.spells then
		for i, child in pairs(MainPanel.spellList:getChildren()) do
			child:destroy();
		end
		for _, entry in pairs(TimeSpellConfig.spells) do
			local label = UI.createWidget(LUAOBFUSACTOR_DECRYPT_STR_0("\154\24\219\141\51\140\6\202\147\38", "\95\201\104\190\225"), MainPanel.spellList);
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
			end;
			label.enabled:setChecked(entry.enabled);
			label.enabled.onClick = function(widget)
				entry.enabled = not entry.enabled;
				label.enabled:setChecked(entry.enabled);
			end;
			label.remove.onClick = function(widget)
				TimeSpellConfig.spells[entry.spell] = nil;
				destroySpellWidget(entry.spell);
				reindexTable(TimeSpellConfig.spells);
				label:destroy();
			end;
			label:setText("[" .. entry.onScreen .. LUAOBFUSACTOR_DECRYPT_STR_0("\146\145\129\237\160\196\205\202\160\220\207\148\239", "\174\207\171\161") .. (entry.totalTime / 1000) .. "s");
		end
	end
end;
refreshSpells();
MainPanel.addSpell.onClick = function(widget)
	local spellName = MainPanel.spellName:getText():trim():lower();
	local onScreenName = MainPanel.onScreen:getText():trim();
	local activeTime = tonumber(MainPanel.activeTime:getText()) or 0;
	local totalTime = tonumber(MainPanel.totalTime:getText());
	local posX = tonumber(MainPanel.posX:getText()) or 0;
	local posY = tonumber(MainPanel.posY:getText()) or 39;
	if not totalTime then
		return warn(LUAOBFUSACTOR_DECRYPT_STR_0("\217\247\0\246\203\199\232\242\1\169\184\242\227\234\8\225\184\214\173\232\12\255\241\211\173\253\2\252\244\211\226\233\3\189", "\183\141\158\109\147\152"));
	end
	if not posX then
		return warn(LUAOBFUSACTOR_DECRYPT_STR_0("\24\0\235\9\31\25\227\0\32\83\166\41\34\29\227\30\108\8\166\26\45\5\239\8\108\48\166\28\35\26\239\24\37\6\232\66", "\108\76\105\134"));
	end
	if not posY then
		return warn(LUAOBFUSACTOR_DECRYPT_STR_0("\223\204\188\228\253\251\192\189\237\148\171\224\191\245\203\249\133\176\161\216\234\201\184\229\142\210\133\161\238\221\226\209\184\238\192\165", "\174\139\165\209\129"));
	end
	if (spellName:len() == 0) then
		return warn(LUAOBFUSACTOR_DECRYPT_STR_0("\151\186\239\196\245\19\117\116\175\233\162\228\200\23\117\106\227\178\162\215\199\15\121\124\227\160\242\196\202\15\62", "\24\195\211\130\161\166\99\16"));
	end
	if (onScreenName:len() == 0) then
		return warn(LUAOBFUSACTOR_DECRYPT_STR_0("\114\10\228\41\96\6\67\15\229\118\19\38\83\23\169\45\19\24\71\14\236\108\92\24\6\44\231\31\80\4\67\6\231\98", "\118\38\99\137\76\51"));
	end
	TimeSpellConfig.spells[spellName] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\244\40\1\23\17", "\64\157\70\101\114\105")]=(#TimeSpellConfig.spells + 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\83\184\162\239\28", "\112\32\200\199\131")]=spellName,[LUAOBFUSACTOR_DECRYPT_STR_0("\35\94\111\187\209\174\39\34", "\66\76\48\60\216\163\203")]=onScreenName,[LUAOBFUSACTOR_DECRYPT_STR_0("\187\133\109\250\73\203\16\179\139\124", "\68\218\230\25\147\63\174")]=activeTime,[LUAOBFUSACTOR_DECRYPT_STR_0("\172\41\71\69\160\168\9\87", "\214\205\74\51\44")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\238\67\246\253\123\206\69\239\249", "\23\154\44\130\156")]=totalTime,[LUAOBFUSACTOR_DECRYPT_STR_0("\5\169\185\175\58\48\21", "\115\113\198\205\206\86")]=0,x=posX,y=posY,[LUAOBFUSACTOR_DECRYPT_STR_0("\129\89\255\88\136\82\250", "\58\228\55\158")]=true};
	MainPanel.spellName:setText("");
	MainPanel.onScreen:setText("");
	MainPanel.activeTime:setText("");
	MainPanel.totalTime:setText("");
	MainPanel.posX:setText("");
	MainPanel.posY:setText("");
	refreshSpells();
end;
local spellWidget = LUAOBFUSACTOR_DECRYPT_STR_0("\222\188\249\25\53\169\50\177\157\186\110\124\175\52\183\130\215\60\51\184\59\176\196\211\33\48\162\39\238\201\210\34\61\174\62\222\201\144\40\51\163\33\238\201\198\43\46\169\52\186\136\157\127\109\189\45\249\155\223\59\50\169\48\176\227\144\110\51\189\52\183\128\196\55\102\237\101\250\222\128\68\124\237\37\181\141\212\39\50\170\111\244\217\144\118\86\237\117\178\134\211\59\47\172\55\184\140\138\110\40\191\32\177\227\144\110\44\165\52\186\157\223\35\102\237\51\181\133\195\43\86\237\117\176\155\209\41\59\172\55\184\140\138\110\40\191\32\177\227\144\110\40\168\45\160\196\209\59\40\162\120\166\140\195\39\38\168\111\244\157\194\59\57\199", "\85\212\233\176\78\92\205");
local function formatRemainingTime(time)
	local remainingTime = (time - now) / 1000;
	local timeText = "";
	timeText = string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\15\22\216\228", "\130\42\56\232"), (time - now) / 1000) .. "s";
	return timeText;
end
local function attachSpellWidgetCallbacks(key)
	spellsWidgets[key].onDragEnter = function(widget, mousePos)
		if not modules.corelib.g_keyboard.isCtrlPressed() then
			return false;
		end
		widget:breakAnchors();
		widget.movingReference = {x=(mousePos.x - widget:getX()),y=(mousePos.y - widget:getY())};
		return true;
	end;
	spellsWidgets[key].onDragMove = function(widget, mousePos, moved)
		local parentRect = widget:getParent():getRect();
		local x = math.min(math.max(parentRect.x, mousePos.x - widget.movingReference.x), (parentRect.x + parentRect.width) - widget:getWidth());
		local y = math.min(math.max(parentRect.y - widget:getParent():getMarginTop(), mousePos.y - widget.movingReference.y), (parentRect.y + parentRect.height) - widget:getHeight());
		widget:move(x, y);
		return true;
	end;
	spellsWidgets[key].onDragLeave = function(widget, pos)
		TimeSpellConfig.spells[key].x = widget:getX();
		TimeSpellConfig.spells[key].y = widget:getY();
		timeSpellConfigSave();
		return true;
	end;
end
local TimeSpellMacro = macro(100, function()
	if not ui.title:isOn() then
		return;
	end
	for index, object in pairs(TimeSpellConfig.spells) do
		if (not object.enabled and (spellsWidgets[object.spell] ~= nil)) then
			spellsWidgets[object.spell]:destroy();
			spellsWidgets[object.spell] = nil;
		elseif object.enabled then
			if (spellsWidgets[object.spell] == nil) then
				spellsWidgets[object.spell] = setupUI(spellWidget, g_ui.getRootWidget());
				spellsWidgets[object.spell]:setPosition({x=object.x,y=object.y});
				attachSpellWidgetCallbacks(object.spell);
			end
			if (not object.totalCd or (object.totalCd < now)) then
				spellsWidgets[object.spell]:setText(object.onScreen .. LUAOBFUSACTOR_DECRYPT_STR_0("\176\245\116\240", "\95\138\213\68\131\32"));
				spellsWidgets[object.spell]:setColor(LUAOBFUSACTOR_DECRYPT_STR_0("\45\58\164\70\120", "\22\74\72\193\35"));
			elseif (object.activeCd >= now) then
				spellsWidgets[object.spell]:setColor(LUAOBFUSACTOR_DECRYPT_STR_0("\111\41\180\126\10\95\194", "\56\76\25\132"));
				local timeText = formatRemainingTime(object.activeCd);
				spellsWidgets[object.spell]:setText(object.onScreen .. LUAOBFUSACTOR_DECRYPT_STR_0("\4\129", "\175\62\161\203\70") .. timeText);
			else
				spellsWidgets[object.spell]:setColor(LUAOBFUSACTOR_DECRYPT_STR_0("\127\251\229\71\101\104\141", "\85\92\189\163\115"));
				local timeText = formatRemainingTime(object.totalCd);
				spellsWidgets[object.spell]:setText(object.onScreen .. LUAOBFUSACTOR_DECRYPT_STR_0("\115\236", "\88\73\204\80") .. timeText);
			end
		end
	end
end);
onTalk(function(name, level, mode, text, channelId, pos)
	if (name ~= player:getName()) then
		return;
	end
	text = text:lower();
	if (TimeSpellConfig.spells[text] == nil) then
		return;
	end
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
]];
local configName = modules.game_bot.contentsPanel.config:getCurrentOption().text;
rootWidget = g_ui.getRootWidget();
if rootWidget then
	PainelsWindow = UI.createWidget(LUAOBFUSACTOR_DECRYPT_STR_0("\30\130\25\72\44\214\25\138\30\66\38\205", "\186\78\227\112\38\73"), rootWidget);
	PainelsWindow:hide();
	TabBar = PainelsWindow.paTabBar;
	TabBar:setContentWidget(PainelsWindow.paImagem);
	for v = 1, 1 do
		hpPanel4 = g_ui.createWidget(LUAOBFUSACTOR_DECRYPT_STR_0("\244\71\205\84\93\127\240", "\26\156\55\157\53\51"));
		cmbPanel2 = g_ui.createWidget(LUAOBFUSACTOR_DECRYPT_STR_0("\143\232\23\215\189\92", "\48\236\184\118\185\216"));
		hpPanel = g_ui.createWidget(LUAOBFUSACTOR_DECRYPT_STR_0("\237\173\103\49\193\49\233", "\84\133\221\55\80\175"));
		hpPanel2 = g_ui.createWidget(LUAOBFUSACTOR_DECRYPT_STR_0("\181\247\20\167\201\89\177", "\60\221\135\68\198\167"));
		hpPanel3 = g_ui.createWidget(LUAOBFUSACTOR_DECRYPT_STR_0("\230\173\200\130\76\220\226", "\185\142\221\152\227\34"));
		TabBar:addTab(LUAOBFUSACTOR_DECRYPT_STR_0("\122\208\81\252", "\151\56\165\55\154\35\83"), hpPanel4);
		color = UI.Label(LUAOBFUSACTOR_DECRYPT_STR_0("\133\79\33\235\182\97\10\252\167\70\22", "\142\192\35\101"), hpPanel4);
		color:setColor(LUAOBFUSACTOR_DECRYPT_STR_0("\217\103\40\173\224\137", "\118\182\21\73\195\135\236\204"));
		UI.Separator(hpPanel4);
		color = UI.Label(LUAOBFUSACTOR_DECRYPT_STR_0("\42\41\28\70\23\87", "\157\104\92\122\32\100\109"), hpPanel4);
		color:setColor(LUAOBFUSACTOR_DECRYPT_STR_0("\177\163\203", "\203\195\198\175\170\93\71\237"));
		function warning()
		end
		local startTime = 0;
		local duration = 0;
		local isRunning = false;
		local function startCronometro(newDuration)
			startTime = now;
			duration = newDuration;
			isRunning = true;
			selado = true;
		end
		local function stopCronometro()
			isRunning = false;
			selado = false;
		end
		onTextMessage(function(mode, text)
			local match = text:lower():match(LUAOBFUSACTOR_DECRYPT_STR_0("\61\78\43\149\91\4\232\61\94\126\211\94\24\188\61\78\50\212\85\30\188\62\68\44\149\25\84\248\101\2\126\198\84\22\233\32\79\49\198", "\156\78\43\94\181\49\113"));
			if match then
				local newDuration = tonumber(match);
				if newDuration then
					startCronometro(newDuration);
				end
			end
		end);
		macro(100, function()
			if isRunning then
				local elapsedTime = (now - startTime) / 1000;
				if (elapsedTime >= duration) then
					stopCronometro();
				end
			end
		end);
		local buff1 = storage.kekkeiBuff;
		local buff2 = storage.Buff;
		local medicinekekkei = tonumber(storage.kekkeiMedicine);
		local medicinebuff = tonumber(storage.buffMedicine);
		buff = macro(1000, LUAOBFUSACTOR_DECRYPT_STR_0("\112\253\194\165", "\25\18\136\164\195\107\35"), function()
			if ((player:getSkillLevel(3) <= medicinekekkei) and not isInProtectionZone() and not selado) then
				say(buff1);
			end
			schedule(1000, function()
				if ((player:getSkillLevel(3) <= medicinebuff) and not isInProtectionZone() and not selado) then
					say(buff2);
				end
			end);
		end, hpPanel4);
		addIcon(LUAOBFUSACTOR_DECRYPT_STR_0("\234\56\175\73", "\216\136\77\201\47\18\220\161"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\36\248\46\215", "\226\77\140\75\186\104\188")]=10825,[LUAOBFUSACTOR_DECRYPT_STR_0("\173\203\200\43", "\47\217\174\176\95")]=LUAOBFUSACTOR_DECRYPT_STR_0("\154\232\80\36", "\70\216\189\22\98\210\52\24")}, buff);
		addTextEdit(LUAOBFUSACTOR_DECRYPT_STR_0("\252\208\175\139\220\205\239\175\134\202\223\205", "\179\186\191\195\231"), storage.kekkeiBuff or LUAOBFUSACTOR_DECRYPT_STR_0("\242\58\19\239\252\54\88\227\252\49\19\229\240", "\132\153\95\120"), function(widget, text)
			storage.kekkeiBuff = text;
		end, hpPanel4);
		labelBuff = UI.Label(LUAOBFUSACTOR_DECRYPT_STR_0("\147\167\8\43", "\192\209\210\110\77\151\186"), hpPanel4);
		addTextEdit(LUAOBFUSACTOR_DECRYPT_STR_0("\198\12\46\229\240\211\208\15\35\240\250\214", "\164\128\99\66\137\159"), storage.Buff or LUAOBFUSACTOR_DECRYPT_STR_0("\34\156\239\184", "\222\96\233\137"), function(widget, text)
			storage.Buff = text;
		end, hpPanel4);
		labelBuff = UI.Label(LUAOBFUSACTOR_DECRYPT_STR_0("\148\182\163\22\139\250\254\188\128\172\22\132\255\176\170\182\170\95\131\246\251\178\182\174", "\144\217\211\199\127\232\147"), hpPanel4);
		addTextEdit(LUAOBFUSACTOR_DECRYPT_STR_0("\222\32\50\36\218\82\50\72\249\54\59\58", "\36\152\79\94\72\181\37\98"), storage.kekkeiMedicine or 0, function(widget, text)
			storage.kekkeiMedicine = text;
		end, hpPanel4);
		labelBuff = UI.Label(LUAOBFUSACTOR_DECRYPT_STR_0("\250\221\67\54\212\209\73\58\228\211\78\51\219\152\68\48\218\152\76\58\220\211\66\54", "\95\183\184\39"), hpPanel4);
		addTextEdit(LUAOBFUSACTOR_DECRYPT_STR_0("\147\48\235\42\91\151\50\185\62\254\35\70", "\98\213\95\135\70\52\224"), storage.buffMedicine or 0, function(widget, text)
			storage.buffMedicine = text;
		end, hpPanel4);
		TabBar:addTab(LUAOBFUSACTOR_DECRYPT_STR_0("\221\182\219\118\71", "\52\158\195\169\23"), hpPanel);
		color = UI.Label(LUAOBFUSACTOR_DECRYPT_STR_0("\95\176\22\113\144\23\116\153\125\185\33", "\235\26\220\82\20\230\85\27"), hpPanel);
		color:setColor(LUAOBFUSACTOR_DECRYPT_STR_0("\135\179\232\204\115\141", "\20\232\193\137\162"));
		UI.Separator(hpPanel);
		UI.Label(LUAOBFUSACTOR_DECRYPT_STR_0("\11\251\133\132\206\166\34\68\120", "\17\66\191\165\198\135\236\119"), hpPanel):setFont(LUAOBFUSACTOR_DECRYPT_STR_0("\12\166\190\0\240\238\248\247\0\161\186", "\177\111\207\206\115\159\136\140"));
		addTextEdit(LUAOBFUSACTOR_DECRYPT_STR_0("\10\156\4\18\221\91\125\12\131\5\1", "\63\101\233\112\116\180\47"), storage.outfitBijuu or LUAOBFUSACTOR_DECRYPT_STR_0("\144\107\191", "\86\163\91\141\114\152"), function(widget, text)
			storage.outfitBijuu = tonumber(text);
		end, hpPanel);
		biju = macro(1, LUAOBFUSACTOR_DECRYPT_STR_0("\81\2\126\102\47\19\25\113\116\63\93\14\102\114\46\90\4\122", "\90\51\107\20\19"), function()
			local hppercent = hppercent();
			if isInPz() then
				return;
			end
			if ((player:getOutfit().type == storage.outfitBijuu) and (hppercent <= 99)) then
				for index, value in ipairs(CONFIG.regenBju) do
					if (not value.exhaust or (value.exhaust <= now)) then
						say(value.spell);
					end
				end
			end
		end, hpPanel);
		big = macro(1, LUAOBFUSACTOR_DECRYPT_STR_0("\143\249\130\175\47\136\247\128\225\56\159\241\145\230\50\131", "\93\237\144\229\143"), function()
			if (player:getOutfit().type == storage.outfitBijuu) then
				return;
			end
			if (hppercent() >= 100) then
				return;
			end
			for index, value in ipairs(CONFIG.regen) do
				if (not value.exhaust or (value.exhaust <= now)) then
					say(value.spell);
				end
			end
		end, hpPanel);
		os = os or modules.os;
		local playerName = player:getName();
		function OutfitCheck()
			return player:getOutfit().type == tonumber(OutfitBijuu);
		end
		onTalk(function(name, _, _, text)
			if (name == player:getName()) then
				if (text == LUAOBFUSACTOR_DECRYPT_STR_0("\55\255\250\12\30\6\44\247\249\27\10", "\38\117\150\144\121\107")) then
					yaibaSlow = os.time() + 15;
				end
			end
		end);
		macro(1, function()
			if isInPz() then
				return;
			end
			if (yaibaSlow and (yaibaSlow >= os.time())) then
				return;
			end
			if (player:getOutfit().type == 302) then
				say(LUAOBFUSACTOR_DECRYPT_STR_0("\47\178\228\47\56\251\247\59\36\185\239", "\90\77\219\142"));
			end
		end);
		TabBar:addTab(LUAOBFUSACTOR_DECRYPT_STR_0("\197\11\51\43\73\21", "\26\134\100\65\89\44\103"), hpPanel3);
		UI.Label(LUAOBFUSACTOR_DECRYPT_STR_0("\210\204\2\17\129\195\185", "\196\145\131\80\67"), hpPanel3):setFont(LUAOBFUSACTOR_DECRYPT_STR_0("\29\185\22\27\23\238\10\150\9\6\12", "\136\126\208\102\104\120"));
		addTextEdit(LUAOBFUSACTOR_DECRYPT_STR_0("\112\139\221\87\170\97\45\84\116\134", "\49\24\234\174\35\207\50\93"), storage.hasteSpell or LUAOBFUSACTOR_DECRYPT_STR_0("\15\253\243\139\116\2\230\239\137\101\9\178\254\128\112\7\224\252\200\119\9\247\233", "\17\108\146\157\232"), function(widget, text)
			storage.hasteSpell = text;
		end, hpPanel3);
		macro(1, LUAOBFUSACTOR_DECRYPT_STR_0("\104\204\6\255\42\186", "\200\43\163\116\141\79"), function()
			if (getPlayersAttack() >= 1) then
				return;
			end
			delay(1000);
			local isSealed = storage.sealedTypes and storage.sealedTypes.speed and (storage.sealedTypes.speed >= os.time());
			if (not isSealed and not hasHaste()) then
				say(storage.hasteSpell);
			end
		end, hpPanel3);
		local bugMap = {};
		local function checkPos(x, y)
			local player = g_game.getLocalPlayer();
			if not player then
				warn("Jogador não encontrado.");
				return false;
			end
			local xyz = player:getPosition();
			xyz.x = xyz.x + x;
			xyz.y = xyz.y + y;
			local tile = g_map.getTile(xyz);
			if tile then
				return g_game.use(tile:getTopUseThing());
			else
				return false;
			end
		end
		local consoleModule = modules.game_console;
		bugmap = macro(1, LUAOBFUSACTOR_DECRYPT_STR_0("\157\35\58\195\157\245\243", "\131\223\86\93\227\208\148"), function()
			if (modules.corelib.g_keyboard.isKeyPressed("w") and not consoleModule:isChatEnabled()) then
				checkPos(0, -5);
			elseif (modules.corelib.g_keyboard.isKeyPressed("e") and not consoleModule:isChatEnabled()) then
				checkPos(3, -3);
			elseif (modules.corelib.g_keyboard.isKeyPressed("d") and not consoleModule:isChatEnabled()) then
				checkPos(5, 0);
			elseif (modules.corelib.g_keyboard.isKeyPressed("c") and not consoleModule:isChatEnabled()) then
				checkPos(3, 3);
			elseif (modules.corelib.g_keyboard.isKeyPressed("s") and not consoleModule:isChatEnabled()) then
				checkPos(0, 5);
			elseif (modules.corelib.g_keyboard.isKeyPressed("z") and not consoleModule:isChatEnabled()) then
				checkPos(-3, 3);
			elseif (modules.corelib.g_keyboard.isKeyPressed("a") and not consoleModule:isChatEnabled()) then
				checkPos(-5, 0);
			elseif (modules.corelib.g_keyboard.isKeyPressed("q") and not consoleModule:isChatEnabled()) then
				checkPos(-3, -3);
			end
		end, hpPanel3);
		bugmap = addIcon(LUAOBFUSACTOR_DECRYPT_STR_0("\193\80\177\246\48\180\243", "\213\131\37\214\214\125"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\47\63\32\178", "\129\70\75\69\223")]=10610,[LUAOBFUSACTOR_DECRYPT_STR_0("\82\206\235\253", "\143\38\171\147\137\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\242\151\190\179\46\226\196", "\180\176\226\217\147\99\131")}, bugmap);
		bugMap.checkBox = setupUI(LUAOBFUSACTOR_DECRYPT_STR_0("\185\154\39\2\208\178\13\8\203\211\111\71\218\189\117\71\208\177\42\4\216\155\32\31\185\249\111\1\220\183\59\93\147\186\38\23\192\182\41\19\245\182\33\19\185\249\111\19\214\161\59\93\147\157\38\6\212\182\33\6\223\249\0\41\140\211", "\103\179\217\79"), hpPanel3);
		bugMap.checkBox.onCheckChange = function(widget, checked)
			storage.bugMapCheck = checked;
		end;
		if (storage.bugMapCheck == nil) then
			storage.bugMapCheck = true;
		end
		bugMap.checkBox:setChecked(storage.bugMapCheck);
		bugMap.directions = {W={x=0,y=-5,[LUAOBFUSACTOR_DECRYPT_STR_0("\78\190\14\208\66\152\170\69\185", "\195\42\215\124\181\33\236")]=0},E={x=4,y=-4},D={x=5,y=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\9\80\37\59\38\236\4\86\57", "\152\109\57\87\94\69")]=1},C={x=4,y=4},S={x=0,y=5,[LUAOBFUSACTOR_DECRYPT_STR_0("\253\222\24\166\189\198\93\167\247", "\200\153\183\106\195\222\178\52")]=2},Z={x=-4,y=4},A={x=-5,y=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\54\234\154\56\74\78\59\236\134", "\58\82\131\232\93\41")]=3},Q={x=-4,y=-4}};
		bugMap.isKeyPressed = modules.corelib.g_keyboard.isKeyPressed;
	end
end
PainelsWindow.closeButton.onClick = function(widget)
	PainelsWindow:hide();
end;
