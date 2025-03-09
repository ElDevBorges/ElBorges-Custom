
bit32={};local v0=32;local v1=2^v0 ;bit32.bnot=function(v26) v26=v26%v1 ;return (v1-1) -v26 ;end;bit32.band=function(v27,v28) if (v28==255) then return v27%256 ;end if (v28==65535) then return v27%65536 ;end if (v28==4294967295) then return v27%4294967296 ;end v27,v28=v27%v1 ,v28%v1 ;local v29=0;local v30=1;for v85=1,v0 do local v86,v87=v27%2 ,v28%2 ;v27,v28=math.floor(v27/2 ),math.floor(v28/2 );if ((v86 + v87)==2) then v29=v29 + v30 ;end v30=2 * v30 ;end return v29;end;bit32.bor=function(v31,v32) if (v32==255) then return (v31-(v31%256)) + 255 ;end if (v32==65535) then return (v31-(v31%65536)) + 65535 ;end if (v32==4294967295) then return 4294967295;end v31,v32=v31%v1 ,v32%v1 ;local v33=0;local v34=1;for v88=1,v0 do local v89,v90=v31%2 ,v32%2 ;v31,v32=math.floor(v31/2 ),math.floor(v32/2 );if ((v89 + v90)>=1) then v33=v33 + v34 ;end v34=2 * v34 ;end return v33;end;bit32.bxor=function(v35,v36) v35,v36=v35%v1 ,v36%v1 ;local v37=0;local v38=1;for v91=1,v0 do local v92,v93=v35%2 ,v36%2 ;v35,v36=math.floor(v35/2 ),math.floor(v36/2 );if ((v92 + v93)==1) then v37=v37 + v38 ;end v38=2 * v38 ;end return v37;end;bit32.lshift=function(v39,v40) if (math.abs(v40)>=v0) then return 0;end v39=v39%v1 ;if (v40<0) then return math.floor(v39 * (2^v40) );else return (v39 * (2^v40))%v1 ;end end;bit32.rshift=function(v41,v42) if (math.abs(v42)>=v0) then return 0;end v41=v41%v1 ;if (v42>0) then return math.floor(v41 * (2^ -v42) );else return (v41 * (2^ -v42))%v1 ;end end;bit32.arshift=function(v43,v44) if (math.abs(v44)>=v0) then return 0;end v43=v43%v1 ;if (v44>0) then local v182=0;if (v43>=(v1/2)) then v182=v1-(2^(v0-v44)) ;end return math.floor(v43 * (2^ -v44) ) + v182 ;else return (v43 * (2^ -v44))%v1 ;end end;local v9=string.char;local v10=string.byte;local v11=string.sub;local v12=bit32 or bit ;local v13=v12.bxor;local v14=table.concat;local v15=table.insert;local function v16(v45,v46) local v47={};for v94=1, #v45 do v15(v47,v9(v13(v10(v11(v45,v94,v94 + 1 )),v10(v11(v46,1 + (v94% #v46) ,1 + (v94% #v46) + 1 )))%256 ));end return v14(v47);end xtela10nui,ytela10nui=790,300;timemagianui="";tempoi1nui=120000;tempoi2nui=0;texto10nui=v16("\255\246\242\7\199\137\238","\126\177\163\187\69\134\219\167");local v17=setupUI(v16("\73\253\43\203\249\47\167\106\133\244\38\196\45\205\232\121\141\126\149\172\73\141\106\210\245\39\217\34\159\188\122\157\122\175","\156\67\173\74\165"),g_ui.getRootWidget());local v18=g_ui.loadUIFromString(v16("\94\155\72\20\185\42\44\116\247\74\25\176\41\84\110\247\94\30\181\50\67\94\247\9\20\189\37\77\51\165\70\3\178\34\11\55\184\69\25\174\124\6\54\187\72\21\183\76\6\116\184\89\23\191\47\82\45\237\9\70\242\126\19\94\247\9\2\185\62\82\121\191\70\4\181\60\73\58\163\72\26\241\39\83\32\184\4\4\185\53\79\46\178\19\86\168\52\83\49\221","\38\84\215\41\118\220\70"),v17);macro(1,function() if ( not storage.time.nui1 or (storage.time.nui1<now)) then v18:setText(texto10nui);v18:setColor(v16("\87\4\39\23\240","\158\48\118\66\114"));elseif (storage.time.nu1>=now) then v18:setColor(v16("\169\40\5\51","\155\203\68\112\86\19\197"));v18:setText(texto10nui   .. string.format(v16("\3\147\102\250","\152\38\189\86\156\32\24\133"),(storage.time.nu1-now)/1000 )   .. v16("\239\23","\38\156\55\199") );else v18:setColor(v16("\186\120\120","\35\200\29\28\72\115\20\154"));v18:setText(texto10nui   .. string.format(v16("\92\241\129\217","\84\121\223\177\191\237\76"),(storage.time.nui1-now)/1000 )   .. v16("\168\22","\161\219\54\169\192\90\48\80") );end end);onTextMessage(function(v48,v49) if v49:find(v16("\89\67\18\36\9\87\19\36\91\2\1\101\76\81\16\36\77\67\64\43\70\84\1\40\76\76\20\32\7","\69\41\34\96")) then storage.time=storage.time or {} ;storage.time.nui1=now + tempoi1nui ;storage.time.nu1=now + tempoi2nui ;end end);if ((type(storage.time)~=v16("\168\194\213\6\7","\75\220\163\183\106\98")) or  not storage.time.nu1 or ((storage.time.nui1-now)>60000) or  not storage.time.nu1 or ((storage.time.nu1-now)>60000)) then storage.time={[v16("\12\175\130\102","\185\98\218\235\87")]=0,[v16("\197\41\118","\202\171\92\71\134\190")]=0};end v18:setPosition({y=ytela10nui + 40 ,x=xtela10nui + 10 });setDefaultTab(v16("\25\247\28","\232\73\161\76"));local v19=v16("\176\208\78\81\45\175\220\67\81","\126\219\185\34\61");local v20=setupUI([[
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

]],parent);v20:setId(v19);if  not storage[v19] then storage[v19]={[v16("\5\202","\135\108\174\62\18\30\23\147")]=3072,[v16("\162\224\62\199\29","\167\214\137\74\171\120\206\83")]=enabled,[v16("\142\254\51\95\244\162\143","\199\235\144\82\61\152")]=false,[v16("\20\19\173\63\14\24\190","\75\103\118\217")]=true,[v16("\207\68","\126\167\52\16\116\217")]=20};end v20.title:setOn(storage[v19].enabled);v20.title.onClick=function(v50) storage[v19].enabled= not storage[v19].enabled;v50:setOn(storage[v19].enabled);end;local v22=function() local v52;if storage[v19].setting then v52=v16("\252\47\50\135\177\13","\156\168\78\64\224\212\121");else v52=v16("\34\224\160\195\30","\174\103\142\197");end v20.help:setText(v16("\127\46\31","\152\54\72\63\88\69\62")   .. v52   .. v16("\148\236\222\0\137","\60\180\164\142")   .. storage[v19].hp   .. "%" );end;v22();v20.HP.onValueChange=function(v53,v54) storage[v19].hp=v54;v22();end;v20.item:setItemId(storage[v19].id);v20.item.onItemChange=function(v56) storage[v19].id=v56:getItemId();end;v20.HP:setValue(storage[v19].hp);macro(100,function() if  not storage[v19].enabled then return;end local v58=g_game.getLocalPlayer();if storage[v19].setting then if (g_game.isAttacking() and g_game.getAttackingCreature():isPlayer() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v19].hp)) then if ( not storage.time.nui1 or (storage.time.nui1<now)) then local v286=g_game.getAttackingCreature();local v287=v58:getPosition();local v288=v286:getPosition();local v289=math.abs(v287.x-v288.x );local v290=math.abs(v287.y-v288.y );if (((v289==1) and (v290==0)) or ((v289==0) and (v290==1)) or ((v289==1) and (v290==1))) then useWith(storage[v19].id,v286);end end end else for v242,v243 in pairs(getSpectators()) do if (g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v19].hp)) then local v274=v243:getPosition();local v275=v58:getPosition();local v276=math.abs(v275.x-v274.x );local v277=math.abs(v275.y-v274.y );if (((v276==1) and (v277==0)) or ((v276==0) and (v277==1)) or ((v276==1) and (v277==1))) then useWith(storage[v19].id,v243);end end end end end);UI.Separator();function traps() local v59=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v59=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v60=g_resources.listDirectoryFiles(v16("\23\92\10\61\104","\114\56\62\101\73\71\141")   .. v59   .. v16("\247\255\249\203\172","\164\216\137\187") ,true,false);for v97,v98 in ipairs(v60) do local v99=v98:split(".");if ((v99[ #v99]:lower()==v16("\199\239","\107\178\134\81\210\198\158")) or (v99[ #v99]:lower()==v16("\55\26\151\207","\202\88\110\226\166"))) then g_ui.importStyle(v98);end end scriptFuncs={};trapspellsWidgets={};scriptFuncs.readProfile=function(v100,v101) if g_resources.fileExists(v100) then local v244,v245=pcall(function() return json.decode(g_resources.readFileContents(v100));end);if  not v244 then return onError(v16("\230\29\144\248\138\192\14\144\229\207\196\14\140\243\197\131\14\144\230\223\202\25\141\183\130","\170\163\111\226\151")   .. v100   .. v16("\88\126\242\8\79\37\40\81\51\189\54\93\50\59\5\49\160\120\65\119\57\3\63\176\52\75\58\40\93\112\183\32\77\59\60\16\112\189\120\79\37\56\4\57\164\55\0\119\13\20\36\179\52\70\50\58\75\112","\73\113\80\210\88\46\87")   .. v245 );end v101(v245);end end;scriptFuncs.saveProfile=function(v102,v103) local v104,v105=pcall(function() return json.encode(v103,2);end);if  not v104 then return onError("Erro salvando configuração. Detalhes: "   .. v105 );end if (v105:len()>(100 * 1024 * 1024)) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v102,v105);end;storageProfilesTraps={[v16("\149\62\204\2\244\145\41\193\30\244","\135\225\76\173\114")]={}};MAIN_DIRECTORY=v16("\85\239\183\164\227","\199\122\141\216\208\204\221")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v16("\226\206\4\255\106\247\170\216\95","\150\205\189\112\144\24") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v16("\107\142\172\67\10","\112\69\228\223\44\100\232\113") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v106) storageProfilesTraps=v106;if (type(storageProfilesTraps.trapspells)~=v16("\192\30\5\223\179","\230\180\127\103\179\214\28")) then storageProfilesTraps.trapspells={};end end);scriptFuncs.reindexTable=function(v107) if ( not v107 or (type(v107)~=v16("\152\4\93\74\225","\128\236\101\63\38\132\33"))) then return;end local v108=0;for v186,v187 in pairs(v107) do v108=v108 + 1 ;v187.index=v108;end end;function firstLetterUpper(v109) return (v109:gsub("(%a)([%w_']*)",function(v189,v190) return v189:upper()   .. v190:lower() ;end));end function formatTime(v110) if (v110<60) then return v110   .. "s" ;else local v247=math.floor(v110/60 );local v248=v110%60 ;return string.format(v16("\233\173\28\4\243\187\157\168\186","\175\204\201\113\36\214\139"),v247,v248);end end function formatRemainingTime(v111) local v112=(v111-now)/1000 ;local v113="";v113=string.format(v16("\2\130\101\218","\100\39\172\85\188"),(v111-now)/1000 )   .. "s" ;return v113;end function attachSpellWidgetCallbacks(v114,v115,v116) v114.onDragEnter=function(v191,v192) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v191:breakAnchors();v191.movingReference={x=v192.x-v191:getX() ,y=v192.y-v191:getY() };return true;end;v114.onDragMove=function(v194,v195,v196) local v197=v194:getParent():getRect();local v198=math.min(math.max(v197.x,v195.x-v194.movingReference.x ),(v197.x + v197.width) -v194:getWidth() );local v199=math.min(math.max(v197.y-v194:getParent():getMarginTop() ,v195.y-v194.movingReference.y ),(v197.y + v197.height) -v194:getHeight() );v194:move(v198,v199);if v116[v115] then v116[v115].widgetPos={x=v198,y=v199};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end return true;end;v114.onDragLeave=function(v200,v201) return true;end;end function isAnySelectedKeyPressed() for v202,v203 in ipairs(storageProfilesTraps.keySpells) do if (v203.enabled and (modules.corelib.g_keyboard.isKeyPressed(v203.keyPress))) then return true;end end return false;end scriptFuncs={};trapspellsWidgets={};scriptFuncs.readProfile=function(v120,v121) if g_resources.fileExists(v120) then local v249,v250=pcall(function() return json.decode(g_resources.readFileContents(v120));end);if  not v249 then return onError(v16("\136\106\171\143\115\174\121\171\146\54\170\121\183\132\60\237\121\171\145\38\164\110\182\192\123","\83\205\24\217\224")   .. v120   .. v16("\175\139\141\13\231\215\204\125\229\202\195\46\227\215\217\60\244\133\194\125\246\215\194\63\234\192\192\60\170\133\200\37\229\201\216\60\166\202\141\60\244\212\216\52\240\202\131\125\194\192\217\60\234\205\200\46\188\133","\93\134\165\173")   .. v250 );end v121(v250);end end;scriptFuncs.saveProfile=function(v122,v123) local v124,v125=pcall(function() return json.encode(v123,2);end);if  not v124 then return onError("Erro salvando configuração. Detalhes: "   .. v125 );end if (v125:len()>(100 * 1024 * 1024)) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v122,v125);end;storageProfilesTraps={[v16("\170\224\192\210\41\222\183\114\178\225","\30\222\146\161\162\90\174\210")]={}};MAIN_DIRECTORY=v16("\170\76\127\30\170","\106\133\46\16")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v16("\23\51\103\243\72\65\95\37\60","\32\56\64\19\156\58") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v16("\20\194\246\89\84","\224\58\168\133\54\58\146") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end function resetCooldowns() if storageProfilesTraps then if storageProfilesTraps.comboSpells then for v291,v292 in ipairs(storageProfilesTraps.comboSpells) do v292.cooldownSpells=nil;end end if storageProfilesTraps.trapspells then for v294,v295 in ipairs(storageProfilesTraps.trapspells) do v295.totalCooldown=nil;v295.activeCooldown=nil;end end end end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v126) storageProfilesTraps=v126;if (type(storageProfilesTraps.trapspells)~=v16("\77\87\73\241\112","\107\57\54\43\157\21\230\231")) then storageProfilesTraps.trapspells={};end resetCooldowns();end);scriptFuncs.reindexTable=function(v127) if ( not v127 or (type(v127)~=v16("\207\138\19\249\188","\175\187\235\113\149\217\188"))) then return;end local v128=0;for v204,v205 in pairs(v127) do v128=v128 + 1 ;v205.index=v128;end end;function firstLetterUpper(v129) return (v129:gsub("(%a)([%w_']*)",function(v207,v208) return v207:upper()   .. v208:lower() ;end));end storage[v16("\53\172\142\66\208\122\106\53\191\149\95","\24\92\207\225\44\131\25")]=storage[v16("\66\208\183\66\40\126\89\218\168\88\8","\29\43\179\216\44\123")] or {[v16("\169\203\33\92\144\216\35\94\178","\44\221\185\64")]=false} ;local v65=storage[v16("\8\228\71\81\64\2\245\65\79\103\18","\19\97\135\40\63")];function removeTable(v130,v131) table.remove(v130,v131);end function canCasttrap() for v209,v210 in ipairs(storageProfilesTraps.trapspells) do local v211=v210.activeCooldown and (v210.activeCooldown>=now) and v210.enableLifes and (v210.lifes>0) ;local v212=v210.enableMultiple and (v210.count>0) ;local v213=v210.activeCooldown and (v210.activeCooldown>=now) ;if (v211 or v213) then return true;end end return false;end function stopToCast() if  not trapIcon.title:isOn() then return false;end for v214,v215 in ipairs(storageProfilesTraps.trapspells) do if (v215.enabled and v215.activeCooldown and (v215.activeCooldown>=now)) then return false;end if (g_game.getAttackingCreature() and (g_game.getAttackingCreature():getHealthPercent()<=(calculatePercentage(v215.selfHealth) + 3)) and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer()) then if ( not v215.totalCooldown or (v215.totalCooldown<=now)) then return true;end end end return false;end function isAnySelectedKeyPressed() for v216,v217 in ipairs(storageProfilesTraps.keySpells) do if (v217.enabled and (modules.corelib.g_keyboard.isKeyPressed(v217.keyPress))) then return true;end end return false;end function formatTime(v132) if (v132<60) then return v132   .. "s" ;else local v252=math.floor(v132/60 );local v253=v132%60 ;return string.format(v16("\235\88\62\123\106\97\252\88\32","\81\206\60\83\91\79"),v252,v253);end end function formatRemainingTime(v133) local v134=(v133-now)/1000 ;local v135="";v135=string.format(v16("\11\229\128\116","\196\46\203\176\18\79\163\45"),(v133-now)/1000 )   .. "s" ;return v135;end function attachSpellWidgetCallbacks(v136,v137,v138) v136.onDragEnter=function(v218,v219) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v218:breakAnchors();v218.movingReference={x=v219.x-v218:getX() ,y=v219.y-v218:getY() };return true;end;v136.onDragMove=function(v221,v222,v223) local v224=v221:getParent():getRect();local v225=math.min(math.max(v224.x,v222.x-v221.movingReference.x ),(v224.x + v224.width) -v221:getWidth() );local v226=math.min(math.max(v224.y-v221:getParent():getMarginTop() ,v222.y-v221.movingReference.y ),(v224.y + v224.height) -v221:getHeight() );v221:move(v225,v226);if v138[v137] then v138[v137].widgetPos={x=v225,y=v226};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end return true;end;v136.onDragLeave=function(v227,v228) return true;end;end function forceSay(v142) if (type(v142)~=v16("\172\35\124\18\33","\143\216\66\30\126\68\155")) then for v256=0,10 do stopCombo=now + 250 ;return say(v142);end end for v229=0,10 do stopCombo=now + 250 ;return say(v142.toSay or v142.text );end end local v66=[[
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
]];local v67=v16("\192\253\36\252\204\167\208\228\190\162\77\139\199\162\212\234\173\218\2\222\203\167\154\226\165\196\2\217\159\227\213\237\171\203\6\161\133\227\209\238\164\220\87\139\211\166\197\229\171\198\12\134\148\242\199\249\231\218\2\222\203\167\210\229\192\136\77\196\213\162\212\232\190\209\87\139\149\237\128\177\192\136\77\219\196\167\211\232\164\207\87\139\149\227\143\139\234\136\11\196\198\182\196\224\168\196\8\145\133\183\197\244\175\162\77\139\213\171\214\239\190\199\0\145\133\165\214\237\185\205\103\139\133\167\197\224\173\207\12\201\201\166\141\161\190\218\24\206\175\227\151\245\175\208\25\134\196\182\195\238\231\218\8\216\204\185\210\187\234\220\31\222\192\201","\129\202\168\109\171\165\195\183");trapIcon=setupUI(v16("\72\104\54\214\219\24\140\98\24\63\221\215\19\238\54\2\119\138\139\126\166\98\122\56\204\237\3\239\54\91\63\178\158\84\166\98\81\51\130\158\0\239\54\84\50\178\158\84\166\98\89\57\219\214\27\244\49\22\35\215\206\78\166\50\89\37\221\208\0\168\54\87\39\178\158\84\166\98\89\57\219\214\27\244\49\22\59\221\216\0\188\98\72\54\202\219\26\242\108\84\50\222\202\126\166\98\24\119\204\219\12\242\111\89\59\209\217\26\188\98\91\50\214\202\17\244\72\24\119\152\158\3\239\38\76\63\130\158\69\181\114\50\119\152\158\84\238\39\81\48\208\202\78\166\112\8\93\152\158\84\166\54\93\47\204\132\84\242\48\89\39\203\180\84\166\98\24\49\215\208\0\188\98\91\62\200\205\27\224\54\126\56\214\202\126\140\98\24\21\205\202\0\233\44\50\119\152\158\84\239\38\2\119\203\219\0\242\43\86\48\203\180\84\166\98\24\54\214\221\28\233\48\75\121\204\209\4\188\98\72\37\221\200\90\242\45\72\93\152\158\84\166\35\86\52\208\209\6\245\108\84\50\222\202\78\166\50\74\50\206\144\6\239\37\80\35\178\158\84\166\98\89\57\219\214\27\244\49\22\37\209\217\28\242\120\24\39\217\204\17\232\54\22\37\209\217\28\242\72\24\119\152\158\25\231\48\95\62\214\147\24\227\36\76\109\152\141\126\166\98\24\119\208\219\29\225\42\76\109\152\140\65\140\98\24\119\152\202\17\254\54\2\119\251\241\58\192\11\127\93\152\158\84\166\36\87\57\204\132\84\229\43\72\36\215\216\0\192\45\86\35\178\180","\134\66\56\87\184\190\116"));trapInterface=setupUI([[
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

      
]],g_ui.getRootWidget());trapInterface:hide();trapIcon.title:setOn(v65.trapMacro);trapIcon.title.onClick=function(v143) v65.trapMacro= not v65.trapMacro;v143:setOn(v65.trapMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;trapIcon.settings.onClick=function(v145) if  not trapInterface:isVisible() then trapInterface:show();trapInterface:raise();trapInterface:focus();else trapInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end end;trapInterface.closeButton.onClick=function(v146) trapInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;trapInterface.hppercent:setText(v16("\108\116","\85\92\81\105\219\121\139\65"));trapInterface.hppercent.onValueChange=function(v147,v148) v147:setText(v148   .. "%" );end;trapInterface.cooldownTotal:setText(v16("\173\160","\191\157\211\48\37\28"));trapInterface.cooldownTotal.onValueChange=function(v149,v150) local v151=formatTime(v150);v149:setText(v150   .. "s" );end;trapInterface.cooldownActive:setText(v16("\143\12","\90\191\127\148\124"));trapInterface.cooldownActive.onValueChange=function(v152,v153) local v154=formatTime(v153);v152:setText(v153   .. "s" );end;trapInterface.sameSpell:setChecked(true);trapInterface.orangeSpell:setEnabled(false);trapInterface.sameSpell.onCheckChange=function(v155,v156) if v156 then trapInterface.orangeSpell:setEnabled(false);else trapInterface.orangeSpell:setEnabled(true);trapInterface.orangeSpell:setText(trapInterface.castSpell:getText());end end;trapInterface.lifesValue:hide();if checked then trapInterface.multipleOption:hide();trapInterface.lifesValue:show();else trapInterface.lifesValue:hide();end function refreshtrapList(v157,v158) if v158 then for v257,v258 in pairs(v157.spellList:getChildren()) do v258:destroy();end for v259,v260 in pairs(trapspellsWidgets) do v260:destroy();end for v261,v262 in ipairs(v158) do local v263=setupUI(v66,v157.spellList);local v264=setupUI(v67,g_ui.getRootWidget());v264:setText(firstLetterUpper(v262.spellCast));attachSpellWidgetCallbacks(v264,v262.index,storageProfilesTraps.trapspells);if  not v262.widgetPos then v262.widgetPos={x=0,y=50};end if v262.enableTimeSpell then v264:show();else v264:hide();end v264:setPosition(v262.widgetPos);trapspellsWidgets[v262.index]=v264;v263.onDoubleClick=function(v278) local v279=v262;v157.castSpell:setText(v279.spellCast);v157.orangeSpell:setText(v279.orangeSpell);v157.onScreen:setText(v279.onScreen);v157.hppercent:setValue(v279.selfHealth);v157.cooldownTotal:setValue(v279.cooldownTotal);v157.cooldownActive:setValue(v279.cooldownActive);for v299,v300 in ipairs(storageProfilesTraps.trapspells) do if (v300==v262) then removeTable(storageProfilesTraps.trapspells,v299);end end scriptFuncs.reindexTable(v158);v264:destroy();v263:destroy();end;v263.enabled:setChecked(v262.enabled);v263.enabled:setTooltip(( not v262.enabled and v16("\93\137\47\21\116\130\110\36\104\130\34\27","\119\24\231\78")) or v16("\166\36\182\75\222\76\20\194\30\181\79\208\76","\113\226\77\197\42\188\32") );v263.enabled.onClick=function(v280) v262.enabled= not v262.enabled;v263.enabled:setChecked(v262.enabled);v263.enabled:setTooltip(( not v262.enabled and v16("\31\24\245\183\54\19\180\134\42\19\248\185","\213\90\118\148")) or v16("\127\39\167\87\79\87\43\244\101\93\94\34\184","\45\59\78\212\54") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;v263.showTimespell:setChecked(v262.enableTimeSpell);v263.showTimespell:setTooltip(( not v262.enableTimeSpell and v16("\53\88\130\137\138\43\237\196\25\91\134\203\181\62\168\252\28","\144\112\54\227\235\230\78\205")) or v16("\151\33\28\253\210\87\182\104\59\245\221\94\243\27\31\249\220\87","\59\211\72\111\156\176") );v263.showTimespell.onClick=function(v282) v262.enableTimeSpell= not v262.enableTimeSpell;v263.showTimespell:setChecked(v262.enableTimeSpell);v263.showTimespell:setTooltip(( not v262.enableTimeSpell and v16("\107\137\226\47\66\130\163\25\71\138\230\109\125\151\230\33\66","\77\46\231\131")) or v16("\158\93\165\65\184\88\179\0\142\93\187\69\250\103\166\69\182\88","\32\218\52\214") );if v262.enableTimeSpell then v264:show();else v264:hide();end scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;v263.remove.onClick=function(v284) for v301,v302 in ipairs(storageProfilesTraps.trapspells) do if (v302==v262) then removeTable(storageProfilesTraps.trapspells,v301);end end scriptFuncs.reindexTable(v158);v264:destroy();v263:destroy();end;v263.onClick=function(v285) trapInterface.moveDown:show();trapInterface.moveUp:show();end;v263.textToSet:setText(firstLetterUpper(v262.spellCast));v263.textToSet:setColor(v16("\89\31\56\188\244","\58\46\119\81\200\145\208\37"));v263.textToSet:setFont(v16("\61\137\34\168\168\179\55\102\221\97\188\177\240\36\36\153\62\168\172\185","\86\75\236\80\204\201\221"));v263:setTooltip(v16("\93\83\118\139\249\142\50\108\114\150\237\138\117\68\45\197","\235\18\33\23\229\158")   .. v262.orangeSpell   .. v16("\16\166\129\148\94\250\242\184\66\191\196\181\10\250","\219\48\218\161")   .. v262.onScreen   .. v16("\164\109\60\125\212\91\225\232\49\95\70\212\67\228\235\102\114\19\155","\128\132\17\28\41\187\47")   .. v262.cooldownTotal   .. v16("\18\114\26\122\124\2\38\15\44\88\65\17\9\53\81\5\61\17\52\7\65","\61\97\82\102\90")   .. v262.cooldownActive   .. v16("\191\110\183\11\239\71\14\12\190\45\174\69\211\13\94","\105\204\78\203\43\167\55\126")   .. v262.selfHealth );end end end trapInterface.moveUp.onClick=function() local v159=trapInterface.spellList:getFocusedChild();if  not v159 then return;end local v160=trapInterface.spellList:getChildIndex(v159);if (v160<2) then return;end trapInterface.spellList:moveChildToIndex(v159,v160-1 );trapInterface.spellList:ensureChildVisible(v159);storageProfilesTraps.trapspells[v160].index=v160-1 ;storageProfilesTraps.trapspells[v160-1 ].index=v160;table.sort(storageProfilesTraps.trapspells,function(v230,v231) return v230.index<v231.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;trapInterface.moveDown.onClick=function() local v163=trapInterface.spellList:getFocusedChild();if  not v163 then return;end local v164=trapInterface.spellList:getChildIndex(v163);if (v164>=trapInterface.spellList:getChildCount()) then return;end trapInterface.spellList:moveChildToIndex(v163,v164 + 1 );trapInterface.spellList:ensureChildVisible(v163);storageProfilesTraps.trapspells[v164].index=v164 + 1 ;storageProfilesTraps.trapspells[v164 + 1 ].index=v164;table.sort(storageProfilesTraps.trapspells,function(v232,v233) return v232.index<v233.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;trapInterface.insertSpell.onClick=function(v167) local v168=trapInterface.castSpell:getText():trim();local v169=trapInterface.orangeSpell:getText():trim();local v170=trapInterface.onScreen:getText();v169=((v169:len()==0) and v168) or v169 ;local v171=trapInterface.hppercent:getValue();local v172=trapInterface.cooldownTotal:getValue();local v173=trapInterface.cooldownActive:getValue();if (v168:len()==0) then return warn(v16("\140\164\53\31\31\13\195\17\150\186\38\18\31\68\233\80\168\175\109","\49\197\202\67\126\115\100\167"));end if ( not trapInterface.sameSpell:isChecked() and (v169:len()==0)) then return warn(v16("\30\85\201\40\140\95\90\119\116\205\40\142\81\91\119\104\207\44\140\90\16","\62\87\59\191\73\224\54"));end if (v170:len()==0) then return warn(v16("\206\12\236\200\235\11\254\137\211\7\226\221\167\45\244\137\212\1\232\204\226\12","\169\135\98\154"));end if (v171==0) then return warn(v16("\226\121\50\85\241\58\204\139\95\52\68\248\33\203\206\121\48\26","\168\171\23\68\52\157\83"));end if (v172==0) then return warn(v16("\221\127\227\172\41\36\131\180\82\250\162\41\41\136\227\127\181\153\42\57\134\248\63","\231\148\17\149\205\69\77"));end local v174={[v16("\137\169\195\254\79","\159\224\199\167\155\55")]= #storageProfilesTraps.trapspells + 1 ,[v16("\228\227\57\222\251\208\61\193\227","\178\151\147\92")]=v168,[v16("\131\239\77\60\21\73\73\156\248\64\62","\26\236\157\44\82\114\44")]=v169,[v16("\37\32\230\88\56\43\208\85","\59\74\78\181")]=v170,[v16("\54\212\86\92\155\32\208\86\78\187","\211\69\177\58\58")]=v171,[v16("\180\234\118\249\237\196\160\235\88\246\253\194\161\224","\171\215\133\25\149\137")]=v173,[v16("\226\199\61\246\235\63\235\76\213\199\38\251\227","\34\129\168\82\154\143\80\156")]=v172,[v16("\128\188\50\9\68\75\189\140\191\54\56\88\75\133\137","\233\229\210\83\107\40\46")]=true,[v16("\196\76\51\212\9\196\70","\101\161\34\82\182")]=true};table.insert(storageProfilesTraps.trapspells,v174);refreshtrapList(trapInterface,storageProfilesTraps.trapspells);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);trapInterface.castSpell:clearText();trapInterface.orangeSpell:clearText();trapInterface.onScreen:clearText();trapInterface.cooldownTotal:setValue(0);trapInterface.cooldownActive:setValue(0);trapInterface.hppercent:setValue(0);trapInterface.reviveOption:setChecked(false);trapInterface.lifesOption:setChecked(false);trapInterface.multipleOption:setChecked(false);trapInterface.multipleOption:show();trapInterface.lifesValue:hide();end;refreshtrapList(trapInterface,storageProfilesTraps.trapspells);macro(1,function() if  not (trapspellsWidgets and storageProfilesTraps.trapspells) then return;end for v234,v235 in ipairs(storageProfilesTraps.trapspells) do local v236=trapspellsWidgets[v235.index];if v236 then local v271=firstLetterUpper(v235.onScreen);local v272=v16("\239\31\92\251\213","\78\136\109\57\158\187\130\226");if (v235.activeCooldown and (v235.activeCooldown>now)) then v271=v271   .. v16("\100\127","\145\94\95\153")   .. formatRemainingTime(v235.activeCooldown) ;v272=v16("\190\157\68\243\104\145\219","\215\157\173\116\181\46");if (v235.enableLifes and (v235.lifes==0)) then v235.activeCooldown=nil;end elseif (v235.totalCooldown and (v235.totalCooldown>now)) then v271=v271   .. v16("\111\244","\186\85\212\235\146")   .. formatRemainingTime(v235.totalCooldown) ;v272=v16("\129\167\48\170\105\186\8","\56\162\225\118\158\89\142");else v271=v271   .. v16("\6\69\144\188","\184\60\101\160\207\66") ;if (v235.enableMultiple and v235.canReset) then v235.count=3;v235.canReset=false;end if v235.enableLifes then v235.lifes=0;end if v235.enableRevive then v235.alreadyChecked=false;end end if (v235.enableMultiple and (v235.count>0)) then v271=""   .. v235.count   .. v16("\113\158\60","\220\81\226\28")   .. v271 ;end if (v235.enableLifes and (v235.lifes>0)) then v271=""   .. v235.lifes   .. v16("\83\201\194","\167\115\181\226\155\138")   .. v271 ;end v236:setText(v271);v236:setColor(v272);end end end);local v78=g_game.getLocalPlayer();macro(1,function() if  not trapIcon.title:isOn() then return;end if isInPz() then return;end local v175=v78:getHealthPercent();for v237,v238 in ipairs(storageProfilesTraps.trapspells) do if (v238.enabled and g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=calculatePercentage(v238.selfHealth))) then if ( not v238.totalCooldown or (v238.totalCooldown<=now)) then if ( not canCasttrap() and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer()) then stopCombo=now + 50 ;forceSay(v238.spellCast);end end end end end);onTalk(function(v176,v177,v178,v179,v180,v181) v179=v179:lower();for v239,v240 in ipairs(storageProfilesTraps.trapspells) do if (v179==v240.orangeSpell) then if v240.enableLifes then v240.activeCooldown=(now + (v240.cooldownActive * 1000)) -250 ;v240.totalCooldown=(now + (v240.cooldownTotal * 1000)) -250 ;v240.lifes=v240.amountLifes;end if (v240.enableRevive and  not v240.alreadyChecked) then v240.totalCooldown=(now + (v240.cooldownTotal * 1000)) -250 ;v240.activeCooldown=(now + (v240.cooldownActive * 1000)) -250 ;v240.alreadyChecked=true;end if v240.enableMultiple then if (v240.count>0) then v240.count=v240.count-1 ;v240.activeCooldown=(now + (v240.cooldownActive * 1000)) -250 ;if (v240.count==0) then v240.totalCooldown=(now + (v240.cooldownTotal * 1000)) -250 ;v240.canReset=true;break;end end end if  not (v240.enableLifes or v240.enableRevive or v240.enableMultiple) then v240.activeCooldown=(now + (v240.cooldownActive * 1000)) -250 ;v240.totalCooldown=(now + (v240.cooldownTotal * 1000)) -250 ;warn(v179);break;end end end end);end traps();UI.Separator();Panels.HealthItem();Panels.HealthItem();UI.Separator();Panels.ManaItem();Panels.ManaItem();UI.Separator();local v25=macro(200,v16("\201\35\229\73\111\126\209\227\48\238\28\64\59\251","\166\130\66\135\60\27\17"),function() local v79=g_game.getLocalPlayer();local v80=v79:getPosition();local v81=v79:getDirection();local v82={x=v80.x,y=v80.y,z=v80.z};if (v81==0) then v82.y=v82.y-1 ;elseif (v81==1) then v82.x=v82.x + 1 ;elseif (v81==2) then v82.y=v82.y + 1 ;elseif (v81==3) then v82.x=v82.x-1 ;end local v83=g_map.getTile(v82);if  not v83 then return;end local v84=10675;g_game.useInventoryItemWith(v84,v83:getTopUseThing());end);function ativarquebrarTrap() v25.setOn();end function desativarquebrarTrap() v25.setOff();end g_keyboard.bindKeyDown("*",ativarquebrarTrap);g_keyboard.bindKeyUp("*",desativarquebrarTrap);
