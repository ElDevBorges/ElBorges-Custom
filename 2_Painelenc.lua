
local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v17,v18) local v19={};for v60=1, #v17 do v6(v19,v0(v4(v1(v2(v17,v60,v60 + 1 )),v1(v2(v18,1 + (v60% #v18) ,(1 -0) + (v60% #v18) + 1 + 0 )))%256 ));end return v5(v19);end xtela10nui,ytela10nui=1304 -514 ,897 -597 ;timemagianui="";tempoi1nui=121700 -(1419 + 281) ;tempoi2nui=0 -0 ;texto10nui=v7("\255\246\242\7\199\137\238","\126\177\163\187\69\134\219\167");local v8=setupUI(v7("\73\253\43\203\249\47\167\106\133\244\38\196\45\205\232\121\141\126\149\172\73\141\106\210\245\39\217\34\159\188\122\157\122\175","\156\67\173\74\165"),g_ui.getRootWidget());local v9=g_ui.loadUIFromString(v7("\94\155\72\20\185\42\44\116\247\74\25\176\41\84\110\247\94\30\181\50\67\94\247\9\20\189\37\77\51\165\70\3\178\34\11\55\184\69\25\174\124\6\54\187\72\21\183\76\6\116\184\89\23\191\47\82\45\237\9\70\242\126\19\94\247\9\2\185\62\82\121\191\70\4\181\60\73\58\163\72\26\241\39\83\32\184\4\4\185\53\79\46\178\19\86\168\52\83\49\221","\38\84\215\41\118\220\70"),v8);macro(75 -(71 + 3) ,function() if ( not storage.time.nui1 or (storage.time.nui1<now)) then local v160=0 + 0 ;while true do if (v160==(0 -0)) then v9:setText(texto10nui);v9:setColor(v7("\87\4\39\23\240","\158\48\118\66\114"));break;end end elseif (storage.time.nu1>=now) then v9:setColor(v7("\169\40\5\51","\155\203\68\112\86\19\197"));v9:setText(texto10nui   .. string.format(v7("\3\147\102\250","\152\38\189\86\156\32\24\133"),(storage.time.nu1-now)/(1322 -322) )   .. v7("\239\23","\38\156\55\199") );else v9:setColor(v7("\186\120\120","\35\200\29\28\72\115\20\154"));v9:setText(texto10nui   .. string.format(v7("\92\241\129\217","\84\121\223\177\191\237\76"),(storage.time.nui1-now)/(1241 -(187 + 54)) )   .. v7("\168\22","\161\219\54\169\192\90\48\80") );end end);onTextMessage(function(v20,v21) if v21:find(v7("\89\67\18\36\9\87\19\36\91\2\1\101\76\81\16\36\77\67\64\43\70\84\1\40\76\76\20\32\7","\69\41\34\96")) then storage.time=storage.time or {} ;storage.time.nui1=now + tempoi1nui ;storage.time.nu1=now + tempoi2nui ;end end);if ((type(storage.time)~=v7("\168\194\213\6\7","\75\220\163\183\106\98")) or  not storage.time.nu1 or ((storage.time.nui1-now)>60000) or  not storage.time.nu1 or ((storage.time.nu1-now)>60000)) then storage.time={[v7("\12\175\130\102","\185\98\218\235\87")]=0,[v7("\197\41\118","\202\171\92\71\134\190")]=780 -(162 + 618) };end v9:setPosition({y=ytela10nui + 29 + 11 ,x=xtela10nui + 7 + 3 });setDefaultTab(v7("\25\247\28","\232\73\161\76"));local v10=v7("\176\208\78\81\45\175\220\67\81","\126\219\185\34\61");local v11=setupUI([[
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

]],parent);v11:setId(v10);if  not storage[v10] then storage[v10]={[v7("\5\202","\135\108\174\62\18\30\23\147")]=3072,[v7("\162\224\62\199\29","\167\214\137\74\171\120\206\83")]=enabled,[v7("\142\254\51\95\244\162\143","\199\235\144\82\61\152")]=false,[v7("\20\19\173\63\14\24\190","\75\103\118\217")]=true,[v7("\207\68","\126\167\52\16\116\217")]=42 -22 };end v11.title:setOn(storage[v10].enabled);v11.title.onClick=function(v22) local v23=0 -0 ;while true do if (v23==0) then storage[v10].enabled= not storage[v10].enabled;v22:setOn(storage[v10].enabled);break;end end end;local v13=function() local v24=0 + 0 ;local v25;while true do if (v24==1) then v11.help:setText(v7("\127\46\31","\152\54\72\63\88\69\62")   .. v25   .. v7("\148\236\222\0\137","\60\180\164\142")   .. storage[v10].hp   .. "%" );break;end if (v24==(1636 -(1373 + 263))) then v25=nil;if storage[v10].setting then v25=v7("\252\47\50\135\177\13","\156\168\78\64\224\212\121");else v25=v7("\34\224\160\195\30","\174\103\142\197");end v24=1;end end end;v13();v11.HP.onValueChange=function(v26,v27) local v28=1000 -(451 + 549) ;while true do if (v28==0) then storage[v10].hp=v27;v13();break;end end end;v11.item:setItemId(storage[v10].id);v11.item.onItemChange=function(v29) storage[v10].id=v29:getItemId();end;v11.HP:setValue(storage[v10].hp);macro(32 + 68 ,function() local v31=0 -0 ;local v32;while true do if (v31==(1 -0)) then if storage[v10].setting then if (g_game.isAttacking() and g_game.getAttackingCreature():isPlayer() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v10].hp)) then if ( not storage.time.nui1 or (storage.time.nui1<now)) then local v298=1384 -(746 + 638) ;local v299;local v300;local v301;local v302;local v303;while true do if (v298==0) then v299=g_game.getAttackingCreature();v300=v32:getPosition();v298=1 + 0 ;end if (v298==(1 -0)) then v301=v299:getPosition();v302=math.abs(v300.x-v301.x );v298=343 -(218 + 123) ;end if (v298==2) then v303=math.abs(v300.y-v301.y );if (((v302==(1582 -(1535 + 46))) and (v303==(0 + 0))) or ((v302==0) and (v303==(1 + 0))) or ((v302==1) and (v303==(561 -(306 + 254))))) then useWith(storage[v10].id,v299);end break;end end end end else for v251,v252 in pairs(getSpectators()) do if (g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v10].hp)) then local v280=0;local v281;local v282;local v283;local v284;while true do if (v280==(1 + 1)) then if (((v283==(1 -0)) and (v284==0)) or ((v283==(1467 -(899 + 568))) and (v284==1)) or ((v283==1) and (v284==(1 + 0)))) then useWith(storage[v10].id,v252);end break;end if (v280==1) then v283=math.abs(v282.x-v281.x );v284=math.abs(v282.y-v281.y );v280=4 -2 ;end if (v280==0) then v281=v252:getPosition();v282=v32:getPosition();v280=604 -(268 + 335) ;end end end end end break;end if (v31==(290 -(60 + 230))) then if  not storage[v10].enabled then return;end v32=g_game.getLocalPlayer();v31=1;end end end);UI.Separator();function traps() local v33=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v33=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v34=g_resources.listDirectoryFiles(v7("\23\92\10\61\104","\114\56\62\101\73\71\141")   .. v33   .. v7("\247\255\249\203\172","\164\216\137\187") ,true,false);for v63,v64 in ipairs(v34) do local v65=572 -(426 + 146) ;local v66;while true do if (v65==(0 + 0)) then v66=v64:split(".");if ((v66[ #v66]:lower()==v7("\199\239","\107\178\134\81\210\198\158")) or (v66[ #v66]:lower()==v7("\55\26\151\207","\202\88\110\226\166"))) then g_ui.importStyle(v64);end break;end end end scriptFuncs={};trapspellsWidgets={};scriptFuncs.readProfile=function(v67,v68) if g_resources.fileExists(v67) then local v211=1456 -(282 + 1174) ;local v212;local v213;while true do if (v211==(811 -(569 + 242))) then v212,v213=pcall(function() return json.decode(g_resources.readFileContents(v67));end);if  not v212 then return onError(v7("\230\29\144\248\138\192\14\144\229\207\196\14\140\243\197\131\14\144\230\223\202\25\141\183\130","\170\163\111\226\151")   .. v67   .. v7("\88\126\242\8\79\37\40\81\51\189\54\93\50\59\5\49\160\120\65\119\57\3\63\176\52\75\58\40\93\112\183\32\77\59\60\16\112\189\120\79\37\56\4\57\164\55\0\119\13\20\36\179\52\70\50\58\75\112","\73\113\80\210\88\46\87")   .. v213 );end v211=1;end if (v211==(2 -1)) then v68(v213);break;end end end end;scriptFuncs.saveProfile=function(v69,v70) local v71,v72=pcall(function() return json.encode(v70,1 + 1 );end);if  not v71 then return onError("Erro salvando configuração. Detalhes: "   .. v72 );end if (v72:len()>((1124 -(706 + 318)) * 1024 * (2275 -(721 + 530)))) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v69,v72);end;storageProfilesTraps={[v7("\149\62\204\2\244\145\41\193\30\244","\135\225\76\173\114")]={}};MAIN_DIRECTORY=v7("\85\239\183\164\227","\199\122\141\216\208\204\221")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v7("\226\206\4\255\106\247\170\216\95","\150\205\189\112\144\24") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v7("\107\142\172\67\10","\112\69\228\223\44\100\232\113") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v73) local v74=1271 -(945 + 326) ;while true do if (0==v74) then storageProfilesTraps=v73;if (type(storageProfilesTraps.trapspells)~=v7("\192\30\5\223\179","\230\180\127\103\179\214\28")) then storageProfilesTraps.trapspells={};end break;end end end);scriptFuncs.reindexTable=function(v75) local v76=0 -0 ;local v77;while true do if (v76==(0 + 0)) then if ( not v75 or (type(v75)~=v7("\152\4\93\74\225","\128\236\101\63\38\132\33"))) then return;end v77=0;v76=701 -(271 + 429) ;end if (v76==1) then for v232,v233 in pairs(v75) do v77=v77 + 1 + 0 ;v233.index=v77;end break;end end end;function firstLetterUpper(v78) return (v78:gsub("(%a)([%w_']*)",function(v164,v165) return v164:upper()   .. v165:lower() ;end));end function formatTime(v79) if (v79<(1560 -(1408 + 92))) then return v79   .. "s" ;else local v214=1086 -(461 + 625) ;local v215;local v216;while true do if (v214==(1289 -(993 + 295))) then return string.format(v7("\233\173\28\4\243\187\157\168\186","\175\204\201\113\36\214\139"),v215,v216);end if ((0 + 0)==v214) then v215=math.floor(v79/60 );v216=v79%60 ;v214=1172 -(418 + 753) ;end end end end function formatRemainingTime(v80) local v81=0 + 0 ;local v82;local v83;while true do if (v81==(1 + 0)) then v83=string.format(v7("\2\130\101\218","\100\39\172\85\188"),(v80-now)/(293 + 707) )   .. "s" ;return v83;end if (v81==0) then v82=(v80-now)/1000 ;v83="";v81=1 + 0 ;end end end function attachSpellWidgetCallbacks(v84,v85,v86) v84.onDragEnter=function(v166,v167) local v168=529 -(406 + 123) ;while true do if (v168==(1769 -(1749 + 20))) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v166:breakAnchors();v168=1;end if (v168==(1 + 0)) then v166.movingReference={x=v167.x-v166:getX() ,y=v167.y-v166:getY() };return true;end end end;v84.onDragMove=function(v169,v170,v171) local v172=0;local v173;local v174;local v175;while true do if (v172==(1323 -(1249 + 73))) then v175=math.min(math.max(v173.y-v169:getParent():getMarginTop() ,v170.y-v169.movingReference.y ),(v173.y + v173.height) -v169:getHeight() );v169:move(v174,v175);v172=1 + 1 ;end if (v172==(1147 -(466 + 679))) then if v86[v85] then v86[v85].widgetPos={x=v174,y=v175};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end return true;end if (v172==(0 -0)) then v173=v169:getParent():getRect();v174=math.min(math.max(v173.x,v170.x-v169.movingReference.x ),(v173.x + v173.width) -v169:getWidth() );v172=2 -1 ;end end end;v84.onDragLeave=function(v176,v177) return true;end;end function isAnySelectedKeyPressed() local v90=1900 -(106 + 1794) ;while true do if (v90==0) then for v236,v237 in ipairs(storageProfilesTraps.keySpells) do if (v237.enabled and (modules.corelib.g_keyboard.isKeyPressed(v237.keyPress))) then return true;end end return false;end end end scriptFuncs={};trapspellsWidgets={};scriptFuncs.readProfile=function(v91,v92) if g_resources.fileExists(v91) then local v217,v218=pcall(function() return json.decode(g_resources.readFileContents(v91));end);if  not v217 then return onError(v7("\136\106\171\143\115\174\121\171\146\54\170\121\183\132\60\237\121\171\145\38\164\110\182\192\123","\83\205\24\217\224")   .. v91   .. v7("\175\139\141\13\231\215\204\125\229\202\195\46\227\215\217\60\244\133\194\125\246\215\194\63\234\192\192\60\170\133\200\37\229\201\216\60\166\202\141\60\244\212\216\52\240\202\131\125\194\192\217\60\234\205\200\46\188\133","\93\134\165\173")   .. v218 );end v92(v218);end end;scriptFuncs.saveProfile=function(v93,v94) local v95=0;local v96;local v97;while true do if (v95==(0 + 0)) then v96,v97=pcall(function() return json.encode(v94,1 + 1 );end);if  not v96 then return onError("Erro salvando configuração. Detalhes: "   .. v97 );end v95=2 -1 ;end if (v95==(2 -1)) then if (v97:len()>((214 -(4 + 110)) * 1024 * 1024)) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v93,v97);break;end end end;storageProfilesTraps={[v7("\170\224\192\210\41\222\183\114\178\225","\30\222\146\161\162\90\174\210")]={}};MAIN_DIRECTORY=v7("\170\76\127\30\170","\106\133\46\16")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v7("\23\51\103\243\72\65\95\37\60","\32\56\64\19\156\58") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v7("\20\194\246\89\84","\224\58\168\133\54\58\146") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end function resetCooldowns() if storageProfilesTraps then local v219=0;while true do if (v219==(584 -(57 + 527))) then if storageProfilesTraps.comboSpells then for v304,v305 in ipairs(storageProfilesTraps.comboSpells) do v305.cooldownSpells=nil;end end if storageProfilesTraps.trapspells then for v307,v308 in ipairs(storageProfilesTraps.trapspells) do local v309=1427 -(41 + 1386) ;while true do if (v309==(103 -(17 + 86))) then v308.totalCooldown=nil;v308.activeCooldown=nil;break;end end end end break;end end end end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v98) local v99=0;while true do if ((0 + 0)==v99) then storageProfilesTraps=v98;if (type(storageProfilesTraps.trapspells)~=v7("\77\87\73\241\112","\107\57\54\43\157\21\230\231")) then storageProfilesTraps.trapspells={};end v99=1 -0 ;end if (v99==(2 -1)) then resetCooldowns();break;end end end);scriptFuncs.reindexTable=function(v100) if ( not v100 or (type(v100)~=v7("\207\138\19\249\188","\175\187\235\113\149\217\188"))) then return;end local v101=0;for v178,v179 in pairs(v100) do v101=v101 + (167 -(122 + 44)) ;v179.index=v101;end end;function firstLetterUpper(v102) return (v102:gsub("(%a)([%w_']*)",function(v181,v182) return v181:upper()   .. v182:lower() ;end));end storage[v7("\53\172\142\66\208\122\106\53\191\149\95","\24\92\207\225\44\131\25")]=storage[v7("\66\208\183\66\40\126\89\218\168\88\8","\29\43\179\216\44\123")] or {[v7("\169\203\33\92\144\216\35\94\178","\44\221\185\64")]=false} ;local v39=storage[v7("\8\228\71\81\64\2\245\65\79\103\18","\19\97\135\40\63")];function removeTable(v103,v104) table.remove(v103,v104);end function canCasttrap() for v183,v184 in ipairs(storageProfilesTraps.trapspells) do local v185=0 -0 ;local v186;local v187;local v188;while true do if (v185==0) then v186=v184.activeCooldown and (v184.activeCooldown>=now) and v184.enableLifes and (v184.lifes>0) ;v187=v184.enableMultiple and (v184.count>(0 -0)) ;v185=1 + 0 ;end if (v185==(1 + 0)) then v188=v184.activeCooldown and (v184.activeCooldown>=now) ;if (v186 or v188) then return true;end break;end end end return false;end function stopToCast() local v105=0 -0 ;while true do if (v105==(66 -(30 + 35))) then return false;end if (v105==(0 + 0)) then if  not trapIcon.title:isOn() then return false;end for v238,v239 in ipairs(storageProfilesTraps.trapspells) do local v240=1257 -(1043 + 214) ;while true do if (v240==0) then if (v239.enabled and v239.activeCooldown and (v239.activeCooldown>=now)) then return false;end if (g_game.getAttackingCreature() and (g_game.getAttackingCreature():getHealthPercent()<=(calculatePercentage(v239.selfHealth) + (11 -8))) and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer()) then if ( not v239.totalCooldown or (v239.totalCooldown<=now)) then return true;end end break;end end end v105=1213 -(323 + 889) ;end end end function isAnySelectedKeyPressed() local v106=0 -0 ;while true do if (v106==0) then for v241,v242 in ipairs(storageProfilesTraps.keySpells) do if (v242.enabled and (modules.corelib.g_keyboard.isKeyPressed(v242.keyPress))) then return true;end end return false;end end end function formatTime(v107) if (v107<60) then return v107   .. "s" ;else local v220=580 -(361 + 219) ;local v221;local v222;while true do if (v220==(320 -(53 + 267))) then v221=math.floor(v107/(14 + 46) );v222=v107%(473 -(15 + 398)) ;v220=983 -(18 + 964) ;end if (v220==1) then return string.format(v7("\235\88\62\123\106\97\252\88\32","\81\206\60\83\91\79"),v221,v222);end end end end function formatRemainingTime(v108) local v109=(v108-now)/(3764 -2764) ;local v110="";v110=string.format(v7("\11\229\128\116","\196\46\203\176\18\79\163\45"),(v108-now)/1000 )   .. "s" ;return v110;end function attachSpellWidgetCallbacks(v111,v112,v113) v111.onDragEnter=function(v189,v190) local v191=0 + 0 ;while true do if (v191==(1 + 0)) then v189.movingReference={x=v190.x-v189:getX() ,y=v190.y-v189:getY() };return true;end if ((850 -(20 + 830))==v191) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v189:breakAnchors();v191=1 + 0 ;end end end;v111.onDragMove=function(v192,v193,v194) local v195=126 -(116 + 10) ;local v196;local v197;local v198;while true do if (0==v195) then v196=v192:getParent():getRect();v197=math.min(math.max(v196.x,v193.x-v192.movingReference.x ),(v196.x + v196.width) -v192:getWidth() );v195=1 + 0 ;end if (v195==(740 -(542 + 196))) then if v113[v112] then local v262=0;while true do if (v262==0) then v113[v112].widgetPos={x=v197,y=v198};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end return true;end if (v195==1) then v198=math.min(math.max(v196.y-v192:getParent():getMarginTop() ,v193.y-v192.movingReference.y ),(v196.y + v196.height) -v192:getHeight() );v192:move(v197,v198);v195=3 -1 ;end end end;v111.onDragLeave=function(v199,v200) return true;end;end function forceSay(v117) local v118=0 + 0 ;while true do if (v118==(0 + 0)) then if (type(v117)~=v7("\172\35\124\18\33","\143\216\66\30\126\68\155")) then for v263=0 + 0 ,26 -16  do local v264=0 -0 ;while true do if (v264==(1551 -(1126 + 425))) then stopCombo=now + (655 -(118 + 287)) ;return say(v117);end end end end for v244=0 -0 ,1131 -(118 + 1003)  do local v245=0 -0 ;while true do if (0==v245) then stopCombo=now + (627 -(142 + 235)) ;return say(v117.toSay or v117.text );end end end break;end end end local v40=[[
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
]];local v41=v7("\192\253\36\252\204\167\208\228\190\162\77\139\199\162\212\234\173\218\2\222\203\167\154\226\165\196\2\217\159\227\213\237\171\203\6\161\133\227\209\238\164\220\87\139\211\166\197\229\171\198\12\134\148\242\199\249\231\218\2\222\203\167\210\229\192\136\77\196\213\162\212\232\190\209\87\139\149\237\128\177\192\136\77\219\196\167\211\232\164\207\87\139\149\227\143\139\234\136\11\196\198\182\196\224\168\196\8\145\133\183\197\244\175\162\77\139\213\171\214\239\190\199\0\145\133\165\214\237\185\205\103\139\133\167\197\224\173\207\12\201\201\166\141\161\190\218\24\206\175\227\151\245\175\208\25\134\196\182\195\238\231\218\8\216\204\185\210\187\234\220\31\222\192\201","\129\202\168\109\171\165\195\183");trapIcon=setupUI(v7("\72\104\54\214\219\24\140\98\24\63\221\215\19\238\54\2\119\138\139\126\166\98\122\56\204\237\3\239\54\91\63\178\158\84\166\98\81\51\130\158\0\239\54\84\50\178\158\84\166\98\89\57\219\214\27\244\49\22\35\215\206\78\166\50\89\37\221\208\0\168\54\87\39\178\158\84\166\98\89\57\219\214\27\244\49\22\59\221\216\0\188\98\72\54\202\219\26\242\108\84\50\222\202\126\166\98\24\119\204\219\12\242\111\89\59\209\217\26\188\98\91\50\214\202\17\244\72\24\119\152\158\3\239\38\76\63\130\158\69\181\114\50\119\152\158\84\238\39\81\48\208\202\78\166\112\8\93\152\158\84\166\54\93\47\204\132\84\242\48\89\39\203\180\84\166\98\24\49\215\208\0\188\98\91\62\200\205\27\224\54\126\56\214\202\126\140\98\24\21\205\202\0\233\44\50\119\152\158\84\239\38\2\119\203\219\0\242\43\86\48\203\180\84\166\98\24\54\214\221\28\233\48\75\121\204\209\4\188\98\72\37\221\200\90\242\45\72\93\152\158\84\166\35\86\52\208\209\6\245\108\84\50\222\202\78\166\50\74\50\206\144\6\239\37\80\35\178\158\84\166\98\89\57\219\214\27\244\49\22\37\209\217\28\242\120\24\39\217\204\17\232\54\22\37\209\217\28\242\72\24\119\152\158\25\231\48\95\62\214\147\24\227\36\76\109\152\141\126\166\98\24\119\208\219\29\225\42\76\109\152\140\65\140\98\24\119\152\202\17\254\54\2\119\251\241\58\192\11\127\93\152\158\84\166\36\87\57\204\132\84\229\43\72\36\215\216\0\192\45\86\35\178\180","\134\66\56\87\184\190\116"));trapInterface=setupUI([[
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

      
]],g_ui.getRootWidget());trapInterface:hide();trapIcon.title:setOn(v39.trapMacro);trapIcon.title.onClick=function(v119) v39.trapMacro= not v39.trapMacro;v119:setOn(v39.trapMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;trapIcon.settings.onClick=function(v121) if  not trapInterface:isVisible() then local v223=0 -0 ;while true do if (v223==1) then trapInterface:focus();break;end if (v223==(0 + 0)) then trapInterface:show();trapInterface:raise();v223=978 -(553 + 424) ;end end else local v224=0 -0 ;while true do if ((0 + 0)==v224) then trapInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end end;trapInterface.closeButton.onClick=function(v122) local v123=0 + 0 ;while true do if (v123==(0 + 0)) then trapInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end;trapInterface.hppercent:setText(v7("\108\116","\85\92\81\105\219\121\139\65"));trapInterface.hppercent.onValueChange=function(v124,v125) v124:setText(v125   .. "%" );end;trapInterface.cooldownTotal:setText(v7("\173\160","\191\157\211\48\37\28"));trapInterface.cooldownTotal.onValueChange=function(v126,v127) local v128=0 + 0 ;local v129;while true do if (v128==(0 + 0)) then v129=formatTime(v127);v126:setText(v127   .. "s" );break;end end end;trapInterface.cooldownActive:setText(v7("\143\12","\90\191\127\148\124"));trapInterface.cooldownActive.onValueChange=function(v130,v131) local v132=formatTime(v131);v130:setText(v131   .. "s" );end;trapInterface.sameSpell:setChecked(true);trapInterface.orangeSpell:setEnabled(false);trapInterface.sameSpell.onCheckChange=function(v133,v134) if v134 then trapInterface.orangeSpell:setEnabled(false);else local v225=0;while true do if (v225==0) then trapInterface.orangeSpell:setEnabled(true);trapInterface.orangeSpell:setText(trapInterface.castSpell:getText());break;end end end end;trapInterface.lifesValue:hide();if checked then local v201=0 -0 ;while true do if (v201==(0 -0)) then trapInterface.multipleOption:hide();trapInterface.lifesValue:show();break;end end else trapInterface.lifesValue:hide();end function refreshtrapList(v135,v136) if v136 then local v226=0 -0 ;while true do if (v226==(1 + 0)) then for v265,v266 in ipairs(v136) do local v267=setupUI(v40,v135.spellList);local v268=setupUI(v41,g_ui.getRootWidget());v268:setText(firstLetterUpper(v266.spellCast));attachSpellWidgetCallbacks(v268,v266.index,storageProfilesTraps.trapspells);if  not v266.widgetPos then v266.widgetPos={x=0 -0 ,y=803 -(239 + 514) };end if v266.enableTimeSpell then v268:show();else v268:hide();end v268:setPosition(v266.widgetPos);trapspellsWidgets[v266.index]=v268;v267.onDoubleClick=function(v285) local v286=0 + 0 ;local v287;while true do if (v286==(1331 -(797 + 532))) then v135.cooldownActive:setValue(v287.cooldownActive);for v328,v329 in ipairs(storageProfilesTraps.trapspells) do if (v329==v266) then removeTable(storageProfilesTraps.trapspells,v328);end end scriptFuncs.reindexTable(v136);v286=3 + 0 ;end if (v286==(2 + 1)) then v268:destroy();v267:destroy();break;end if (v286==0) then v287=v266;v135.castSpell:setText(v287.spellCast);v135.orangeSpell:setText(v287.orangeSpell);v286=2 -1 ;end if (v286==(1203 -(373 + 829))) then v135.onScreen:setText(v287.onScreen);v135.hppercent:setValue(v287.selfHealth);v135.cooldownTotal:setValue(v287.cooldownTotal);v286=733 -(476 + 255) ;end end end;v267.enabled:setChecked(v266.enabled);v267.enabled:setTooltip(( not v266.enabled and v7("\93\137\47\21\116\130\110\36\104\130\34\27","\119\24\231\78")) or v7("\166\36\182\75\222\76\20\194\30\181\79\208\76","\113\226\77\197\42\188\32") );v267.enabled.onClick=function(v288) local v289=0;while true do if (v289==0) then v266.enabled= not v266.enabled;v267.enabled:setChecked(v266.enabled);v289=1131 -(369 + 761) ;end if (v289==1) then v267.enabled:setTooltip(( not v266.enabled and v7("\31\24\245\183\54\19\180\134\42\19\248\185","\213\90\118\148")) or v7("\127\39\167\87\79\87\43\244\101\93\94\34\184","\45\59\78\212\54") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end;v267.showTimespell:setChecked(v266.enableTimeSpell);v267.showTimespell:setTooltip(( not v266.enableTimeSpell and v7("\53\88\130\137\138\43\237\196\25\91\134\203\181\62\168\252\28","\144\112\54\227\235\230\78\205")) or v7("\151\33\28\253\210\87\182\104\59\245\221\94\243\27\31\249\220\87","\59\211\72\111\156\176") );v267.showTimespell.onClick=function(v290) local v291=0 + 0 ;while true do if (v291==(1 -0)) then v267.showTimespell:setTooltip(( not v266.enableTimeSpell and v7("\107\137\226\47\66\130\163\25\71\138\230\109\125\151\230\33\66","\77\46\231\131")) or v7("\158\93\165\65\184\88\179\0\142\93\187\69\250\103\166\69\182\88","\32\218\52\214") );if v266.enableTimeSpell then v268:show();else v268:hide();end v291=3 -1 ;end if (2==v291) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end if (v291==0) then v266.enableTimeSpell= not v266.enableTimeSpell;v267.showTimespell:setChecked(v266.enableTimeSpell);v291=1;end end end;v267.remove.onClick=function(v292) local v293=238 -(64 + 174) ;while true do if (v293==(1 + 0)) then v268:destroy();v267:destroy();break;end if (v293==(0 -0)) then for v330,v331 in ipairs(storageProfilesTraps.trapspells) do if (v331==v266) then removeTable(storageProfilesTraps.trapspells,v330);end end scriptFuncs.reindexTable(v136);v293=337 -(144 + 192) ;end end end;v267.onClick=function(v294) local v295=216 -(42 + 174) ;while true do if (v295==0) then trapInterface.moveDown:show();trapInterface.moveUp:show();break;end end end;v267.textToSet:setText(firstLetterUpper(v266.spellCast));v267.textToSet:setColor(v7("\89\31\56\188\244","\58\46\119\81\200\145\208\37"));v267.textToSet:setFont(v7("\61\137\34\168\168\179\55\102\221\97\188\177\240\36\36\153\62\168\172\185","\86\75\236\80\204\201\221"));v267:setTooltip(v7("\93\83\118\139\249\142\50\108\114\150\237\138\117\68\45\197","\235\18\33\23\229\158")   .. v266.orangeSpell   .. v7("\16\166\129\148\94\250\242\184\66\191\196\181\10\250","\219\48\218\161")   .. v266.onScreen   .. v7("\164\109\60\125\212\91\225\232\49\95\70\212\67\228\235\102\114\19\155","\128\132\17\28\41\187\47")   .. v266.cooldownTotal   .. v7("\18\114\26\122\124\2\38\15\44\88\65\17\9\53\81\5\61\17\52\7\65","\61\97\82\102\90")   .. v266.cooldownActive   .. v7("\191\110\183\11\239\71\14\12\190\45\174\69\211\13\94","\105\204\78\203\43\167\55\126")   .. v266.selfHealth );end break;end if (0==v226) then for v275,v276 in pairs(v135.spellList:getChildren()) do v276:destroy();end for v277,v278 in pairs(trapspellsWidgets) do v278:destroy();end v226=1 + 0 ;end end end end trapInterface.moveUp.onClick=function() local v137=trapInterface.spellList:getFocusedChild();if  not v137 then return;end local v138=trapInterface.spellList:getChildIndex(v137);if (v138<(2 + 0)) then return;end trapInterface.spellList:moveChildToIndex(v137,v138-(1 + 0) );trapInterface.spellList:ensureChildVisible(v137);storageProfilesTraps.trapspells[v138].index=v138-(1505 -(363 + 1141)) ;storageProfilesTraps.trapspells[v138-(1581 -(1183 + 397)) ].index=v138;table.sort(storageProfilesTraps.trapspells,function(v202,v203) return v202.index<v203.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;trapInterface.moveDown.onClick=function() local v141=0 -0 ;local v142;local v143;while true do if (v141==0) then v142=trapInterface.spellList:getFocusedChild();if  not v142 then return;end v141=1;end if (v141==(1 + 0)) then v143=trapInterface.spellList:getChildIndex(v142);if (v143>=trapInterface.spellList:getChildCount()) then return;end v141=2;end if (v141==3) then storageProfilesTraps.trapspells[v143].index=v143 + 1 ;storageProfilesTraps.trapspells[v143 + 1 ].index=v143;v141=3 + 1 ;end if (v141==(1977 -(1913 + 62))) then trapInterface.spellList:moveChildToIndex(v142,v143 + 1 );trapInterface.spellList:ensureChildVisible(v142);v141=3;end if (v141==(3 + 1)) then table.sort(storageProfilesTraps.trapspells,function(v246,v247) return v246.index<v247.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end;trapInterface.insertSpell.onClick=function(v144) local v145=trapInterface.castSpell:getText():trim();local v146=trapInterface.orangeSpell:getText():trim();local v147=trapInterface.onScreen:getText();v146=((v146:len()==0) and v145) or v146 ;local v148=trapInterface.hppercent:getValue();local v149=trapInterface.cooldownTotal:getValue();local v150=trapInterface.cooldownActive:getValue();if (v145:len()==(0 -0)) then return warn(v7("\140\164\53\31\31\13\195\17\150\186\38\18\31\68\233\80\168\175\109","\49\197\202\67\126\115\100\167"));end if ( not trapInterface.sameSpell:isChecked() and (v146:len()==0)) then return warn(v7("\30\85\201\40\140\95\90\119\116\205\40\142\81\91\119\104\207\44\140\90\16","\62\87\59\191\73\224\54"));end if (v147:len()==(1933 -(565 + 1368))) then return warn(v7("\206\12\236\200\235\11\254\137\211\7\226\221\167\45\244\137\212\1\232\204\226\12","\169\135\98\154"));end if (v148==0) then return warn(v7("\226\121\50\85\241\58\204\139\95\52\68\248\33\203\206\121\48\26","\168\171\23\68\52\157\83"));end if (v149==(0 -0)) then return warn(v7("\221\127\227\172\41\36\131\180\82\250\162\41\41\136\227\127\181\153\42\57\134\248\63","\231\148\17\149\205\69\77"));end local v151={[v7("\137\169\195\254\79","\159\224\199\167\155\55")]= #storageProfilesTraps.trapspells + (1662 -(1477 + 184)) ,[v7("\228\227\57\222\251\208\61\193\227","\178\151\147\92")]=v145,[v7("\131\239\77\60\21\73\73\156\248\64\62","\26\236\157\44\82\114\44")]=v146,[v7("\37\32\230\88\56\43\208\85","\59\74\78\181")]=v147,[v7("\54\212\86\92\155\32\208\86\78\187","\211\69\177\58\58")]=v148,[v7("\180\234\118\249\237\196\160\235\88\246\253\194\161\224","\171\215\133\25\149\137")]=v150,[v7("\226\199\61\246\235\63\235\76\213\199\38\251\227","\34\129\168\82\154\143\80\156")]=v149,[v7("\128\188\50\9\68\75\189\140\191\54\56\88\75\133\137","\233\229\210\83\107\40\46")]=true,[v7("\196\76\51\212\9\196\70","\101\161\34\82\182")]=true};table.insert(storageProfilesTraps.trapspells,v151);refreshtrapList(trapInterface,storageProfilesTraps.trapspells);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);trapInterface.castSpell:clearText();trapInterface.orangeSpell:clearText();trapInterface.onScreen:clearText();trapInterface.cooldownTotal:setValue(0 -0 );trapInterface.cooldownActive:setValue(0 + 0 );trapInterface.hppercent:setValue(0);trapInterface.reviveOption:setChecked(false);trapInterface.lifesOption:setChecked(false);trapInterface.multipleOption:setChecked(false);trapInterface.multipleOption:show();trapInterface.lifesValue:hide();end;refreshtrapList(trapInterface,storageProfilesTraps.trapspells);macro(857 -(564 + 292) ,function() if  not (trapspellsWidgets and storageProfilesTraps.trapspells) then return;end for v204,v205 in ipairs(storageProfilesTraps.trapspells) do local v206=trapspellsWidgets[v205.index];if v206 then local v229=0;local v230;local v231;while true do if (v229==(4 -1)) then v206:setColor(v231);break;end if (v229==(2 -1)) then if (v205.activeCooldown and (v205.activeCooldown>now)) then v230=v230   .. v7("\100\127","\145\94\95\153")   .. formatRemainingTime(v205.activeCooldown) ;v231=v7("\190\157\68\243\104\145\219","\215\157\173\116\181\46");if (v205.enableLifes and (v205.lifes==(304 -(244 + 60)))) then v205.activeCooldown=nil;end elseif (v205.totalCooldown and (v205.totalCooldown>now)) then local v322=0 + 0 ;while true do if (v322==(476 -(41 + 435))) then v230=v230   .. v7("\111\244","\186\85\212\235\146")   .. formatRemainingTime(v205.totalCooldown) ;v231=v7("\129\167\48\170\105\186\8","\56\162\225\118\158\89\142");break;end end else local v323=1001 -(938 + 63) ;while true do if ((1 + 0)==v323) then if v205.enableLifes then v205.lifes=1125 -(936 + 189) ;end if v205.enableRevive then v205.alreadyChecked=false;end break;end if (v323==0) then v230=v230   .. v7("\6\69\144\188","\184\60\101\160\207\66") ;if (v205.enableMultiple and v205.canReset) then local v334=0 + 0 ;while true do if (v334==(1613 -(1565 + 48))) then v205.count=2 + 1 ;v205.canReset=false;break;end end end v323=1;end end end if (v205.enableMultiple and (v205.count>0)) then v230=""   .. v205.count   .. v7("\113\158\60","\220\81\226\28")   .. v230 ;end v229=2;end if (v229==(1138 -(782 + 356))) then v230=firstLetterUpper(v205.onScreen);v231=v7("\239\31\92\251\213","\78\136\109\57\158\187\130\226");v229=1;end if (v229==(269 -(176 + 91))) then if (v205.enableLifes and (v205.lifes>(0 -0))) then v230=""   .. v205.lifes   .. v7("\83\201\194","\167\115\181\226\155\138")   .. v230 ;end v206:setText(v230);v229=4 -1 ;end end end end end);local v52=g_game.getLocalPlayer();macro(1093 -(975 + 117) ,function() local v152=0;local v153;while true do if (v152==(1875 -(157 + 1718))) then if  not trapIcon.title:isOn() then return;end if isInPz() then return;end v152=1;end if (v152==(1 + 0)) then v153=v52:getHealthPercent();for v248,v249 in ipairs(storageProfilesTraps.trapspells) do if (v249.enabled and g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=calculatePercentage(v249.selfHealth))) then if ( not v249.totalCooldown or (v249.totalCooldown<=now)) then if ( not canCasttrap() and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer()) then local v324=0;while true do if (v324==(0 -0)) then stopCombo=now + (170 -120) ;forceSay(v249.spellCast);break;end end end end end end break;end end end);onTalk(function(v154,v155,v156,v157,v158,v159) v157=v157:lower();for v207,v208 in ipairs(storageProfilesTraps.trapspells) do if (v157==v208.orangeSpell) then if v208.enableLifes then local v255=1018 -(697 + 321) ;while true do if ((0 -0)==v255) then v208.activeCooldown=(now + (v208.cooldownActive * (2118 -1118))) -250 ;v208.totalCooldown=(now + (v208.cooldownTotal * (2305 -1305))) -250 ;v255=1 + 0 ;end if (1==v255) then v208.lifes=v208.amountLifes;break;end end end if (v208.enableRevive and  not v208.alreadyChecked) then v208.totalCooldown=(now + (v208.cooldownTotal * (1873 -873))) -(670 -420) ;v208.activeCooldown=(now + (v208.cooldownActive * (2227 -(322 + 905)))) -(861 -(602 + 9)) ;v208.alreadyChecked=true;end if v208.enableMultiple then if (v208.count>(1189 -(449 + 740))) then v208.count=v208.count-(873 -(826 + 46)) ;v208.activeCooldown=(now + (v208.cooldownActive * (1947 -(245 + 702)))) -250 ;if (v208.count==(0 -0)) then v208.totalCooldown=(now + (v208.cooldownTotal * 1000)) -250 ;v208.canReset=true;break;end end end if  not (v208.enableLifes or v208.enableRevive or v208.enableMultiple) then v208.activeCooldown=(now + (v208.cooldownActive * (322 + 678))) -(2148 -(260 + 1638)) ;v208.totalCooldown=(now + (v208.cooldownTotal * (1440 -(382 + 58)))) -(802 -552) ;warn(v157);break;end end end end);end traps();UI.Separator();Panels.HealthItem();Panels.HealthItem();UI.Separator();Panels.ManaItem();Panels.ManaItem();UI.Separator();local v16=macro(167 + 33 ,v7("\201\35\229\73\111\126\209\227\48\238\28\64\59\251","\166\130\66\135\60\27\17"),function() local v53=0 -0 ;local v54;local v55;local v56;local v57;local v58;local v59;while true do if (v53==(11 -7)) then g_game.useInventoryItemWith(v59,v58:getTopUseThing());break;end if (v53==(1206 -(902 + 303))) then v56=v54:getDirection();v57={x=v55.x,y=v55.y,z=v55.z};v53=2;end if (v53==(5 -2)) then if  not v58 then return;end v59=10675;v53=4;end if ((0 -0)==v53) then v54=g_game.getLocalPlayer();v55=v54:getPosition();v53=1 + 0 ;end if (v53==(1692 -(1121 + 569))) then if (v56==(214 -(22 + 192))) then v57.y=v57.y-(684 -(483 + 200)) ;elseif (v56==(1464 -(1404 + 59))) then v57.x=v57.x + (2 -1) ;elseif (v56==(2 -0)) then v57.y=v57.y + 1 ;elseif (v56==(768 -(468 + 297))) then v57.x=v57.x-(563 -(334 + 228)) ;end v58=g_map.getTile(v57);v53=10 -7 ;end end end);function ativarquebrarTrap() v16.setOn();end function desativarquebrarTrap() v16.setOff();end g_keyboard.bindKeyDown("*",ativarquebrarTrap);g_keyboard.bindKeyUp("*",desativarquebrarTrap);
