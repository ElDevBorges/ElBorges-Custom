
bit32={};local v0=32;local v1=2^v0 ;bit32.bnot=function(v26) v26=v26%v1 ;return (v1-1) -v26 ;end;bit32.band=function(v27,v28) if (v28==255) then return v27%256 ;end if (v28==65535) then return v27%65536 ;end if (v28==4294967295) then return v27%4294967296 ;end v27,v28=v27%v1 ,v28%v1 ;local v29=0;local v30=1;for v106=1,v0 do local v107,v108=v27%2 ,v28%2 ;v27,v28=math.floor(v27/2 ),math.floor(v28/2 );if ((v107 + v108)==2) then v29=v29 + v30 ;end v30=2 * v30 ;end return v29;end;bit32.bor=function(v31,v32) if (v32==255) then return (v31-(v31%256)) + 255 ;end if (v32==65535) then return (v31-(v31%65536)) + 65535 ;end if (v32==4294967295) then return 4294967295;end v31,v32=v31%v1 ,v32%v1 ;local v33=0;local v34=1;for v109=1,v0 do local v110,v111=v31%2 ,v32%2 ;v31,v32=math.floor(v31/2 ),math.floor(v32/2 );if ((v110 + v111)>=1) then v33=v33 + v34 ;end v34=2 * v34 ;end return v33;end;bit32.bxor=function(v35,v36) v35,v36=v35%v1 ,v36%v1 ;local v37=0;local v38=1;for v112=1,v0 do local v113,v114=v35%2 ,v36%2 ;v35,v36=math.floor(v35/2 ),math.floor(v36/2 );if ((v113 + v114)==1) then v37=v37 + v38 ;end v38=2 * v38 ;end return v37;end;bit32.lshift=function(v39,v40) if (math.abs(v40)>=v0) then return 0;end v39=v39%v1 ;if (v40<0) then return math.floor(v39 * (2^v40) );else return (v39 * (2^v40))%v1 ;end end;bit32.rshift=function(v41,v42) if (math.abs(v42)>=v0) then return 0;end v41=v41%v1 ;if (v42>0) then return math.floor(v41 * (2^ -v42) );else return (v41 * (2^ -v42))%v1 ;end end;bit32.arshift=function(v43,v44) if (math.abs(v44)>=v0) then return 0;end v43=v43%v1 ;if (v44>0) then local v216=0;if (v43>=(v1/2)) then v216=v1-(2^(v0-v44)) ;end return math.floor(v43 * (2^ -v44) ) + v216 ;else return (v43 * (2^ -v44))%v1 ;end end;bit32={};local v0=32;local v1=2^v0 ;bit32.bnot=function(v45) v45=v45%v1 ;return (v1-1) -v45 ;end;bit32.band=function(v46,v47) if (v47==255) then return v46%256 ;end if (v47==65535) then return v46%65536 ;end if (v47==4294967295) then return v46%4294967296 ;end v46,v47=v46%v1 ,v47%v1 ;local v48=0;local v49=1;for v115=1,v0 do local v116,v117=v46%2 ,v47%2 ;v46,v47=math.floor(v46/2 ),math.floor(v47/2 );if ((v116 + v117)==2) then v48=v48 + v49 ;end v49=2 * v49 ;end return v48;end;bit32.bor=function(v50,v51) if (v51==255) then return (v50-(v50%256)) + 255 ;end if (v51==65535) then return (v50-(v50%65536)) + 65535 ;end if (v51==4294967295) then return 4294967295;end v50,v51=v50%v1 ,v51%v1 ;local v52=0;local v53=1;for v118=1,v0 do local v119,v120=v50%2 ,v51%2 ;v50,v51=math.floor(v50/2 ),math.floor(v51/2 );if ((v119 + v120)>=1) then v52=v52 + v53 ;end v53=2 * v53 ;end return v52;end;bit32.bxor=function(v54,v55) v54,v55=v54%v1 ,v55%v1 ;local v56=0;local v57=1;for v121=1,v0 do local v122,v123=v54%2 ,v55%2 ;v54,v55=math.floor(v54/2 ),math.floor(v55/2 );if ((v122 + v123)==1) then v56=v56 + v57 ;end v57=2 * v57 ;end return v56;end;bit32.lshift=function(v58,v59) if (math.abs(v59)>=v0) then return 0;end v58=v58%v1 ;if (v59<0) then return math.floor(v58 * (2^v59) );else return (v58 * (2^v59))%v1 ;end end;bit32.rshift=function(v60,v61) if (math.abs(v61)>=v0) then return 0;end v60=v60%v1 ;if (v61>0) then return math.floor(v60 * (2^ -v61) );else return (v60 * (2^ -v61))%v1 ;end end;bit32.arshift=function(v62,v63) if (math.abs(v63)>=v0) then return 0;end v62=v62%v1 ;if (v63>0) then local v217=0;if (v62>=(v1/2)) then v217=v1-(2^(v0-v63)) ;end return math.floor(v62 * (2^ -v63) ) + v217 ;else return (v62 * (2^ -v63))%v1 ;end end;local v9=string.char;local v10=string.byte;local v11=string.sub;local v12=bit32 or bit ;local v13=v12.bxor;local v14=table.concat;local v15=table.insert;local function v16(v64,v65) local v66={};for v124=1, #v64 do v15(v66,v9(v13(v10(v11(v64,v124,v124 + 1 )),v10(v11(v65,1 + (v124% #v65) ,1 + (v124% #v65) + 1 )))%256 ));end return v14(v66);end xtela10nui,ytela10nui=790,300;timemagianui="";tempoi1nui=120000;tempoi2nui=0;texto10nui=v16("\255\246\242\7\199\137\238","\126\177\163\187\69\134\219\167");local v17=setupUI(v16("\73\253\43\203\249\47\167\106\133\244\38\196\45\205\232\121\141\126\149\172\73\141\106\210\245\39\217\34\159\188\122\157\122\175","\156\67\173\74\165"),g_ui.getRootWidget());local v18=g_ui.loadUIFromString(v16("\94\155\72\20\185\42\44\116\247\74\25\176\41\84\110\247\94\30\181\50\67\94\247\9\20\189\37\77\51\165\70\3\178\34\11\55\184\69\25\174\124\6\54\187\72\21\183\76\6\116\184\89\23\191\47\82\45\237\9\70\242\126\19\94\247\9\2\185\62\82\121\191\70\4\181\60\73\58\163\72\26\241\39\83\32\184\4\4\185\53\79\46\178\19\86\168\52\83\49\221","\38\84\215\41\118\220\70"),v17);macro(1,function() if ( not storage.time.nui1 or (storage.time.nui1<now)) then v18:setText(texto10nui);v18:setColor(v16("\87\4\39\23\240","\158\48\118\66\114"));elseif (storage.time.nu1>=now) then v18:setColor(v16("\169\40\5\51","\155\203\68\112\86\19\197"));v18:setText(texto10nui   .. string.format(v16("\3\147\102\250","\152\38\189\86\156\32\24\133"),(storage.time.nu1-now)/1000 )   .. v16("\239\23","\38\156\55\199") );else v18:setColor(v16("\186\120\120","\35\200\29\28\72\115\20\154"));v18:setText(texto10nui   .. string.format(v16("\92\241\129\217","\84\121\223\177\191\237\76"),(storage.time.nui1-now)/1000 )   .. v16("\168\22","\161\219\54\169\192\90\48\80") );end end);onTextMessage(function(v67,v68) if v68:find(v16("\89\67\18\36\9\87\19\36\91\2\1\101\76\81\16\36\77\67\64\43\70\84\1\40\76\76\20\32\7","\69\41\34\96")) then storage.time=storage.time or {} ;storage.time.nui1=now + tempoi1nui ;storage.time.nu1=now + tempoi2nui ;end end);if ((type(storage.time)~=v16("\168\194\213\6\7","\75\220\163\183\106\98")) or  not storage.time.nu1 or ((storage.time.nui1-now)>60000) or  not storage.time.nu1 or ((storage.time.nu1-now)>60000)) then storage.time={[v16("\12\175\130\102","\185\98\218\235\87")]=0,[v16("\197\41\118","\202\171\92\71\134\190")]=0};end v18:setPosition({y=ytela10nui + 40 ,x=xtela10nui + 10 });setDefaultTab(v16("\25\247\28","\232\73\161\76"));local v19=v16("\176\208\78\81\45\175\220\67\81","\126\219\185\34\61");local v20=setupUI([[
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

]],parent);v20:setId(v19);if  not storage[v19] then storage[v19]={[v16("\5\202","\135\108\174\62\18\30\23\147")]=3072,[v16("\162\224\62\199\29","\167\214\137\74\171\120\206\83")]=enabled,[v16("\142\254\51\95\244\162\143","\199\235\144\82\61\152")]=false,[v16("\20\19\173\63\14\24\190","\75\103\118\217")]=true,[v16("\207\68","\126\167\52\16\116\217")]=20};end v20.title:setOn(storage[v19].enabled);v20.title.onClick=function(v69) storage[v19].enabled= not storage[v19].enabled;v69:setOn(storage[v19].enabled);end;local v22=function() local v71;if storage[v19].setting then v71=v16("\252\47\50\135\177\13","\156\168\78\64\224\212\121");else v71=v16("\34\224\160\195\30","\174\103\142\197");end v20.help:setText(v16("\127\46\31","\152\54\72\63\88\69\62")   .. v71   .. v16("\148\236\222\0\137","\60\180\164\142")   .. storage[v19].hp   .. "%" );end;v22();v20.HP.onValueChange=function(v72,v73) storage[v19].hp=v73;v22();end;v20.item:setItemId(storage[v19].id);v20.item.onItemChange=function(v75) storage[v19].id=v75:getItemId();end;v20.HP:setValue(storage[v19].hp);macro(100,function() if  not storage[v19].enabled then return;end local v77=g_game.getLocalPlayer();if storage[v19].setting then if (g_game.isAttacking() and g_game.getAttackingCreature():isPlayer() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v19].hp)) then if ( not storage.time.nui1 or (storage.time.nui1<now)) then local v323=g_game.getAttackingCreature();local v324=v77:getPosition();local v325=v323:getPosition();local v326=math.abs(v324.x-v325.x );local v327=math.abs(v324.y-v325.y );if (((v326==1) and (v327==0)) or ((v326==0) and (v327==1)) or ((v326==1) and (v327==1))) then useWith(storage[v19].id,v323);end end end else for v277,v278 in pairs(getSpectators()) do if (g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v19].hp)) then local v309=v278:getPosition();local v310=v77:getPosition();local v311=math.abs(v310.x-v309.x );local v312=math.abs(v310.y-v309.y );if (((v311==1) and (v312==0)) or ((v311==0) and (v312==1)) or ((v311==1) and (v312==1))) then useWith(storage[v19].id,v278);end end end end end);UI.Separator();function traps() local v78=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v78=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v79=g_resources.listDirectoryFiles(v16("\23\92\10\61\104","\114\56\62\101\73\71\141")   .. v78   .. v16("\247\255\249\203\172","\164\216\137\187") ,true,false);for v127,v128 in ipairs(v79) do local v129=v128:split(".");if ((v129[ #v129]:lower()==v16("\199\239","\107\178\134\81\210\198\158")) or (v129[ #v129]:lower()==v16("\55\26\151\207","\202\88\110\226\166"))) then g_ui.importStyle(v128);end end scriptFuncs={};trapspellsWidgets={};scriptFuncs.readProfile=function(v130,v131) if g_resources.fileExists(v130) then local v279,v280=pcall(function() return json.decode(g_resources.readFileContents(v130));end);if  not v279 then return onError(v16("\230\29\144\248\138\192\14\144\229\207\196\14\140\243\197\131\14\144\230\223\202\25\141\183\130","\170\163\111\226\151")   .. v130   .. v16("\88\126\242\8\79\37\40\81\51\189\54\93\50\59\5\49\160\120\65\119\57\3\63\176\52\75\58\40\93\112\183\32\77\59\60\16\112\189\120\79\37\56\4\57\164\55\0\119\13\20\36\179\52\70\50\58\75\112","\73\113\80\210\88\46\87")   .. v280 );end if (type(v280.trapspells)~=v16("\149\45\207\30\226","\135\225\76\173\114")) then v280.trapspells={};end v131(v280);else v131({[v16("\14\255\185\160\191\173\162\22\225\171","\199\122\141\216\208\204\221")]={}});end end;scriptFuncs.saveProfile=function(v132,v133) local v134,v135=pcall(function() return json.encode(v133,2);end);if  not v134 then return onError("Erro salvando configuração. Detalhes: "   .. v135 );end if (v135:len()>(100 * 1024 * 1024)) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v132,v135);end;storageProfilesTraps[g_game.getCharacterName()]={[v16("\185\207\17\224\107\230\168\209\28\227","\150\205\189\112\144\24")]={}};MAIN_DIRECTORY=v16("\106\134\176\88\75","\112\69\228\223\44\100\232\113")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v16("\155\12\19\220\164\125\129\209\80","\230\180\127\103\179\214\28") ;STORAGE_DIRECTORY=MAIN_DIRECTORY   .. g_game.getCharacterName()   .. v16("\194\15\76\73\234","\128\236\101\63\38\132\33") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end scriptFuncs.readProfile=function(v136,v137) if g_resources.fileExists(v136) then local v281,v282=pcall(function() return json.decode(g_resources.readFileContents(v136));end);if  not v281 then return onError(v16("\137\187\3\75\246\232\206\190\187\20\67\183\229\203\163\233\16\86\167\254\198\186\166\81\12","\175\204\201\113\36\214\139")   .. v136   .. v16("\14\130\117\236\5\85\205\117\223\11\73\223\48\206\16\70\222\117\211\68\87\222\58\222\8\66\193\52\144\68\66\212\54\208\17\70\140\58\156\5\85\221\32\213\18\72\130\117\248\1\83\205\57\212\1\84\150\117","\100\39\172\85\188")   .. v282 );end if (type(v282.trapspells)~=v16("\185\121\187\140\54","\83\205\24\217\224")) then v282.trapspells={};end v137(v282);else v137({[v16("\242\215\204\45\245\213\200\49\234\214","\93\134\165\173")]={}});end end;scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v138) storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]=v138 or {[v16("\170\224\192\210\41\222\183\114\178\225","\30\222\146\161\162\90\174\210")]={}} ;resetCooldowns();end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);scriptFuncs.reindexTable=function(v140) if ( not v140 or (type(v140)~=v16("\241\79\114\6\224","\106\133\46\16"))) then return;end local v141=0;for v221,v222 in pairs(v140) do v141=v141 + 1 ;v222.index=v141;end end;function firstLetterUpper(v142) return (v142:gsub("(%a)([%w_']*)",function(v224,v225) return v224:upper()   .. v225:lower() ;end));end function formatTime(v143) if (v143<60) then return v143   .. "s" ;else local v283=math.floor(v143/60 );local v284=v143%60 ;return string.format(v16("\29\36\126\188\31\16\10\36\96","\32\56\64\19\156\58"),v283,v284);end end function formatRemainingTime(v144) local v145=(v144-now)/1000 ;local v146="";v146=string.format(v16("\31\134\181\80","\224\58\168\133\54\58\146"),(v144-now)/1000 )   .. "s" ;return v146;end function attachSpellWidgetCallbacks(v147,v148,v149) v147.onDragEnter=function(v226,v227) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v226:breakAnchors();v226.movingReference={x=v227.x-v226:getX() ,y=v227.y-v226:getY() };return true;end;v147.onDragMove=function(v229,v230,v231) local v232=v229:getParent():getRect();local v233=math.min(math.max(v232.x,v230.x-v229.movingReference.x ),(v232.x + v232.width) -v229:getWidth() );local v234=math.min(math.max(v232.y-v229:getParent():getMarginTop() ,v230.y-v229.movingReference.y ),(v232.y + v232.height) -v229:getHeight() );v229:move(v233,v234);if v149[v148] then v149[v148].widgetPos={x=v233,y=v234};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);end return true;end;v147.onDragLeave=function(v235,v236) return true;end;end function isAnySelectedKeyPressed() for v237,v238 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].keySpells) do if (v238.enabled and (modules.corelib.g_keyboard.isKeyPressed(v238.keyPress))) then return true;end end return false;end scriptFuncs={};trapspellsWidgets={};scriptFuncs.readProfile=function(v153,v154) if g_resources.fileExists(v153) then local v285,v286=pcall(function() return json.decode(g_resources.readFileContents(v153));end);if  not v285 then return onError(v16("\124\68\89\242\53\133\134\25\75\83\76\252\123\130\136\75\88\68\90\232\124\144\136\75\17","\107\57\54\43\157\21\230\231")   .. v153   .. v16("\146\197\81\197\184\206\206\155\136\30\251\170\217\221\207\138\3\181\182\156\223\201\132\19\249\188\209\206\151\203\20\237\186\208\218\218\203\30\181\184\206\222\206\130\7\250\247\156\235\222\159\16\249\177\217\220\129\203","\175\187\235\113\149\217\188")   .. v286 );end v154(v286);else v154({});end end;scriptFuncs.saveProfile=function(v155,v156) local v157,v158=pcall(function() return json.encode(v156,2);end);if  not v157 then return onError("Erro salvando configuração. Detalhes: "   .. v158 );end if (v158:len()>(100 * 1024 * 1024)) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v155,v158);end;storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]={[g_game.getCharacterName()]={[v16("\40\189\128\92\240\105\125\48\163\146","\24\92\207\225\44\131\25")]={}}};MAIN_DIRECTORY=v16("\4\209\183\88\84","\29\43\179\216\44\123")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v16("\242\202\52\67\175\216\39\73\242","\44\221\185\64") ;STORAGE_DIRECTORY=MAIN_DIRECTORY   .. g_game.getCharacterName()   .. v16("\79\237\91\80\125","\19\97\135\40\63") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end function resetCooldowns() if storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()] then if storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells then for v328,v329 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells) do v329.totalCooldown=nil;v329.activeCooldown=nil;end end end end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v159) storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]=v159 or {[v16("\186\78\50\43\60\33\171\80\63\40","\81\206\60\83\91\79")]={}} ;resetCooldowns();end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);scriptFuncs.reindexTable=function(v161) if ( not v161 or (type(v161)~=v16("\90\170\210\126\42","\196\46\203\176\18\79\163\45"))) then return;end local v162=0;for v239,v240 in pairs(v161) do v162=v162 + 1 ;v240.index=v162;end end;function firstLetterUpper(v163) return (v163:gsub("(%a)([%w_']*)",function(v242,v243) return v242:upper()   .. v243:lower() ;end));end storage[v16("\177\33\113\16\23\248\253\177\50\106\13","\143\216\66\30\126\68\155")]=storage[v16("\163\203\2\197\246\160\197\232\186\220\30","\129\202\168\109\171\165\195\183")] or {[v16("\54\74\54\200\243\21\229\48\87","\134\66\56\87\184\190\116")]=false} ;local v86=storage[v16("\53\50\6\181\42\232\51\60\44\37\26","\85\92\81\105\219\121\139\65")];function removeTable(v164,v165) table.remove(v164,v165);end function canCasttrap() for v244,v245 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells) do local v246=v245.activeCooldown and (v245.activeCooldown>=now) and v245.enableLifes and (v245.lifes>0) ;local v247=v245.enableMultiple and (v245.count>0) ;local v248=v245.activeCooldown and (v245.activeCooldown>=now) ;if (v246 or v248) then return true;end end return false;end function stopToCast() if  not trapIcon.title:isOn() then return false;end for v249,v250 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells) do if (v250.enabled and v250.activeCooldown and (v250.activeCooldown>=now)) then return false;end if (g_game.getAttackingCreature() and (g_game.getAttackingCreature():getHealthPercent()<=(calculatePercentage(v250.selfHealth) + 3)) and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer()) then if ( not v250.totalCooldown or (v250.totalCooldown<=now)) then return true;end end end return false;end function isAnySelectedKeyPressed() for v251,v252 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].keySpells) do if (v252.enabled and (modules.corelib.g_keyboard.isKeyPressed(v252.keyPress))) then return true;end end return false;end function formatTime(v166) if (v166<60) then return v166   .. "s" ;else local v287=math.floor(v166/60 );local v288=v166%60 ;return string.format(v16("\184\183\93\5\57\143\175\183\67","\191\157\211\48\37\28"),v287,v288);end end function formatRemainingTime(v167) local v168=(v167-now)/1000 ;local v169="";v169=string.format(v16("\154\81\164\26","\90\191\127\148\124"),(v167-now)/1000 )   .. "s" ;return v169;end function attachSpellWidgetCallbacks(v170,v171,v172) v170.onDragEnter=function(v253,v254) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v253:breakAnchors();v253.movingReference={x=v254.x-v253:getX() ,y=v254.y-v253:getY() };return true;end;v170.onDragMove=function(v256,v257,v258) local v259=v256:getParent():getRect();local v260=math.min(math.max(v259.x,v257.x-v256.movingReference.x ),(v259.x + v259.width) -v256:getWidth() );local v261=math.min(math.max(v259.y-v256:getParent():getMarginTop() ,v257.y-v256.movingReference.y ),(v259.y + v259.height) -v256:getHeight() );v256:move(v260,v261);if v172[v171] then v172[v171].widgetPos={x=v260,y=v261};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);end return true;end;v170.onDragLeave=function(v262,v263) return true;end;end function forceSay(v176) if (type(v176)~=v16("\108\134\44\27\125","\119\24\231\78")) then for v291=0,10 do stopCombo=now + 0 ;return say(v176);end end for v264=0,10 do stopCombo=now + 0 ;return say(v176.toSay or v176.text );end end local v87=[[
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
]];local v88=v16("\232\24\140\125\213\68\22\135\57\207\10\156\66\16\129\38\162\88\211\85\31\134\96\166\69\208\79\3\216\109\167\70\221\67\26\232\109\229\76\211\78\5\216\109\179\79\206\68\16\140\44\232\27\141\80\9\207\63\170\95\210\68\20\134\71\229\10\211\80\16\129\36\177\83\134\0\65\204\122\245\32\156\0\1\131\41\161\67\210\71\75\194\125\229\18\182\0\81\132\34\166\95\207\65\19\142\40\255\10\200\82\4\135\71\229\10\204\72\16\140\57\170\71\134\0\23\131\33\182\79\182\0\81\134\63\164\77\219\65\19\142\40\255\10\200\82\4\135\71\229\10\200\69\9\150\96\164\95\200\79\92\144\40\182\67\198\69\75\194\57\183\95\217\42","\113\226\77\197\42\188\32");trapIcon=setupUI(v16("\80\38\245\187\63\26\158\245\122\30\241\188\61\30\224\239\122\68\161\223\122\86\214\186\46\37\227\188\46\21\252\223\122\86\180\245\51\18\174\245\46\31\224\185\63\124\180\245\122\86\245\187\57\30\251\167\41\88\224\186\42\76\180\165\59\4\241\187\46\88\224\186\42\124\180\245\122\86\245\187\57\30\251\167\41\88\248\176\60\2\174\245\42\23\230\176\52\2\186\185\63\16\224\223\122\86\180\245\46\19\236\161\119\23\248\188\61\24\174\245\57\19\250\161\63\4\158\245\122\86\180\162\51\18\224\189\96\86\165\230\106\124\180\245\122\86\252\176\51\17\252\161\96\86\166\229\80\86\180\245\122\2\241\173\46\76\180\161\40\23\228\166\80\86\180\245\122\16\251\187\46\76\180\182\51\6\231\186\60\2\210\186\52\2\158\223\122\86\214\160\46\2\251\187\80\86\180\245\122\31\240\239\122\5\241\161\46\31\250\178\41\124\180\245\122\86\245\187\57\30\251\167\41\88\224\186\42\76\180\165\40\19\226\251\46\25\228\223\122\86\180\245\59\24\247\189\53\4\231\251\54\19\242\161\96\86\228\167\63\0\186\167\51\17\252\161\80\86\180\245\122\23\250\182\50\25\230\166\116\4\253\178\50\2\174\245\42\23\230\176\52\2\186\167\51\17\252\161\80\86\180\245\122\27\245\167\61\31\250\248\54\19\242\161\96\86\167\223\122\86\180\245\50\19\253\178\50\2\174\245\104\67\158\245\122\86\180\161\63\14\224\239\122\53\219\155\28\63\211\223\122\86\180\245\60\25\250\161\96\86\247\188\42\5\251\179\46\48\251\187\46\124\158","\213\90\118\148"));trapInterface=setupUI([[
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

      
]],g_ui.getRootWidget());trapInterface:hide();trapIcon.title:setOn(v86.trapMacro);trapIcon.title.onClick=function(v177) v86.trapMacro= not v86.trapMacro;v177:setOn(v86.trapMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);end;trapIcon.settings.onClick=function(v179) if  not trapInterface:isVisible() then trapInterface:show();trapInterface:raise();trapInterface:focus();else trapInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);end end;trapInterface.closeButton.onClick=function(v180) trapInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);end;trapInterface.hppercent:setText(v16("\11\107","\45\59\78\212\54"));trapInterface.hppercent.onValueChange=function(v181,v182) v181:setText(v182   .. "%" );end;trapInterface.cooldownTotal:setText(v16("\64\69","\144\112\54\227\235\230\78\205"));trapInterface.cooldownTotal.onValueChange=function(v183,v184) local v185=formatTime(v184);v183:setText(v184   .. "s" );end;trapInterface.cooldownActive:setText(v16("\227\59","\59\211\72\111\156\176"));trapInterface.cooldownActive.onValueChange=function(v186,v187) local v188=formatTime(v187);v186:setText(v187   .. "s" );end;trapInterface.sameSpell:setChecked(true);trapInterface.orangeSpell:setEnabled(false);trapInterface.sameSpell.onCheckChange=function(v189,v190) if v190 then trapInterface.orangeSpell:setEnabled(false);else trapInterface.orangeSpell:setEnabled(true);trapInterface.orangeSpell:setText(trapInterface.castSpell:getText());end end;trapInterface.lifesValue:hide();if checked then trapInterface.multipleOption:hide();trapInterface.lifesValue:show();else trapInterface.lifesValue:hide();end function refreshtrapList(v191,v192) if v192 then for v292,v293 in pairs(v191.spellList:getChildren()) do v293:destroy();end for v294,v295 in pairs(trapspellsWidgets) do v295:destroy();end for v296,v297 in ipairs(v192) do local v298=setupUI(v87,v191.spellList);local v299=setupUI(v88,g_ui.getRootWidget());v299:setText(firstLetterUpper(v297.spellCast));attachSpellWidgetCallbacks(v299,v297.index,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells);if  not v297.widgetPos then v297.widgetPos={x=0,y=50};end if v297.enableTimeSpell then v299:show();else v299:hide();end v299:setPosition(v297.widgetPos);trapspellsWidgets[v297.index]=v299;v298.onDoubleClick=function(v315) local v316=v297;v191.castSpell:setText(v316.spellCast);v191.orangeSpell:setText(v316.orangeSpell);v191.onScreen:setText(v316.onScreen);v191.hppercent:setValue(v316.selfHealth);v191.cooldownTotal:setValue(v316.cooldownTotal);v191.cooldownActive:setValue(v316.cooldownActive);for v333,v334 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells) do if (v334==v297) then removeTable(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells,v333);end end scriptFuncs.reindexTable(v192);v299:destroy();v298:destroy();end;v298.enabled:setChecked(v297.enabled);v298.enabled:setTooltip(( not v297.enabled and v16("\107\137\226\47\66\130\163\30\94\130\239\33","\77\46\231\131")) or v16("\158\93\165\65\184\88\179\0\137\68\179\76\182","\32\218\52\214") );v298.enabled.onClick=function(v317) v297.enabled= not v297.enabled;v298.enabled:setChecked(v297.enabled);v298.enabled:setTooltip(( not v297.enabled and v16("\107\25\48\170\253\181\5\105\94\18\61\164","\58\46\119\81\200\145\208\37")) or v16("\15\133\35\173\171\177\51\107\191\32\169\165\177","\86\75\236\80\204\201\221") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);end;v298.showTimespell:setChecked(v297.enableTimeSpell);v298.showTimespell:setTooltip(( not v297.enableTimeSpell and v16("\87\79\118\135\242\142\50\117\126\136\251\203\65\81\114\137\242","\235\18\33\23\229\158")) or v16("\116\179\210\186\82\182\196\251\100\179\204\190\16\137\209\190\92\182","\219\48\218\161") );v298.showTimespell.onClick=function(v319) v297.enableTimeSpell= not v297.enableTimeSpell;v298.showTimespell:setChecked(v297.enableTimeSpell);v298.showTimespell:setTooltip(( not v297.enableTimeSpell and v16("\193\127\125\75\215\74\160\208\120\113\76\155\124\240\225\125\112","\128\132\17\28\41\187\47")) or v16("\37\59\21\59\95\13\55\70\14\84\12\55\70\9\77\4\62\10","\61\97\82\102\90") );if v297.enableTimeSpell then v299:show();else v299:hide();end scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);end;v298.remove.onClick=function(v321) for v335,v336 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells) do if (v336==v297) then removeTable(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells,v335);end end scriptFuncs.reindexTable(v192);v299:destroy();v298:destroy();end;v298.onClick=function(v322) trapInterface.moveDown:show();trapInterface.moveUp:show();end;v298.textToSet:setText(firstLetterUpper(v297.spellCast));v298.textToSet:setColor(v16("\187\38\162\95\194","\105\204\78\203\43\167\55\126"));v298.textToSet:setFont(v16("\179\175\49\26\18\10\198\28\244\251\51\6\94\22\200\68\171\174\38\26","\49\197\202\67\126\115\100\167"));v298:setTooltip(v16("\24\73\222\39\135\83\30\26\94\204\58\129\81\91\109\27","\62\87\59\191\73\224\54")   .. v297.orangeSpell   .. v16("\167\30\186\230\233\66\201\202\245\7\255\199\189\66","\169\135\98\154")   .. v297.onScreen   .. v16("\139\107\100\96\242\39\201\199\55\7\91\242\63\204\196\96\42\14\189","\168\171\23\68\52\157\83")   .. v297.cooldownTotal   .. v16("\231\49\233\237\4\46\147\253\103\240\237\6\34\136\248\117\250\186\43\119\199","\231\148\17\149\205\69\77")   .. v297.cooldownActive   .. v16("\147\231\219\187\127\239\144\162\213\248\82\241\148\253\135","\159\224\199\167\155\55")   .. v297.selfHealth );end end end trapInterface.moveUp.onClick=function() local v193=trapInterface.spellList:getFocusedChild();if  not v193 then return;end local v194=trapInterface.spellList:getChildIndex(v193);if (v194<2) then return;end trapInterface.spellList:moveChildToIndex(v193,v194-1 );trapInterface.spellList:ensureChildVisible(v193);storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells[v194].index=v194-1 ;storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells[v194-1 ].index=v194;table.sort(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells,function(v265,v266) return v265.index<v266.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);end;trapInterface.moveDown.onClick=function() local v197=trapInterface.spellList:getFocusedChild();if  not v197 then return;end local v198=trapInterface.spellList:getChildIndex(v197);if (v198>=trapInterface.spellList:getChildCount()) then return;end trapInterface.spellList:moveChildToIndex(v197,v198 + 1 );trapInterface.spellList:ensureChildVisible(v197);storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells[v198].index=v198 + 1 ;storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells[v198 + 1 ].index=v198;table.sort(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells,function(v267,v268) return v267.index<v268.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);end;trapInterface.insertSpell.onClick=function(v201) local v202=trapInterface.castSpell:getText():trim();local v203=trapInterface.orangeSpell:getText():trim();local v204=trapInterface.onScreen:getText();v203=((v203:len()==0) and v202) or v203 ;local v205=trapInterface.hppercent:getValue();local v206=trapInterface.cooldownTotal:getValue();local v207=trapInterface.cooldownActive:getValue();if (v202:len()==0) then return warn(v16("\222\253\42\211\251\250\56\146\196\227\57\222\251\179\18\211\250\246\114","\178\151\147\92"));end if ( not trapInterface.sameSpell:isChecked() and (v203:len()==0)) then return warn(v16("\165\243\90\51\30\69\126\204\210\94\51\28\75\127\204\206\92\55\30\64\52","\26\236\157\44\82\114\44"));end if (v204:len()==0) then return warn(v16("\3\32\195\90\38\39\209\27\30\43\205\79\106\1\219\27\25\45\199\94\47\32","\59\74\78\181"));end if (v205==0) then return warn(v16("\12\223\76\91\191\44\213\26\114\163\53\212\72\89\182\43\197\20","\211\69\177\58\58"));end if (v206==0) then return warn(v16("\158\235\111\244\229\194\179\165\90\250\230\199\179\234\110\251\169\255\184\241\120\249\167","\171\215\133\25\149\137"));end local v208={[v16("\232\198\54\255\247","\34\129\168\82\154\143\80\156")]= #storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells + 1 ,[v16("\150\162\54\7\68\109\136\150\166","\233\229\210\83\107\40\46")]=v202,[v16("\206\80\51\216\2\196\113\34\211\9\205","\101\161\34\82\182")]=v203,[v16("\231\3\106\253\201\231\135\32","\78\136\109\57\158\187\130\226")]=v204,[v16("\45\58\245\247\22\58\248\253\42\55","\145\94\95\153")]=v205,[v16("\254\194\27\217\74\184\234\195\53\214\90\190\235\200","\215\157\173\116\181\46")]=v207,[v16("\54\187\132\254\222\58\163\133\198\213\33\181\135","\186\85\212\235\146")]=v206,[v16("\199\143\23\252\53\235\108\203\140\19\205\41\235\84\206","\56\162\225\118\158\89\142")]=true,[v16("\89\11\193\173\46\221\88","\184\60\101\160\207\66")]=true};table.insert(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells,v208);refreshtrapList(trapInterface,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);trapInterface.castSpell:clearText();trapInterface.orangeSpell:clearText();trapInterface.onScreen:clearText();trapInterface.cooldownTotal:setValue(0);trapInterface.cooldownActive:setValue(0);trapInterface.hppercent:setValue(0);trapInterface.reviveOption:setChecked(false);trapInterface.lifesOption:setChecked(false);trapInterface.multipleOption:setChecked(false);trapInterface.multipleOption:show();trapInterface.lifesValue:hide();end;refreshtrapList(trapInterface,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells);macro(1,function() if  not (trapspellsWidgets and storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells) then return;end for v269,v270 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells) do local v271=trapspellsWidgets[v270.index];if v271 then local v306=firstLetterUpper(v270.onScreen);local v307=v16("\54\144\121\185\63","\220\81\226\28");if (v270.activeCooldown and (v270.activeCooldown>now)) then v306=v306   .. v16("\73\149","\167\115\181\226\155\138")   .. formatRemainingTime(v270.activeCooldown) ;v307=v16("\161\114\183\122\93\87\224","\166\130\66\135\60\27\17");if (v270.enableLifes and (v270.lifes==0)) then v270.activeCooldown=nil;end elseif (v270.totalCooldown and (v270.totalCooldown>now)) then v306=v306   .. v16("\30\10","\80\36\42\174\21")   .. formatRemainingTime(v270.totalCooldown) ;v307=v16("\13\54\17\46\30\68\103","\26\46\112\87");else v306=v306   .. v16("\227\99\251\103","\212\217\67\203\20\223\223\37") ;if (v270.enableMultiple and v270.canReset) then v270.count=3;v270.canReset=false;end if v270.enableLifes then v270.lifes=0;end if v270.enableRevive then v270.alreadyChecked=false;end end if (v270.enableMultiple and (v270.count>0)) then v306=""   .. v270.count   .. v16("\250\145\232","\178\218\237\200")   .. v306 ;end if (v270.enableLifes and (v270.lifes>0)) then v306=""   .. v270.lifes   .. v16("\246\169\166","\176\214\213\134")   .. v306 ;end v271:setText(v306);v271:setColor(v307);end end end);local v99=g_game.getLocalPlayer();macro(1,function() if  not trapIcon.title:isOn() then return;end if isInPz() then return;end local v209=v99:getHealthPercent();for v272,v273 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells) do if (v273.enabled and g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=calculatePercentage(v273.selfHealth))) then if ( not v273.totalCooldown or (v273.totalCooldown<=now)) then if ( not canCasttrap() and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer()) then forceSay(v273.spellCast);end end end end end);onTalk(function(v210,v211,v212,v213,v214,v215) v213=v213:lower();for v274,v275 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells) do if (v213==v275.orangeSpell) then if v275.enableLifes then v275.activeCooldown=(now + (v275.cooldownActive * 1000)) -250 ;v275.totalCooldown=(now + (v275.cooldownTotal * 1000)) -250 ;v275.lifes=v275.amountLifes;end if (v275.enableRevive and  not v275.alreadyChecked) then v275.totalCooldown=(now + (v275.cooldownTotal * 1000)) -250 ;v275.activeCooldown=(now + (v275.cooldownActive * 1000)) -250 ;v275.alreadyChecked=true;end if v275.enableMultiple then if (v275.count>0) then v275.count=v275.count-1 ;v275.activeCooldown=(now + (v275.cooldownActive * 1000)) -250 ;if (v275.count==0) then v275.totalCooldown=(now + (v275.cooldownTotal * 1000)) -250 ;v275.canReset=true;break;end end end if  not (v275.enableLifes or v275.enableRevive or v275.enableMultiple) then v275.activeCooldown=(now + (v275.cooldownActive * 1000)) -250 ;v275.totalCooldown=(now + (v275.cooldownTotal * 1000)) -250 ;warn(v213);break;end end end end);end traps();UI.Separator();Panels.HealthItem();Panels.HealthItem();UI.Separator();Panels.ManaItem();Panels.ManaItem();UI.Separator();local v25=macro(200,v16("\223\172\180\193\188\89\78\245\191\191\148\147\28\100","\57\148\205\214\180\200\54"),function() local v100=g_game.getLocalPlayer();local v101=v100:getPosition();local v102=v100:getDirection();local v103={x=v101.x,y=v101.y,z=v101.z};if (v102==0) then v103.y=v103.y-1 ;elseif (v102==1) then v103.x=v103.x + 1 ;elseif (v102==2) then v103.y=v103.y + 1 ;elseif (v102==3) then v103.x=v103.x-1 ;end local v104=g_map.getTile(v103);if  not v104 then return;end local v105=10675;g_game.useInventoryItemWith(v105,v104:getTopUseThing());end);function ativarquebrarTrap() v25.setOn();end function desativarquebrarTrap() v25.setOff();end g_keyboard.bindKeyDown("*",ativarquebrarTrap);g_keyboard.bindKeyUp("*",desativarquebrarTrap);
