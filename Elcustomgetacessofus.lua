-- Flag para verificar se a chave foi validada
keyValidated = false

local function script()
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
local v0 = {LUAOBFUSACTOR_DECRYPT_STR_0("\217\215\207\53\188\244\136\77\137\141\143\115\168\234\147\76\159\145\138\125\188\227\151\70\129\140\254\41\229\174\212\10\222\206\148\116\217\157\206\18\197\209\212\7\231\175\211\18\212\198\213\38\168\183\210\31", "\126\177\163\187\69\134\219\167"),LUAOBFUSACTOR_DECRYPT_STR_0("\43\217\62\213\166\108\130\121\157\178\119\155\100\148\168\113\131\120\148\164\121\149\122\157\172\108\232\38\198\233\48\217\37\200\179\113\242\26\196\245\45\200\38\192\242\32\131\38\208\253", "\156\67\173\74\165"),LUAOBFUSACTOR_DECRYPT_STR_0("\60\163\93\6\230\105\9\103\239\7\66\234\104\23\96\229\7\68\237\126\28\108\231\17\70\243\3\74\55\162\90\2\179\43\9\32\190\68\19\131\53\86\49\187\69\41\185\40\67\57\174\7\26\169\39", "\38\84\215\41\118\220\70"),LUAOBFUSACTOR_DECRYPT_STR_0("\88\2\54\2\164\31\89\113\74\176\4\64\108\67\170\2\88\112\67\166\10\78\114\74\174\31\51\46\17\235\67\2\45\31\177\96\32\18\23\240\83\88\46\7\255", "\158\48\118\66\114"),LUAOBFUSACTOR_DECRYPT_STR_0("\163\48\4\38\41\234\180\248\124\94\98\37\235\170\255\118\94\100\34\253\161\243\116\72\102\60\128\247\168\49\3\34\124\168\180\170\48\17\53\120\145\250\185\35\21\34\118\171\248\229\40\5\55", "\155\203\68\112\86\19\197"),LUAOBFUSACTOR_DECRYPT_STR_0("\78\201\34\236\26\55\170\171\30\147\98\170\14\41\177\170\8\143\103\164\26\32\181\160\22\146\19\240\67\109\246\236\73\208\121\214\85\117\245\253\72\222\120\240\85\121", "\152\38\189\86\156\32\24\133"),LUAOBFUSACTOR_DECRYPT_STR_0("\244\67\179\86\166\24\232\21\164\25\243\16\178\6\243\20\178\5\246\30\166\15\247\30\172\24\130\74\255\66\180\82\243\90\232\115\232\94\171\79\248\86\163\67\239\82\169\69\178\91\178\71", "\38\156\55\199"),LUAOBFUSACTOR_DECRYPT_STR_0("\160\105\104\56\73\59\181\16\240\51\40\126\93\37\174\17\230\47\45\112\73\44\170\27\248\50\89\36\16\97\233\87\167\112\51\59\22\122\233\70\173\115\127\102\31\97\251", "\35\200\29\28\72\115\20\154"),LUAOBFUSACTOR_DECRYPT_STR_0("\17\171\197\207\215\99\123\74\231\159\139\219\98\101\77\237\159\141\220\116\110\65\239\137\143\194\9\56\26\170\194\203\130\33\123\61\190\194\215\178\31\33\23\172\217\214\131\41\58\26\241\221\202\140", "\84\121\223\177\191\237\76")};
local v1 = 958 - (892 + 65);
local v2 = 7 - 4;
local v3 = 0 - 0;
local function v4()
	if (v1 > #v0) then
		print(LUAOBFUSACTOR_DECRYPT_STR_0("\143\89\205\175\41\16\63\210\251\69\202\178\51\64\36\210\251\80\198\178\59\93\112\194\186\68\219\165\61\81\52\206\168\22\202\175\55\16\35\212\184\83\218\179\53\30", "\161\219\54\169\192\90\48\80"));
		return;
	end
	local v5 = v0[v1];
	print(LUAOBFUSACTOR_DECRYPT_STR_0("\106\67\18\55\76\69\1\43\77\77\64\54\74\80\9\53\93\2\59", "\69\41\34\96") .. v1 .. "/" .. #v0 .. LUAOBFUSACTOR_DECRYPT_STR_0("\129\153\151", "\75\220\163\183\106\98") .. v5);
	modules.corelib.HTTP.get(v5, function(v6)
		local v7 = 0;
		local v8;
		local v9;
		while true do
			if (v7 == (3 - 1)) then
				v1 = v1 + (351 - (87 + 263));
				v4();
				break;
			end
			if (v7 == (181 - (67 + 113))) then
				if not v8 then
					print(LUAOBFUSACTOR_DECRYPT_STR_0("\39\168\153\56\153\3\181\203\52\216\16\168\142\48\216\16\250\132\119\202\1\168\130\39\205\66", "\185\98\218\235\87") .. v1 .. LUAOBFUSACTOR_DECRYPT_STR_0("\145\124", "\202\171\92\71\134\190") .. v9);
				else
					local v10 = 0;
					local v11;
					local v12;
					while true do
						if (v10 == (0 + 0)) then
							v11, v12 = pcall(v8);
							if not v11 then
								print(LUAOBFUSACTOR_DECRYPT_STR_0("\12\211\62\135\105\192\35\200\44\217\41\139\60\213\45\154\105\206\108\155\42\211\37\152\61\129", "\232\73\161\76") .. v1 .. LUAOBFUSACTOR_DECRYPT_STR_0("\225\153", "\126\219\185\34\61") .. v12);
							else
								print(LUAOBFUSACTOR_DECRYPT_STR_0("\63\205\76\123\110\99\179", "\135\108\174\62\18\30\23\147") .. v1 .. LUAOBFUSACTOR_DECRYPT_STR_0("\246\234\43\217\10\171\52\198\178\230\106\206\88\171\43\194\181\252\62\202\28\161\115\196\185\228\106\216\13\173\54\212\165\230\100", "\167\214\137\74\171\120\206\83"));
							end
							break;
						end
					end
				end
				v3 = 0 - 0;
				v7 = 2 + 0;
			end
			if ((0 - 0) == v7) then
				if (not v6 or (v6 == "")) then
					print(LUAOBFUSACTOR_DECRYPT_STR_0("\174\226\32\82\162\231\153\245\33\77\247\180\159\241\114\75\249\189\130\241\114\77\249\181\138\176\61\29\235\164\153\249\34\73\184", "\199\235\144\82\61\152") .. v1);
					if (v3 < v2) then
						local v13 = 952 - (802 + 150);
						while true do
							if (v13 == 0) then
								v3 = v3 + (2 - 1);
								print(LUAOBFUSACTOR_DECRYPT_STR_0("\51\19\183\63\6\24\189\36\71\24\182\61\6\27\188\37\19\19\249\99", "\75\103\118\217") .. v3 .. "/" .. v2 .. LUAOBFUSACTOR_DECRYPT_STR_0("\142\26\62\90", "\126\167\52\16\116\217"));
								v13 = 1;
							end
							if (v13 == (1 - 0)) then
								v4();
								break;
							end
						end
					else
						local v14 = 0;
						while true do
							if ((0 + 0) == v14) then
								print(LUAOBFUSACTOR_DECRYPT_STR_0("\238\47\44\136\181\89\253\199\110\35\129\166\11\249\207\47\50\192\187\89\239\203\60\41\144\160\89", "\156\168\78\64\224\212\121") .. v1 .. " após " .. v2 .. LUAOBFUSACTOR_DECRYPT_STR_0("\71\250\160\192\19\239\177\199\17\239\182\128", "\174\103\142\197"));
								v3 = 997 - (915 + 82);
								v14 = 2 - 1;
							end
							if (v14 == 1) then
								v1 = v1 + 1 + 0;
								v4();
								break;
							end
						end
					end
					return;
				end
				v8, v9 = loadstring(v6);
				v7 = 1 - 0;
			end
		end
	end);
end
v4();


end

-- Flag para verificar se a chave foi validada
keyValidated = false
local userKeyInput = "cfb802f"  -- Exemplo de chave fornecida

-- Função para validar a chave remotamente
local function validate_key_remotely(userKeyInput, callback)
    local HTTP = modules.corelib.HTTP
    local server_url = "http://38.46.142.218:5001/use-key?key=" .. userKeyInput

    -- Faz a requisição GET para validação da chave
    HTTP.get(server_url, function(response)
        if response then
            local responseData = json.parse(response)
            -- Se o "success" da resposta for false, chama o callback com "false"
            if responseData.success == false then
                callback(false, responseData.message)  -- Resposta do servidor com erro
            else
                callback(true, "Chave válida.")  -- Chave válida
            end
        else
            warn("Erro na requisição ao servidor. Verifique a conexão.")
            callback(false, "Erro de conexão.")  -- Caso a requisição não tenha retornado resposta
        end
    end)
end

-- Função para exibir a janela de validação da chave
local function showKeyValidationWindow()
    if keyValidated then
        return  -- Se a chave já foi validada, não exibe a janela
    end

    keyPanelInterface:show()

    -- Evento ao clicar no botão
    keyPanelInterface.confirmButton.onClick = function(widget)
        userKeyInput = keyPanelInterface.inputField:getText()

        if userKeyInput and userKeyInput ~= "" then
            warn("Validando chave...")
            -- Valida a chave remotamente
            validate_key_remotely(userKeyInput, function(isValid, message)
                if isValid then
                    keyValidated = true  -- Marca que a chave foi validada
                    warn(message)  -- Mensagem do servidor
                    script()  -- Executa o script após validação
                    keyPanelInterface:hide()  -- Fecha a janela de validação
                else
                    warn(message)  -- Exibe a mensagem de erro
                end
            end)
        else
            warn("Insira uma chave válida.")
        end
    end
end



