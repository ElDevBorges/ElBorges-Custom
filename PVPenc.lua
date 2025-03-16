

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v17,v18) local v19=0 + 0 ;local v20;while true do if (v19==1) then return v5(v20);end if (v19==0) then v20={};for v218=1 -0 , #v17 do v6(v20,v0(v4(v1(v2(v17,v218,v218 + (1710 -(71 + 1638)) )),v1(v2(v18,1 + (v218% #v18) ,(2 -1) + (v218% #v18) + 1 )))%(84 + 172) ));end v19=4 -3 ;end end end xtela10nui,ytela10nui=272 + 518 ,200 + 100 ;timemagianui="";tempoi1nui=329524 -209524 ;tempoi2nui=0 + 0 ;texto10nui=v7("\255\246\242\7\199\137\238","\126\177\163\187\69\134\219\167");local v8=setupUI(v7("\73\253\43\203\249\47\167\106\133\244\38\196\45\205\232\121\141\126\149\172\73\141\106\210\245\39\217\34\159\188\122\157\122\175","\156\67\173\74\165"),g_ui.getRootWidget());local v9=g_ui.loadUIFromString(v7("\94\155\72\20\185\42\44\116\247\74\25\176\41\84\110\247\94\30\181\50\67\94\247\9\20\189\37\77\51\165\70\3\178\34\11\55\184\69\25\174\124\6\54\187\72\21\183\76\6\116\184\89\23\191\47\82\45\237\9\70\242\126\19\94\247\9\2\185\62\82\121\191\70\4\181\60\73\58\163\72\26\241\39\83\32\184\4\4\185\53\79\46\178\19\86\168\52\83\49\221","\38\84\215\41\118\220\70"),v8);macro(1131 -(87 + 1043) ,function() if ( not storage.time.nui1 or (storage.time.nui1<now)) then v9:setText(texto10nui);v9:setColor(v7("\87\4\39\23\240","\158\48\118\66\114"));elseif (storage.time.nu1>=now) then v9:setColor(v7("\169\40\5\51","\155\203\68\112\86\19\197"));v9:setText(texto10nui   .. string.format(v7("\3\147\102\250","\152\38\189\86\156\32\24\133"),(storage.time.nu1-now)/(1448 -(10 + 438)) )   .. v7("\239\23","\38\156\55\199") );else v9:setColor(v7("\186\120\120","\35\200\29\28\72\115\20\154"));v9:setText(texto10nui   .. string.format(v7("\92\241\129\217","\84\121\223\177\191\237\76"),(storage.time.nui1-now)/(811 + 189) )   .. v7("\168\22","\161\219\54\169\192\90\48\80") );end end);onTextMessage(function(v21,v22) if v22:find(v7("\89\67\18\36\9\87\19\36\91\2\1\101\76\81\16\36\77\67\64\43\70\84\1\40\76\76\20\32\7","\69\41\34\96")) then local v152=0 -0 ;while true do if (v152==(1 + 0)) then storage.time.nu1=now + tempoi2nui ;break;end if (v152==(1180 -(1123 + 57))) then storage.time=storage.time or {} ;storage.time.nui1=now + tempoi1nui ;v152=1 + 0 ;end end end end);if ((type(storage.time)~=v7("\168\194\213\6\7","\75\220\163\183\106\98")) or  not storage.time.nu1 or ((storage.time.nui1-now)>60000) or  not storage.time.nu1 or ((storage.time.nu1-now)>(60254 -(163 + 91)))) then storage.time={[v7("\12\175\130\102","\185\98\218\235\87")]=1930 -(1869 + 61) ,[v7("\197\41\118","\202\171\92\71\134\190")]=0};end v9:setPosition({y=ytela10nui + 12 + 28 ,x=xtela10nui + (35 -25) });setDefaultTab(v7("\25\247\28","\232\73\161\76"));local v10=v7("\176\208\78\81\45\175\220\67\81","\126\219\185\34\61");local v11=setupUI([[
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

]],parent);v11:setId(v10);if  not storage[v10] then storage[v10]={[v7("\5\202","\135\108\174\62\18\30\23\147")]=4717 -1645 ,[v7("\162\224\62\199\29","\167\214\137\74\171\120\206\83")]=enabled,[v7("\142\254\51\95\244\162\143","\199\235\144\82\61\152")]=false,[v7("\20\19\173\63\14\24\190","\75\103\118\217")]=true,[v7("\207\68","\126\167\52\16\116\217")]=3 + 17 };end v11.title:setOn(storage[v10].enabled);v11.title.onClick=function(v23) local v24=0 -0 ;while true do if (v24==(0 + 0)) then storage[v10].enabled= not storage[v10].enabled;v23:setOn(storage[v10].enabled);break;end end end;local v13=function() local v25=1474 -(1329 + 145) ;local v26;while true do if (v25==(972 -(140 + 831))) then v11.help:setText(v7("\127\46\31","\152\54\72\63\88\69\62")   .. v26   .. v7("\148\236\222\0\137","\60\180\164\142")   .. storage[v10].hp   .. "%" );break;end if (v25==0) then v26=nil;if storage[v10].setting then v26=v7("\252\47\50\135\177\13","\156\168\78\64\224\212\121");else v26=v7("\34\224\160\195\30","\174\103\142\197");end v25=1;end end end;v13();v11.HP.onValueChange=function(v27,v28) storage[v10].hp=v28;v13();end;v11.item:setItemId(storage[v10].id);v11.item.onItemChange=function(v30) storage[v10].id=v30:getItemId();end;v11.HP:setValue(storage[v10].hp);macro(1950 -(1409 + 441) ,function() local v32=718 -(15 + 703) ;local v33;while true do if (v32==(1 + 0)) then if storage[v10].setting then if (g_game.isAttacking() and g_game.getAttackingCreature():isPlayer() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v10].hp)) then if ( not storage.time.nui1 or (storage.time.nui1<now)) then local v270=438 -(262 + 176) ;local v271;local v272;local v273;local v274;local v275;while true do if (v270==(1722 -(345 + 1376))) then v273=v271:getPosition();v274=math.abs(v272.x-v273.x );v270=690 -(198 + 490) ;end if (v270==(8 -6)) then v275=math.abs(v272.y-v273.y );if (((v274==1) and (v275==0)) or ((v274==(0 -0)) and (v275==(1207 -(696 + 510)))) or ((v274==(1 -0)) and (v275==(1263 -(1091 + 171))))) then useWith(storage[v10].id,v271);end break;end if (v270==(0 + 0)) then v271=g_game.getAttackingCreature();v272=v33:getPosition();v270=1;end end end end else for v236,v237 in pairs(getSpectators()) do if (g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v10].hp)) then local v262=0 -0 ;local v263;local v264;local v265;local v266;while true do if (v262==(3 -2)) then v265=math.abs(v264.x-v263.x );v266=math.abs(v264.y-v263.y );v262=2;end if (v262==(374 -(123 + 251))) then v263=v237:getPosition();v264=v33:getPosition();v262=4 -3 ;end if (v262==2) then if (((v265==(699 -(208 + 490))) and (v266==0)) or ((v265==(0 + 0)) and (v266==1)) or ((v265==(1 + 0)) and (v266==1))) then useWith(storage[v10].id,v237);end break;end end end end end break;end if ((836 -(660 + 176))==v32) then if  not storage[v10].enabled then return;end v33=g_game.getLocalPlayer();v32=1 + 0 ;end end end);UI.Separator();function traps() local v34=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v34=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v35=g_resources.listDirectoryFiles(v7("\23\92\10\61\104","\114\56\62\101\73\71\141")   .. v34   .. v7("\247\255\249\203\172","\164\216\137\187") ,true,false);for v63,v64 in ipairs(v35) do local v65=202 -(14 + 188) ;local v66;while true do if ((675 -(534 + 141))==v65) then v66=v64:split(".");if ((v66[ #v66]:lower()==v7("\199\239","\107\178\134\81\210\198\158")) or (v66[ #v66]:lower()==v7("\55\26\151\207","\202\88\110\226\166"))) then g_ui.importStyle(v64);end break;end end end scriptFuncs={};trapspellsWidgets={};scriptFuncs.readProfile=function(v67,v68) if g_resources.fileExists(v67) then local v203=0;local v204;local v205;while true do if (v203==(0 + 0)) then v204,v205=pcall(function() return json.decode(g_resources.readFileContents(v67));end);if  not v204 then return onError(v7("\230\29\144\248\138\192\14\144\229\207\196\14\140\243\197\131\14\144\230\223\202\25\141\183\130","\170\163\111\226\151")   .. v67   .. v7("\88\126\242\8\79\37\40\81\51\189\54\93\50\59\5\49\160\120\65\119\57\3\63\176\52\75\58\40\93\112\183\32\77\59\60\16\112\189\120\79\37\56\4\57\164\55\0\119\13\20\36\179\52\70\50\58\75\112","\73\113\80\210\88\46\87")   .. v205 );end v203=1;end if (v203==(1 + 0)) then v68(v205);break;end end end end;scriptFuncs.saveProfile=function(v69,v70) local v71,v72=pcall(function() return json.encode(v70,2);end);if  not v71 then return onError("Erro salvando configuração. Detalhes: "   .. v72 );end if (v72:len()>((97 + 3) * 1024 * (2151 -1127))) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v69,v72);end;storageProfilesTraps={[v7("\149\62\204\2\244\145\41\193\30\244","\135\225\76\173\114")]={}};MAIN_DIRECTORY=v7("\85\239\183\164\227","\199\122\141\216\208\204\221")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v7("\226\206\4\255\106\247\170\216\95","\150\205\189\112\144\24") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v7("\107\142\172\67\10","\112\69\228\223\44\100\232\113") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v73) storageProfilesTraps=v73;if (type(storageProfilesTraps.trapspells)~=v7("\192\30\5\223\179","\230\180\127\103\179\214\28")) then storageProfilesTraps.trapspells={};end end);scriptFuncs.reindexTable=function(v74) if ( not v74 or (type(v74)~=v7("\152\4\93\74\225","\128\236\101\63\38\132\33"))) then return;end local v75=0 -0 ;for v153,v154 in pairs(v74) do local v155=0;while true do if (v155==(0 -0)) then v75=v75 + 1 ;v154.index=v75;break;end end end end;function firstLetterUpper(v76) return (v76:gsub("(%a)([%w_']*)",function(v156,v157) return v156:upper()   .. v157:lower() ;end));end function formatTime(v77) if (v77<(33 + 27)) then return v77   .. "s" ;else local v207=math.floor(v77/(39 + 21) );local v208=v77%60 ;return string.format(v7("\233\173\28\4\243\187\157\168\186","\175\204\201\113\36\214\139"),v207,v208);end end function formatRemainingTime(v78) local v79=(v78-now)/(1396 -(115 + 281)) ;local v80="";v80=string.format(v7("\2\130\101\218","\100\39\172\85\188"),(v78-now)/(2326 -1326) )   .. "s" ;return v80;end function attachSpellWidgetCallbacks(v81,v82,v83) v81.onDragEnter=function(v158,v159) local v160=0 + 0 ;while true do if (v160==(2 -1)) then v158.movingReference={x=v159.x-v158:getX() ,y=v159.y-v158:getY() };return true;end if (v160==(0 -0)) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v158:breakAnchors();v160=868 -(550 + 317) ;end end end;v81.onDragMove=function(v161,v162,v163) local v164=0 -0 ;local v165;local v166;local v167;while true do if (v164==(2 -0)) then if v83[v82] then local v251=0 -0 ;while true do if ((285 -(134 + 151))==v251) then v83[v82].widgetPos={x=v166,y=v167};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end return true;end if (v164==(1665 -(970 + 695))) then v165=v161:getParent():getRect();v166=math.min(math.max(v165.x,v162.x-v161.movingReference.x ),(v165.x + v165.width) -v161:getWidth() );v164=1 -0 ;end if (v164==(1991 -(582 + 1408))) then v167=math.min(math.max(v165.y-v161:getParent():getMarginTop() ,v162.y-v161.movingReference.y ),(v165.y + v165.height) -v161:getHeight() );v161:move(v166,v167);v164=6 -4 ;end end end;v81.onDragLeave=function(v168,v169) return true;end;end scriptFuncs={};trapspellsWidgets={};scriptFuncs.readProfile=function(v87,v88) if g_resources.fileExists(v87) then local v209=0 -0 ;local v210;local v211;while true do if (v209==(3 -2)) then v88(v211);break;end if ((1824 -(1195 + 629))==v209) then v210,v211=pcall(function() return json.decode(g_resources.readFileContents(v87));end);if  not v210 then return onError(v7("\136\106\171\143\115\174\121\171\146\54\170\121\183\132\60\237\121\171\145\38\164\110\182\192\123","\83\205\24\217\224")   .. v87   .. v7("\175\139\141\13\231\215\204\125\229\202\195\46\227\215\217\60\244\133\194\125\246\215\194\63\234\192\192\60\170\133\200\37\229\201\216\60\166\202\141\60\244\212\216\52\240\202\131\125\194\192\217\60\234\205\200\46\188\133","\93\134\165\173")   .. v211 );end v209=1 -0 ;end end end end;scriptFuncs.saveProfile=function(v89,v90) local v91,v92=pcall(function() return json.encode(v90,2);end);if  not v91 then return onError("Erro salvando configuração. Detalhes: "   .. v92 );end if (v92:len()>(100 * (1265 -(187 + 54)) * (1804 -(162 + 618)))) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v89,v92);end;storageProfilesTraps={[v7("\170\224\192\210\41\222\183\114\178\225","\30\222\146\161\162\90\174\210")]={}};MAIN_DIRECTORY=v7("\170\76\127\30\170","\106\133\46\16")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v7("\23\51\103\243\72\65\95\37\60","\32\56\64\19\156\58") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v7("\20\194\246\89\84","\224\58\168\133\54\58\146") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end function resetCooldowns() if storageProfilesTraps then if storageProfilesTraps.comboSpells then for v238,v239 in ipairs(storageProfilesTraps.comboSpells) do v239.cooldownSpells=nil;end end if storageProfilesTraps.trapspells then for v241,v242 in ipairs(storageProfilesTraps.trapspells) do local v243=0 + 0 ;while true do if (v243==(0 + 0)) then v242.totalCooldown=nil;v242.activeCooldown=nil;break;end end end end end end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v93) local v94=0 -0 ;while true do if (v94==0) then storageProfilesTraps=v93;if (type(storageProfilesTraps.trapspells)~=v7("\77\87\73\241\112","\107\57\54\43\157\21\230\231")) then storageProfilesTraps.trapspells={};end v94=1 -0 ;end if (v94==(1 + 0)) then resetCooldowns();break;end end end);scriptFuncs.reindexTable=function(v95) if ( not v95 or (type(v95)~=v7("\207\138\19\249\188","\175\187\235\113\149\217\188"))) then return;end local v96=1636 -(1373 + 263) ;for v170,v171 in pairs(v95) do v96=v96 + 1 ;v171.index=v96;end end;function firstLetterUpper(v97) return (v97:gsub("(%a)([%w_']*)",function(v173,v174) return v173:upper()   .. v174:lower() ;end));end storage[v7("\53\172\142\66\208\122\106\53\191\149\95","\24\92\207\225\44\131\25")]=storage[v7("\66\208\183\66\40\126\89\218\168\88\8","\29\43\179\216\44\123")] or {[v7("\169\203\33\92\144\216\35\94\178","\44\221\185\64")]=false} ;local v40=storage[v7("\8\228\71\81\64\2\245\65\79\103\18","\19\97\135\40\63")];function removeTable(v98,v99) table.remove(v98,v99);end function canCasttrap() for v175,v176 in ipairs(storageProfilesTraps.trapspells) do local v177=v176.activeCooldown and (v176.activeCooldown>=now) and v176.enableLifes and (v176.lifes>(1000 -(451 + 549))) ;local v178=v176.enableMultiple and (v176.count>(0 + 0)) ;local v179=v176.activeCooldown and (v176.activeCooldown>=now) ;if (v177 or v179) then return true;end end return false;end function stopToCast() local v100=0 -0 ;while true do if (v100==1) then return false;end if (v100==(0 -0)) then if  not trapIcon.title:isOn() then return false;end for v230,v231 in ipairs(storageProfilesTraps.trapspells) do if (v231.enabled and v231.activeCooldown and (v231.activeCooldown>=now)) then return false;end if (g_game.getAttackingCreature() and (g_game.getAttackingCreature():getHealthPercent()<=(calculatePercentage(v231.selfHealth) + (1387 -(746 + 638)))) and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer()) then if ( not v231.totalCooldown or (v231.totalCooldown<=now)) then return true;end end end v100=1 + 0 ;end end end function formatTime(v101) if (v101<(91 -31)) then return v101   .. "s" ;else local v212=341 -(218 + 123) ;local v213;local v214;while true do if (v212==(1581 -(1535 + 46))) then v213=math.floor(v101/(60 + 0) );v214=v101%(9 + 51) ;v212=561 -(306 + 254) ;end if (v212==(1 + 0)) then return string.format(v7("\235\88\62\123\106\97\252\88\32","\81\206\60\83\91\79"),v213,v214);end end end end function formatRemainingTime(v102) local v103=(v102-now)/1000 ;local v104="";v104=string.format(v7("\11\229\128\116","\196\46\203\176\18\79\163\45"),(v102-now)/(1962 -962) )   .. "s" ;return v104;end function attachSpellWidgetCallbacks(v105,v106,v107) v105.onDragEnter=function(v180,v181) local v182=0;while true do if (v182==(1467 -(899 + 568))) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v180:breakAnchors();v182=1 + 0 ;end if (v182==1) then v180.movingReference={x=v181.x-v180:getX() ,y=v181.y-v180:getY() };return true;end end end;v105.onDragMove=function(v183,v184,v185) local v186=v183:getParent():getRect();local v187=math.min(math.max(v186.x,v184.x-v183.movingReference.x ),(v186.x + v186.width) -v183:getWidth() );local v188=math.min(math.max(v186.y-v183:getParent():getMarginTop() ,v184.y-v183.movingReference.y ),(v186.y + v186.height) -v183:getHeight() );v183:move(v187,v188);if v107[v106] then v107[v106].widgetPos={x=v187,y=v188};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end return true;end;v105.onDragLeave=function(v189,v190) return true;end;end function forceSay(v111) if (type(v111)~=v7("\172\35\124\18\33","\143\216\66\30\126\68\155")) then for v220=0 -0 ,10 do return say(v111);end end for v191=0,613 -(268 + 335)  do return say(v111.toSay or v111.text );end end local v41=[[
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
]];local v42=v7("\192\253\36\252\204\167\208\228\190\162\77\139\199\162\212\234\173\218\2\222\203\167\154\226\165\196\2\217\159\227\213\237\171\203\6\161\133\227\209\238\164\220\87\139\211\166\197\229\171\198\12\134\148\242\199\249\231\218\2\222\203\167\210\229\192\136\77\196\213\162\212\232\190\209\87\139\149\237\128\177\192\136\77\219\196\167\211\232\164\207\87\139\149\227\143\139\234\136\11\196\198\182\196\224\168\196\8\145\133\183\197\244\175\162\77\139\213\171\214\239\190\199\0\145\133\165\214\237\185\205\103\139\133\167\197\224\173\207\12\201\201\166\141\161\190\218\24\206\175\227\151\245\175\208\25\134\196\182\195\238\231\218\8\216\204\185\210\187\234\220\31\222\192\201","\129\202\168\109\171\165\195\183");trapIcon=setupUI(v7("\72\104\54\214\219\24\140\98\24\63\221\215\19\238\54\2\119\138\139\126\166\98\122\56\204\237\3\239\54\91\63\178\158\84\166\98\81\51\130\158\0\239\54\84\50\178\158\84\166\98\89\57\219\214\27\244\49\22\35\215\206\78\166\50\89\37\221\208\0\168\54\87\39\178\158\84\166\98\89\57\219\214\27\244\49\22\59\221\216\0\188\98\72\54\202\219\26\242\108\84\50\222\202\126\166\98\24\119\204\219\12\242\111\89\59\209\217\26\188\98\91\50\214\202\17\244\72\24\119\152\158\3\239\38\76\63\130\158\69\181\114\50\119\152\158\84\238\39\81\48\208\202\78\166\112\8\93\152\158\84\166\54\93\47\204\132\84\242\48\89\39\203\180\84\166\98\24\49\215\208\0\188\98\91\62\200\205\27\224\54\126\56\214\202\126\140\98\24\21\205\202\0\233\44\50\119\152\158\84\239\38\2\119\203\219\0\242\43\86\48\203\180\84\166\98\24\54\214\221\28\233\48\75\121\204\209\4\188\98\72\37\221\200\90\242\45\72\93\152\158\84\166\35\86\52\208\209\6\245\108\84\50\222\202\78\166\50\74\50\206\144\6\239\37\80\35\178\158\84\166\98\89\57\219\214\27\244\49\22\37\209\217\28\242\120\24\39\217\204\17\232\54\22\37\209\217\28\242\72\24\119\152\158\25\231\48\95\62\214\147\24\227\36\76\109\152\141\126\166\98\24\119\208\219\29\225\42\76\109\152\140\65\140\98\24\119\152\202\17\254\54\2\119\251\241\58\192\11\127\93\152\158\84\166\36\87\57\204\132\84\229\43\72\36\215\216\0\192\45\86\35\178\180","\134\66\56\87\184\190\116"));trapInterface=setupUI([[
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

      
]],g_ui.getRootWidget());trapInterface:hide();trapIcon.title:setOn(v40.trapMacro);trapIcon.title.onClick=function(v112) v40.trapMacro= not v40.trapMacro;v112:setOn(v40.trapMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;trapIcon.settings.onClick=function(v114) if  not trapInterface:isVisible() then local v215=0;while true do if (v215==(291 -(60 + 230))) then trapInterface:focus();break;end if (v215==0) then trapInterface:show();trapInterface:raise();v215=1;end end else local v216=572 -(426 + 146) ;while true do if (v216==(0 + 0)) then trapInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end end;trapInterface.closeButton.onClick=function(v115) local v116=0;while true do if (v116==(1456 -(282 + 1174))) then trapInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end;trapInterface.hppercent:setText(v7("\108\116","\85\92\81\105\219\121\139\65"));trapInterface.hppercent.onValueChange=function(v117,v118) v117:setText(v118   .. "%" );end;trapInterface.cooldownTotal:setText(v7("\173\160","\191\157\211\48\37\28"));trapInterface.cooldownTotal.onValueChange=function(v119,v120) local v121=formatTime(v120);v119:setText(v120   .. "s" );end;trapInterface.cooldownActive:setText(v7("\143\12","\90\191\127\148\124"));trapInterface.cooldownActive.onValueChange=function(v122,v123) local v124=811 -(569 + 242) ;local v125;while true do if (v124==0) then v125=formatTime(v123);v122:setText(v123   .. "s" );break;end end end;trapInterface.sameSpell:setChecked(true);trapInterface.orangeSpell:setEnabled(false);trapInterface.sameSpell.onCheckChange=function(v126,v127) if v127 then trapInterface.orangeSpell:setEnabled(false);else trapInterface.orangeSpell:setEnabled(true);trapInterface.orangeSpell:setText(trapInterface.castSpell:getText());end end;trapInterface.lifesValue:hide();if checked then local v192=0;while true do if ((0 -0)==v192) then trapInterface.multipleOption:hide();trapInterface.lifesValue:show();break;end end else trapInterface.lifesValue:hide();end function refreshtrapList(v128,v129) if v129 then local v217=0 + 0 ;while true do if (v217==0) then for v252,v253 in pairs(v128.spellList:getChildren()) do v253:destroy();end for v254,v255 in pairs(trapspellsWidgets) do v255:destroy();end v217=1025 -(706 + 318) ;end if (v217==(1252 -(721 + 530))) then for v256,v257 in ipairs(v129) do local v258=1271 -(945 + 326) ;local v259;local v260;while true do if (v258==(7 -4)) then v259.enabled:setChecked(v257.enabled);v259.enabled:setTooltip(( not v257.enabled and v7("\93\137\47\21\116\130\110\36\104\130\34\27","\119\24\231\78")) or v7("\166\36\182\75\222\76\20\194\30\181\79\208\76","\113\226\77\197\42\188\32") );v259.enabled.onClick=function(v295) local v296=0 + 0 ;while true do if (v296==(700 -(271 + 429))) then v257.enabled= not v257.enabled;v259.enabled:setChecked(v257.enabled);v296=1 + 0 ;end if (v296==(1501 -(1408 + 92))) then v259.enabled:setTooltip(( not v257.enabled and v7("\31\24\245\183\54\19\180\134\42\19\248\185","\213\90\118\148")) or v7("\127\39\167\87\79\87\43\244\101\93\94\34\184","\45\59\78\212\54") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end;v258=1090 -(461 + 625) ;end if (v258==(1293 -(993 + 295))) then v259.remove.onClick=function(v297) local v298=0 + 0 ;while true do if (v298==(1171 -(418 + 753))) then for v312,v313 in ipairs(storageProfilesTraps.trapspells) do if (v313==v257) then removeTable(storageProfilesTraps.trapspells,v312);end end scriptFuncs.reindexTable(v129);v298=1 + 0 ;end if (v298==1) then v260:destroy();v259:destroy();break;end end end;v259.onClick=function(v299) local v300=0;while true do if (v300==0) then trapInterface.moveDown:show();trapInterface.moveUp:show();break;end end end;v259.textToSet:setText(firstLetterUpper(v257.spellCast));v258=1 + 5 ;end if (v258==(2 + 2)) then v259.showTimespell:setChecked(v257.enableTimeSpell);v259.showTimespell:setTooltip(( not v257.enableTimeSpell and v7("\53\88\130\137\138\43\237\196\25\91\134\203\181\62\168\252\28","\144\112\54\227\235\230\78\205")) or v7("\151\33\28\253\210\87\182\104\59\245\221\94\243\27\31\249\220\87","\59\211\72\111\156\176") );v259.showTimespell.onClick=function(v301) local v302=0;while true do if (v302==(1 + 0)) then v259.showTimespell:setTooltip(( not v257.enableTimeSpell and v7("\107\137\226\47\66\130\163\25\71\138\230\109\125\151\230\33\66","\77\46\231\131")) or v7("\158\93\165\65\184\88\179\0\142\93\187\69\250\103\166\69\182\88","\32\218\52\214") );if v257.enableTimeSpell then v260:show();else v260:hide();end v302=531 -(406 + 123) ;end if (v302==(1769 -(1749 + 20))) then v257.enableTimeSpell= not v257.enableTimeSpell;v259.showTimespell:setChecked(v257.enableTimeSpell);v302=1;end if (v302==2) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end;v258=5;end if (v258==0) then v259=setupUI(v41,v128.spellList);v260=setupUI(v42,g_ui.getRootWidget());v260:setText(firstLetterUpper(v257.spellCast));v258=1 + 0 ;end if (v258==(1324 -(1249 + 73))) then v260:setPosition(v257.widgetPos);trapspellsWidgets[v257.index]=v260;v259.onDoubleClick=function(v303) local v304=0 + 0 ;local v305;while true do if (v304==(1147 -(466 + 679))) then scriptFuncs.reindexTable(v129);v260:destroy();v259:destroy();break;end if (v304==0) then v305=v257;v128.castSpell:setText(v305.spellCast);v128.orangeSpell:setText(v305.orangeSpell);v128.onScreen:setText(v305.onScreen);v304=1;end if (v304==(2 -1)) then v128.hppercent:setValue(v305.selfHealth);v128.cooldownTotal:setValue(v305.cooldownTotal);v128.cooldownActive:setValue(v305.cooldownActive);for v314,v315 in ipairs(storageProfilesTraps.trapspells) do if (v315==v257) then removeTable(storageProfilesTraps.trapspells,v314);end end v304=5 -3 ;end end end;v258=1903 -(106 + 1794) ;end if (v258==(2 + 4)) then v259.textToSet:setColor(v7("\89\31\56\188\244","\58\46\119\81\200\145\208\37"));v259.textToSet:setFont(v7("\61\137\34\168\168\179\55\102\221\97\188\177\240\36\36\153\62\168\172\185","\86\75\236\80\204\201\221"));v259:setTooltip(v7("\93\83\118\139\249\142\50\108\114\150\237\138\117\68\45\197","\235\18\33\23\229\158")   .. v257.orangeSpell   .. v7("\16\166\129\148\94\250\242\184\66\191\196\181\10\250","\219\48\218\161")   .. v257.onScreen   .. v7("\164\109\60\125\212\91\225\232\49\95\70\212\67\228\235\102\114\19\155","\128\132\17\28\41\187\47")   .. v257.cooldownTotal   .. v7("\18\114\26\122\124\2\38\15\44\88\65\17\9\53\81\5\61\17\52\7\65","\61\97\82\102\90")   .. v257.cooldownActive   .. v7("\191\110\183\11\239\71\14\12\190\45\174\69\211\13\94","\105\204\78\203\43\167\55\126")   .. v257.selfHealth );break;end if (v258==(1 + 0)) then attachSpellWidgetCallbacks(v260,v257.index,storageProfilesTraps.trapspells);if  not v257.widgetPos then v257.widgetPos={x=0 -0 ,y=50};end if v257.enableTimeSpell then v260:show();else v260:hide();end v258=5 -3 ;end end end break;end end end end trapInterface.moveUp.onClick=function() local v130=trapInterface.spellList:getFocusedChild();if  not v130 then return;end local v131=trapInterface.spellList:getChildIndex(v130);if (v131<2) then return;end trapInterface.spellList:moveChildToIndex(v130,v131-1 );trapInterface.spellList:ensureChildVisible(v130);storageProfilesTraps.trapspells[v131].index=v131-1 ;storageProfilesTraps.trapspells[v131-(115 -(4 + 110)) ].index=v131;table.sort(storageProfilesTraps.trapspells,function(v193,v194) return v193.index<v194.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;trapInterface.moveDown.onClick=function() local v134=584 -(57 + 527) ;local v135;local v136;while true do if ((1429 -(41 + 1386))==v134) then trapInterface.spellList:moveChildToIndex(v135,v136 + (104 -(17 + 86)) );trapInterface.spellList:ensureChildVisible(v135);v134=3 + 0 ;end if (v134==(6 -3)) then storageProfilesTraps.trapspells[v136].index=v136 + 1 ;storageProfilesTraps.trapspells[v136 + (2 -1) ].index=v136;v134=4;end if (0==v134) then v135=trapInterface.spellList:getFocusedChild();if  not v135 then return;end v134=1;end if (v134==1) then v136=trapInterface.spellList:getChildIndex(v135);if (v136>=trapInterface.spellList:getChildCount()) then return;end v134=2;end if ((170 -(122 + 44))==v134) then table.sort(storageProfilesTraps.trapspells,function(v233,v234) return v233.index<v234.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end;trapInterface.insertSpell.onClick=function(v137) local v138=trapInterface.castSpell:getText():trim();local v139=trapInterface.orangeSpell:getText():trim();local v140=trapInterface.onScreen:getText();v139=((v139:len()==0) and v138) or v139 ;local v141=trapInterface.hppercent:getValue();local v142=trapInterface.cooldownTotal:getValue();local v143=trapInterface.cooldownActive:getValue();if (v138:len()==0) then return warn(v7("\140\164\53\31\31\13\195\17\150\186\38\18\31\68\233\80\168\175\109","\49\197\202\67\126\115\100\167"));end if ( not trapInterface.sameSpell:isChecked() and (v139:len()==(0 -0))) then return warn(v7("\30\85\201\40\140\95\90\119\116\205\40\142\81\91\119\104\207\44\140\90\16","\62\87\59\191\73\224\54"));end if (v140:len()==(0 -0)) then return warn(v7("\206\12\236\200\235\11\254\137\211\7\226\221\167\45\244\137\212\1\232\204\226\12","\169\135\98\154"));end if (v141==(0 + 0)) then return warn(v7("\226\121\50\85\241\58\204\139\95\52\68\248\33\203\206\121\48\26","\168\171\23\68\52\157\83"));end if (v142==0) then return warn(v7("\221\127\227\172\41\36\131\180\82\250\162\41\41\136\227\127\181\153\42\57\134\248\63","\231\148\17\149\205\69\77"));end local v144={[v7("\137\169\195\254\79","\159\224\199\167\155\55")]= #storageProfilesTraps.trapspells + 1 + 0 ,[v7("\228\227\57\222\251\208\61\193\227","\178\151\147\92")]=v138,[v7("\131\239\77\60\21\73\73\156\248\64\62","\26\236\157\44\82\114\44")]=v139,[v7("\37\32\230\88\56\43\208\85","\59\74\78\181")]=v140,[v7("\54\212\86\92\155\32\208\86\78\187","\211\69\177\58\58")]=v141,[v7("\180\234\118\249\237\196\160\235\88\246\253\194\161\224","\171\215\133\25\149\137")]=v143,[v7("\226\199\61\246\235\63\235\76\213\199\38\251\227","\34\129\168\82\154\143\80\156")]=v142,[v7("\128\188\50\9\68\75\189\140\191\54\56\88\75\133\137","\233\229\210\83\107\40\46")]=true,[v7("\196\76\51\212\9\196\70","\101\161\34\82\182")]=true};table.insert(storageProfilesTraps.trapspells,v144);refreshtrapList(trapInterface,storageProfilesTraps.trapspells);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);trapInterface.castSpell:clearText();trapInterface.orangeSpell:clearText();trapInterface.onScreen:clearText();trapInterface.cooldownTotal:setValue(0 -0 );trapInterface.cooldownActive:setValue(0);trapInterface.hppercent:setValue(65 -(30 + 35) );trapInterface.reviveOption:setChecked(false);trapInterface.lifesOption:setChecked(false);trapInterface.multipleOption:setChecked(false);trapInterface.multipleOption:show();trapInterface.lifesValue:hide();end;refreshtrapList(trapInterface,storageProfilesTraps.trapspells);macro(1,function() if  not (trapspellsWidgets and storageProfilesTraps.trapspells) then return;end for v195,v196 in ipairs(storageProfilesTraps.trapspells) do local v197=trapspellsWidgets[v196.index];if v197 then local v223=firstLetterUpper(v196.onScreen);local v224=v7("\239\31\92\251\213","\78\136\109\57\158\187\130\226");if (v196.activeCooldown and (v196.activeCooldown>now)) then v223=v223   .. v7("\100\127","\145\94\95\153")   .. formatRemainingTime(v196.activeCooldown) ;v224=v7("\190\157\68\243\104\145\219","\215\157\173\116\181\46");if (v196.enableLifes and (v196.lifes==(0 + 0))) then v196.activeCooldown=nil;end elseif (v196.totalCooldown and (v196.totalCooldown>now)) then v223=v223   .. v7("\111\244","\186\85\212\235\146")   .. formatRemainingTime(v196.totalCooldown) ;v224=v7("\129\167\48\170\105\186\8","\56\162\225\118\158\89\142");else v223=v223   .. v7("\6\69\144\188","\184\60\101\160\207\66") ;if (v196.enableMultiple and v196.canReset) then local v290=0;while true do if (v290==(1257 -(1043 + 214))) then v196.count=3;v196.canReset=false;break;end end end if v196.enableLifes then v196.lifes=0;end if v196.enableRevive then v196.alreadyChecked=false;end end if (v196.enableMultiple and (v196.count>(0 -0))) then v223=""   .. v196.count   .. v7("\113\158\60","\220\81\226\28")   .. v223 ;end if (v196.enableLifes and (v196.lifes>0)) then v223=""   .. v196.lifes   .. v7("\83\201\194","\167\115\181\226\155\138")   .. v223 ;end v197:setText(v223);v197:setColor(v224);end end end);local v53=g_game.getLocalPlayer();macro(1,function() if  not trapIcon.title:isOn() then return;end if isInPz() then return;end local v145=v53:getHealthPercent();for v198,v199 in ipairs(storageProfilesTraps.trapspells) do if (v199.enabled and g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=calculatePercentage(v199.selfHealth))) then if ( not v199.totalCooldown or (v199.totalCooldown<=now)) then if ( not canCasttrap() and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer()) then forceSay(v199.spellCast);end end end end end);onTalk(function(v146,v147,v148,v149,v150,v151) v149=v149:lower();if (v146~=player:getName()) then return;end for v200,v201 in ipairs(storageProfilesTraps.trapspells) do if (v149==v201.orangeSpell) then if v201.enableLifes then local v245=1212 -(323 + 889) ;while true do if (v245==(0 -0)) then v201.activeCooldown=(now + (v201.cooldownActive * 1000)) -250 ;v201.totalCooldown=(now + (v201.cooldownTotal * (1580 -(361 + 219)))) -(570 -(53 + 267)) ;v245=1 + 0 ;end if (v245==(414 -(15 + 398))) then v201.lifes=v201.amountLifes;break;end end end if (v201.enableRevive and  not v201.alreadyChecked) then v201.totalCooldown=(now + (v201.cooldownTotal * 1000)) -(1232 -(18 + 964)) ;v201.activeCooldown=(now + (v201.cooldownActive * (3764 -2764))) -250 ;v201.alreadyChecked=true;end if v201.enableMultiple then if (v201.count>(0 + 0)) then v201.count=v201.count-(1 + 0) ;v201.activeCooldown=(now + (v201.cooldownActive * (1850 -(20 + 830)))) -(196 + 54) ;if (v201.count==(126 -(116 + 10))) then v201.totalCooldown=(now + (v201.cooldownTotal * (74 + 926))) -(988 -(542 + 196)) ;v201.canReset=true;break;end end end if  not (v201.enableLifes or v201.enableRevive or v201.enableMultiple) then v201.activeCooldown=(now + (v201.cooldownActive * (2143 -1143))) -250 ;v201.totalCooldown=(now + (v201.cooldownTotal * 1000)) -(74 + 176) ;break;end end end end);end traps();UI.Separator();Panels.HealthItem();Panels.HealthItem();UI.Separator();Panels.ManaItem();Panels.ManaItem();UI.Separator();local v16=macro(102 + 98 ,v7("\201\35\229\73\111\126\209\227\48\238\28\64\59\251","\166\130\66\135\60\27\17"),function() local v54=0 + 0 ;local v55;local v56;local v57;local v58;local v59;local v60;while true do if (v54==(7 -4)) then if  not v59 then return;end v60=27368 -16693 ;v54=1555 -(1126 + 425) ;end if (v54==(406 -(118 + 287))) then v57=v55:getDirection();v58={x=v56.x,y=v56.y,z=v56.z};v54=7 -5 ;end if (4==v54) then g_game.useInventoryItemWith(v60,v59:getTopUseThing());break;end if (v54==0) then v55=g_game.getLocalPlayer();v56=v55:getPosition();v54=1122 -(118 + 1003) ;end if ((5 -3)==v54) then if (v57==(377 -(142 + 235))) then v58.y=v58.y-(4 -3) ;elseif (v57==1) then v58.x=v58.x + 1 + 0 ;elseif (v57==(979 -(553 + 424))) then v58.y=v58.y + (1 -0) ;elseif (v57==3) then v58.x=v58.x-(1 + 0) ;end v59=g_map.getTile(v58);v54=3;end end end);function ativarquebrarTrap() v16.setOn();end function desativarquebrarTrap() v16.setOff();end g_keyboard.bindKeyDown("*",ativarquebrarTrap);g_keyboard.bindKeyUp("*",desativarquebrarTrap);
