

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
local usingWASD = modules.game_walking.wsadWalking;
isKeyPressed = modules.corelib.g_keyboard.isKeyPressed;
local bugMap = {};
local cooldown = false;
local maxDist = 5;
local minDist = 1;
bugMap.isKeyPressed = modules.corelib.g_keyboard.isKeyPressed;
bugMap.directions = {W={x=0,y=-5,direction=0},D={x=7,y=0,direction=1},S={x=0,y=5,direction=2},A={x=-7,y=0,direction=3}};
local IDKunai = 7382;
local function findAndUseKunai(direction)
	local pos = pos();
	for i = minDist, maxDist do
		local newPos = {x=(pos.x + (i * direction.x)),y=(pos.y + (i * direction.y)),z=pos.z};
		local tile = g_map.getTile(newPos);
		if (tile and g_map.isSightClear(pos, newPos)) then
			return useWith(IDKunai, tile:getTopUseThing());
		end
	end
end
bugMap.macro = macro(1, "DASH KUNAI", function()
	if (modules.game_console:isChatEnabled() or modules.corelib.g_keyboard.isCtrlPressed() or cooldown) then
		return;
	end
	local pos = pos();
	for key, config in pairs(bugMap.directions) do
		if (bugMap.isKeyPressed(key)) then
			if config.direction then
				if config.direction then
					turn(config.direction);
				end
				local newPos = {x=(pos.x + (maxDist * config.x)),y=(pos.y + (maxDist * config.y)),z=pos.z};
				local tile = g_map.getTile(newPos);
				if (tile and g_map.isSightClear(pos, newPos)) then
					cooldown = true;
					schedule(1000, function()
						cooldown = false;
					end);
					return useWith(IDKunai, tile:getTopUseThing());
				else
					return findAndUseKunai(config);
				end
			end
		end
	end
end);
