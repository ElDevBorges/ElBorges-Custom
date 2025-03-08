

local v0=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v0=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v1=g_resources.listDirectoryFiles("/bot/"   .. v0   .. "/vBot" ,true,false);for v80,v81 in ipairs(v1) do local v82=0 + 0 ;local v83;while true do if (v82==(0 + 0)) then v83=v81:split(".");if ((v83[ #v83]:lower()=="ui") or (v83[ #v83]:lower()=="otui")) then g_ui.importStyle(v81);end break;end end end local function v2(v84) return dofile("/eldevborges/"   .. v84   .. ".lua" );end local v3={"vlib","spyy_level","configs"};for v85,v86 in ipairs(v3) do v2(v86);end scriptFuncs={};comboSpellsWidget={};fugaSpellsWidgets={};scriptFuncs.readProfile=function(v87,v88) if g_resources.fileExists(v87) then local v447,v448=pcall(function() return json.decode(g_resources.readFileContents(v87));end);if  not v447 then return onError("Erro carregando arquivo ("   .. v87   .. "). Para consertar o problema, exclua o arquivo. Detalhes: "   .. v448 );end v88(v448);end end;scriptFuncs.saveProfile=function(v89,v90) local v91=0;local v92;local v93;while true do if (v91==(1770 -(1749 + 20))) then if (v93:len()>(100 * (244 + 780) * 1024)) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v89,v93);break;end if (v91==(1322 -(1249 + 73))) then v92,v93=pcall(function() return json.encode(v90,1 + 1 );end);if  not v92 then return onError("Erro salvando configuração. Detalhes: "   .. v93 );end v91=1;end end end;storageProfiles={comboSpells={},fugaSpells={},keySpells={}};MAIN_DIRECTORY="/bot/"   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. "/storage/" ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. ".json" ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v94) local v95=1145 -(466 + 679) ;while true do if (v95==(2 -1)) then if (type(storageProfiles.fugaSpells)~="table") then storageProfiles.fugaSpells={};end if (type(storageProfiles.keySpells)~="table") then storageProfiles.keySpells={};end break;end if (v95==(0 -0)) then storageProfiles=v94;if (type(storageProfiles.comboSpells)~="table") then storageProfiles.comboSpells={};end v95=1901 -(106 + 1794) ;end end end);scriptFuncs.reindexTable=function(v96) if ( not v96 or (type(v96)~="table")) then return;end local v97=0 + 0 ;for v338,v339 in pairs(v96) do v97=v97 + 1 + 0 ;v339.index=v97;end end;function firstLetterUpper(v98) return (v98:gsub("(%a)([%w_']*)",function(v341,v342) return v341:upper()   .. v342:lower() ;end));end function formatTime(v99) if (v99<(177 -117)) then return v99   .. "s" ;else local v449=0;local v450;local v451;while true do if (v449==(2 -1)) then return string.format("%dm %02ds",v450,v451);end if (v449==0) then v450=math.floor(v99/(174 -(4 + 110)) );v451=v99%(644 -(57 + 527)) ;v449=1428 -(41 + 1386) ;end end end end function formatRemainingTime(v100) local v101=103 -(17 + 86) ;local v102;local v103;while true do if (v101==(0 + 0)) then v102=(v100-now)/1000 ;v103="";v101=1 -0 ;end if (v101==1) then v103=string.format("%.0f",(v100-now)/(2895 -1895) )   .. "s" ;return v103;end end end function attachSpellWidgetCallbacks(v104,v105,v106) v104.onDragEnter=function(v343,v344) local v345=0;while true do if (v345==(167 -(122 + 44))) then v343.movingReference={x=v344.x-v343:getX() ,y=v344.y-v343:getY() };return true;end if (v345==0) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v343:breakAnchors();v345=1;end end end;v104.onDragMove=function(v346,v347,v348) local v349=0 -0 ;local v350;local v351;local v352;while true do if (v349==(6 -4)) then if v106[v105] then v106[v105].widgetPos={x=v351,y=v352};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end return true;end if ((0 + 0)==v349) then v350=v346:getParent():getRect();v351=math.min(math.max(v350.x,v347.x-v346.movingReference.x ),(v350.x + v350.width) -v346:getWidth() );v349=1 + 0 ;end if (v349==1) then v352=math.min(math.max(v350.y-v346:getParent():getMarginTop() ,v347.y-v346.movingReference.y ),(v350.y + v350.height) -v346:getHeight() );v346:move(v351,v352);v349=3 -1 ;end end end;v104.onDragLeave=function(v353,v354) return true;end;end function stopToCast() for v355,v356 in ipairs(storageProfiles.fugaSpells) do local v357=65 -(30 + 35) ;while true do if (v357==(0 + 0)) then if (v356.enabled and v356.activeCooldown and (v356.activeCooldown>=now)) then return true;end if (hppercent()<=(calculatePercentage(v356.selfHealth) + 5)) then if ( not v356.totalCooldown or (v356.totalCooldown<=now)) then return true;end end break;end end end return false;end function isAnySelectedKeyPressed() local v110=0;while true do if (v110==0) then for v531,v532 in ipairs(storageProfiles.keySpells) do if (v532.enabled and (modules.corelib.g_keyboard.isKeyPressed(v532.keyPress))) then return true;end end return false;end end end DelayMacro={};DelayMacro.horizontalScrollBar=[[
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
]];storage.scrollBars1=storage.scrollBars1 or {} ;local function v9(v111,v112,v113,v114,v115) local v116=setupUI(DelayMacro.horizontalScrollBar,panel);v116.scroll:setRange(v113,v114);if ((v114-v113)>(2257 -(1043 + 214))) then v116.scroll:setStep(100);elseif ((v114-v113)>100) then v116.scroll:setStep(37 -27 );end v116.scroll:setValue(storage.scrollBars1[v111] or v115 );v116.scroll.onValueChange=function(v358,v359) storage.scrollBars1[v111]=v359;v116.scroll:setText(v112   .. v359 );end;v116.text:setText("MACRO DELAY:");v116.scroll.onValueChange(v116.scroll,v116.scroll:getValue());end setDefaultTab("Main");v9("macroDelay","",1222 -(323 + 889) ,2691 -1691 ,780 -(361 + 219) );UI.Label("STACK+MUNDO"):setFont("cipsoftFont");addTextEdit("Spell Stack, Spell Mundo, Key",storage.stackConfig or "Spell stack, Mundo, Distancia, Key" ,function(v118,v119) storage.stackConfig=v119;end,rightPanel);local v10=modules.corelib.g_keyboard.isKeyPressed;macro(321 -(53 + 267) ,function() local v121=0 + 0 ;local v122;local v123;local v124;while true do if (v121==(413 -(15 + 398))) then v122=storage.stackConfig:split(",");v123=g_game.getAttackingCreature();v121=983 -(18 + 964) ;end if (v121==(3 -2)) then v124=pos();if v10(v122[2 + 1 ]) then if  not g_game.isAttacking() then return;end local v575=v123:getPosition();if  not v575 then return;end local v576=getDistanceBetween(v124,v575);if (v576>(2 + 0)) then local v673=850 -(20 + 830) ;while true do if (v673==(0 + 0)) then stopCombo=now + (376 -(116 + 10)) ;say(v122[1 + 0 ]);break;end end end if (v576<=2) then local v674=738 -(542 + 196) ;while true do if (v674==(0 -0)) then stopCombo=now + 250 ;say(v122[2]);break;end end end end break;end end end,rightPanel);local v11={W=0,A=0 + 0 ,S=0,D=0 + 0 };onKeyPress(function(v125) for v361,v362 in pairs(v11) do if (v125==v361) then g_game.setChaseMode(v362);end end end);macro(1 + 0 ,function() local v126=storage.stackConfig:split(",");if v10(v126[7 -4 ]) then g_game.setChaseMode(2 -1 );end end);UI.Label("COMBO/FUGAS"):setFont("cipsoftFont");scriptFuncs={};comboSpellsWidget={};fugaSpellsWidgets={};scriptFuncs.readProfile=function(v127,v128) if g_resources.fileExists(v127) then local v452=1551 -(1126 + 425) ;local v453;local v454;while true do if (v452==(406 -(118 + 287))) then v128(v454);break;end if (v452==0) then v453,v454=pcall(function() return json.decode(g_resources.readFileContents(v127));end);if  not v453 then return onError("Erro carregando arquivo ("   .. v127   .. "). Para consertar o problema, exclua o arquivo. Detalhes: "   .. v454 );end v452=3 -2 ;end end end end;scriptFuncs.saveProfile=function(v129,v130) local v131=1121 -(118 + 1003) ;local v132;local v133;while true do if (v131==0) then v132,v133=pcall(function() return json.encode(v130,2);end);if  not v132 then return onError("Erro salvando configuração. Detalhes: "   .. v133 );end v131=2 -1 ;end if (v131==1) then if (v133:len()>(100 * (1401 -(142 + 235)) * 1024)) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v129,v133);break;end end end;storageProfiles={comboSpells={},fugaSpells={},keySpells={}};MAIN_DIRECTORY="/bot/"   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. "/storage/" ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. ".json" ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end function resetCooldowns() if storageProfiles then local v455=0;while true do if (v455==(0 -0)) then if storageProfiles.comboSpells then for v708,v709 in ipairs(storageProfiles.comboSpells) do v709.cooldownSpells=nil;end end if storageProfiles.fugaSpells then for v711,v712 in ipairs(storageProfiles.fugaSpells) do v712.totalCooldown=nil;v712.activeCooldown=nil;end end break;end end end end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v134) local v135=0 + 0 ;while true do if (v135==2) then resetCooldowns();break;end if ((978 -(553 + 424))==v135) then if (type(storageProfiles.fugaSpells)~="table") then storageProfiles.fugaSpells={};end if (type(storageProfiles.keySpells)~="table") then storageProfiles.keySpells={};end v135=2;end if (v135==0) then storageProfiles=v134;if (type(storageProfiles.comboSpells)~="table") then storageProfiles.comboSpells={};end v135=1 -0 ;end end end);scriptFuncs.reindexTable=function(v136) if ( not v136 or (type(v136)~="table")) then return;end local v137=0;for v363,v364 in pairs(v136) do local v365=0 + 0 ;while true do if (v365==0) then v137=v137 + 1 + 0 ;v364.index=v137;break;end end end end;function firstLetterUpper(v138) return (v138:gsub("(%a)([%w_']*)",function(v366,v367) return v366:upper()   .. v367:lower() ;end));end storage['iconScripts']=storage['iconScripts'] or {comboMacro=true,fugaMacro=false,showInfos=false,keyMacro=false} ;local v13=storage['iconScripts'];function removeTable(v139,v140) table.remove(v139,v140);end function canCastFuga() local v141=0 + 0 ;while true do if (v141==(0 + 0)) then for v534,v535 in ipairs(storageProfiles.fugaSpells) do local v536=0 + 0 ;local v537;local v538;local v539;while true do if (v536==1) then v539=v535.activeCooldown and (v535.activeCooldown>=now) ;if (v537 or v539) then return true;end break;end if (v536==(0 -0)) then v537=v535.activeCooldown and (v535.activeCooldown>=now) and v535.enableLifes and (v535.lifes>(0 -0)) ;v538=v535.enableMultiple and (v535.count>0) ;v536=2 -1 ;end end end return false;end end end function getPlayersAttack(v142) local v143=0;local v144;while true do if ((0 + 0)==v143) then v142=v142 or false ;v144=0 -0 ;v143=754 -(239 + 514) ;end if (v143==(1 + 0)) then for v540,v541 in ipairs(getSpectators(v142)) do if (v541:isPlayer() and v541:isTimedSquareVisible() and table.equals(v541:getTimedSquareColor(),colorToMatch)) then v144=v144 + (1330 -(797 + 532)) ;delay(2544 + 956 );end end return v144;end end end local v14={};local v15=2 + 1 ;onTextMessage(function(v145,v146) if v146:find("hitpoints due to an attack by") then local v456="You lose (%d+) hitpoints due to an attack by (.+)%.";local v457,v458=v146:match(v456);local v459=getCreatureByName(v458);if (v459 and v459:isPlayer()) then local v542=false;for v580,v581 in ipairs(v14) do if (v581.name==v458) then v542=true;v581.time=os.time();break;end end if  not v542 then table.insert(v14,{name=v458,time=os.time()});end end end end);macro(2 -1 ,function() local v147=os.time();for v368= #v14,1, -(1203 -(373 + 829)) do local v369=731 -(476 + 255) ;local v370;while true do if (v369==(1130 -(369 + 761))) then v370=v14[v368];if ((v147-v370.time)>v15) then table.remove(v14,v368);end break;end end end end);function calculatePercentage(v148) local v149= #v14;return (v149 and (v148 + (v149 * (5 + 2)))) or v148 ;end function stopToCast() if  not fugaIcon.title:isOn() then return false;end for v371,v372 in ipairs(storageProfiles.fugaSpells) do if (v372.enabled and v372.activeCooldown and (v372.activeCooldown>=now)) then return false;end if (hppercent()<=(calculatePercentage(v372.selfHealth) + (5 -2))) then if ( not v372.totalCooldown or (v372.totalCooldown<=now)) then return true;end end end return false;end function isAnySelectedKeyPressed() local v150=0 -0 ;while true do if (v150==(238 -(64 + 174))) then for v544,v545 in ipairs(storageProfiles.keySpells) do if (v545.enabled and (modules.corelib.g_keyboard.isKeyPressed(v545.keyPress))) then return true;end end return false;end end end function formatTime(v151) if (v151<(9 + 51)) then return v151   .. "s" ;else local v460=0 -0 ;local v461;local v462;while true do if (v460==(337 -(144 + 192))) then return string.format("%dm %02ds",v461,v462);end if (v460==0) then v461=math.floor(v151/60 );v462=v151%(276 -(42 + 174)) ;v460=1;end end end end function formatRemainingTime(v152) local v153=(v152-now)/1000 ;local v154="";v154=string.format("%.0f",(v152-now)/(752 + 248) )   .. "s" ;return v154;end function attachSpellWidgetCallbacks(v155,v156,v157) v155.onDragEnter=function(v373,v374) local v375=0 + 0 ;while true do if ((0 + 0)==v375) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v373:breakAnchors();v375=1505 -(363 + 1141) ;end if (v375==(1581 -(1183 + 397))) then v373.movingReference={x=v374.x-v373:getX() ,y=v374.y-v373:getY() };return true;end end end;v155.onDragMove=function(v376,v377,v378) local v379=0 -0 ;local v380;local v381;local v382;while true do if (v379==2) then if v157[v156] then local v621=0 + 0 ;while true do if (v621==(0 + 0)) then v157[v156].widgetPos={x=v381,y=v382};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end return true;end if (v379==(1976 -(1913 + 62))) then v382=math.min(math.max(v380.y-v376:getParent():getMarginTop() ,v377.y-v376.movingReference.y ),(v380.y + v380.height) -v376:getHeight() );v376:move(v381,v382);v379=2 + 0 ;end if (0==v379) then v380=v376:getParent():getRect();v381=math.min(math.max(v380.x,v377.x-v376.movingReference.x ),(v380.x + v380.width) -v376:getWidth() );v379=2 -1 ;end end end;v155.onDragLeave=function(v383,v384) return true;end;end function forceSay(v161) if (type(v161)~="table") then for v471=1933 -(565 + 1368) ,10 do local v472=0 -0 ;while true do if (v472==(1661 -(1477 + 184))) then stopCombo=now + (340 -90) ;return say(v161);end end end end for v385=0,10 + 0  do stopCombo=now + (1106 -(564 + 292)) ;return say(v161.toSay or v161.text );end end local v16=[[
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
]];local v17=[[
UIWidget
  background-color: black
  font: verdana-11px-rounded
  opacity: 0.70
  padding: 0 8
  focusable: true
  phantom: false
  draggable: true
  text-auto-resize: true
]];combobotPanelName="combobot";local v18=setupUI([[
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
]]);v18:setId(combobotPanelName);keyIcon=setupUI([[
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
]]);comboInterface=setupUI([[
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
      
]],g_ui.getRootWidget());comboInterface:hide();fugaIcon=setupUI([[
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
]]);fugaInterface=setupUI([[
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

      
]],g_ui.getRootWidget());fugaInterface:hide();keyInterface=setupUI([[
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
      
]],g_ui.getRootWidget());keyInterface:hide();v18.title:setOn(v13.comboMacro);v18.title.onClick=function(v162) v13.comboMacro= not v13.comboMacro;v162:setOn(v13.comboMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v18.settings.onClick=function(v164) if  not comboInterface:isVisible() then local v463=0;while true do if (v463==1) then comboInterface:focus();break;end if (v463==(0 -0)) then comboInterface:show();comboInterface:raise();v463=2 -1 ;end end else comboInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end end;comboInterface.closeButton.onClick=function(v165) local v166=0;while true do if (v166==(304 -(244 + 60))) then comboInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;comboInterface.cooldown:setText("0ms");comboInterface.cooldown.onValueChange=function(v167,v168) if (v168>=(769 + 231)) then v167:setText((v168/(1476 -(41 + 435)))   .. "s" );else v167:setText(v168   .. "ms" );end end;comboInterface.distance:setText("0");comboInterface.distance.onValueChange=function(v169,v170) v169:setText(v170);end;comboInterface.sameSpell:setChecked(true);comboInterface.orangeSpell:setEnabled(false);comboInterface.sameSpell.onCheckChange=function(v171,v172) if v172 then comboInterface.orangeSpell:setEnabled(false);else comboInterface.orangeSpell:setEnabled(true);comboInterface.orangeSpell:setText(comboInterface.castSpell:getText());end end;function refreshComboList(v173,v174) if v174 then for v473,v474 in pairs(v173.spellList:getChildren()) do v474:destroy();end for v475,v476 in pairs(comboSpellsWidget) do v476:destroy();end for v477,v478 in ipairs(v174) do local v479=setupUI(v16,v173.spellList);local v480=setupUI(v17,g_ui.getRootWidget());v480:setText(firstLetterUpper(v478.spellCast));attachSpellWidgetCallbacks(v480,v478.index,storageProfiles.comboSpells);if  not v478.widgetPos then v478.widgetPos={x=0,y=50};end v480:setPosition(v478.widgetPos);comboSpellsWidget[v478.index]=v480;comboSpellsWidget[v478.index]=v480;v479.onDoubleClick=function(v547) local v548=v478;v173.castSpell:setText(v548.spellCast);v173.orangeSpell:setText(v548.orangeSpell);v173.onScreen:setText(v548.onScreen);v173.cooldown:setValue(v548.cooldown);v173.distance:setValue(v548.distance);for v583,v584 in ipairs(storageProfiles.comboSpells) do if (v584==v478) then removeTable(storageProfiles.comboSpells,v583);end end scriptFuncs.reindexTable(v174);v480:destroy();v479:destroy();end;v479.enabled:setChecked(v478.enabled);v479.enabled:setTooltip(( not v478.enabled and "Enable Spell") or "Disable Spell" );v479.enabled.onClick=function(v549) local v550=0;while true do if (v550==1) then v479.enabled:setTooltip(( not v478.enabled and "Enable Spell") or "Disable Spell" );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if (v550==0) then v478.enabled= not v478.enabled;v479.enabled:setChecked(v478.enabled);v550=1002 -(938 + 63) ;end end end;v479.showTimespell:setChecked(v478.enableTimeSpell);v479.showTimespell:setTooltip(( not v478.enableTimeSpell and "Enable Time Spell") or "Disable Time Spell" );v479.showTimespell.onClick=function(v551) v478.enableTimeSpell= not v478.enableTimeSpell;v479.showTimespell:setChecked(v478.enableTimeSpell);v479.showTimespell:setTooltip(( not v478.enableTimeSpell and "Enable Time Spell") or "Disable Time Spell" );if v478.enableTimeSpell then v480:show();else v480:hide();end scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;if v478.enableTimeSpell then v480:show();else v480:hide();end v479.remove.onClick=function(v553) local v554=0 + 0 ;while true do if (v554==0) then for v715,v716 in ipairs(storageProfiles.comboSpells) do if (v716==v478) then removeTable(storageProfiles.comboSpells,v715);end end scriptFuncs.reindexTable(v174);v554=1126 -(936 + 189) ;end if (v554==(1 + 0)) then v480:destroy();v479:destroy();break;end end end;v479.onClick=function(v555) comboInterface.moveDown:show();comboInterface.moveUp:show();end;v479.textToSet:setText(firstLetterUpper("Jutsu: "   .. v478.spellCast   .. " | Cooldown: "   .. v478.cooldown   .. " | Distance: "   .. v478.distance   .. "" ));v479.textToSet:setColor("white");v479.textToSet:setFont("verdana-11px-rounded");v479:setTooltip("Msg Laranja: "   .. v478.orangeSpell   .. " | Nome na Tela: "   .. v478.onScreen   .. " " );end end end comboInterface.insertSpell.onClick=function(v175) local v176=1613 -(1565 + 48) ;local v177;local v178;local v179;local v180;local v181;local v182;while true do if (v176==(0 + 0)) then v177=comboInterface.castSpell:getText():trim():lower();v178=comboInterface.orangeSpell:getText():trim():lower();v179=comboInterface.onScreen:getText();v178=((v178:len()==(1138 -(782 + 356))) and v177) or v178 ;v176=268 -(176 + 91) ;end if (v176==(13 -8)) then comboInterface.cooldown:setValue(0 -0 );pillsInterface.distance:setValue(0);break;end if (v176==(1094 -(975 + 117))) then if ( not v179 or (v179:len()==(1875 -(157 + 1718)))) then return warn("Invalid Text On Screen");end if (v180==(0 + 0)) then return warn("Invalid Cooldown.");end if (v181==0) then return warn("Invalid Distance");end v182={index= #storageProfiles.comboSpells + (3 -2) ,spellCast=v177,onScreen=v179,orangeSpell=v178,cooldown=v180,distance=v181,enableTimeSpell=true,enabled=true};v176=10 -7 ;end if (v176==(1019 -(697 + 321))) then v180=comboInterface.cooldown:getValue();v181=comboInterface.distance:getValue();if ( not v177 or (v177:len()==(0 -0))) then return warn("Invalid Spell Name.");end if ( not comboInterface.sameSpell:isChecked() and (comboInterface.orangeSpell:getText():len()==0)) then return warn("Invalid Orange Spell.");end v176=3 -1 ;end if (v176==(6 -3)) then table.insert(storageProfiles.comboSpells,v182);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);refreshComboList(comboInterface,storageProfiles.comboSpells);comboInterface.castSpell:clearText();v176=2 + 2 ;end if (v176==4) then comboInterface.orangeSpell:clearText();comboInterface.onScreen:clearText();comboInterface.sameSpell:setChecked(true);comboInterface.orangeSpell:setEnabled(false);v176=5;end end end;refreshComboList(comboInterface,storageProfiles.comboSpells);comboInterface.moveUp.onClick=function() local v183=comboInterface.spellList:getFocusedChild();if  not v183 then return;end local v184=comboInterface.spellList:getChildIndex(v183);if (v184<(3 -1)) then return;end comboInterface.spellList:moveChildToIndex(v183,v184-1 );comboInterface.spellList:ensureChildVisible(v183);storageProfiles.comboSpells[v184].index=v184-(2 -1) ;storageProfiles.comboSpells[v184-(1228 -(322 + 905)) ].index=v184;table.sort(storageProfiles.comboSpells,function(v386,v387) return v386.index<v387.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;comboInterface.moveDown.onClick=function() local v187=611 -(602 + 9) ;local v188;local v189;while true do if (v187==(1189 -(449 + 740))) then v188=comboInterface.spellList:getFocusedChild();if  not v188 then return;end v187=873 -(826 + 46) ;end if (v187==4) then table.sort(storageProfiles.comboSpells,function(v556,v557) return v556.index<v557.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if (v187==(949 -(245 + 702))) then comboInterface.spellList:moveChildToIndex(v188,v189 + (3 -2) );comboInterface.spellList:ensureChildVisible(v188);v187=3;end if (v187==1) then v189=comboInterface.spellList:getChildIndex(v188);if (v189>=comboInterface.spellList:getChildCount()) then return;end v187=1 + 1 ;end if (v187==3) then storageProfiles.comboSpells[v189].index=v189 + 1 ;storageProfiles.comboSpells[v189 + 1 ].index=v189;v187=1902 -(260 + 1638) ;end end end;comboInterface.findCD.onClick=function(v190) local v191=440 -(382 + 58) ;while true do if (0==v191) then detectOrangeSpell,testSpell=true,true;spellTime={0,""};break;end end end;macro(1 -0 ,function() if testSpell then say(comboInterface.castSpell:getText());end end);onTalk(function(v192,v193,v194,v195,v196,v197) local v198=0 -0 ;local v199;while true do if (v198==(1206 -(902 + 303))) then v199=((comboInterface.orangeSpell:getText():len()>(0 -0)) and comboInterface.orangeSpell:getText():lower():trim()) or comboInterface.castSpell:getText():lower():trim() ;if (v195:lower():trim()==v199) then if (spellTime[2]==v199) then local v677=0;while true do if (v677==0) then comboInterface.cooldown:setValue(now-spellTime[2 -1 ] );spellTime={now,v199};v677=215 -(22 + 192) ;end if (v677==(684 -(483 + 200))) then detectOrangeSpell=false;testSpell=false;break;end end else spellTime={now,v199};end end break;end if (v198==(0 -0)) then if  not detectOrangeSpell then return;end if (player:getName()~=v192) then return;end v198=1 -0 ;end end end);macro(766 -(468 + 297) ,function() local v200=562 -(334 + 228) ;while true do if (v200==0) then if  not (comboSpellsWidget or storageProfiles.comboSpells) then return;end for v558,v559 in ipairs(storageProfiles.comboSpells) do local v560=comboSpellsWidget[v559.index];if v560 then if ( not v559.cooldownSpells or (v559.cooldownSpells<now)) then local v717=0;while true do if (v717==(0 -0)) then v560:setColor("green");v560:setText(firstLetterUpper(v559.onScreen)   .. " |  0s" );break;end end else v560:setColor("red");v560:setText(firstLetterUpper(v559.onScreen)   .. " | "   .. formatRemainingTime(v559.cooldownSpells) );end end end break;end end end);fugaIcon.title:setOn(v13.fugaMacro);fugaIcon.title.onClick=function(v201) v13.fugaMacro= not v13.fugaMacro;v201:setOn(v13.fugaMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;fugaIcon.settings.onClick=function(v203) if  not fugaInterface:isVisible() then fugaInterface:show();fugaInterface:raise();fugaInterface:focus();else local v464=0 -0 ;while true do if ((0 -0)==v464) then fugaInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end end;fugaInterface.closeButton.onClick=function(v204) local v205=0 + 0 ;while true do if (v205==0) then fugaInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;fugaInterface.hppercent:setText("0%");fugaInterface.hppercent.onValueChange=function(v206,v207) v206:setText(v207   .. "%" );end;fugaInterface.cooldownTotal:setText("0s");fugaInterface.cooldownTotal.onValueChange=function(v208,v209) local v210=formatTime(v209);v208:setText(v209   .. "s" );end;fugaInterface.cooldownActive:setText("0s");fugaInterface.cooldownActive.onValueChange=function(v211,v212) local v213=0;local v214;while true do if ((236 -(141 + 95))==v213) then v214=formatTime(v212);v211:setText(v212   .. "s" );break;end end end;fugaIcon.showInfos:setChecked(v13.showInfos);fugaIcon.showInfos.onClick=function(v215) local v216=0 + 0 ;while true do if ((0 -0)==v216) then v13.showInfos= not v13.showInfos;v215:setChecked(v13.showInfos);break;end end end;fugaInterface.sameSpell:setChecked(true);fugaInterface.orangeSpell:setEnabled(false);fugaInterface.sameSpell.onCheckChange=function(v217,v218) if v218 then fugaInterface.orangeSpell:setEnabled(false);else fugaInterface.orangeSpell:setEnabled(true);fugaInterface.orangeSpell:setText(fugaInterface.castSpell:getText());end end;fugaInterface.lifesValue:hide();fugaInterface.lifesOption.onCheckChange=function(v219,v220) if v220 then fugaInterface.multipleOption:hide();fugaInterface.lifesValue:show();else local v465=0 -0 ;while true do if (v465==(0 + 0)) then fugaInterface.multipleOption:show();fugaInterface.lifesValue:hide();break;end end end end;function refreshFugaList(v221,v222) if v222 then for v490,v491 in pairs(v221.spellList:getChildren()) do v491:destroy();end for v492,v493 in pairs(fugaSpellsWidgets) do v493:destroy();end for v494,v495 in ipairs(v222) do local v496=0 -0 ;local v497;local v498;while true do if (v496==(5 + 1)) then v497.textToSet:setColor("white");v497.textToSet:setFont("verdana-11px-rounded");v497:setTooltip("Orange Message: "   .. v495.orangeSpell   .. " | On Screen: "   .. v495.onScreen   .. " | Total Cooldown: "   .. v495.cooldownTotal   .. "s | Active Cooldown: "   .. v495.cooldownActive   .. "s | Hppercent: "   .. v495.selfHealth );break;end if ((2 + 1)==v496) then v497.enabled:setChecked(v495.enabled);v497.enabled:setTooltip(( not v495.enabled and "Enable Spell") or "Disable Spell" );v497.enabled.onClick=function(v678) local v679=0 -0 ;while true do if (v679==(1 + 0)) then v497.enabled:setTooltip(( not v495.enabled and "Enable Spell") or "Disable Spell" );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if (v679==(163 -(92 + 71))) then v495.enabled= not v495.enabled;v497.enabled:setChecked(v495.enabled);v679=1 + 0 ;end end end;v496=6 -2 ;end if (v496==(766 -(574 + 191))) then attachSpellWidgetCallbacks(v498,v495.index,storageProfiles.fugaSpells);if  not v495.widgetPos then v495.widgetPos={x=0 + 0 ,y=125 -75 };end if v495.enableTimeSpell then v498:show();else v498:hide();end v496=2;end if ((2 + 0)==v496) then v498:setPosition(v495.widgetPos);fugaSpellsWidgets[v495.index]=v498;v497.onDoubleClick=function(v680) local v681=0;local v682;while true do if (v681==1) then v221.hppercent:setValue(v682.selfHealth);v221.cooldownTotal:setValue(v682.cooldownTotal);v221.cooldownActive:setValue(v682.cooldownActive);for v747,v748 in ipairs(storageProfiles.fugaSpells) do if (v748==v495) then removeTable(storageProfiles.fugaSpells,v747);end end v681=851 -(254 + 595) ;end if (v681==2) then scriptFuncs.reindexTable(v222);v498:destroy();v497:destroy();break;end if (v681==(126 -(55 + 71))) then v682=v495;v221.castSpell:setText(v682.spellCast);v221.orangeSpell:setText(v682.orangeSpell);v221.onScreen:setText(v682.onScreen);v681=1 -0 ;end end end;v496=1793 -(573 + 1217) ;end if (v496==4) then v497.showTimespell:setChecked(v495.enableTimeSpell);v497.showTimespell:setTooltip(( not v495.enableTimeSpell and "Enable Time Spell") or "Disable Time Spell" );v497.showTimespell.onClick=function(v683) v495.enableTimeSpell= not v495.enableTimeSpell;v497.showTimespell:setChecked(v495.enableTimeSpell);v497.showTimespell:setTooltip(( not v495.enableTimeSpell and "Enable Time Spell") or "Disable Time Spell" );if v495.enableTimeSpell then v498:show();else v498:hide();end scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v496=5;end if (v496==(0 -0)) then v497=setupUI(v16,v221.spellList);v498=setupUI(v17,g_ui.getRootWidget());v498:setText(firstLetterUpper(v495.spellCast));v496=1;end if (v496==(1 + 4)) then v497.remove.onClick=function(v685) for v719,v720 in ipairs(storageProfiles.fugaSpells) do if (v720==v495) then removeTable(storageProfiles.fugaSpells,v719);end end scriptFuncs.reindexTable(v222);v498:destroy();v497:destroy();end;v497.onClick=function(v686) fugaInterface.moveDown:show();fugaInterface.moveUp:show();end;v497.textToSet:setText(firstLetterUpper(v495.spellCast));v496=6;end end end end end fugaInterface.moveUp.onClick=function() local v223=0;local v224;local v225;while true do if (v223==(0 -0)) then v224=fugaInterface.spellList:getFocusedChild();if  not v224 then return;end v223=940 -(714 + 225) ;end if (v223==2) then fugaInterface.spellList:moveChildToIndex(v224,v225-(2 -1) );fugaInterface.spellList:ensureChildVisible(v224);v223=3 -0 ;end if (v223==1) then v225=fugaInterface.spellList:getChildIndex(v224);if (v225<(1 + 1)) then return;end v223=2;end if (v223==3) then storageProfiles.fugaSpells[v225].index=v225-(1 -0) ;storageProfiles.fugaSpells[v225-(807 -(118 + 688)) ].index=v225;v223=4;end if ((52 -(25 + 23))==v223) then table.sort(storageProfiles.fugaSpells,function(v561,v562) return v561.index<v562.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;fugaInterface.moveDown.onClick=function() local v226=0 + 0 ;local v227;local v228;while true do if (v226==4) then table.sort(storageProfiles.fugaSpells,function(v563,v564) return v563.index<v564.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if ((1889 -(927 + 959))==v226) then storageProfiles.fugaSpells[v228].index=v228 + (3 -2) ;storageProfiles.fugaSpells[v228 + (733 -(16 + 716)) ].index=v228;v226=4;end if (v226==(1 -0)) then v228=fugaInterface.spellList:getChildIndex(v227);if (v228>=fugaInterface.spellList:getChildCount()) then return;end v226=99 -(11 + 86) ;end if (v226==0) then v227=fugaInterface.spellList:getFocusedChild();if  not v227 then return;end v226=2 -1 ;end if (2==v226) then fugaInterface.spellList:moveChildToIndex(v227,v228 + 1 );fugaInterface.spellList:ensureChildVisible(v227);v226=288 -(175 + 110) ;end end end;fugaInterface.insertSpell.onClick=function(v229) local v230=fugaInterface.castSpell:getText():trim();local v231=fugaInterface.orangeSpell:getText():trim();local v232=fugaInterface.onScreen:getText();v231=((v231:len()==(0 -0)) and v230) or v231 ;local v233=fugaInterface.hppercent:getValue();local v234=fugaInterface.cooldownTotal:getValue();local v235=fugaInterface.cooldownActive:getValue();if (v230:len()==(0 -0)) then return warn("Invalid Spell Name.");end if ( not fugaInterface.sameSpell:isChecked() and (v231:len()==0)) then return warn("Invalid Orange Spell.");end if (v232:len()==(1796 -(503 + 1293))) then return warn("Invalid Text On Screen");end if (v233==0) then return warn("Invalid Hppercent.");end if (v234==0) then return warn("Invalid Cooldown Total.");end local v236={index= #storageProfiles.fugaSpells + (2 -1) ,spellCast=v230,orangeSpell=v231,onScreen=v232,selfHealth=v233,cooldownActive=v235,cooldownTotal=v234,enableTimeSpell=true,enabled=true};if fugaInterface.lifesOption:isChecked() then local v466=0;while true do if (v466==(1 + 0)) then if (fugaInterface.lifesValue:getValue()==0) then return warn("Invalid Life Value.");end v236.amountLifes=fugaInterface.lifesValue:getValue();break;end if (v466==(1061 -(810 + 251))) then v236.lifes=0 + 0 ;v236.enableLifes=true;v466=1 + 0 ;end end end if fugaInterface.reviveOption:isChecked() then local v467=0;while true do if (v467==0) then v236.enableRevive=true;v236.alreadyChecked=false;break;end end end if fugaInterface.multipleOption:isChecked() then local v468=0;while true do if (v468==(0 + 0)) then v236.enableMultiple=true;v236.count=536 -(43 + 490) ;break;end end end table.insert(storageProfiles.fugaSpells,v236);refreshFugaList(fugaInterface,storageProfiles.fugaSpells);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);fugaInterface.castSpell:clearText();fugaInterface.orangeSpell:clearText();fugaInterface.onScreen:clearText();fugaInterface.cooldownTotal:setValue(733 -(711 + 22) );fugaInterface.cooldownActive:setValue(0);fugaInterface.hppercent:setValue(0 -0 );fugaInterface.reviveOption:setChecked(false);fugaInterface.lifesOption:setChecked(false);fugaInterface.multipleOption:setChecked(false);fugaInterface.multipleOption:show();fugaInterface.lifesValue:hide();end;refreshFugaList(fugaInterface,storageProfiles.fugaSpells);storage.widgetPos=storage.widgetPos or {} ;informationWidget={};local v42={"showText"};for v237,v238 in ipairs(v42) do informationWidget[v238]=setupUI(v17,g_ui.getRootWidget());end local function v43(v240) informationWidget[v240].onDragEnter=function(v388,v389) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v388:breakAnchors();v388.movingReference={x=v389.x-v388:getX() ,y=v389.y-v388:getY() };return true;end;informationWidget[v240].onDragMove=function(v391,v392,v393) local v394=0;local v395;local v396;local v397;while true do if (v394==(861 -(240 + 619))) then return true;end if (v394==(1 + 0)) then v397=math.min(math.max(v395.y-v391:getParent():getMarginTop() ,v392.y-v391.movingReference.y ),(v395.y + v395.height) -v391:getHeight() );v391:move(v396,v397);v394=2 -0 ;end if (v394==0) then v395=v391:getParent():getRect();v396=math.min(math.max(v395.x,v392.x-v391.movingReference.x ),(v395.x + v395.width) -v391:getWidth() );v394=1 + 0 ;end end end;informationWidget[v240].onDragLeave=function(v398,v399) storage.widgetPos[v240]={};storage.widgetPos[v240].x=v398:getX();storage.widgetPos[v240].y=v398:getY();return true;end;end for v244,v245 in pairs(informationWidget) do local v246=1744 -(1344 + 400) ;while true do if (v246==0) then v43(v244);informationWidget[v244]:setPosition(storage.widgetPos[v244] or {0 + 0 ,27 + 23 } );break;end end end local v44=informationWidget['showText'];macro(427 -327 ,function() if v13.showInfos then for v503,v504 in ipairs(storageProfiles.fugaSpells) do if v504.selfHealth then v44:show();v44:setText("INIMIGOS: "   .. getPlayersAttack(false)   .. " | PERCENT: "   .. calculatePercentage(v504.selfHealth)   .. "%" );return;end end else v44:hide();end end);macro(3 -2 ,function() if  not (fugaSpellsWidgets and storageProfiles.fugaSpells) then return;end for v403,v404 in ipairs(storageProfiles.fugaSpells) do local v405=fugaSpellsWidgets[v404.index];if v405 then local v505=1739 -(404 + 1335) ;local v506;local v507;while true do if (v505==(406 -(183 + 223))) then v506=firstLetterUpper(v404.onScreen);v507="green";v505=1 -0 ;end if (v505==(2 + 1)) then v405:setColor(v507);break;end if (v505==2) then if (v404.enableLifes and (v404.lifes>(0 + 0))) then v506=""   .. v404.lifes   .. " | "   .. v506 ;end v405:setText(v506);v505=340 -(10 + 327) ;end if (v505==1) then if (v404.activeCooldown and (v404.activeCooldown>now)) then local v721=0 + 0 ;while true do if (v721==1) then if (v404.enableLifes and (v404.lifes==0)) then v404.activeCooldown=nil;end break;end if (v721==(338 -(118 + 220))) then v506=v506   .. ": "   .. formatRemainingTime(v404.activeCooldown) ;v507="#00FFFF";v721=1 + 0 ;end end elseif (v404.totalCooldown and (v404.totalCooldown>now)) then local v738=449 -(108 + 341) ;while true do if (v738==(0 + 0)) then v506=v506   .. ": "   .. formatRemainingTime(v404.totalCooldown) ;v507="#FF4040";break;end end else v506=v506   .. ": 0s" ;if (v404.enableMultiple and v404.canReset) then local v754=0;while true do if (v754==(0 -0)) then v404.count=3;v404.canReset=false;break;end end end if v404.enableLifes then v404.lifes=0;end if v404.enableRevive then v404.alreadyChecked=false;end end if (v404.enableMultiple and (v404.count>0)) then v506=""   .. v404.count   .. " | "   .. v506 ;end v505=1495 -(711 + 782) ;end end end end end);keyIcon.title:setOn(v13.keyMacro);keyIcon.title.onClick=function(v247) v13.keyMacro= not v13.keyMacro;v247:setOn(v13.keyMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;keyIcon.settings.onClick=function(v249) if  not keyInterface:isVisible() then keyInterface:show();keyInterface:raise();keyInterface:focus();else local v469=0;while true do if (v469==(0 -0)) then keyInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end end;keyInterface.closeButton.onClick=function(v250) keyInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;keyInterface.key.onHoverChange=function(v251,v252) if v252 then x=true;onKeyPress(function(v508) local v509=0;while true do if ((469 -(270 + 199))==v509) then if  not x then return;end v251:setText(v508);break;end end end);else x=false;end end;function refreshKeyList(v253,v254) if v254 then for v510,v511 in pairs(v253.spellList:getChildren()) do v511:destroy();end for v512,v513 in ipairs(v254) do local v514=0;local v515;while true do if (v514==(1 + 1)) then v515.enabled:setTooltip(( not v513.enabled and "Enable Spell") or "Disable Spell" );v515.enabled.onClick=function(v687) v513.enabled= not v513.enabled;v515.enabled:setChecked(v513.enabled);v515.enabled:setTooltip(( not v513.enabled and "Enable Spell") or "Disable Spell" );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v514=1822 -(580 + 1239) ;end if (v514==(2 -1)) then v515.onDoubleClick=function(v689) local v690=0;local v691;while true do if (v690==(1 + 0)) then v253.castSpell:setText(v691.spellCast);for v749,v750 in ipairs(storageProfiles.keySpells) do if (v750==v513) then removeTable(storageProfiles.keySpells,v749);end end v690=1 + 1 ;end if (v690==(0 + 0)) then v691=v513;v253.key:setText(v691.keyPress);v690=2 -1 ;end if (v690==2) then scriptFuncs.reindexTable(v254);v515:destroy();break;end end end;v515.enabled:setChecked(v513.enabled);v514=2 + 0 ;end if (v514==0) then v515=setupUI(v16,v253.spellList);v515.showTimespell:hide();v514=1168 -(645 + 522) ;end if ((1793 -(1010 + 780))==v514) then v515.remove.onClick=function(v692) for v722,v723 in ipairs(storageProfiles.keySpells) do if (v723==v513) then removeTable(storageProfiles.keySpells,v722);end end scriptFuncs.reindexTable(storageProfiles.keySpells);v515:destroy();end;v515.textToSet:setText(firstLetterUpper(v513.spellCast)   .. " | Key: "   .. v513.keyPress );break;end end end end end keyInterface.insertKey.onClick=function(v255) local v256=0 + 0 ;local v257;local v258;while true do if (v256==(4 -3)) then if ( not v257 or (v257:len()==(0 -0))) then return warn("Invalid Key.");end for v565,v566 in ipairs(storageProfiles.keySpells) do if (v566.keyPress==v257) then return warn("Key Already Added.");end end v256=2;end if (v256==(1836 -(1045 + 791))) then v257=keyInterface.key:getText();v258=keyInterface.castSpell:getText():lower():trim();v256=2 -1 ;end if (v256==(2 -0)) then table.insert(storageProfiles.keySpells,{index= #storageProfiles.keySpells + (506 -(351 + 154)) ,spellCast=v258,keyPress=v257,enabled=true});refreshKeyList(keyInterface,storageProfiles.keySpells);v256=3;end if (v256==3) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);keyInterface.key:clearText();v256=1578 -(1281 + 293) ;end if (v256==(270 -(28 + 238))) then keyInterface.castSpell:clearText();break;end end end;refreshKeyList(keyInterface,storageProfiles.keySpells);macro(storage.scrollBars1.macroDelay,function() if  not v18.title:isOn() then return;end if (stopCombo and (stopCombo>=now)) then return;end if (stopToCast() or isAnySelectedKeyPressed() or  not g_game.isAttacking()) then return;end local v259=player:getPosition();local v260=g_game.getAttackingCreature();local v261=v260:getPosition();if  not v261 then return;end local v262=getDistanceBetween(v259,v261);for v406,v407 in ipairs(storageProfiles.comboSpells) do if (v407.enabled and (v262<=v407.distance)) then if ( not v407.cooldownSpells or (v407.cooldownSpells<=now)) then say(v407.spellCast);end end end end);local v50=g_game.getLocalPlayer();macro(2 -1 ,function() if  not fugaIcon.title:isOn() then return;end if isInPz() then return;end local v263=v50:getHealthPercent();for v408,v409 in ipairs(storageProfiles.fugaSpells) do if (v409.enabled and (v263<=calculatePercentage(v409.selfHealth))) then if ( not v409.totalCooldown or (v409.totalCooldown<=now)) then if  not canCastFuga() then stopCombo=now + 250 ;forceSay(v409.spellCast);end end end end end);macro(1560 -(1381 + 178) ,function() local v264=0;while true do if ((0 + 0)==v264) then if  not g_mouse.isPressed(6 + 1 ) then return;end if  not fugaIcon.title:isOn() then return;end v264=1;end if (v264==(1 + 0)) then for v567,v568 in ipairs(storageProfiles.fugaSpells) do if (v568.enabled and (g_mouse.isPressed(24 -17 ))) then if ( not v568.totalCooldown or (v568.totalCooldown<=now)) then if  not canCastFuga() then stopCombo=now + 250 ;return forceSay(v568.spellCast);end end end end break;end end end);macro(storage.scrollBars1.macroDelay,function() local v265=0 + 0 ;while true do if (v265==(471 -(381 + 89))) then for v569,v570 in ipairs(storageProfiles.keySpells) do if (v570.enabled and (modules.corelib.g_keyboard.areKeysPressed(v570.keyPress))) then local v631=0 + 0 ;while true do if ((0 + 0)==v631) then stopCombo=now + (428 -178) ;say(v570.spellCast);break;end end end end break;end if (v265==(1156 -(1074 + 82))) then if  not keyIcon.title:isOn() then return;end if modules.game_console:isChatEnabled() then return;end v265=1 -0 ;end end end);onTalk(function(v266,v267,v268,v269,v270,v271) v269=v269:lower();if (v266~=player:getName()) then return;end if (v269=="Bijuu Yaiba") then yaibaSlow=os.time() + (1799 -(214 + 1570)) ;end for v410,v411 in ipairs(CONFIG.pot) do if (v269==v411.orangeText:lower()) then v411.exhaust=now + v411.cooldown ;end end for v412,v413 in ipairs(CONFIG.pot2) do if (v269==v413.orangeText:lower()) then v413.exhaust=now + v413.cooldown ;end end for v414,v415 in ipairs(storageProfiles.comboSpells) do if (v269==v415.orangeSpell) then v415.cooldownSpells=now + v415.cooldown ;end end for v416,v417 in ipairs(storageProfiles.fugaSpells) do if (v269==v417.orangeSpell) then if v417.enableLifes then local v592=0;while true do if (v592==0) then v417.activeCooldown=(now + (v417.cooldownActive * 1000)) -(1705 -(990 + 465)) ;v417.totalCooldown=(now + (v417.cooldownTotal * (413 + 587))) -(109 + 141) ;v592=1 + 0 ;end if (v592==(3 -2)) then v417.lifes=v417.amountLifes;break;end end end if (v417.enableRevive and  not v417.alreadyChecked) then v417.totalCooldown=(now + (v417.cooldownTotal * 1000)) -(1976 -(1668 + 58)) ;v417.activeCooldown=(now + (v417.cooldownActive * 1000)) -(876 -(512 + 114)) ;v417.alreadyChecked=true;end if v417.enableMultiple then if (v417.count>(0 -0)) then v417.count=v417.count-(1 -0) ;v417.activeCooldown=(now + (v417.cooldownActive * (3479 -2479))) -250 ;if (v417.count==(0 + 0)) then v417.totalCooldown=(now + (v417.cooldownTotal * (188 + 812))) -250 ;v417.canReset=true;break;end end end if  not (v417.enableLifes or v417.enableRevive or v417.enableMultiple) then v417.activeCooldown=(now + (v417.cooldownActive * 1000)) -(218 + 32) ;v417.totalCooldown=(now + (v417.cooldownTotal * (3372 -2372))) -(2244 -(109 + 1885)) ;warn(v269);break;end end end end);onTextMessage(function(v272,v273) for v418,v419 in ipairs(storageProfiles.fugaSpells) do if v419.enableLifes then if (v273:lower():find("morreu e renasceu") and v419.activeCooldown and (v419.activeCooldown>=now)) then v419.lifes=v419.lifes-(1470 -(1269 + 200)) ;end end end end);onPlayerPositionChange(function(v274,v275) local v276={x=2326 -1112 ,y=1501 -(98 + 717) ,z=832 -(802 + 24) };for v420,v421 in ipairs(storageProfiles.fugaSpells) do if (v421.enableRevive and (v421.spellCast=="izanagi")) then if ((v274.x==v276.x) and (v274.y==v276.y) and (v274.z==v276.z)) then v421.activeCooldown=nil;v421.alreadyChecked=true;end end end end);UI.Separator();UI.Label("PAINEL MACROS"):setFont("cipsoftFont");local v51="extras";local v52=setupUI([[
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


]]);v52:setId(PanelName);if  not storage[v51] then storage[v51]={};end local v53=storage[v51];PainelsWindow=UI.createWidget("PainelWindow",rootWidget);PainelsWindow:hide();extrasWindow=UI.createWindow("ExtrasWindow",rootWidget);extrasWindow:hide();extrasWindow.closeButton.onClick=function(v277) extrasWindow:hide();end;local v55=extrasWindow.content.right;local v56=extrasWindow.content.left;v52.editMusica.onClick=function(v278) extrasWindow:show();extrasWindow:raise();extrasWindow:focus();end;PainelsWindow.closeButton.onClick=function(v279) PainelsWindow:hide();end;v52.editPainel.onClick=function(v280) PainelsWindow:show();PainelsWindow:raise();PainelsWindow:focus();end;local v60={cooldownSelo1=5000,possibleTexts={"jutsu foi selado"}};onTextMessage(function(v281,v282) v282=v282:lower();for v423,v424 in ipairs(v60.possibleTexts) do filterText=v424:trim():lower();if v282:find(filterText) then v60.cooldownUse=now + v60.cooldownSelo1 ;break;end end end);UI.Separator(v56);CONFIG={regenBju={{spell="bijuu regeneration",cooldown=126 -26 }},pot={{id=107,orangeText="i feel better!",cooldown=400}},yaiba={{spell="bijuu yaiba",cooldown=2300 + 11700 }},pot2={{id=2549 + 9264 ,orangeText="i feel better!",cooldown=400}}};macro(2 -1 ,function() local v283=0;local v284;while true do if ((0 -0)==v283) then v284=v284();if isInPz() then return;end v283=1;end if (v283==1) then if ((player:getOutfit().type==storage.outfitBijuu) and (v284<=(36 + 63))) then for v632,v633 in ipairs(CONFIG.regenBju) do if ( not v633.exhaust or (v633.exhaust<=now)) then say(v633.spell);end end end break;end end end);os=os or modules.os ;local v61=player:getName();function OutfitCheck() return player:getOutfit().type==tonumber(OutfitBijuu) ;end onTalk(function(v285,v286,v286,v287) if (v285==player:getName()) then if (v287=="Bijuu Yaiba") then yaibaSlow=os.time() + 7 + 8 ;end end end);macro(1,function() local v288=0 + 0 ;while true do if (v288==(1 + 0)) then if (player:getOutfit().type==302) then say("bijuu yaiba");end break;end if ((0 + 0)==v288) then if isInPz() then return;end if (yaibaSlow and (yaibaSlow>=os.time())) then return;end v288=1434 -(797 + 636) ;end end end);onTalk(function(v289,v290,v291,v292,v293,v294) if (v289~=player:getName()) then return;end if ((v292:lower()==id) and (storage.time.t<now)) then storage.time.t=now + tempo1 ;end end,v56);macro(485 -385 ,function() for v425,v426 in ipairs(getSpectators(posz())) do if v426:isPlayer() then if (v426==player) then player:setMarked("black");elseif v426:isPartyMember() then v426:setMarked("yellow");elseif (v426:getEmblem()~=1) then v426:setMarked("red");end end end end);UI.Separator();UI.Label("Selar Bijuu:",v56):setFont("cipsoftFont");local v51="Selar";local v52=setupUI([[
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

]],v56);v52:setId(v51);if  not storage[v51] then storage[v51]={id=4774 -(1427 + 192) ,title=enabled,enabled=false,setting=true,hp=7 + 13 };end v52.title:setOn(storage[v51].enabled);v52.title.onClick=function(v295) local v296=0 -0 ;while true do if (v296==(0 + 0)) then storage[v51].enabled= not storage[v51].enabled;v295:setOn(storage[v51].enabled);break;end end end;local v63=function() local v297=0 + 0 ;local v298;while true do if (0==v297) then v298=nil;if storage[v51].setting then v298="Target";else v298="Enemy";end v297=1;end if (v297==1) then v52.help:setText("If "   .. v298   .. " HP<"   .. storage[v51].hp   .. "%" );break;end end end;v63();v52.HP.onValueChange=function(v299,v300) storage[v51].hp=v300;v63();end;v52.item:setItemId(storage[v51].id);v52.item.onItemChange=function(v302) storage[v51].id=v302:getItemId();end;v52.HP:setValue(storage[v51].hp);macro(327 -(192 + 134) ,function() local v304=0;while true do if (v304==(1276 -(316 + 960))) then if  not storage[v51].enabled then return;end if storage[v51].setting then if (g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<storage[v51].hp)) then say("Kekkai Shihou Fuujin");say("Kekkai Shihou Fuujin");say("Kekkai Shihou Fuujin");end end break;end end end);UI.Label("TIME SPELLS:",v55):setFont("cipsoftFont");setDefaultTab("Main");timeSpellPanelName="timespellbot";local v52=setupUI([[
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
]],v55);v52:setId(timeSpellPanelName);local v66=setupUI([[
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
      
]],g_ui.getRootWidget());v66:hide();local v0=modules.game_bot.contentsPanel.config:getCurrentOption().text;TimeSpellConfig={spells={}};local v67={};local v68="/bot/"   .. v0   .. "/"   .. name()   .. "_TimeSpell.json" ;local v69=v66.MainPanel;local v70=nil;local v71=nil;if g_resources.fileExists(v68) then local v428=0;local v429;local v430;while true do if ((2 + 0)==v428) then for v601,v602 in pairs(TimeSpellConfig.spells) do if ((v602.totalCd-now)>v602.totalTime) then local v695=0 + 0 ;while true do if (v695==0) then TimeSpellConfig.spells[v601].totalCd=0;TimeSpellConfig.spells[v601].activeCd=0 + 0 ;break;end end end end break;end if (1==v428) then TimeSpellConfig=v430;if (type(TimeSpellConfig.spells)~="table") then TimeSpellConfig.spells={};end v428=7 -5 ;end if (v428==0) then v429,v430=pcall(function() return json.decode(g_resources.readFileContents(v68));end);if  not v429 then return onError("Error loading file ("   .. v68   .. "). To fix the problem, delete TimeSpell.json. Details:"   .. v430 );end v428=552 -(83 + 468) ;end end end function timeSpellConfigSave() local v305=v68;local v306,v307=pcall(function() return json.encode(TimeSpellConfig,1808 -(1202 + 604) );end);if  not v306 then return onError("Error saving configuration. Details: "   .. v307 );end if (v307:len()>(100 * (4780 -3756) * (1704 -680))) then return onError("Configuration file over 100MB will not be saved.");end g_resources.writeFileContents(v68,v307);end v52.title:setOn(TimeSpellConfig.enabled);v52.title.onClick=function(v308) local v309=0 -0 ;while true do if (v309==(325 -(45 + 280))) then TimeSpellConfig.enabled= not TimeSpellConfig.enabled;v308:setOn(TimeSpellConfig.enabled);v309=1 + 0 ;end if (v309==(1 + 0)) then timeSpellConfigSave();if  not TimeSpellConfig.enabled then for v635,v636 in pairs(v67) do if (v636~=nil) then local v728=0 + 0 ;while true do if (v728==0) then v67[v635]:destroy();v67[v635]=nil;break;end end end end end break;end end end;v52.settings.onClick=function(v310) local v311=0 + 0 ;while true do if (v311==(0 + 0)) then v66:show();v66:raise();v311=1 -0 ;end if (v311==(1912 -(340 + 1571))) then v66:focus();break;end end end;v66.closeButton.onClick=function(v312) v66:hide();timeSpellConfigSave();end;local v74=function(v313) v67[v313]:destroy();v67[v313]=nil;end;local v75=function() if TimeSpellConfig.spells then for v522,v523 in pairs(v69.spellList:getChildren()) do v523:destroy();end for v524,v525 in pairs(TimeSpellConfig.spells) do local v526=0 + 0 ;local v527;while true do if (v526==2) then v527.remove.onClick=function(v696) TimeSpellConfig.spells[v525.spell]=nil;v74(v525.spell);reindexTable(TimeSpellConfig.spells);v527:destroy();end;v527:setText("["   .. v525.onScreen   .. "]: Cooldown: "   .. (v525.totalTime/1000)   .. "s" );break;end if (v526==(1772 -(1733 + 39))) then v527=UI.createWidget("SpellEntry",v69.spellList);v527.onDoubleClick=function(v698) local v699=0 -0 ;local v700;while true do if (v699==(1034 -(125 + 909))) then v700=v525;TimeSpellConfig.spells[v525.spell]=nil;reindexTable(TimeSpellConfig.spells);if (v67[v700.spell]~=nil) then local v757=1948 -(1096 + 852) ;while true do if (v757==(0 + 0)) then v67[v700.spell]:destroy();v67[v700.spell]=nil;break;end end end v699=1 -0 ;end if (v699==2) then v69.posX:setText(v700.x);v69.posY:setText(v700.y);v527:destroy();break;end if (v699==(1 + 0)) then v69.spellName:setText(v700.spell);v69.onScreen:setText(v700.onScreen);v69.activeTime:setText(v700.activeTime);v69.totalTime:setText(v700.totalTime);v699=2;end end end;v526=513 -(409 + 103) ;end if ((237 -(46 + 190))==v526) then v527.enabled:setChecked(v525.enabled);v527.enabled.onClick=function(v701) local v702=0;while true do if (v702==0) then v525.enabled= not v525.enabled;v527.enabled:setChecked(v525.enabled);break;end end end;v526=97 -(51 + 44) ;end end end end end;v75();v69.addSpell.onClick=function(v315) local v316=v69.spellName:getText():trim():lower();local v317=v69.onScreen:getText():trim();local v318=tonumber(v69.activeTime:getText()) or (0 + 0) ;local v319=tonumber(v69.totalTime:getText());local v320=tonumber(v69.posX:getText()) or (1317 -(1114 + 203)) ;local v321=tonumber(v69.posY:getText()) or (765 -(228 + 498)) ;if  not v319 then return warn("TimeSpell: Enter a valid cooldown.");end if  not v320 then return warn("TimeSpell: Enter a valid Y position.");end if  not v321 then return warn("TimeSpell: Enter a valid Y position.");end if (v316:len()==(0 + 0)) then return warn("TimeSpell: Enter a valid spell.");end if (v317:len()==(0 + 0)) then return warn("TimeSpell: Put a name on OnScreen.");end TimeSpellConfig.spells[v316]={index= #TimeSpellConfig.spells + (664 -(174 + 489)) ,spell=v316,onScreen=v317,activeTime=v318,activeCd=0 -0 ,totalTime=v319,totalCd=1905 -(830 + 1075) ,x=v320,y=v321,enabled=true};v69.spellName:setText("");v69.onScreen:setText("");v69.activeTime:setText("");v69.totalTime:setText("");v69.posX:setText("");v69.posY:setText("");v75();end;local v77=[[
UIWidget
  background-color: black
  font: verdana-11px-rounded
  opacity: 0.70
  padding: 0 8
  focusable: true
  phantom: false
  draggable: true
  text-auto-resize: true
]];local function v78(v323) local v324=(v323-now)/(1524 -(303 + 221)) ;local v325="";v325=string.format("%.0f",(v323-now)/(2269 -(231 + 1038)) )   .. "s" ;return v325;end local function v43(v326) v67[v326].onDragEnter=function(v431,v432) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v431:breakAnchors();v431.movingReference={x=v432.x-v431:getX() ,y=v432.y-v431:getY() };return true;end;v67[v326].onDragMove=function(v434,v435,v436) local v437=v434:getParent():getRect();local v438=math.min(math.max(v437.x,v435.x-v434.movingReference.x ),(v437.x + v437.width) -v434:getWidth() );local v439=math.min(math.max(v437.y-v434:getParent():getMarginTop() ,v435.y-v434.movingReference.y ),(v437.y + v437.height) -v434:getHeight() );v434:move(v438,v439);return true;end;v67[v326].onDragLeave=function(v440,v441) TimeSpellConfig.spells[v326].x=v440:getX();TimeSpellConfig.spells[v326].y=v440:getY();timeSpellConfigSave();return true;end;end local v79=macro(84 + 16 ,function() if  not v52.title:isOn() then return;end for v444,v445 in pairs(TimeSpellConfig.spells) do if ( not v445.enabled and (v67[v445.spell]~=nil)) then local v528=1162 -(171 + 991) ;while true do if (v528==(0 -0)) then v67[v445.spell]:destroy();v67[v445.spell]=nil;break;end end elseif v445.enabled then if (v67[v445.spell]==nil) then v67[v445.spell]=setupUI(v77,g_ui.getRootWidget());v67[v445.spell]:setPosition({x=v445.x,y=v445.y});v43(v445.spell);end if ( not v445.totalCd or (v445.totalCd<now)) then local v704=0 -0 ;while true do if (v704==(0 -0)) then v67[v445.spell]:setText(v445.onScreen   .. ": 0s" );v67[v445.spell]:setColor("green");break;end end elseif (v445.activeCd>=now) then v67[v445.spell]:setColor("#00FFFF");local v734=v78(v445.activeCd);v67[v445.spell]:setText(v445.onScreen   .. ": "   .. v734 );else local v735=0 + 0 ;local v736;while true do if (v735==1) then v67[v445.spell]:setText(v445.onScreen   .. ": "   .. v736 );break;end if (v735==(0 -0)) then v67[v445.spell]:setColor("#FF4040");v736=v78(v445.totalCd);v735=1;end end end end end end);onTalk(function(v330,v331,v332,v333,v334,v335) local v336=0;while true do if (2==v336) then TimeSpellConfig.spells[v333].totalCd=now + TimeSpellConfig.spells[v333].totalTime ;timeSpellConfigSave();break;end if (v336==(0 -0)) then if (v330~=player:getName()) then return;end v333=v333:lower();v336=1;end if (v336==(1 -0)) then if (TimeSpellConfig.spells[v333]==nil) then return;end if (TimeSpellConfig.spells[v333].activeTime>(0 -0)) then TimeSpellConfig.spells[v333].activeCd=now + TimeSpellConfig.spells[v333].activeTime ;end v336=2;end end end);local v16=[[
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
]];local v0=modules.game_bot.contentsPanel.config:getCurrentOption().text;rootWidget=g_ui.getRootWidget();if rootWidget then local v446=1248 -(111 + 1137) ;while true do if (v446==(160 -(91 + 67))) then for v604=2 -1 ,1 + 0  do hpPanel4=g_ui.createWidget("hpPanel");cmbPanel2=g_ui.createWidget("cPanel");hpPanel=g_ui.createWidget("hpPanel");hpPanel2=g_ui.createWidget("hpPanel");hpPanel3=g_ui.createWidget("hpPanel");TabBar:addTab("Buff",hpPanel4);color=UI.Label("ElDevBorges",hpPanel4);color:setColor("orange");UI.Separator(hpPanel4);color=UI.Label("Buffs:",hpPanel4);color:setColor("red");function warning() end local v605=523 -(423 + 100) ;local v606=0;local v607=false;local function v608(v641) v605=now;v606=v641;v607=true;selado=true;end local function v609() local v642=0 + 0 ;while true do if (v642==0) then v607=false;selado=false;break;end end end onTextMessage(function(v643,v644) local v645=v644:lower():match("seu jutsu foi selado por (%d+) segundos");if v645 then local v729=tonumber(v645);if v729 then v608(v729);end end end);macro(276 -176 ,function() if v607 then local v730=(now-v605)/1000 ;if (v730>=v606) then v609();end end end);local v610=storage.kekkeiBuff;local v611=storage.Buff;local v612=tonumber(storage.kekkeiMedicine);local v613=tonumber(storage.buffMedicine);buff=macro(522 + 478 ,"buff",function() if ((player:getSkillLevel(774 -(326 + 445) )<=v612) and  not isInProtectionZone() and  not selado) then say(v610);end schedule(4363 -3363 ,function() if ((player:getSkillLevel(6 -3 )<=v613) and  not isInProtectionZone() and  not selado) then say(v611);end end);end,hpPanel4);addIcon("buff",{item=25267 -14442 ,text="BUFF"},buff);addTextEdit("FollowPlayer",storage.kekkeiBuff or "kekkei genkai" ,function(v646,v647) storage.kekkeiBuff=v647;end,hpPanel4);labelBuff=UI.Label("Buff",hpPanel4);addTextEdit("FollowPlayer",storage.Buff or "Buff" ,function(v649,v650) storage.Buff=v650;end,hpPanel4);labelBuff=UI.Label("MedicineSkill sem kekkei",hpPanel4);addTextEdit("FollowPlayer",storage.kekkeiMedicine or 0 ,function(v652,v653) storage.kekkeiMedicine=v653;end,hpPanel4);labelBuff=UI.Label("MedicineSkill com kekkei",hpPanel4);addTextEdit("FollowPlayer",storage.buffMedicine or (711 -(530 + 181)) ,function(v655,v656) storage.buffMedicine=v656;end,hpPanel4);TabBar:addTab("Curas",hpPanel);color=UI.Label("ElDevBorges",hpPanel);color:setColor("orange");UI.Separator(hpPanel);UI.Label("ID BIJUU:",hpPanel):setFont("cipsoftFont");addTextEdit("outfitBijuu",storage.outfitBijuu or "302" ,function(v658,v659) storage.outfitBijuu=tonumber(v659);end,hpPanel);for v661,v662 in ipairs({storage.heal}) do local v663=0;local v664;while true do if (v663==1) then UI.DualScrollPanel(v662,function(v743,v744) v662=v744;v664.setOn(v662.on);end,hpPanel);break;end if (v663==(32 -(19 + 13))) then v664=macro(10,function() local v745=0 -0 ;local v746;while true do if (v745==(0 -0)) then v746=player:getHealthPercent();if (player:getOutfit().type==storage.outfitBijuu) then return;end v745=2 -1 ;end if (v745==(1 + 0)) then if ((v662.max>=v746) and (v746>=v662.min)) then if TargetBot then TargetBot.saySpell(v662.text);else say(v662.text);end end break;end end end,hpPanel);v664.setOn(v662.on);v663=1;end end end TabBar:addTab("Correr",hpPanel3);UI.Label("CORRER:",hpPanel3):setFont("cipsoftFont");addTextEdit("hasteSpell",storage.hasteSpell or "concentrate chakra feet" ,function(v665,v666) storage.hasteSpell=v666;end,hpPanel3);macro(1758 -758 ,"Correr",function() if (getPlayersAttack()>=(1 -0)) then return;end delay(2812 -(1293 + 519) );local v668=storage.sealedTypes and storage.sealedTypes.speed and (storage.sealedTypes.speed>=os.time()) ;if ( not v668 and  not hasHaste()) then say(storage.hasteSpell);end end,hpPanel3);local v614={};bugmap=macro(1 -0 ,"Bug Map",function() if (modules.game_console:isChatEnabled() or modules.corelib.g_keyboard.isCtrlPressed()) then return;end local v669=pos();for v705,v706 in pairs(v614.directions) do if (v614.isKeyPressed(v705)) then if (storage.bugMapCheck or v706.direction) then local v752=0;local v753;while true do if (v752==(2 -1)) then if v753 then return g_game.use(v753:getTopUseThing());end break;end if (v752==(0 -0)) then if v706.direction then turn(v706.direction);end v753=g_map.getTile({x=v669.x + v706.x ,y=v669.y + v706.y ,z=v669.z});v752=1;end end end end end end,hpPanel3);bugmap=addIcon("Bug Map",{item=10610,text="Bug Map"},bugmap);v614.checkBox=setupUI([[
CheckBox
  id: checkBox
  font: cipsoftFont
  text: Diagonal ON?
]],hpPanel3);v614.checkBox.onCheckChange=function(v670,v671) storage.bugMapCheck=v671;end;if (storage.bugMapCheck==nil) then storage.bugMapCheck=true;end v614.checkBox:setChecked(storage.bugMapCheck);v614.directions={W={x=0,y= -5,direction=0},E={x=17 -13 ,y= -4},D={x=5,y=0 -0 ,direction=1 + 0 },C={x=4,y=4},S={x=0 + 0 ,y=5,direction=4 -2 },Z={x= -(1 + 3),y=2 + 2 },A={x= -5,y=0 + 0 ,direction=1099 -(709 + 387) },Q={x= -4,y= -(1862 -(673 + 1185))}};v614.isKeyPressed=modules.corelib.g_keyboard.isKeyPressed;end break;end if ((0 -0)==v446) then PainelsWindow=UI.createWidget("PainelWindow",rootWidget);PainelsWindow:hide();v446=3 -2 ;end if (v446==(1 -0)) then TabBar=PainelsWindow.paTabBar;TabBar:setContentWidget(PainelsWindow.paImagem);v446=2 + 0 ;end end end PainelsWindow.closeButton.onClick=function(v337) PainelsWindow:hide();end;
