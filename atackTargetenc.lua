

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
local oldTarget;
local oldTarget;
macro(1, LUAOBFUSACTOR_DECRYPT_STR_0("\217\204\215\33\166\175\198\12\214\198\207", "\126\177\163\187\69\134\219\167"), "-", function()
	if g_game.isAttacking() then
		oldTarget = g_game.getAttackingCreature();
	end
	if (oldTarget and not g_game.isAttacking()) then
		local targetPos = oldTarget:getPosition();
		if (targetPos and (getDistanceBetween(pos(), targetPos) <= 8)) then
			g_game.attack(oldTarget);
		end
	end
end);
onKeyPress(function(key)
	if (key == LUAOBFUSACTOR_DECRYPT_STR_0("\6\222\41\196\236\38", "\156\67\173\74\165")) then
		g_game.cancelAttack();
		oldTarget = nil;
	end
end);
