
local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v26,v27) local v28={};for v93=1 + 0 , #v26 do v6(v28,v0(v4(v1(v2(v26,v93,v93 + (3 -2) )),v1(v2(v27,(30 -(22 + 7)) + (v93% #v27) ,1 + 0 + (v93% #v27) + 1 + 0 )))%(2241 -(1266 + 719)) ));end return v5(v28);end bit32={};local v8=635 -(268 + 335) ;local v9=2^v8 ;bit32.bnot=function(v29) local v30=0;while true do if (0==v30) then v29=v29%v9 ;return (v9-(291 -(60 + 230))) -v29 ;end end end;bit32.band=function(v31,v32) local v33=0;local v34;local v35;while true do if (v33==(574 -(426 + 146))) then v34=0;v35=1 + 0 ;v33=1459 -(282 + 1174) ;end if (v33==0) then if (v32==(1066 -(569 + 242))) then return v31%256 ;end if (v32==(188779 -123244)) then return v31%(3748 + 61788) ;end v33=1025 -(706 + 318) ;end if (v33==3) then for v254=1252 -(721 + 530) ,v8 do local v255=1271 -(945 + 326) ;local v256;local v257;while true do if ((0 -0)==v255) then v256,v257=v31%(2 + 0) ,v32%2 ;v31,v32=math.floor(v31/2 ),math.floor(v32/2 );v255=1;end if (v255==(701 -(271 + 429))) then if ((v256 + v257)==(2 + 0)) then v34=v34 + v35 ;end v35=(1502 -(1408 + 92)) * v35 ;break;end end end return v34;end if (v33==(1087 -(461 + 625))) then if (v32==(4294968583 -(993 + 295))) then return v31%(4156526492 -  -138440804) ;end v31,v32=v31%v9 ,v32%v9 ;v33=1 + 1 ;end end end;bit32.bor=function(v36,v37) if (v37==(27 + 228)) then return (v36-(v36%256)) + 255 ;end if (v37==(19168 + 46367)) then return (v36-(v36%(16563 + 48973))) + (66064 -(406 + 123)) ;end if (v37==(4294969064 -(1749 + 20))) then return 4294967295;end v36,v37=v36%v9 ,v37%v9 ;local v38=0 + 0 ;local v39=1323 -(1249 + 73) ;for v94=1 + 0 ,v8 do local v95,v96=v36%(1147 -(466 + 679)) ,v37%(4 -2) ;v36,v37=math.floor(v36/(5 -3) ),math.floor(v37/(1902 -(106 + 1794)) );if ((v95 + v96)>=(1 + 0)) then v38=v38 + v39 ;end v39=(1 + 1) * v39 ;end return v38;end;bit32.bxor=function(v40,v41) local v42=0;local v43;local v44;while true do if (v42==2) then return v43;end if (v42==1) then v44=2 -1 ;for v258=2 -1 ,v8 do local v259=114 -(4 + 110) ;local v260;local v261;while true do if (v259==0) then v260,v261=v40%(586 -(57 + 527)) ,v41%(1429 -(41 + 1386)) ;v40,v41=math.floor(v40/(105 -(17 + 86)) ),math.floor(v41/2 );v259=1 + 0 ;end if (v259==(1 -0)) then if ((v260 + v261)==(2 -1)) then v43=v43 + v44 ;end v44=2 * v44 ;break;end end end v42=168 -(122 + 44) ;end if (v42==0) then v40,v41=v40%v9 ,v41%v9 ;v43=0 -0 ;v42=3 -2 ;end end end;bit32.lshift=function(v45,v46) local v47=0 + 0 ;while true do if (v47==(0 + 0)) then if (math.abs(v46)>=v8) then return 0 -0 ;end v45=v45%v9 ;v47=1;end if (v47==(66 -(30 + 35))) then if (v46<0) then return math.floor(v45 * (2^v46) );else return (v45 * ((2 + 0)^v46))%v9 ;end break;end end end;bit32.rshift=function(v48,v49) local v50=0;while true do if (v50==(1258 -(1043 + 214))) then if (v49>0) then return math.floor(v48 * ((7 -5)^ -v49) );else return (v48 * ((1214 -(323 + 889))^ -v49))%v9 ;end break;end if (v50==0) then if (math.abs(v49)>=v8) then return 0;end v48=v48%v9 ;v50=1;end end end;bit32.arshift=function(v51,v52) if (math.abs(v52)>=v8) then return 0 -0 ;end v51=v51%v9 ;if (v52>(580 -(361 + 219))) then local v197=0;local v198;while true do if (v197==0) then v198=320 -(53 + 267) ;if (v51>=(v9/(1 + 1))) then v198=v9-((415 -(15 + 398))^(v8-v52)) ;end v197=1;end if (v197==1) then return math.floor(v51 * (2^ -v52) ) + v198 ;end end else return (v51 * ((984 -(18 + 964))^ -v52))%v9 ;end end;xtela10nui,ytela10nui=2973 -2183 ,300;timemagianui="";tempoi1nui=120000;tempoi2nui=0;texto10nui=v7("\255\246\242\7\199\137\238","\126\177\163\187\69\134\219\167");local v17=setupUI(v7("\73\253\43\203\249\47\167\106\133\244\38\196\45\205\232\121\141\126\149\172\73\141\106\210\245\39\217\34\159\188\122\157\122\175","\156\67\173\74\165"),g_ui.getRootWidget());local v18=g_ui.loadUIFromString(v7("\94\155\72\20\185\42\44\116\247\74\25\176\41\84\110\247\94\30\181\50\67\94\247\9\20\189\37\77\51\165\70\3\178\34\11\55\184\69\25\174\124\6\54\187\72\21\183\76\6\116\184\89\23\191\47\82\45\237\9\70\242\126\19\94\247\9\2\185\62\82\121\191\70\4\181\60\73\58\163\72\26\241\39\83\32\184\4\4\185\53\79\46\178\19\86\168\52\83\49\221","\38\84\215\41\118\220\70"),v17);macro(1,function() if ( not storage.time.nui1 or (storage.time.nui1<now)) then local v199=0 + 0 ;while true do if (v199==(0 + 0)) then v18:setText(texto10nui);v18:setColor(v7("\87\4\39\23\240","\158\48\118\66\114"));break;end end elseif (storage.time.nu1>=now) then local v262=850 -(20 + 830) ;while true do if (v262==0) then v18:setColor(v7("\169\40\5\51","\155\203\68\112\86\19\197"));v18:setText(texto10nui   .. string.format(v7("\3\147\102\250","\152\38\189\86\156\32\24\133"),(storage.time.nu1-now)/(781 + 219) )   .. v7("\239\23","\38\156\55\199") );break;end end else local v263=0;while true do if (v263==(126 -(116 + 10))) then v18:setColor(v7("\186\120\120","\35\200\29\28\72\115\20\154"));v18:setText(texto10nui   .. string.format(v7("\92\241\129\217","\84\121\223\177\191\237\76"),(storage.time.nui1-now)/1000 )   .. v7("\168\22","\161\219\54\169\192\90\48\80") );break;end end end end);onTextMessage(function(v53,v54) if v54:find(v7("\89\67\18\36\9\87\19\36\91\2\1\101\76\81\16\36\77\67\64\43\70\84\1\40\76\76\20\32\7","\69\41\34\96")) then storage.time=storage.time or {} ;storage.time.nui1=now + tempoi1nui ;storage.time.nu1=now + tempoi2nui ;end end);if ((type(storage.time)~=v7("\168\194\213\6\7","\75\220\163\183\106\98")) or  not storage.time.nu1 or ((storage.time.nui1-now)>(4432 + 55568)) or  not storage.time.nu1 or ((storage.time.nu1-now)>(60738 -(542 + 196)))) then storage.time={[v7("\12\175\130\102","\185\98\218\235\87")]=0 -0 ,[v7("\197\41\118","\202\171\92\71\134\190")]=0 + 0 };end v18:setPosition({y=ytela10nui + 21 + 19 ,x=xtela10nui + 10 });setDefaultTab(v7("\25\247\28","\232\73\161\76"));local v19=v7("\176\208\78\81\45\175\220\67\81","\126\219\185\34\61");local v20=setupUI([[
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

]],parent);v20:setId(v19);if  not storage[v19] then storage[v19]={[v7("\5\202","\135\108\174\62\18\30\23\147")]=3072,[v7("\162\224\62\199\29","\167\214\137\74\171\120\206\83")]=enabled,[v7("\142\254\51\95\244\162\143","\199\235\144\82\61\152")]=false,[v7("\20\19\173\63\14\24\190","\75\103\118\217")]=true,[v7("\207\68","\126\167\52\16\116\217")]=20};end v20.title:setOn(storage[v19].enabled);v20.title.onClick=function(v55) local v56=0 + 0 ;while true do if (v56==0) then storage[v19].enabled= not storage[v19].enabled;v55:setOn(storage[v19].enabled);break;end end end;local v22=function() local v57=0 -0 ;local v58;while true do if ((2 -1)==v57) then v20.help:setText(v7("\127\46\31","\152\54\72\63\88\69\62")   .. v58   .. v7("\148\236\222\0\137","\60\180\164\142")   .. storage[v19].hp   .. "%" );break;end if (v57==0) then v58=nil;if storage[v19].setting then v58=v7("\252\47\50\135\177\13","\156\168\78\64\224\212\121");else v58=v7("\34\224\160\195\30","\174\103\142\197");end v57=1552 -(1126 + 425) ;end end end;v22();v20.HP.onValueChange=function(v59,v60) storage[v19].hp=v60;v22();end;v20.item:setItemId(storage[v19].id);v20.item.onItemChange=function(v62) storage[v19].id=v62:getItemId();end;v20.HP:setValue(storage[v19].hp);macro(505 -(118 + 287) ,function() local v64=0 -0 ;local v65;while true do if (v64==(1121 -(118 + 1003))) then if  not storage[v19].enabled then return;end v65=g_game.getLocalPlayer();v64=2 -1 ;end if (v64==1) then if storage[v19].setting then if (g_game.isAttacking() and g_game.getAttackingCreature():isPlayer() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v19].hp)) then if ( not storage.time.nui1 or (storage.time.nui1<now)) then local v334=g_game.getAttackingCreature();local v335=v65:getPosition();local v336=v334:getPosition();local v337=math.abs(v335.x-v336.x );local v338=math.abs(v335.y-v336.y );if (((v337==(378 -(142 + 235))) and (v338==0)) or ((v337==(0 -0)) and (v338==1)) or ((v337==(1 + 0)) and (v338==1))) then useWith(storage[v19].id,v334);end end end else for v294,v295 in pairs(getSpectators()) do if (g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v19].hp)) then local v316=977 -(553 + 424) ;local v317;local v318;local v319;local v320;while true do if (v316==(3 -1)) then if (((v319==(1 + 0)) and (v320==(0 + 0))) or ((v319==(0 + 0)) and (v320==1)) or ((v319==1) and (v320==1))) then useWith(storage[v19].id,v295);end break;end if (v316==(1 + 0)) then v319=math.abs(v318.x-v317.x );v320=math.abs(v318.y-v317.y );v316=2 + 0 ;end if (v316==(0 -0)) then v317=v295:getPosition();v318=v65:getPosition();v316=2 -1 ;end end end end end break;end end end);UI.Separator();function traps() local v66=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v66=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v67=g_resources.listDirectoryFiles(v7("\23\92\10\61\104","\114\56\62\101\73\71\141")   .. v66   .. v7("\247\255\249\203\172","\164\216\137\187") ,true,false);for v99,v100 in ipairs(v67) do local v101=0;local v102;while true do if (v101==(0 -0)) then v102=v100:split(".");if ((v102[ #v102]:lower()==v7("\199\239","\107\178\134\81\210\198\158")) or (v102[ #v102]:lower()==v7("\55\26\151\207","\202\88\110\226\166"))) then g_ui.importStyle(v100);end break;end end end scriptFuncs={};trapspellsWidgets={};scriptFuncs.readProfile=function(v103,v104) if g_resources.fileExists(v103) then local v240,v241=pcall(function() return json.decode(g_resources.readFileContents(v103));end);if  not v240 then return onError(v7("\230\29\144\248\138\192\14\144\229\207\196\14\140\243\197\131\14\144\230\223\202\25\141\183\130","\170\163\111\226\151")   .. v103   .. v7("\88\126\242\8\79\37\40\81\51\189\54\93\50\59\5\49\160\120\65\119\57\3\63\176\52\75\58\40\93\112\183\32\77\59\60\16\112\189\120\79\37\56\4\57\164\55\0\119\13\20\36\179\52\70\50\58\75\112","\73\113\80\210\88\46\87")   .. v241 );end v104(v241);end end;scriptFuncs.saveProfile=function(v105,v106) local v107=0 + 0 ;local v108;local v109;while true do if (v107==(0 -0)) then v108,v109=pcall(function() return json.encode(v106,2);end);if  not v108 then return onError("Erro salvando configuração. Detalhes: "   .. v109 );end v107=754 -(239 + 514) ;end if (v107==1) then if (v109:len()>((36 + 64) * (2353 -(797 + 532)) * (745 + 279))) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v105,v109);break;end end end;storageProfilesTraps={[v7("\149\62\204\2\244\145\41\193\30\244","\135\225\76\173\114")]={}};MAIN_DIRECTORY=v7("\85\239\183\164\227","\199\122\141\216\208\204\221")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v7("\226\206\4\255\106\247\170\216\95","\150\205\189\112\144\24") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v7("\107\142\172\67\10","\112\69\228\223\44\100\232\113") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v110) local v111=0;while true do if (v111==0) then storageProfilesTraps=v110;if (type(storageProfilesTraps.trapspells)~=v7("\192\30\5\223\179","\230\180\127\103\179\214\28")) then storageProfilesTraps.trapspells={};end break;end end end);scriptFuncs.reindexTable=function(v112) local v113=0 + 0 ;local v114;while true do if (v113==(0 -0)) then if ( not v112 or (type(v112)~=v7("\152\4\93\74\225","\128\236\101\63\38\132\33"))) then return;end v114=1202 -(373 + 829) ;v113=1;end if (v113==(732 -(476 + 255))) then for v273,v274 in pairs(v112) do local v275=1130 -(369 + 761) ;while true do if (v275==(0 + 0)) then v114=v114 + (1 -0) ;v274.index=v114;break;end end end break;end end end;function firstLetterUpper(v115) return (v115:gsub("(%a)([%w_']*)",function(v203,v204) return v203:upper()   .. v204:lower() ;end));end function formatTime(v116) if (v116<(113 -53)) then return v116   .. "s" ;else local v242=math.floor(v116/(298 -(64 + 174)) );local v243=v116%(9 + 51) ;return string.format(v7("\233\173\28\4\243\187\157\168\186","\175\204\201\113\36\214\139"),v242,v243);end end function formatRemainingTime(v117) local v118=0 -0 ;local v119;local v120;while true do if (v118==(336 -(144 + 192))) then v119=(v117-now)/(1216 -(42 + 174)) ;v120="";v118=1 + 0 ;end if (v118==1) then v120=string.format(v7("\2\130\101\218","\100\39\172\85\188"),(v117-now)/1000 )   .. "s" ;return v120;end end end function attachSpellWidgetCallbacks(v121,v122,v123) v121.onDragEnter=function(v205,v206) local v207=0;while true do if (v207==(0 + 0)) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v205:breakAnchors();v207=1 + 0 ;end if ((1505 -(363 + 1141))==v207) then v205.movingReference={x=v206.x-v205:getX() ,y=v206.y-v205:getY() };return true;end end end;v121.onDragMove=function(v208,v209,v210) local v211=1580 -(1183 + 397) ;local v212;local v213;local v214;while true do if (v211==1) then v214=math.min(math.max(v212.y-v208:getParent():getMarginTop() ,v209.y-v208.movingReference.y ),(v212.y + v212.height) -v208:getHeight() );v208:move(v213,v214);v211=5 -3 ;end if (v211==0) then v212=v208:getParent():getRect();v213=math.min(math.max(v212.x,v209.x-v208.movingReference.x ),(v212.x + v212.width) -v208:getWidth() );v211=1;end if (v211==(2 + 0)) then if v123[v122] then v123[v122].widgetPos={x=v213,y=v214};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end return true;end end end;v121.onDragLeave=function(v215,v216) return true;end;end scriptFuncs={};trapspellsWidgets={};scriptFuncs.readProfile=function(v127,v128) if g_resources.fileExists(v127) then local v244=0;local v245;local v246;while true do if (0==v244) then v245,v246=pcall(function() return json.decode(g_resources.readFileContents(v127));end);if  not v245 then return onError(v7("\136\106\171\143\115\174\121\171\146\54\170\121\183\132\60\237\121\171\145\38\164\110\182\192\123","\83\205\24\217\224")   .. v127   .. v7("\175\139\141\13\231\215\204\125\229\202\195\46\227\215\217\60\244\133\194\125\246\215\194\63\234\192\192\60\170\133\200\37\229\201\216\60\166\202\141\60\244\212\216\52\240\202\131\125\194\192\217\60\234\205\200\46\188\133","\93\134\165\173")   .. v246 );end v244=1 + 0 ;end if (v244==1) then v128(v246);break;end end end end;scriptFuncs.saveProfile=function(v129,v130) local v131,v132=pcall(function() return json.encode(v130,1977 -(1913 + 62) );end);if  not v131 then return onError("Erro salvando configuração. Detalhes: "   .. v132 );end if (v132:len()>((63 + 37) * (2710 -1686) * 1024)) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v129,v132);end;storageProfilesTraps={[v7("\170\224\192\210\41\222\183\114\178\225","\30\222\146\161\162\90\174\210")]={}};MAIN_DIRECTORY=v7("\170\76\127\30\170","\106\133\46\16")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v7("\23\51\103\243\72\65\95\37\60","\32\56\64\19\156\58") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v7("\20\194\246\89\84","\224\58\168\133\54\58\146") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end function resetCooldowns() if storageProfilesTraps then local v247=1933 -(565 + 1368) ;while true do if (v247==(0 -0)) then if storageProfilesTraps.comboSpells then for v339,v340 in ipairs(storageProfilesTraps.comboSpells) do v340.cooldownSpells=nil;end end if storageProfilesTraps.trapspells then for v342,v343 in ipairs(storageProfilesTraps.trapspells) do local v344=1661 -(1477 + 184) ;while true do if (v344==(0 -0)) then v343.totalCooldown=nil;v343.activeCooldown=nil;break;end end end end break;end end end end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v133) local v134=0;while true do if (v134==1) then resetCooldowns();break;end if (v134==0) then storageProfilesTraps=v133;if (type(storageProfilesTraps.trapspells)~=v7("\77\87\73\241\112","\107\57\54\43\157\21\230\231")) then storageProfilesTraps.trapspells={};end v134=1;end end end);scriptFuncs.reindexTable=function(v135) local v136=0 + 0 ;local v137;while true do if (v136==0) then if ( not v135 or (type(v135)~=v7("\207\138\19\249\188","\175\187\235\113\149\217\188"))) then return;end v137=856 -(564 + 292) ;v136=1;end if ((1 -0)==v136) then for v277,v278 in pairs(v135) do local v279=0 -0 ;while true do if (v279==0) then v137=v137 + (305 -(244 + 60)) ;v278.index=v137;break;end end end break;end end end;function firstLetterUpper(v138) return (v138:gsub("(%a)([%w_']*)",function(v217,v218) return v217:upper()   .. v218:lower() ;end));end storage[v7("\53\172\142\66\208\122\106\53\191\149\95","\24\92\207\225\44\131\25")]=storage[v7("\66\208\183\66\40\126\89\218\168\88\8","\29\43\179\216\44\123")] or {[v7("\169\203\33\92\144\216\35\94\178","\44\221\185\64")]=false} ;local v72=storage[v7("\8\228\71\81\64\2\245\65\79\103\18","\19\97\135\40\63")];function removeTable(v139,v140) table.remove(v139,v140);end function canCasttrap() for v219,v220 in ipairs(storageProfilesTraps.trapspells) do local v221=v220.activeCooldown and (v220.activeCooldown>=now) and v220.enableLifes and (v220.lifes>(0 + 0)) ;local v222=v220.enableMultiple and (v220.count>(476 -(41 + 435))) ;local v223=v220.activeCooldown and (v220.activeCooldown>=now) ;if (v221 or v223) then return true;end end return false;end function stopToCast() local v141=1001 -(938 + 63) ;while true do if (v141==(1 + 0)) then return false;end if (v141==0) then if  not trapIcon.title:isOn() then return false;end for v280,v281 in ipairs(storageProfilesTraps.trapspells) do if (v281.enabled and v281.activeCooldown and (v281.activeCooldown>=now)) then return false;end if (g_game.getAttackingCreature() and (g_game.getAttackingCreature():getHealthPercent()<=(calculatePercentage(v281.selfHealth) + (1128 -(936 + 189)))) and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer()) then if ( not v281.totalCooldown or (v281.totalCooldown<=now)) then return true;end end end v141=1 + 0 ;end end end function formatTime(v142) if (v142<(1673 -(1565 + 48))) then return v142   .. "s" ;else local v248=0;local v249;local v250;while true do if (v248==1) then return string.format(v7("\235\88\62\123\106\97\252\88\32","\81\206\60\83\91\79"),v249,v250);end if (v248==(0 + 0)) then v249=math.floor(v142/(1198 -(782 + 356)) );v250=v142%(327 -(176 + 91)) ;v248=2 -1 ;end end end end function formatRemainingTime(v143) local v144=0;local v145;local v146;while true do if ((0 -0)==v144) then v145=(v143-now)/1000 ;v146="";v144=1;end if ((1093 -(975 + 117))==v144) then v146=string.format(v7("\11\229\128\116","\196\46\203\176\18\79\163\45"),(v143-now)/1000 )   .. "s" ;return v146;end end end function attachSpellWidgetCallbacks(v147,v148,v149) v147.onDragEnter=function(v224,v225) local v226=1875 -(157 + 1718) ;while true do if ((1 + 0)==v226) then v224.movingReference={x=v225.x-v224:getX() ,y=v225.y-v224:getY() };return true;end if (v226==(0 -0)) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v224:breakAnchors();v226=3 -2 ;end end end;v147.onDragMove=function(v227,v228,v229) local v230=v227:getParent():getRect();local v231=math.min(math.max(v230.x,v228.x-v227.movingReference.x ),(v230.x + v230.width) -v227:getWidth() );local v232=math.min(math.max(v230.y-v227:getParent():getMarginTop() ,v228.y-v227.movingReference.y ),(v230.y + v230.height) -v227:getHeight() );v227:move(v231,v232);if v149[v148] then v149[v148].widgetPos={x=v231,y=v232};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end return true;end;v147.onDragLeave=function(v233,v234) return true;end;end function forceSay(v153) local v154=0;while true do if (v154==(1018 -(697 + 321))) then if (type(v153)~=v7("\172\35\124\18\33","\143\216\66\30\126\68\155")) then for v299=0 -0 ,10 do local v300=0 -0 ;while true do if (v300==(0 -0)) then stopCombo=now + 10 ;return say(v153);end end end end for v283=0,4 + 6  do local v284=0 -0 ;while true do if (v284==(0 -0)) then stopCombo=now + 10 ;return say(v153.toSay or v153.text );end end end break;end end end local v73=[[
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
]];local v74=v7("\192\253\36\252\204\167\208\228\190\162\77\139\199\162\212\234\173\218\2\222\203\167\154\226\165\196\2\217\159\227\213\237\171\203\6\161\133\227\209\238\164\220\87\139\211\166\197\229\171\198\12\134\148\242\199\249\231\218\2\222\203\167\210\229\192\136\77\196\213\162\212\232\190\209\87\139\149\237\128\177\192\136\77\219\196\167\211\232\164\207\87\139\149\227\143\139\234\136\11\196\198\182\196\224\168\196\8\145\133\183\197\244\175\162\77\139\213\171\214\239\190\199\0\145\133\165\214\237\185\205\103\139\133\167\197\224\173\207\12\201\201\166\141\161\190\218\24\206\175\227\151\245\175\208\25\134\196\182\195\238\231\218\8\216\204\185\210\187\234\220\31\222\192\201","\129\202\168\109\171\165\195\183");trapIcon=setupUI(v7("\72\104\54\214\219\24\140\98\24\63\221\215\19\238\54\2\119\138\139\126\166\98\122\56\204\237\3\239\54\91\63\178\158\84\166\98\81\51\130\158\0\239\54\84\50\178\158\84\166\98\89\57\219\214\27\244\49\22\35\215\206\78\166\50\89\37\221\208\0\168\54\87\39\178\158\84\166\98\89\57\219\214\27\244\49\22\59\221\216\0\188\98\72\54\202\219\26\242\108\84\50\222\202\126\166\98\24\119\204\219\12\242\111\89\59\209\217\26\188\98\91\50\214\202\17\244\72\24\119\152\158\3\239\38\76\63\130\158\69\181\114\50\119\152\158\84\238\39\81\48\208\202\78\166\112\8\93\152\158\84\166\54\93\47\204\132\84\242\48\89\39\203\180\84\166\98\24\49\215\208\0\188\98\91\62\200\205\27\224\54\126\56\214\202\126\140\98\24\21\205\202\0\233\44\50\119\152\158\84\239\38\2\119\203\219\0\242\43\86\48\203\180\84\166\98\24\54\214\221\28\233\48\75\121\204\209\4\188\98\72\37\221\200\90\242\45\72\93\152\158\84\166\35\86\52\208\209\6\245\108\84\50\222\202\78\166\50\74\50\206\144\6\239\37\80\35\178\158\84\166\98\89\57\219\214\27\244\49\22\37\209\217\28\242\120\24\39\217\204\17\232\54\22\37\209\217\28\242\72\24\119\152\158\25\231\48\95\62\214\147\24\227\36\76\109\152\141\126\166\98\24\119\208\219\29\225\42\76\109\152\140\65\140\98\24\119\152\202\17\254\54\2\119\251\241\58\192\11\127\93\152\158\84\166\36\87\57\204\132\84\229\43\72\36\215\216\0\192\45\86\35\178\180","\134\66\56\87\184\190\116"));trapInterface=setupUI([[
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

      
]],g_ui.getRootWidget());trapInterface:hide();trapIcon.title:setOn(v72.trapMacro);trapIcon.title.onClick=function(v155) local v156=1227 -(322 + 905) ;while true do if (v156==(611 -(602 + 9))) then v72.trapMacro= not v72.trapMacro;v155:setOn(v72.trapMacro);v156=1190 -(449 + 740) ;end if (v156==(873 -(826 + 46))) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end;trapIcon.settings.onClick=function(v157) if  not trapInterface:isVisible() then local v251=0;while true do if (v251==(948 -(245 + 702))) then trapInterface:focus();break;end if (v251==0) then trapInterface:show();trapInterface:raise();v251=3 -2 ;end end else trapInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end end;trapInterface.closeButton.onClick=function(v158) local v159=0 + 0 ;while true do if (v159==(1898 -(260 + 1638))) then trapInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end;trapInterface.hppercent:setText(v7("\108\116","\85\92\81\105\219\121\139\65"));trapInterface.hppercent.onValueChange=function(v160,v161) v160:setText(v161   .. "%" );end;trapInterface.cooldownTotal:setText(v7("\173\160","\191\157\211\48\37\28"));trapInterface.cooldownTotal.onValueChange=function(v162,v163) local v164=440 -(382 + 58) ;local v165;while true do if (v164==(0 -0)) then v165=formatTime(v163);v162:setText(v163   .. "s" );break;end end end;trapInterface.cooldownActive:setText(v7("\143\12","\90\191\127\148\124"));trapInterface.cooldownActive.onValueChange=function(v166,v167) local v168=0 + 0 ;local v169;while true do if ((0 -0)==v168) then v169=formatTime(v167);v166:setText(v167   .. "s" );break;end end end;trapInterface.sameSpell:setChecked(true);trapInterface.orangeSpell:setEnabled(false);trapInterface.sameSpell.onCheckChange=function(v170,v171) if v171 then trapInterface.orangeSpell:setEnabled(false);else local v252=0 -0 ;while true do if (v252==(1205 -(902 + 303))) then trapInterface.orangeSpell:setEnabled(true);trapInterface.orangeSpell:setText(trapInterface.castSpell:getText());break;end end end end;trapInterface.lifesValue:hide();if checked then local v235=0 -0 ;while true do if ((0 -0)==v235) then trapInterface.multipleOption:hide();trapInterface.lifesValue:show();break;end end else trapInterface.lifesValue:hide();end function refreshtrapList(v172,v173) if v173 then local v253=0 + 0 ;while true do if (v253==1) then for v301,v302 in ipairs(v173) do local v303=setupUI(v73,v172.spellList);local v304=setupUI(v74,g_ui.getRootWidget());v304:setText(firstLetterUpper(v302.spellCast));attachSpellWidgetCallbacks(v304,v302.index,storageProfilesTraps.trapspells);if  not v302.widgetPos then v302.widgetPos={x=1690 -(1121 + 569) ,y=50};end if v302.enableTimeSpell then v304:show();else v304:hide();end v304:setPosition(v302.widgetPos);trapspellsWidgets[v302.index]=v304;v303.onDoubleClick=function(v323) local v324=214 -(22 + 192) ;local v325;while true do if (1==v324) then v172.onScreen:setText(v325.onScreen);v172.hppercent:setValue(v325.selfHealth);v172.cooldownTotal:setValue(v325.cooldownTotal);v324=2;end if (v324==(685 -(483 + 200))) then v172.cooldownActive:setValue(v325.cooldownActive);for v361,v362 in ipairs(storageProfilesTraps.trapspells) do if (v362==v302) then removeTable(storageProfilesTraps.trapspells,v361);end end scriptFuncs.reindexTable(v173);v324=1466 -(1404 + 59) ;end if (3==v324) then v304:destroy();v303:destroy();break;end if (v324==(0 -0)) then v325=v302;v172.castSpell:setText(v325.spellCast);v172.orangeSpell:setText(v325.orangeSpell);v324=1 -0 ;end end end;v303.enabled:setChecked(v302.enabled);v303.enabled:setTooltip(( not v302.enabled and v7("\93\137\47\21\116\130\110\36\104\130\34\27","\119\24\231\78")) or v7("\166\36\182\75\222\76\20\194\30\181\79\208\76","\113\226\77\197\42\188\32") );v303.enabled.onClick=function(v326) local v327=765 -(468 + 297) ;while true do if (v327==(563 -(334 + 228))) then v303.enabled:setTooltip(( not v302.enabled and v7("\31\24\245\183\54\19\180\134\42\19\248\185","\213\90\118\148")) or v7("\127\39\167\87\79\87\43\244\101\93\94\34\184","\45\59\78\212\54") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end if (v327==0) then v302.enabled= not v302.enabled;v303.enabled:setChecked(v302.enabled);v327=3 -2 ;end end end;v303.showTimespell:setChecked(v302.enableTimeSpell);v303.showTimespell:setTooltip(( not v302.enableTimeSpell and v7("\53\88\130\137\138\43\237\196\25\91\134\203\181\62\168\252\28","\144\112\54\227\235\230\78\205")) or v7("\151\33\28\253\210\87\182\104\59\245\221\94\243\27\31\249\220\87","\59\211\72\111\156\176") );v303.showTimespell.onClick=function(v328) v302.enableTimeSpell= not v302.enableTimeSpell;v303.showTimespell:setChecked(v302.enableTimeSpell);v303.showTimespell:setTooltip(( not v302.enableTimeSpell and v7("\107\137\226\47\66\130\163\25\71\138\230\109\125\151\230\33\66","\77\46\231\131")) or v7("\158\93\165\65\184\88\179\0\142\93\187\69\250\103\166\69\182\88","\32\218\52\214") );if v302.enableTimeSpell then v304:show();else v304:hide();end scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;v303.remove.onClick=function(v330) local v331=0;while true do if (v331==(2 -1)) then v304:destroy();v303:destroy();break;end if (v331==(0 -0)) then for v363,v364 in ipairs(storageProfilesTraps.trapspells) do if (v364==v302) then removeTable(storageProfilesTraps.trapspells,v363);end end scriptFuncs.reindexTable(v173);v331=1 + 0 ;end end end;v303.onClick=function(v332) local v333=0;while true do if (v333==(236 -(141 + 95))) then trapInterface.moveDown:show();trapInterface.moveUp:show();break;end end end;v303.textToSet:setText(firstLetterUpper(v302.spellCast));v303.textToSet:setColor(v7("\89\31\56\188\244","\58\46\119\81\200\145\208\37"));v303.textToSet:setFont(v7("\61\137\34\168\168\179\55\102\221\97\188\177\240\36\36\153\62\168\172\185","\86\75\236\80\204\201\221"));v303:setTooltip(v7("\93\83\118\139\249\142\50\108\114\150\237\138\117\68\45\197","\235\18\33\23\229\158")   .. v302.orangeSpell   .. v7("\16\166\129\148\94\250\242\184\66\191\196\181\10\250","\219\48\218\161")   .. v302.onScreen   .. v7("\164\109\60\125\212\91\225\232\49\95\70\212\67\228\235\102\114\19\155","\128\132\17\28\41\187\47")   .. v302.cooldownTotal   .. v7("\18\114\26\122\124\2\38\15\44\88\65\17\9\53\81\5\61\17\52\7\65","\61\97\82\102\90")   .. v302.cooldownActive   .. v7("\191\110\183\11\239\71\14\12\190\45\174\69\211\13\94","\105\204\78\203\43\167\55\126")   .. v302.selfHealth );end break;end if (v253==0) then for v311,v312 in pairs(v172.spellList:getChildren()) do v312:destroy();end for v313,v314 in pairs(trapspellsWidgets) do v314:destroy();end v253=1 + 0 ;end end end end trapInterface.moveUp.onClick=function() local v174=0 -0 ;local v175;local v176;while true do if (v174==0) then v175=trapInterface.spellList:getFocusedChild();if  not v175 then return;end v174=2 -1 ;end if (v174==4) then table.sort(storageProfilesTraps.trapspells,function(v285,v286) return v285.index<v286.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end if (v174==(1 + 1)) then trapInterface.spellList:moveChildToIndex(v175,v176-(2 -1) );trapInterface.spellList:ensureChildVisible(v175);v174=3 + 0 ;end if (v174==(1 + 0)) then v176=trapInterface.spellList:getChildIndex(v175);if (v176<(2 -0)) then return;end v174=2 + 0 ;end if ((166 -(92 + 71))==v174) then storageProfilesTraps.trapspells[v176].index=v176-1 ;storageProfilesTraps.trapspells[v176-(1 + 0) ].index=v176;v174=6 -2 ;end end end;trapInterface.moveDown.onClick=function() local v177=765 -(574 + 191) ;local v178;local v179;while true do if (v177==(0 + 0)) then v178=trapInterface.spellList:getFocusedChild();if  not v178 then return;end v177=2 -1 ;end if (v177==(3 + 1)) then table.sort(storageProfilesTraps.trapspells,function(v287,v288) return v287.index<v288.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end if (v177==(851 -(254 + 595))) then trapInterface.spellList:moveChildToIndex(v178,v179 + 1 );trapInterface.spellList:ensureChildVisible(v178);v177=3;end if (1==v177) then v179=trapInterface.spellList:getChildIndex(v178);if (v179>=trapInterface.spellList:getChildCount()) then return;end v177=128 -(55 + 71) ;end if (v177==3) then storageProfilesTraps.trapspells[v179].index=v179 + (1 -0) ;storageProfilesTraps.trapspells[v179 + (1791 -(573 + 1217)) ].index=v179;v177=10 -6 ;end end end;trapInterface.insertSpell.onClick=function(v180) local v181=trapInterface.castSpell:getText():trim();local v182=trapInterface.orangeSpell:getText():trim();local v183=trapInterface.onScreen:getText();v182=((v182:len()==(0 + 0)) and v181) or v182 ;local v184=trapInterface.hppercent:getValue();local v185=trapInterface.cooldownTotal:getValue();local v186=trapInterface.cooldownActive:getValue();if (v181:len()==(0 -0)) then return warn(v7("\140\164\53\31\31\13\195\17\150\186\38\18\31\68\233\80\168\175\109","\49\197\202\67\126\115\100\167"));end if ( not trapInterface.sameSpell:isChecked() and (v182:len()==0)) then return warn(v7("\30\85\201\40\140\95\90\119\116\205\40\142\81\91\119\104\207\44\140\90\16","\62\87\59\191\73\224\54"));end if (v183:len()==0) then return warn(v7("\206\12\236\200\235\11\254\137\211\7\226\221\167\45\244\137\212\1\232\204\226\12","\169\135\98\154"));end if (v184==(939 -(714 + 225))) then return warn(v7("\226\121\50\85\241\58\204\139\95\52\68\248\33\203\206\121\48\26","\168\171\23\68\52\157\83"));end if (v185==(0 -0)) then return warn(v7("\221\127\227\172\41\36\131\180\82\250\162\41\41\136\227\127\181\153\42\57\134\248\63","\231\148\17\149\205\69\77"));end local v187={[v7("\137\169\195\254\79","\159\224\199\167\155\55")]= #storageProfilesTraps.trapspells + (1 -0) ,[v7("\228\227\57\222\251\208\61\193\227","\178\151\147\92")]=v181,[v7("\131\239\77\60\21\73\73\156\248\64\62","\26\236\157\44\82\114\44")]=v182,[v7("\37\32\230\88\56\43\208\85","\59\74\78\181")]=v183,[v7("\54\212\86\92\155\32\208\86\78\187","\211\69\177\58\58")]=v184,[v7("\180\234\118\249\237\196\160\235\88\246\253\194\161\224","\171\215\133\25\149\137")]=v186,[v7("\226\199\61\246\235\63\235\76\213\199\38\251\227","\34\129\168\82\154\143\80\156")]=v185,[v7("\128\188\50\9\68\75\189\140\191\54\56\88\75\133\137","\233\229\210\83\107\40\46")]=true,[v7("\196\76\51\212\9\196\70","\101\161\34\82\182")]=true};table.insert(storageProfilesTraps.trapspells,v187);refreshtrapList(trapInterface,storageProfilesTraps.trapspells);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);trapInterface.castSpell:clearText();trapInterface.orangeSpell:clearText();trapInterface.onScreen:clearText();trapInterface.cooldownTotal:setValue(0 + 0 );trapInterface.cooldownActive:setValue(0 -0 );trapInterface.hppercent:setValue(806 -(118 + 688) );trapInterface.reviveOption:setChecked(false);trapInterface.lifesOption:setChecked(false);trapInterface.multipleOption:setChecked(false);trapInterface.multipleOption:show();trapInterface.lifesValue:hide();end;refreshtrapList(trapInterface,storageProfilesTraps.trapspells);macro(49 -(25 + 23) ,function() if  not (trapspellsWidgets and storageProfilesTraps.trapspells) then return;end for v236,v237 in ipairs(storageProfilesTraps.trapspells) do local v238=trapspellsWidgets[v237.index];if v238 then local v270=0 + 0 ;local v271;local v272;while true do if (v270==(1886 -(927 + 959))) then v271=firstLetterUpper(v237.onScreen);v272=v7("\239\31\92\251\213","\78\136\109\57\158\187\130\226");v270=1;end if (v270==3) then v238:setColor(v272);break;end if (v270==1) then if (v237.activeCooldown and (v237.activeCooldown>now)) then local v346=0 -0 ;while true do if (v346==(732 -(16 + 716))) then v271=v271   .. v7("\100\127","\145\94\95\153")   .. formatRemainingTime(v237.activeCooldown) ;v272=v7("\190\157\68\243\104\145\219","\215\157\173\116\181\46");v346=1 -0 ;end if (v346==1) then if (v237.enableLifes and (v237.lifes==(97 -(11 + 86)))) then v237.activeCooldown=nil;end break;end end elseif (v237.totalCooldown and (v237.totalCooldown>now)) then v271=v271   .. v7("\111\244","\186\85\212\235\146")   .. formatRemainingTime(v237.totalCooldown) ;v272=v7("\129\167\48\170\105\186\8","\56\162\225\118\158\89\142");else v271=v271   .. v7("\6\69\144\188","\184\60\101\160\207\66") ;if (v237.enableMultiple and v237.canReset) then local v368=0 -0 ;while true do if (v368==(285 -(175 + 110))) then v237.count=6 -3 ;v237.canReset=false;break;end end end if v237.enableLifes then v237.lifes=0 -0 ;end if v237.enableRevive then v237.alreadyChecked=false;end end if (v237.enableMultiple and (v237.count>(1796 -(503 + 1293)))) then v271=""   .. v237.count   .. v7("\113\158\60","\220\81\226\28")   .. v271 ;end v270=5 -3 ;end if (v270==(2 + 0)) then if (v237.enableLifes and (v237.lifes>0)) then v271=""   .. v237.lifes   .. v7("\83\201\194","\167\115\181\226\155\138")   .. v271 ;end v238:setText(v271);v270=3;end end end end end);local v85=g_game.getLocalPlayer();macro(1062 -(810 + 251) ,function() local v188=0;local v189;while true do if (v188==(1 + 0)) then v189=v85:getHealthPercent();for v289,v290 in ipairs(storageProfilesTraps.trapspells) do if (v290.enabled and g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=calculatePercentage(v290.selfHealth))) then if ( not v290.totalCooldown or (v290.totalCooldown<=now)) then if ( not canCasttrap() and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer()) then stopCombo=now + 4 + 6 ;forceSay(v290.spellCast);end end end end break;end if (v188==0) then if  not trapIcon.title:isOn() then return;end if isInPz() then return;end v188=1 + 0 ;end end end);onTalk(function(v190,v191,v192,v193,v194,v195) local v196=533 -(43 + 490) ;while true do if (0==v196) then v193=v193:lower();if (v190~=player:getName()) then return;end v196=734 -(711 + 22) ;end if (1==v196) then for v291,v292 in ipairs(storageProfilesTraps.trapspells) do if (v193==v292.orangeSpell) then if v292.enableLifes then v292.activeCooldown=(now + (v292.cooldownActive * (3868 -2868))) -(1109 -(240 + 619)) ;v292.totalCooldown=(now + (v292.cooldownTotal * (242 + 758))) -(397 -147) ;v292.lifes=v292.amountLifes;end if (v292.enableRevive and  not v292.alreadyChecked) then local v351=0;while true do if (v351==0) then v292.totalCooldown=(now + (v292.cooldownTotal * (67 + 933))) -(1994 -(1344 + 400)) ;v292.activeCooldown=(now + (v292.cooldownActive * 1000)) -(655 -(255 + 150)) ;v351=1 + 0 ;end if (1==v351) then v292.alreadyChecked=true;break;end end end if v292.enableMultiple then if (v292.count>(0 + 0)) then v292.count=v292.count-(4 -3) ;v292.activeCooldown=(now + (v292.cooldownActive * (3229 -2229))) -(1989 -(404 + 1335)) ;if (v292.count==0) then v292.totalCooldown=(now + (v292.cooldownTotal * (1406 -(183 + 223)))) -250 ;v292.canReset=true;break;end end end if  not (v292.enableLifes or v292.enableRevive or v292.enableMultiple) then v292.activeCooldown=(now + (v292.cooldownActive * (1216 -216))) -(166 + 84) ;v292.totalCooldown=(now + (v292.cooldownTotal * 1000)) -(90 + 160) ;warn(v193);break;end end end break;end end end);end traps();UI.Separator();Panels.HealthItem();Panels.HealthItem();UI.Separator();Panels.ManaItem();Panels.ManaItem();UI.Separator();local v25=macro(537 -(10 + 327) ,v7("\201\35\229\73\111\126\209\227\48\238\28\64\59\251","\166\130\66\135\60\27\17"),function() local v86=0 + 0 ;local v87;local v88;local v89;local v90;local v91;local v92;while true do if (v86==(342 -(118 + 220))) then g_game.useInventoryItemWith(v92,v91:getTopUseThing());break;end if (v86==0) then v87=g_game.getLocalPlayer();v88=v87:getPosition();v86=1 + 0 ;end if (v86==(452 -(108 + 341))) then if  not v91 then return;end v92=10675;v86=4;end if (v86==(1 + 1)) then if (v89==(0 -0)) then v90.y=v90.y-(1494 -(711 + 782)) ;elseif (v89==(1 -0)) then v90.x=v90.x + (470 -(270 + 199)) ;elseif (v89==2) then v90.y=v90.y + 1 + 0 ;elseif (v89==3) then v90.x=v90.x-1 ;end v91=g_map.getTile(v90);v86=1822 -(580 + 1239) ;end if (v86==(2 -1)) then v89=v87:getDirection();v90={x=v88.x,y=v88.y,z=v88.z};v86=2 + 0 ;end end end);function ativarquebrarTrap() v25.setOn();end function desativarquebrarTrap() v25.setOff();end g_keyboard.bindKeyDown("*",ativarquebrarTrap);g_keyboard.bindKeyUp("*",desativarquebrarTrap);
