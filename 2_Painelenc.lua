

bit32={};local v0=32;local v1=(1 + 1)^v0 ;bit32.bnot=function(v89) v89=v89%v1 ;return (v1-(1 + 0)) -v89 ;end;bit32.band=function(v90,v91) if (v91==(752 -497)) then return v90%(693 -437) ;end if (v91==(65649 -(4 + 110))) then return v90%65536 ;end if (v91==(4294967879 -(57 + 527))) then return v90%4294967296 ;end v90,v91=v90%v1 ,v91%v1 ;local v92=1427 -(41 + 1386) ;local v93=104 -(17 + 86) ;for v371=1 + 0 ,v0 do local v372=0 -0 ;local v373;local v374;while true do if (v372==(0 -0)) then v373,v374=v90%(168 -(122 + 44)) ,v91%2 ;v90,v91=math.floor(v90/(2 -0) ),math.floor(v91/2 );v372=3 -2 ;end if (v372==(1 + 0)) then if ((v373 + v374)==(1 + 1)) then v92=v92 + v93 ;end v93=(3 -1) * v93 ;break;end end end return v92;end;bit32.bor=function(v94,v95) if (v95==255) then return (v94-(v94%256)) + (320 -(30 + 35)) ;end if (v95==(45043 + 20492)) then return (v94-(v94%(66793 -(1043 + 214)))) + 65535 ;end if (v95==(4224196525 -  -70770770)) then return 4294967295;end v94,v95=v94%v1 ,v95%v1 ;local v96=0;local v97=1213 -(323 + 889) ;for v375=2 -1 ,v0 do local v376=580 -(361 + 219) ;local v377;local v378;while true do if (v376==(320 -(53 + 267))) then v377,v378=v94%(1 + 1) ,v95%(415 -(15 + 398)) ;v94,v95=math.floor(v94/2 ),math.floor(v95/(984 -(18 + 964)) );v376=3 -2 ;end if (v376==(1 + 0)) then if ((v377 + v378)>=(1 + 0)) then v96=v96 + v97 ;end v97=2 * v97 ;break;end end end return v96;end;bit32.bxor=function(v98,v99) v98,v99=v98%v1 ,v99%v1 ;local v100=850 -(20 + 830) ;local v101=1 + 0 ;for v379=1,v0 do local v380,v381=v98%(128 -(116 + 10)) ,v99%2 ;v98,v99=math.floor(v98/(1 + 1) ),math.floor(v99/2 );if ((v380 + v381)==(739 -(542 + 196))) then v100=v100 + v101 ;end v101=(3 -1) * v101 ;end return v100;end;bit32.lshift=function(v102,v103) local v104=0;while true do if (v104==1) then if (v103<(0 + 0)) then return math.floor(v102 * (2^v103) );else return (v102 * ((2 + 0)^v103))%v1 ;end break;end if (v104==0) then if (math.abs(v103)>=v0) then return 0 + 0 ;end v102=v102%v1 ;v104=2 -1 ;end end end;bit32.rshift=function(v105,v106) if (math.abs(v106)>=v0) then return 0 -0 ;end v105=v105%v1 ;if (v106>(1551 -(1126 + 425))) then return math.floor(v105 * ((407 -(118 + 287))^ -v106) );else return (v105 * ((7 -5)^ -v106))%v1 ;end end;bit32.arshift=function(v107,v108) local v109=1121 -(118 + 1003) ;while true do if (v109==(0 -0)) then if (math.abs(v108)>=v0) then return 377 -(142 + 235) ;end v107=v107%v1 ;v109=4 -3 ;end if (v109==1) then if (v108>(0 + 0)) then local v659=977 -(553 + 424) ;if (v107>=(v1/(3 -1))) then v659=v1-((2 + 0)^(v0-v108)) ;end return math.floor(v107 * (2^ -v108) ) + v659 ;else return (v107 * ((2 + 0)^ -v108))%v1 ;end break;end end end;local v9=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v9=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v10=g_resources.listDirectoryFiles("/bot/"   .. v9   .. "/vBot" ,true,false);for v110,v111 in ipairs(v10) do local v112=0 + 0 ;local v113;while true do if (v112==(0 + 0)) then v113=v111:split(".");if ((v113[ #v113]:lower()=="ui") or (v113[ #v113]:lower()=="otui")) then g_ui.importStyle(v111);end break;end end end local function v11(v114) return dofile("/eldevborges/"   .. v114   .. ".lua" );end local v12={"vlib","spyy_level","configs"};for v115,v116 in ipairs(v12) do v11(v116);end scriptFuncs={};comboSpellsWidget={};fugaSpellsWidgets={};scriptFuncs.readProfile=function(v117,v118) if g_resources.fileExists(v117) then local v485,v486=pcall(function() return json.decode(g_resources.readFileContents(v117));end);if  not v485 then return onError("Erro carregando arquivo ("   .. v117   .. "). Para consertar o problema, exclua o arquivo. Detalhes: "   .. v486 );end v118(v486);end end;scriptFuncs.saveProfile=function(v119,v120) local v121,v122=pcall(function() return json.encode(v120,4 -2 );end);if  not v121 then return onError("Erro salvando configuração. Detalhes: "   .. v122 );end if (v122:len()>(100 * (298 + 726) * 1024)) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v119,v122);end;storageProfiles={comboSpells={},fugaSpells={},keySpells={}};MAIN_DIRECTORY="/bot/"   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. "/storage/" ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. ".json" ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v123) local v124=0;while true do if (v124==(0 -0)) then storageProfiles=v123;if (type(storageProfiles.comboSpells)~="table") then storageProfiles.comboSpells={};end v124=754 -(239 + 514) ;end if (v124==(1 + 0)) then if (type(storageProfiles.fugaSpells)~="table") then storageProfiles.fugaSpells={};end if (type(storageProfiles.keySpells)~="table") then storageProfiles.keySpells={};end break;end end end);scriptFuncs.reindexTable=function(v125) if ( not v125 or (type(v125)~="table")) then return;end local v126=0;for v382,v383 in pairs(v125) do local v384=0;while true do if ((1329 -(797 + 532))==v384) then v126=v126 + 1 + 0 ;v383.index=v126;break;end end end end;function firstLetterUpper(v127) return (v127:gsub("(%a)([%w_']*)",function(v385,v386) return v385:upper()   .. v386:lower() ;end));end function formatTime(v128) if (v128<60) then return v128   .. "s" ;else local v487=0 + 0 ;local v488;local v489;while true do if (v487==(0 -0)) then v488=math.floor(v128/(1262 -(373 + 829)) );v489=v128%60 ;v487=732 -(476 + 255) ;end if (v487==(1131 -(369 + 761))) then return string.format("%dm %02ds",v488,v489);end end end end function formatRemainingTime(v129) local v130=0 + 0 ;local v131;local v132;while true do if (v130==(1 -0)) then v132=string.format("%.0f",(v129-now)/(1895 -895) )   .. "s" ;return v132;end if (0==v130) then v131=(v129-now)/1000 ;v132="";v130=1;end end end function attachSpellWidgetCallbacks(v133,v134,v135) v133.onDragEnter=function(v387,v388) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v387:breakAnchors();v387.movingReference={x=v388.x-v387:getX() ,y=v388.y-v387:getY() };return true;end;v133.onDragMove=function(v390,v391,v392) local v393=v390:getParent():getRect();local v394=math.min(math.max(v393.x,v391.x-v390.movingReference.x ),(v393.x + v393.width) -v390:getWidth() );local v395=math.min(math.max(v393.y-v390:getParent():getMarginTop() ,v391.y-v390.movingReference.y ),(v393.y + v393.height) -v390:getHeight() );v390:move(v394,v395);if v135[v134] then v135[v134].widgetPos={x=v394,y=v395};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end return true;end;v133.onDragLeave=function(v396,v397) return true;end;end function stopToCast() for v398,v399 in ipairs(storageProfiles.fugaSpells) do if (v399.enabled and v399.activeCooldown and (v399.activeCooldown>=now)) then return true;end if (hppercent()<=(calculatePercentage(v399.selfHealth) + (243 -(64 + 174)))) then if ( not v399.totalCooldown or (v399.totalCooldown<=now)) then return true;end end end return false;end function isAnySelectedKeyPressed() for v400,v401 in ipairs(storageProfiles.keySpells) do if (v401.enabled and (modules.corelib.g_keyboard.isKeyPressed(v401.keyPress))) then return true;end end return false;end DelayMacro={};DelayMacro.horizontalScrollBar=[[
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
]];storage.scrollBars1=storage.scrollBars1 or {} ;local function v18(v139,v140,v141,v142,v143) local v144=0 + 0 ;local v145;while true do if (v144==(1 -0)) then if ((v142-v141)>(1336 -(144 + 192))) then v145.scroll:setStep(316 -(42 + 174) );elseif ((v142-v141)>100) then v145.scroll:setStep(8 + 2 );end v145.scroll:setValue(storage.scrollBars1[v139] or v143 );v144=2 + 0 ;end if (v144==(0 + 0)) then v145=setupUI(DelayMacro.horizontalScrollBar,panel);v145.scroll:setRange(v141,v142);v144=1;end if (v144==(1507 -(363 + 1141))) then v145.scroll.onValueChange(v145.scroll,v145.scroll:getValue());break;end if (v144==(1582 -(1183 + 397))) then v145.scroll.onValueChange=function(v610,v611) storage.scrollBars1[v139]=v611;v145.scroll:setText(v140   .. v611 );end;v145.text:setText("MACRO DELAY:");v144=8 -5 ;end end end setDefaultTab("Main");v18("macroDelay","",10,734 + 266 ,150 + 50 );UI.Label("STACK+MUNDO"):setFont("cipsoftFont");addTextEdit("Spell Stack, Spell Mundo, Key",storage.stackConfig or "Spell stack, Mundo, Distancia, Key" ,function(v146,v147) storage.stackConfig=v147;end,rightPanel);local v19=modules.corelib.g_keyboard.isKeyPressed;macro(1,function() local v149=1975 -(1913 + 62) ;local v150;local v151;local v152;while true do if (v149==(1 + 0)) then v152=pos();if v19(v150[7 -4 ]) then local v663=1933 -(565 + 1368) ;local v664;local v665;while true do if (v663==2) then if (v665>2) then local v780=0;while true do if (0==v780) then stopCombo=now + (940 -690) ;say(v150[1662 -(1477 + 184) ]);break;end end end if (v665<=(2 -0)) then local v781=0;while true do if ((0 + 0)==v781) then stopCombo=now + (1106 -(564 + 292)) ;say(v150[2 -0 ]);break;end end end break;end if (v663==(0 -0)) then if  not g_game.isAttacking() then return;end v664=v151:getPosition();v663=305 -(244 + 60) ;end if (v663==(1 + 0)) then if  not v664 then return;end v665=getDistanceBetween(v152,v664);v663=2;end end end break;end if (v149==0) then v150=storage.stackConfig:split(",");v151=g_game.getAttackingCreature();v149=1;end end end,rightPanel);local v20={W=0,A=476 -(41 + 435) ,S=1001 -(938 + 63) ,D=0 + 0 };onKeyPress(function(v153) for v402,v403 in pairs(v20) do if (v153==v402) then g_game.setChaseMode(v403);end end end);macro(1,function() local v154=1125 -(936 + 189) ;local v155;while true do if (v154==(0 + 0)) then v155=storage.stackConfig:split(",");if v19(v155[3]) then g_game.setChaseMode(1);end break;end end end);UI.Label("COMBO/FUGAS"):setFont("cipsoftFont");scriptFuncs={};comboSpellsWidget={};fugaSpellsWidgets={};scriptFuncs.readProfile=function(v156,v157) if g_resources.fileExists(v156) then local v490=0;local v491;local v492;while true do if (v490==(1614 -(1565 + 48))) then v157(v492);break;end if (v490==0) then v491,v492=pcall(function() return json.decode(g_resources.readFileContents(v156));end);if  not v491 then return onError("Erro carregando arquivo ("   .. v156   .. "). Para consertar o problema, exclua o arquivo. Detalhes: "   .. v492 );end v490=1 + 0 ;end end end end;scriptFuncs.saveProfile=function(v158,v159) local v160,v161=pcall(function() return json.encode(v159,2);end);if  not v160 then return onError("Erro salvando configuração. Detalhes: "   .. v161 );end if (v161:len()>((1238 -(782 + 356)) * (1291 -(176 + 91)) * (2667 -1643))) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v158,v161);end;storageProfiles={comboSpells={},fugaSpells={},keySpells={}};MAIN_DIRECTORY="/bot/"   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. "/storage/" ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. ".json" ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end function resetCooldowns() if storageProfiles then local v493=0;while true do if (0==v493) then if storageProfiles.comboSpells then for v757,v758 in ipairs(storageProfiles.comboSpells) do v758.cooldownSpells=nil;end end if storageProfiles.fugaSpells then for v760,v761 in ipairs(storageProfiles.fugaSpells) do local v762=0 -0 ;while true do if (v762==(1092 -(975 + 117))) then v761.totalCooldown=nil;v761.activeCooldown=nil;break;end end end end break;end end end end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v162) local v163=0;while true do if ((1875 -(157 + 1718))==v163) then storageProfiles=v162;if (type(storageProfiles.comboSpells)~="table") then storageProfiles.comboSpells={};end v163=1;end if (v163==1) then if (type(storageProfiles.fugaSpells)~="table") then storageProfiles.fugaSpells={};end if (type(storageProfiles.keySpells)~="table") then storageProfiles.keySpells={};end v163=2 + 0 ;end if (v163==2) then resetCooldowns();break;end end end);scriptFuncs.reindexTable=function(v164) local v165=0;local v166;while true do if ((0 -0)==v165) then if ( not v164 or (type(v164)~="table")) then return;end v166=0;v165=3 -2 ;end if (v165==1) then for v613,v614 in pairs(v164) do local v615=1018 -(697 + 321) ;while true do if (v615==(0 -0)) then v166=v166 + (1 -0) ;v614.index=v166;break;end end end break;end end end;function firstLetterUpper(v167) return (v167:gsub("(%a)([%w_']*)",function(v404,v405) return v404:upper()   .. v405:lower() ;end));end storage['iconScripts']=storage['iconScripts'] or {comboMacro=true,fugaMacro=false,showInfos=false,keyMacro=false} ;local v22=storage['iconScripts'];function removeTable(v168,v169) table.remove(v168,v169);end function canCastFuga() for v406,v407 in ipairs(storageProfiles.fugaSpells) do local v408=0 -0 ;local v409;local v410;local v411;while true do if ((1 + 0)==v408) then v411=v407.activeCooldown and (v407.activeCooldown>=now) ;if (v409 or v411) then return true;end break;end if (v408==0) then v409=v407.activeCooldown and (v407.activeCooldown>=now) and v407.enableLifes and (v407.lifes>(0 -0)) ;v410=v407.enableMultiple and (v407.count>0) ;v408=1;end end end return false;end function getPlayersAttack(v170) local v171=0 -0 ;local v172;while true do if ((1227 -(322 + 905))==v171) then v170=v170 or false ;v172=611 -(602 + 9) ;v171=1190 -(449 + 740) ;end if ((873 -(826 + 46))==v171) then for v616,v617 in ipairs(getSpectators(v170)) do if (v617:isPlayer() and v617:isTimedSquareVisible() and table.equals(v617:getTimedSquareColor(),colorToMatch)) then v172=v172 + (948 -(245 + 702)) ;delay(11059 -7559 );end end return v172;end end end local v23={};local v24=1 + 2 ;onTextMessage(function(v173,v174) if v174:find("hitpoints due to an attack by") then local v494="You lose (%d+) hitpoints due to an attack by (.+)%.";local v495,v496=v174:match(v494);local v497=getCreatureByName(v496);if (v497 and v497:isPlayer()) then local v618=false;for v669,v670 in ipairs(v23) do if (v670.name==v496) then v618=true;v670.time=os.time();break;end end if  not v618 then table.insert(v23,{name=v496,time=os.time()});end end end end);macro(1899 -(260 + 1638) ,function() local v175=os.time();for v412= #v23,441 -(382 + 58) , -(3 -2) do local v413=v23[v412];if ((v175-v413.time)>v24) then table.remove(v23,v412);end end end);function calculatePercentage(v176) local v177=0 + 0 ;local v178;while true do if (v177==(0 -0)) then v178= #v23;return (v178 and (v176 + (v178 * (20 -13)))) or v176 ;end end end function stopToCast() local v179=1205 -(902 + 303) ;while true do if (v179==(0 -0)) then if  not fugaIcon.title:isOn() then return false;end for v619,v620 in ipairs(storageProfiles.fugaSpells) do local v621=0 -0 ;while true do if (v621==(0 + 0)) then if (v620.enabled and v620.activeCooldown and (v620.activeCooldown>=now)) then return false;end if (hppercent()<=(calculatePercentage(v620.selfHealth) + (1693 -(1121 + 569)))) then if ( not v620.totalCooldown or (v620.totalCooldown<=now)) then return true;end end break;end end end v179=215 -(22 + 192) ;end if (v179==(684 -(483 + 200))) then return false;end end end function isAnySelectedKeyPressed() local v180=1463 -(1404 + 59) ;while true do if (v180==0) then for v622,v623 in ipairs(storageProfiles.keySpells) do if (v623.enabled and (modules.corelib.g_keyboard.isKeyPressed(v623.keyPress))) then return true;end end return false;end end end function formatTime(v181) if (v181<(164 -104)) then return v181   .. "s" ;else local v498=math.floor(v181/60 );local v499=v181%60 ;return string.format("%dm %02ds",v498,v499);end end function formatRemainingTime(v182) local v183=(v182-now)/(1344 -344) ;local v184="";v184=string.format("%.0f",(v182-now)/(1765 -(468 + 297)) )   .. "s" ;return v184;end function attachSpellWidgetCallbacks(v185,v186,v187) v185.onDragEnter=function(v414,v415) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v414:breakAnchors();v414.movingReference={x=v415.x-v414:getX() ,y=v415.y-v414:getY() };return true;end;v185.onDragMove=function(v417,v418,v419) local v420=v417:getParent():getRect();local v421=math.min(math.max(v420.x,v418.x-v417.movingReference.x ),(v420.x + v420.width) -v417:getWidth() );local v422=math.min(math.max(v420.y-v417:getParent():getMarginTop() ,v418.y-v417.movingReference.y ),(v420.y + v420.height) -v417:getHeight() );v417:move(v421,v422);if v187[v186] then local v530=562 -(334 + 228) ;while true do if (v530==0) then v187[v186].widgetPos={x=v421,y=v422};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end return true;end;v185.onDragLeave=function(v423,v424) return true;end;end function forceSay(v191) local v192=0 -0 ;while true do if (v192==(0 -0)) then if (type(v191)~="table") then for v701=0 -0 ,3 + 7  do stopCombo=now + (486 -(141 + 95)) ;return say(v191);end end for v624=0 + 0 ,25 -15  do stopCombo=now + (600 -350) ;return say(v191.toSay or v191.text );end break;end end end local v25=[[
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
]];local v26=[[
UIWidget
  background-color: black
  font: verdana-11px-rounded
  opacity: 0.70
  padding: 0 8
  focusable: true
  phantom: false
  draggable: true
  text-auto-resize: true
]];combobotPanelName="combobot";local v27=setupUI([[
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
]]);v27:setId(combobotPanelName);keyIcon=setupUI([[
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
      
]],g_ui.getRootWidget());keyInterface:hide();v27.title:setOn(v22.comboMacro);v27.title.onClick=function(v193) v22.comboMacro= not v22.comboMacro;v193:setOn(v22.comboMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v27.settings.onClick=function(v195) if  not comboInterface:isVisible() then local v500=0 + 0 ;while true do if (v500==0) then comboInterface:show();comboInterface:raise();v500=2 -1 ;end if ((1 + 0)==v500) then comboInterface:focus();break;end end else local v501=0 + 0 ;while true do if (v501==(0 -0)) then comboInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end end;comboInterface.closeButton.onClick=function(v196) comboInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;comboInterface.cooldown:setText("0ms");comboInterface.cooldown.onValueChange=function(v197,v198) if (v198>=(590 + 410)) then v197:setText((v198/(1163 -(92 + 71)))   .. "s" );else v197:setText(v198   .. "ms" );end end;comboInterface.distance:setText("0");comboInterface.distance.onValueChange=function(v199,v200) v199:setText(v200);end;comboInterface.sameSpell:setChecked(true);comboInterface.orangeSpell:setEnabled(false);comboInterface.sameSpell.onCheckChange=function(v201,v202) if v202 then comboInterface.orangeSpell:setEnabled(false);else local v502=0;while true do if (v502==(0 + 0)) then comboInterface.orangeSpell:setEnabled(true);comboInterface.orangeSpell:setText(comboInterface.castSpell:getText());break;end end end end;function refreshComboList(v203,v204) if v204 then local v503=0;while true do if (v503==(0 -0)) then for v702,v703 in pairs(v203.spellList:getChildren()) do v703:destroy();end for v704,v705 in pairs(comboSpellsWidget) do v705:destroy();end v503=766 -(574 + 191) ;end if (v503==(1 + 0)) then for v706,v707 in ipairs(v204) do local v708=setupUI(v25,v203.spellList);local v709=setupUI(v26,g_ui.getRootWidget());v709:setText(firstLetterUpper(v707.spellCast));attachSpellWidgetCallbacks(v709,v707.index,storageProfiles.comboSpells);if  not v707.widgetPos then v707.widgetPos={x=0,y=125 -75 };end v709:setPosition(v707.widgetPos);comboSpellsWidget[v707.index]=v709;comboSpellsWidget[v707.index]=v709;v708.onDoubleClick=function(v726) local v727=0 + 0 ;local v728;while true do if (v727==(850 -(254 + 595))) then v203.orangeSpell:setText(v728.orangeSpell);v203.onScreen:setText(v728.onScreen);v727=128 -(55 + 71) ;end if ((0 -0)==v727) then v728=v707;v203.castSpell:setText(v728.spellCast);v727=1791 -(573 + 1217) ;end if (v727==3) then for v791,v792 in ipairs(storageProfiles.comboSpells) do if (v792==v707) then removeTable(storageProfiles.comboSpells,v791);end end scriptFuncs.reindexTable(v204);v727=10 -6 ;end if (v727==(1 + 3)) then v709:destroy();v708:destroy();break;end if (v727==(2 -0)) then v203.cooldown:setValue(v728.cooldown);v203.distance:setValue(v728.distance);v727=942 -(714 + 225) ;end end end;v708.enabled:setChecked(v707.enabled);v708.enabled:setTooltip(( not v707.enabled and "Enable Spell") or "Disable Spell" );v708.enabled.onClick=function(v729) local v730=0;while true do if (0==v730) then v707.enabled= not v707.enabled;v708.enabled:setChecked(v707.enabled);v730=2 -1 ;end if (v730==(1 -0)) then v708.enabled:setTooltip(( not v707.enabled and "Enable Spell") or "Disable Spell" );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;v708.showTimespell:setChecked(v707.enableTimeSpell);v708.showTimespell:setTooltip(( not v707.enableTimeSpell and "Enable Time Spell") or "Disable Time Spell" );v708.showTimespell.onClick=function(v731) local v732=0 + 0 ;while true do if (v732==(0 -0)) then v707.enableTimeSpell= not v707.enableTimeSpell;v708.showTimespell:setChecked(v707.enableTimeSpell);v732=807 -(118 + 688) ;end if (1==v732) then v708.showTimespell:setTooltip(( not v707.enableTimeSpell and "Enable Time Spell") or "Disable Time Spell" );if v707.enableTimeSpell then v709:show();else v709:hide();end v732=50 -(25 + 23) ;end if (v732==(1 + 1)) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;if v707.enableTimeSpell then v709:show();else v709:hide();end v708.remove.onClick=function(v733) local v734=0;while true do if (v734==0) then for v793,v794 in ipairs(storageProfiles.comboSpells) do if (v794==v707) then removeTable(storageProfiles.comboSpells,v793);end end scriptFuncs.reindexTable(v204);v734=1;end if (v734==(1887 -(927 + 959))) then v709:destroy();v708:destroy();break;end end end;v708.onClick=function(v735) local v736=0 -0 ;while true do if (0==v736) then comboInterface.moveDown:show();comboInterface.moveUp:show();break;end end end;v708.textToSet:setText(firstLetterUpper("Jutsu: "   .. v707.spellCast   .. " | Cooldown: "   .. v707.cooldown   .. " | Distance: "   .. v707.distance   .. "" ));v708.textToSet:setColor("white");v708.textToSet:setFont("verdana-11px-rounded");v708:setTooltip("Msg Laranja: "   .. v707.orangeSpell   .. " | Nome na Tela: "   .. v707.onScreen   .. " " );end break;end end end end comboInterface.insertSpell.onClick=function(v205) local v206=0;local v207;local v208;local v209;local v210;local v211;local v212;while true do if ((736 -(16 + 716))==v206) then comboInterface.orangeSpell:clearText();comboInterface.onScreen:clearText();comboInterface.sameSpell:setChecked(true);comboInterface.orangeSpell:setEnabled(false);v206=5;end if (v206==(0 -0)) then v207=comboInterface.castSpell:getText():trim():lower();v208=comboInterface.orangeSpell:getText():trim():lower();v209=comboInterface.onScreen:getText();v208=((v208:len()==(97 -(11 + 86))) and v207) or v208 ;v206=2 -1 ;end if (v206==(288 -(175 + 110))) then table.insert(storageProfiles.comboSpells,v212);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);refreshComboList(comboInterface,storageProfiles.comboSpells);comboInterface.castSpell:clearText();v206=9 -5 ;end if (v206==(4 -3)) then v210=comboInterface.cooldown:getValue();v211=comboInterface.distance:getValue();if ( not v207 or (v207:len()==0)) then return warn("Invalid Spell Name.");end if ( not comboInterface.sameSpell:isChecked() and (comboInterface.orangeSpell:getText():len()==0)) then return warn("Invalid Orange Spell.");end v206=1798 -(503 + 1293) ;end if ((5 -3)==v206) then if ( not v209 or (v209:len()==(0 + 0))) then return warn("Invalid Text On Screen");end if (v210==(1061 -(810 + 251))) then return warn("Invalid Cooldown.");end if (v211==0) then return warn("Invalid Distance");end v212={index= #storageProfiles.comboSpells + 1 + 0 ,spellCast=v207,onScreen=v209,orangeSpell=v208,cooldown=v210,distance=v211,enableTimeSpell=true,enabled=true};v206=1 + 2 ;end if (v206==(5 + 0)) then comboInterface.cooldown:setValue(533 -(43 + 490) );pillsInterface.distance:setValue(733 -(711 + 22) );break;end end end;refreshComboList(comboInterface,storageProfiles.comboSpells);comboInterface.moveUp.onClick=function() local v213=0;local v214;local v215;while true do if ((3 -2)==v213) then v215=comboInterface.spellList:getChildIndex(v214);if (v215<2) then return;end v213=861 -(240 + 619) ;end if (v213==0) then v214=comboInterface.spellList:getFocusedChild();if  not v214 then return;end v213=1 + 0 ;end if (v213==4) then table.sort(storageProfiles.comboSpells,function(v625,v626) return v625.index<v626.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if (2==v213) then comboInterface.spellList:moveChildToIndex(v214,v215-1 );comboInterface.spellList:ensureChildVisible(v214);v213=3;end if (v213==3) then storageProfiles.comboSpells[v215].index=v215-1 ;storageProfiles.comboSpells[v215-(1 -0) ].index=v215;v213=1 + 3 ;end end end;comboInterface.moveDown.onClick=function() local v216=comboInterface.spellList:getFocusedChild();if  not v216 then return;end local v217=comboInterface.spellList:getChildIndex(v216);if (v217>=comboInterface.spellList:getChildCount()) then return;end comboInterface.spellList:moveChildToIndex(v216,v217 + 1 );comboInterface.spellList:ensureChildVisible(v216);storageProfiles.comboSpells[v217].index=v217 + 1 ;storageProfiles.comboSpells[v217 + (1745 -(1344 + 400)) ].index=v217;table.sort(storageProfiles.comboSpells,function(v425,v426) return v425.index<v426.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;comboInterface.findCD.onClick=function(v220) local v221=0;while true do if (v221==(405 -(255 + 150))) then detectOrangeSpell,testSpell=true,true;spellTime={0 + 0 ,""};break;end end end;macro(1,function() if testSpell then say(comboInterface.castSpell:getText());end end);onTalk(function(v222,v223,v224,v225,v226,v227) local v228=0 -0 ;local v229;while true do if (v228==(3 -2)) then v229=((comboInterface.orangeSpell:getText():len()>(1739 -(404 + 1335))) and comboInterface.orangeSpell:getText():lower():trim()) or comboInterface.castSpell:getText():lower():trim() ;if (v225:lower():trim()==v229) then if (spellTime[408 -(183 + 223) ]==v229) then local v737=0;while true do if (v737==0) then comboInterface.cooldown:setValue(now-spellTime[1] );spellTime={now,v229};v737=1 + 0 ;end if (1==v737) then detectOrangeSpell=false;testSpell=false;break;end end else spellTime={now,v229};end end break;end if (v228==(0 + 0)) then if  not detectOrangeSpell then return;end if (player:getName()~=v222) then return;end v228=339 -(118 + 220) ;end end end);macro(1 + 0 ,function() local v230=449 -(108 + 341) ;while true do if (v230==(0 + 0)) then if  not (comboSpellsWidget or storageProfiles.comboSpells) then return;end for v627,v628 in ipairs(storageProfiles.comboSpells) do local v629=comboSpellsWidget[v628.index];if v629 then if ( not v628.cooldownSpells or (v628.cooldownSpells<now)) then v629:setColor("green");v629:setText(firstLetterUpper(v628.onScreen)   .. " |  0s" );else local v764=0;while true do if (v764==(0 -0)) then v629:setColor("red");v629:setText(firstLetterUpper(v628.onScreen)   .. " | "   .. formatRemainingTime(v628.cooldownSpells) );break;end end end end end break;end end end);fugaIcon.title:setOn(v22.fugaMacro);fugaIcon.title.onClick=function(v231) v22.fugaMacro= not v22.fugaMacro;v231:setOn(v22.fugaMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;fugaIcon.settings.onClick=function(v233) if  not fugaInterface:isVisible() then local v504=0;while true do if (v504==0) then fugaInterface:show();fugaInterface:raise();v504=1494 -(711 + 782) ;end if (v504==(1 -0)) then fugaInterface:focus();break;end end else fugaInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end end;fugaInterface.closeButton.onClick=function(v234) fugaInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;fugaInterface.hppercent:setText("0%");fugaInterface.hppercent.onValueChange=function(v235,v236) v235:setText(v236   .. "%" );end;fugaInterface.cooldownTotal:setText("0s");fugaInterface.cooldownTotal.onValueChange=function(v237,v238) local v239=469 -(270 + 199) ;local v240;while true do if (v239==(0 + 0)) then v240=formatTime(v238);v237:setText(v238   .. "s" );break;end end end;fugaInterface.cooldownActive:setText("0s");fugaInterface.cooldownActive.onValueChange=function(v241,v242) local v243=formatTime(v242);v241:setText(v242   .. "s" );end;fugaIcon.showInfos:setChecked(v22.showInfos);fugaIcon.showInfos.onClick=function(v244) v22.showInfos= not v22.showInfos;v244:setChecked(v22.showInfos);end;fugaInterface.sameSpell:setChecked(true);fugaInterface.orangeSpell:setEnabled(false);fugaInterface.sameSpell.onCheckChange=function(v246,v247) if v247 then fugaInterface.orangeSpell:setEnabled(false);else local v505=0;while true do if (v505==(1819 -(580 + 1239))) then fugaInterface.orangeSpell:setEnabled(true);fugaInterface.orangeSpell:setText(fugaInterface.castSpell:getText());break;end end end end;fugaInterface.lifesValue:hide();fugaInterface.lifesOption.onCheckChange=function(v248,v249) if v249 then fugaInterface.multipleOption:hide();fugaInterface.lifesValue:show();else fugaInterface.multipleOption:show();fugaInterface.lifesValue:hide();end end;function refreshFugaList(v250,v251) if v251 then for v533,v534 in pairs(v250.spellList:getChildren()) do v534:destroy();end for v535,v536 in pairs(fugaSpellsWidgets) do v536:destroy();end for v537,v538 in ipairs(v251) do local v539=setupUI(v25,v250.spellList);local v540=setupUI(v26,g_ui.getRootWidget());v540:setText(firstLetterUpper(v538.spellCast));attachSpellWidgetCallbacks(v540,v538.index,storageProfiles.fugaSpells);if  not v538.widgetPos then v538.widgetPos={x=0,y=50};end if v538.enableTimeSpell then v540:show();else v540:hide();end v540:setPosition(v538.widgetPos);fugaSpellsWidgets[v538.index]=v540;v539.onDoubleClick=function(v630) local v631=v538;v250.castSpell:setText(v631.spellCast);v250.orangeSpell:setText(v631.orangeSpell);v250.onScreen:setText(v631.onScreen);v250.hppercent:setValue(v631.selfHealth);v250.cooldownTotal:setValue(v631.cooldownTotal);v250.cooldownActive:setValue(v631.cooldownActive);for v672,v673 in ipairs(storageProfiles.fugaSpells) do if (v673==v538) then removeTable(storageProfiles.fugaSpells,v672);end end scriptFuncs.reindexTable(v251);v540:destroy();v539:destroy();end;v539.enabled:setChecked(v538.enabled);v539.enabled:setTooltip(( not v538.enabled and "Enable Spell") or "Disable Spell" );v539.enabled.onClick=function(v632) local v633=0 -0 ;while true do if (v633==0) then v538.enabled= not v538.enabled;v539.enabled:setChecked(v538.enabled);v633=1 + 0 ;end if (v633==(1 + 0)) then v539.enabled:setTooltip(( not v538.enabled and "Enable Spell") or "Disable Spell" );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;v539.showTimespell:setChecked(v538.enableTimeSpell);v539.showTimespell:setTooltip(( not v538.enableTimeSpell and "Enable Time Spell") or "Disable Time Spell" );v539.showTimespell.onClick=function(v634) local v635=0 + 0 ;while true do if (1==v635) then v539.showTimespell:setTooltip(( not v538.enableTimeSpell and "Enable Time Spell") or "Disable Time Spell" );if v538.enableTimeSpell then v540:show();else v540:hide();end v635=4 -2 ;end if ((0 + 0)==v635) then v538.enableTimeSpell= not v538.enableTimeSpell;v539.showTimespell:setChecked(v538.enableTimeSpell);v635=1168 -(645 + 522) ;end if (v635==(1792 -(1010 + 780))) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;v539.remove.onClick=function(v636) for v674,v675 in ipairs(storageProfiles.fugaSpells) do if (v675==v538) then removeTable(storageProfiles.fugaSpells,v674);end end scriptFuncs.reindexTable(v251);v540:destroy();v539:destroy();end;v539.onClick=function(v637) local v638=0;while true do if (v638==(0 + 0)) then fugaInterface.moveDown:show();fugaInterface.moveUp:show();break;end end end;v539.textToSet:setText(firstLetterUpper(v538.spellCast));v539.textToSet:setColor("white");v539.textToSet:setFont("verdana-11px-rounded");v539:setTooltip("Orange Message: "   .. v538.orangeSpell   .. " | On Screen: "   .. v538.onScreen   .. " | Total Cooldown: "   .. v538.cooldownTotal   .. "s | Active Cooldown: "   .. v538.cooldownActive   .. "s | Hppercent: "   .. v538.selfHealth );end end end fugaInterface.moveUp.onClick=function() local v252=fugaInterface.spellList:getFocusedChild();if  not v252 then return;end local v253=fugaInterface.spellList:getChildIndex(v252);if (v253<2) then return;end fugaInterface.spellList:moveChildToIndex(v252,v253-(4 -3) );fugaInterface.spellList:ensureChildVisible(v252);storageProfiles.fugaSpells[v253].index=v253-1 ;storageProfiles.fugaSpells[v253-1 ].index=v253;table.sort(storageProfiles.fugaSpells,function(v427,v428) return v427.index<v428.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;fugaInterface.moveDown.onClick=function() local v256=fugaInterface.spellList:getFocusedChild();if  not v256 then return;end local v257=fugaInterface.spellList:getChildIndex(v256);if (v257>=fugaInterface.spellList:getChildCount()) then return;end fugaInterface.spellList:moveChildToIndex(v256,v257 + (2 -1) );fugaInterface.spellList:ensureChildVisible(v256);storageProfiles.fugaSpells[v257].index=v257 + (1837 -(1045 + 791)) ;storageProfiles.fugaSpells[v257 + (2 -1) ].index=v257;table.sort(storageProfiles.fugaSpells,function(v429,v430) return v429.index<v430.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;fugaInterface.insertSpell.onClick=function(v260) local v261=fugaInterface.castSpell:getText():trim();local v262=fugaInterface.orangeSpell:getText():trim();local v263=fugaInterface.onScreen:getText();v262=((v262:len()==(0 -0)) and v261) or v262 ;local v264=fugaInterface.hppercent:getValue();local v265=fugaInterface.cooldownTotal:getValue();local v266=fugaInterface.cooldownActive:getValue();if (v261:len()==(505 -(351 + 154))) then return warn("Invalid Spell Name.");end if ( not fugaInterface.sameSpell:isChecked() and (v262:len()==(1574 -(1281 + 293)))) then return warn("Invalid Orange Spell.");end if (v263:len()==(266 -(28 + 238))) then return warn("Invalid Text On Screen");end if (v264==(0 -0)) then return warn("Invalid Hppercent.");end if (v265==0) then return warn("Invalid Cooldown Total.");end local v267={index= #storageProfiles.fugaSpells + 1 ,spellCast=v261,orangeSpell=v262,onScreen=v263,selfHealth=v264,cooldownActive=v266,cooldownTotal=v265,enableTimeSpell=true,enabled=true};if fugaInterface.lifesOption:isChecked() then local v506=1559 -(1381 + 178) ;while true do if (v506==(1 + 0)) then if (fugaInterface.lifesValue:getValue()==0) then return warn("Invalid Life Value.");end v267.amountLifes=fugaInterface.lifesValue:getValue();break;end if ((0 + 0)==v506) then v267.lifes=0 + 0 ;v267.enableLifes=true;v506=1;end end end if fugaInterface.reviveOption:isChecked() then local v507=0 -0 ;while true do if (0==v507) then v267.enableRevive=true;v267.alreadyChecked=false;break;end end end if fugaInterface.multipleOption:isChecked() then local v508=0 + 0 ;while true do if (v508==0) then v267.enableMultiple=true;v267.count=473 -(381 + 89) ;break;end end end table.insert(storageProfiles.fugaSpells,v267);refreshFugaList(fugaInterface,storageProfiles.fugaSpells);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);fugaInterface.castSpell:clearText();fugaInterface.orangeSpell:clearText();fugaInterface.onScreen:clearText();fugaInterface.cooldownTotal:setValue(0 + 0 );fugaInterface.cooldownActive:setValue(0 + 0 );fugaInterface.hppercent:setValue(0 -0 );fugaInterface.reviveOption:setChecked(false);fugaInterface.lifesOption:setChecked(false);fugaInterface.multipleOption:setChecked(false);fugaInterface.multipleOption:show();fugaInterface.lifesValue:hide();end;refreshFugaList(fugaInterface,storageProfiles.fugaSpells);storage.widgetPos=storage.widgetPos or {} ;informationWidget={};local v51={"showText"};for v268,v269 in ipairs(v51) do informationWidget[v269]=setupUI(v26,g_ui.getRootWidget());end local function v52(v271) informationWidget[v271].onDragEnter=function(v431,v432) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v431:breakAnchors();v431.movingReference={x=v432.x-v431:getX() ,y=v432.y-v431:getY() };return true;end;informationWidget[v271].onDragMove=function(v434,v435,v436) local v437=v434:getParent():getRect();local v438=math.min(math.max(v437.x,v435.x-v434.movingReference.x ),(v437.x + v437.width) -v434:getWidth() );local v439=math.min(math.max(v437.y-v434:getParent():getMarginTop() ,v435.y-v434.movingReference.y ),(v437.y + v437.height) -v434:getHeight() );v434:move(v438,v439);return true;end;informationWidget[v271].onDragLeave=function(v440,v441) storage.widgetPos[v271]={};storage.widgetPos[v271].x=v440:getX();storage.widgetPos[v271].y=v440:getY();return true;end;end for v275,v276 in pairs(informationWidget) do v52(v275);informationWidget[v275]:setPosition(storage.widgetPos[v275] or {0 -0 ,1505 -(990 + 465) } );end local v53=informationWidget['showText'];macro(100,function() if v22.showInfos then for v547,v548 in ipairs(storageProfiles.fugaSpells) do if v548.selfHealth then local v683=0 + 0 ;while true do if (v683==(1 + 0)) then return;end if ((0 + 0)==v683) then v53:show();v53:setText("INIMIGOS: "   .. getPlayersAttack(false)   .. " | PERCENT: "   .. calculatePercentage(v548.selfHealth)   .. "%" );v683=3 -2 ;end end end end else v53:hide();end end);macro(1727 -(1668 + 58) ,function() local v277=626 -(512 + 114) ;while true do if (v277==(0 -0)) then if  not (fugaSpellsWidgets and storageProfiles.fugaSpells) then return;end for v639,v640 in ipairs(storageProfiles.fugaSpells) do local v641=fugaSpellsWidgets[v640.index];if v641 then local v716=firstLetterUpper(v640.onScreen);local v717="green";if (v640.activeCooldown and (v640.activeCooldown>now)) then local v765=0;while true do if (v765==0) then v716=v716   .. ": "   .. formatRemainingTime(v640.activeCooldown) ;v717="#00FFFF";v765=1 -0 ;end if (v765==(3 -2)) then if (v640.enableLifes and (v640.lifes==(0 + 0))) then v640.activeCooldown=nil;end break;end end elseif (v640.totalCooldown and (v640.totalCooldown>now)) then local v784=0 + 0 ;while true do if (v784==(0 + 0)) then v716=v716   .. ": "   .. formatRemainingTime(v640.totalCooldown) ;v717="#FF4040";break;end end else local v785=0 -0 ;while true do if (v785==1) then if v640.enableLifes then v640.lifes=1994 -(109 + 1885) ;end if v640.enableRevive then v640.alreadyChecked=false;end break;end if (v785==(1469 -(1269 + 200))) then v716=v716   .. ": 0s" ;if (v640.enableMultiple and v640.canReset) then v640.count=3;v640.canReset=false;end v785=1;end end end if (v640.enableMultiple and (v640.count>0)) then v716=""   .. v640.count   .. " | "   .. v716 ;end if (v640.enableLifes and (v640.lifes>(0 -0))) then v716=""   .. v640.lifes   .. " | "   .. v716 ;end v641:setText(v716);v641:setColor(v717);end end break;end end end);keyIcon.title:setOn(v22.keyMacro);keyIcon.title.onClick=function(v278) v22.keyMacro= not v22.keyMacro;v278:setOn(v22.keyMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;keyIcon.settings.onClick=function(v280) if  not keyInterface:isVisible() then keyInterface:show();keyInterface:raise();keyInterface:focus();else local v509=0;while true do if (v509==(815 -(98 + 717))) then keyInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end end;keyInterface.closeButton.onClick=function(v281) local v282=826 -(802 + 24) ;while true do if (v282==0) then keyInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;keyInterface.key.onHoverChange=function(v283,v284) if v284 then local v510=0 -0 ;while true do if (v510==(0 -0)) then x=true;onKeyPress(function(v718) if  not x then return;end v283:setText(v718);end);break;end end else x=false;end end;function refreshKeyList(v285,v286) if v286 then for v549,v550 in pairs(v285.spellList:getChildren()) do v550:destroy();end for v551,v552 in ipairs(v286) do local v553=setupUI(v25,v285.spellList);v553.showTimespell:hide();v553.onDoubleClick=function(v642) local v643=v552;v285.key:setText(v643.keyPress);v285.castSpell:setText(v643.spellCast);for v684,v685 in ipairs(storageProfiles.keySpells) do if (v685==v552) then removeTable(storageProfiles.keySpells,v684);end end scriptFuncs.reindexTable(v286);v553:destroy();end;v553.enabled:setChecked(v552.enabled);v553.enabled:setTooltip(( not v552.enabled and "Enable Spell") or "Disable Spell" );v553.enabled.onClick=function(v644) local v645=0 + 0 ;while true do if (v645==(1 + 0)) then v553.enabled:setTooltip(( not v552.enabled and "Enable Spell") or "Disable Spell" );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if (v645==(0 + 0)) then v552.enabled= not v552.enabled;v553.enabled:setChecked(v552.enabled);v645=1 + 0 ;end end end;v553.remove.onClick=function(v646) for v686,v687 in ipairs(storageProfiles.keySpells) do if (v687==v552) then removeTable(storageProfiles.keySpells,v686);end end scriptFuncs.reindexTable(storageProfiles.keySpells);v553:destroy();end;v553.textToSet:setText(firstLetterUpper(v552.spellCast)   .. " | Key: "   .. v552.keyPress );end end end keyInterface.insertKey.onClick=function(v287) local v288=0 -0 ;local v289;local v290;while true do if (v288==2) then table.insert(storageProfiles.keySpells,{index= #storageProfiles.keySpells + 1 ,spellCast=v290,keyPress=v289,enabled=true});refreshKeyList(keyInterface,storageProfiles.keySpells);v288=3;end if (v288==(13 -9)) then keyInterface.castSpell:clearText();break;end if (v288==0) then v289=keyInterface.key:getText();v290=keyInterface.castSpell:getText():lower():trim();v288=1 + 0 ;end if (v288==(2 + 1)) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);keyInterface.key:clearText();v288=4 + 0 ;end if (v288==1) then if ( not v289 or (v289:len()==(0 + 0))) then return warn("Invalid Key.");end for v647,v648 in ipairs(storageProfiles.keySpells) do if (v648.keyPress==v289) then return warn("Key Already Added.");end end v288=2;end end end;refreshKeyList(keyInterface,storageProfiles.keySpells);macro(storage.scrollBars1.macroDelay,function() local v291=0 + 0 ;local v292;local v293;local v294;local v295;while true do if (v291==(1436 -(797 + 636))) then if  not v294 then return;end v295=getDistanceBetween(v292,v294);v291=19 -15 ;end if (v291==(1619 -(1427 + 192))) then if  not v27.title:isOn() then return;end if (stopCombo and (stopCombo>=now)) then return;end v291=1;end if (v291==(1 + 0)) then if (stopToCast() or isAnySelectedKeyPressed() or  not g_game.isAttacking()) then return;end v292=player:getPosition();v291=4 -2 ;end if (v291==2) then v293=g_game.getAttackingCreature();v294=v293:getPosition();v291=3;end if (v291==(4 + 0)) then for v649,v650 in ipairs(storageProfiles.comboSpells) do if (v650.enabled and (v295<=v650.distance)) then if ( not v650.cooldownSpells or (v650.cooldownSpells<=now)) then say(v650.spellCast);end end end break;end end end);local v59=g_game.getLocalPlayer();macro(1 + 0 ,function() if  not fugaIcon.title:isOn() then return;end if isInPz() then return;end local v296=v59:getHealthPercent();for v445,v446 in ipairs(storageProfiles.fugaSpells) do if (v446.enabled and (v296<=calculatePercentage(v446.selfHealth))) then if ( not v446.totalCooldown or (v446.totalCooldown<=now)) then if  not canCastFuga() then stopCombo=now + (576 -(192 + 134)) ;forceSay(v446.spellCast);end end end end end);macro(1277 -(316 + 960) ,function() if  not g_mouse.isPressed(4 + 3 ) then return;end if  not fugaIcon.title:isOn() then return;end for v447,v448 in ipairs(storageProfiles.fugaSpells) do if (v448.enabled and (g_mouse.isPressed(6 + 1 ))) then if ( not v448.totalCooldown or (v448.totalCooldown<=now)) then if  not canCastFuga() then stopCombo=now + 250 ;return forceSay(v448.spellCast);end end end end end);macro(storage.scrollBars1.macroDelay,function() local v297=0 + 0 ;while true do if (v297==1) then for v651,v652 in ipairs(storageProfiles.keySpells) do if (v652.enabled and (modules.corelib.g_keyboard.areKeysPressed(v652.keyPress))) then stopCombo=now + (955 -705) ;say(v652.spellCast);end end break;end if (v297==(551 -(83 + 468))) then if  not keyIcon.title:isOn() then return;end if modules.game_console:isChatEnabled() then return;end v297=1807 -(1202 + 604) ;end end end);onTalk(function(v298,v299,v300,v301,v302,v303) v301=v301:lower();if (v298~=player:getName()) then return;end if (v301=="Bijuu Yaiba") then yaibaSlow=os.time() + (70 -55) ;end for v449,v450 in ipairs(CONFIG.pot) do if (v301==v450.orangeText:lower()) then v450.exhaust=now + v450.cooldown ;end end for v451,v452 in ipairs(CONFIG.pot2) do if (v301==v452.orangeText:lower()) then v452.exhaust=now + v452.cooldown ;end end for v453,v454 in ipairs(storageProfiles.comboSpells) do if (v301==v454.orangeSpell) then v454.cooldownSpells=now + v454.cooldown ;end end for v455,v456 in ipairs(storageProfiles.fugaSpells) do if (v301==v456.orangeSpell) then if v456.enableLifes then local v688=0 -0 ;while true do if (v688==(2 -1)) then v456.lifes=v456.amountLifes;break;end if (v688==(325 -(45 + 280))) then v456.activeCooldown=(now + (v456.cooldownActive * (966 + 34))) -250 ;v456.totalCooldown=(now + (v456.cooldownTotal * (874 + 126))) -(92 + 158) ;v688=1 + 0 ;end end end if (v456.enableRevive and  not v456.alreadyChecked) then local v689=0;while true do if (1==v689) then v456.alreadyChecked=true;break;end if (v689==(0 + 0)) then v456.totalCooldown=(now + (v456.cooldownTotal * 1000)) -(462 -212) ;v456.activeCooldown=(now + (v456.cooldownActive * (2911 -(340 + 1571)))) -250 ;v689=1;end end end if v456.enableMultiple then if (v456.count>0) then v456.count=v456.count-(1 + 0) ;v456.activeCooldown=(now + (v456.cooldownActive * (2772 -(1733 + 39)))) -(686 -436) ;if (v456.count==0) then v456.totalCooldown=(now + (v456.cooldownTotal * (2034 -(125 + 909)))) -250 ;v456.canReset=true;break;end end end if  not (v456.enableLifes or v456.enableRevive or v456.enableMultiple) then v456.activeCooldown=(now + (v456.cooldownActive * 1000)) -(2198 -(1096 + 852)) ;v456.totalCooldown=(now + (v456.cooldownTotal * (449 + 551))) -(357 -107) ;warn(v301);break;end end end end);onTextMessage(function(v304,v305) for v457,v458 in ipairs(storageProfiles.fugaSpells) do if v458.enableLifes then if (v305:lower():find("morreu e renasceu") and v458.activeCooldown and (v458.activeCooldown>=now)) then v458.lifes=v458.lifes-1 ;end end end end);onPlayerPositionChange(function(v306,v307) local v308={x=1178 + 36 ,y=1198 -(409 + 103) ,z=242 -(46 + 190) };for v459,v460 in ipairs(storageProfiles.fugaSpells) do if (v460.enableRevive and (v460.spellCast=="izanagi")) then if ((v306.x==v308.x) and (v306.y==v308.y) and (v306.z==v308.z)) then local v693=0;while true do if (v693==(95 -(51 + 44))) then v460.activeCooldown=nil;v460.alreadyChecked=true;break;end end end end end end);UI.Separator();UI.Label("PAINEL MACROS"):setFont("cipsoftFont");local v60="extras";local v61=setupUI([[
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


]]);v61:setId(PanelName);if  not storage[v60] then storage[v60]={};end local v62=storage[v60];PainelsWindow=UI.createWidget("PainelWindow",rootWidget);PainelsWindow:hide();extrasWindow=UI.createWindow("ExtrasWindow",rootWidget);extrasWindow:hide();extrasWindow.closeButton.onClick=function(v309) extrasWindow:hide();end;local v64=extrasWindow.content.right;local v65=extrasWindow.content.left;v61.editMusica.onClick=function(v310) extrasWindow:show();extrasWindow:raise();extrasWindow:focus();end;PainelsWindow.closeButton.onClick=function(v311) PainelsWindow:hide();end;v61.editPainel.onClick=function(v312) local v313=0 + 0 ;while true do if (v313==0) then PainelsWindow:show();PainelsWindow:raise();v313=1318 -(1114 + 203) ;end if (v313==1) then PainelsWindow:focus();break;end end end;local v69={cooldownSelo1=5726 -(228 + 498) ,possibleTexts={"jutsu foi selado"}};onTextMessage(function(v314,v315) v315=v315:lower();for v462,v463 in ipairs(v69.possibleTexts) do filterText=v463:trim():lower();if v315:find(filterText) then v69.cooldownUse=now + v69.cooldownSelo1 ;break;end end end);UI.Separator(v65);CONFIG={regenBju={{spell="bijuu regeneration",cooldown=56 + 44 }},pot={{id=278 -171 ,orangeText="i feel better!",cooldown=400}},yaiba={{spell="bijuu yaiba",cooldown=14524 -(303 + 221) }},pot2={{id=13082 -(231 + 1038) ,orangeText="i feel better!",cooldown=334 + 66 }}};macro(1,function() local v316=hppercent();if isInPz() then return;end if ((player:getOutfit().type==storage.outfitBijuu) and (v316<=(1261 -(171 + 991)))) then for v561,v562 in ipairs(CONFIG.regenBju) do if ( not v562.exhaust or (v562.exhaust<=now)) then say(v562.spell);end end end end);os=os or modules.os ;local v70=player:getName();function OutfitCheck() return player:getOutfit().type==tonumber(OutfitBijuu) ;end onTalk(function(v317,v318,v318,v319) if (v317==player:getName()) then if (v319=="Bijuu Yaiba") then yaibaSlow=os.time() + 15 ;end end end);macro(4 -3 ,function() local v320=0 -0 ;while true do if (1==v320) then if (player:getOutfit().type==(753 -451)) then say("bijuu yaiba");end break;end if (v320==0) then if isInPz() then return;end if (yaibaSlow and (yaibaSlow>=os.time())) then return;end v320=1;end end end);onTalk(function(v321,v322,v323,v324,v325,v326) if (v321~=player:getName()) then return;end if ((v324:lower()==id) and (storage.time.t<now)) then storage.time.t=now + tempo1 ;end end,v65);macro(81 + 19 ,function() for v464,v465 in ipairs(getSpectators(posz())) do if v465:isPlayer() then if (v465==player) then player:setMarked("black");elseif v465:isPartyMember() then v465:setMarked("yellow");elseif (v465:getEmblem()~=(3 -2)) then v465:setMarked("red");end end end end);UI.Separator();UI.Label("Selar Bijuu:",v65):setFont("cipsoftFont");local v60="Selar";local v61=setupUI([[
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

]],v65);v61:setId(v60);if  not storage[v60] then storage[v60]={id=3155,title=enabled,enabled=false,setting=true,hp=20};end v61.title:setOn(storage[v60].enabled);v61.title.onClick=function(v327) local v328=0;while true do if (v328==(0 -0)) then storage[v60].enabled= not storage[v60].enabled;v327:setOn(storage[v60].enabled);break;end end end;local v72=function() local v329=0 -0 ;local v330;while true do if (v329==(3 -2)) then v61.help:setText("If "   .. v330   .. " HP<"   .. storage[v60].hp   .. "%" );break;end if (v329==(1248 -(111 + 1137))) then v330=nil;if storage[v60].setting then v330="Target";else v330="Enemy";end v329=1;end end end;v72();v61.HP.onValueChange=function(v331,v332) local v333=158 -(91 + 67) ;while true do if (v333==0) then storage[v60].hp=v332;v72();break;end end end;v61.item:setItemId(storage[v60].id);v61.item.onItemChange=function(v334) storage[v60].id=v334:getItemId();end;v61.HP:setValue(storage[v60].hp);macro(1,function() local v336=0 -0 ;while true do if (v336==0) then if  not storage[v60].enabled then return;end if storage[v60].setting then if (g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<storage[v60].hp)) then local v743=0 + 0 ;while true do if (v743==0) then say("Kekkai Shihou Fuujin");say("Kekkai Shihou Fuujin");v743=524 -(423 + 100) ;end if (v743==(1 + 0)) then say("Kekkai Shihou Fuujin");break;end end end end break;end end end);UI.Label("TIME SPELLS:",v64):setFont("cipsoftFont");setDefaultTab("Main");timeSpellPanelName="timespellbot";local v61=setupUI([[
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
]],v64);v61:setId(timeSpellPanelName);local v75=setupUI([[
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
      
]],g_ui.getRootWidget());v75:hide();local v9=modules.game_bot.contentsPanel.config:getCurrentOption().text;TimeSpellConfig={spells={}};local v76={};local v77="/bot/"   .. v9   .. "/"   .. name()   .. "_TimeSpell.json" ;local v78=v75.MainPanel;local v79=nil;local v80=nil;if g_resources.fileExists(v77) then local v467=0;local v468;local v469;while true do if (v467==(2 -1)) then TimeSpellConfig=v469;if (type(TimeSpellConfig.spells)~="table") then TimeSpellConfig.spells={};end v467=2 + 0 ;end if ((773 -(326 + 445))==v467) then for v694,v695 in pairs(TimeSpellConfig.spells) do if ((v695.totalCd-now)>v695.totalTime) then TimeSpellConfig.spells[v694].totalCd=0 -0 ;TimeSpellConfig.spells[v694].activeCd=0 -0 ;end end break;end if (v467==0) then v468,v469=pcall(function() return json.decode(g_resources.readFileContents(v77));end);if  not v468 then return onError("Error loading file ("   .. v77   .. "). To fix the problem, delete TimeSpell.json. Details:"   .. v469 );end v467=2 -1 ;end end end function timeSpellConfigSave() local v337=v77;local v338,v339=pcall(function() return json.encode(TimeSpellConfig,713 -(530 + 181) );end);if  not v338 then return onError("Error saving configuration. Details: "   .. v339 );end if (v339:len()>((981 -(614 + 267)) * 1024 * 1024)) then return onError("Configuration file over 100MB will not be saved.");end g_resources.writeFileContents(v77,v339);end v61.title:setOn(TimeSpellConfig.enabled);v61.title.onClick=function(v340) TimeSpellConfig.enabled= not TimeSpellConfig.enabled;v340:setOn(TimeSpellConfig.enabled);timeSpellConfigSave();if  not TimeSpellConfig.enabled then for v565,v566 in pairs(v76) do if (v566~=nil) then v76[v565]:destroy();v76[v565]=nil;end end end end;v61.settings.onClick=function(v342) local v343=32 -(19 + 13) ;while true do if (v343==(1 -0)) then v75:focus();break;end if (v343==0) then v75:show();v75:raise();v343=2 -1 ;end end end;v75.closeButton.onClick=function(v344) v75:hide();timeSpellConfigSave();end;local v83=function(v345) local v346=0 -0 ;while true do if (v346==(0 + 0)) then v76[v345]:destroy();v76[v345]=nil;break;end end end;local v84=function() if TimeSpellConfig.spells then for v568,v569 in pairs(v78.spellList:getChildren()) do v569:destroy();end for v570,v571 in pairs(TimeSpellConfig.spells) do local v572=0;local v573;while true do if (v572==1) then v573.enabled:setChecked(v571.enabled);v573.enabled.onClick=function(v746) local v747=0 -0 ;while true do if (v747==(0 -0)) then v571.enabled= not v571.enabled;v573.enabled:setChecked(v571.enabled);break;end end end;v572=1814 -(1293 + 519) ;end if (v572==2) then v573.remove.onClick=function(v748) local v749=0 -0 ;while true do if (v749==(0 -0)) then TimeSpellConfig.spells[v571.spell]=nil;v83(v571.spell);v749=1 -0 ;end if (v749==1) then reindexTable(TimeSpellConfig.spells);v573:destroy();break;end end end;v573:setText("["   .. v571.onScreen   .. "]: Cooldown: "   .. (v571.totalTime/(4312 -3312))   .. "s" );break;end if (v572==(0 -0)) then v573=UI.createWidget("SpellEntry",v78.spellList);v573.onDoubleClick=function(v750) local v751=v571;TimeSpellConfig.spells[v571.spell]=nil;reindexTable(TimeSpellConfig.spells);if (v76[v751.spell]~=nil) then local v779=0;while true do if (v779==(0 + 0)) then v76[v751.spell]:destroy();v76[v751.spell]=nil;break;end end end v78.spellName:setText(v751.spell);v78.onScreen:setText(v751.onScreen);v78.activeTime:setText(v751.activeTime);v78.totalTime:setText(v751.totalTime);v78.posX:setText(v751.x);v78.posY:setText(v751.y);v573:destroy();end;v572=1 + 0 ;end end end end end;v84();v78.addSpell.onClick=function(v347) local v348=v78.spellName:getText():trim():lower();local v349=v78.onScreen:getText():trim();local v350=tonumber(v78.activeTime:getText()) or 0 ;local v351=tonumber(v78.totalTime:getText());local v352=tonumber(v78.posX:getText()) or 0 ;local v353=tonumber(v78.posY:getText()) or (90 -51) ;if  not v351 then return warn("TimeSpell: Enter a valid cooldown.");end if  not v352 then return warn("TimeSpell: Enter a valid Y position.");end if  not v353 then return warn("TimeSpell: Enter a valid Y position.");end if (v348:len()==(0 + 0)) then return warn("TimeSpell: Enter a valid spell.");end if (v349:len()==(0 + 0)) then return warn("TimeSpell: Put a name on OnScreen.");end TimeSpellConfig.spells[v348]={index= #TimeSpellConfig.spells + 1 ,spell=v348,onScreen=v349,activeTime=v350,activeCd=0,totalTime=v351,totalCd=0,x=v352,y=v353,enabled=true};v78.spellName:setText("");v78.onScreen:setText("");v78.activeTime:setText("");v78.totalTime:setText("");v78.posX:setText("");v78.posY:setText("");v84();end;local v86=[[
UIWidget
  background-color: black
  font: verdana-11px-rounded
  opacity: 0.70
  padding: 0 8
  focusable: true
  phantom: false
  draggable: true
  text-auto-resize: true
]];local function v87(v355) local v356=(v355-now)/(625 + 375) ;local v357="";v357=string.format("%.0f",(v355-now)/1000 )   .. "s" ;return v357;end local function v52(v358) v76[v358].onDragEnter=function(v470,v471) local v472=1096 -(709 + 387) ;while true do if (v472==0) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v470:breakAnchors();v472=1859 -(673 + 1185) ;end if (v472==(2 -1)) then v470.movingReference={x=v471.x-v470:getX() ,y=v471.y-v470:getY() };return true;end end end;v76[v358].onDragMove=function(v473,v474,v475) local v476=0;local v477;local v478;local v479;while true do if (v476==1) then v479=math.min(math.max(v477.y-v473:getParent():getMarginTop() ,v474.y-v473.movingReference.y ),(v477.y + v477.height) -v473:getHeight() );v473:move(v478,v479);v476=6 -4 ;end if (v476==(2 -0)) then return true;end if (v476==(0 + 0)) then v477=v473:getParent():getRect();v478=math.min(math.max(v477.x,v474.x-v473.movingReference.x ),(v477.x + v477.width) -v473:getWidth() );v476=1 + 0 ;end end end;v76[v358].onDragLeave=function(v480,v481) TimeSpellConfig.spells[v358].x=v480:getX();TimeSpellConfig.spells[v358].y=v480:getY();timeSpellConfigSave();return true;end;end local v88=macro(135 -35 ,function() local v362=0;while true do if (0==v362) then if  not v61.title:isOn() then return;end for v654,v655 in pairs(TimeSpellConfig.spells) do if ( not v655.enabled and (v76[v655.spell]~=nil)) then v76[v655.spell]:destroy();v76[v655.spell]=nil;elseif v655.enabled then if (v76[v655.spell]==nil) then local v788=0;while true do if (v788==0) then v76[v655.spell]=setupUI(v86,g_ui.getRootWidget());v76[v655.spell]:setPosition({x=v655.x,y=v655.y});v788=1;end if (v788==(1 + 0)) then v52(v655.spell);break;end end end if ( not v655.totalCd or (v655.totalCd<now)) then v76[v655.spell]:setText(v655.onScreen   .. ": 0s" );v76[v655.spell]:setColor("green");elseif (v655.activeCd>=now) then local v796=0 -0 ;local v797;while true do if (v796==(0 -0)) then v76[v655.spell]:setColor("#00FFFF");v797=v87(v655.activeCd);v796=1;end if (1==v796) then v76[v655.spell]:setText(v655.onScreen   .. ": "   .. v797 );break;end end else local v798=1880 -(446 + 1434) ;local v799;while true do if (v798==(1283 -(1040 + 243))) then v76[v655.spell]:setColor("#FF4040");v799=v87(v655.totalCd);v798=2 -1 ;end if (v798==(1848 -(559 + 1288))) then v76[v655.spell]:setText(v655.onScreen   .. ": "   .. v799 );break;end end end end end break;end end end);onTalk(function(v363,v364,v365,v366,v367,v368) local v369=0;while true do if (v369==0) then if (v363~=player:getName()) then return;end v366=v366:lower();v369=1932 -(609 + 1322) ;end if (v369==(456 -(13 + 441))) then TimeSpellConfig.spells[v366].totalCd=now + TimeSpellConfig.spells[v366].totalTime ;timeSpellConfigSave();break;end if (v369==(3 -2)) then if (TimeSpellConfig.spells[v366]==nil) then return;end if (TimeSpellConfig.spells[v366].activeTime>(0 -0)) then TimeSpellConfig.spells[v366].activeCd=now + TimeSpellConfig.spells[v366].activeTime ;end v369=2;end end end);local v25=[[
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
]];local v9=modules.game_bot.contentsPanel.config:getCurrentOption().text;rootWidget=g_ui.getRootWidget();if rootWidget then PainelsWindow=UI.createWidget("PainelWindow",rootWidget);PainelsWindow:hide();TabBar=PainelsWindow.paTabBar;TabBar:setContentWidget(PainelsWindow.paImagem);for v512=4 -3 ,1 do hpPanel4=g_ui.createWidget("hpPanel");cmbPanel2=g_ui.createWidget("cPanel");hpPanel=g_ui.createWidget("hpPanel");hpPanel2=g_ui.createWidget("hpPanel");hpPanel3=g_ui.createWidget("hpPanel");TabBar:addTab("Buff",hpPanel4);color=UI.Label("ElDevBorges",hpPanel4);color:setColor("orange");UI.Separator(hpPanel4);color=UI.Label("Buffs:",hpPanel4);color:setColor("red");function warning() end local v513=0 + 0 ;local v514=0;local v515=false;local function v516(v575) local v576=0;while true do if (v576==(0 -0)) then v513=now;v514=v575;v576=1 + 0 ;end if (v576==(1 + 0)) then v515=true;selado=true;break;end end end local function v517() v515=false;selado=false;end onTextMessage(function(v577,v578) local v579=v578:lower():match("seu jutsu foi selado por (%d+) segundos");if v579 then local v698=tonumber(v579);if v698 then v516(v698);end end end);macro(100,function() if v515 then local v699=(now-v513)/(2967 -1967) ;if (v699>=v514) then v517();end end end);local v518=storage.kekkeiBuff;local v519=storage.Buff;local v520=tonumber(storage.kekkeiMedicine);local v521=tonumber(storage.buffMedicine);buff=macro(1000,"buff",function() local v580=0;while true do if (v580==(0 + 0)) then if ((player:getSkillLevel(3)<=v520) and  not isInProtectionZone() and  not selado) then say(v518);end schedule(1839 -839 ,function() if ((player:getSkillLevel(3)<=v521) and  not isInProtectionZone() and  not selado) then say(v519);end end);break;end end end,hpPanel4);addIcon("buff",{item=7157 + 3668 ,text="BUFF"},buff);addTextEdit("FollowPlayer",storage.kekkeiBuff or "kekkei genkai" ,function(v581,v582) storage.kekkeiBuff=v582;end,hpPanel4);labelBuff=UI.Label("Buff",hpPanel4);addTextEdit("FollowPlayer",storage.Buff or "Buff" ,function(v584,v585) storage.Buff=v585;end,hpPanel4);labelBuff=UI.Label("MedicineSkill sem kekkei",hpPanel4);addTextEdit("FollowPlayer",storage.kekkeiMedicine or (0 + 0) ,function(v587,v588) storage.kekkeiMedicine=v588;end,hpPanel4);labelBuff=UI.Label("MedicineSkill com kekkei",hpPanel4);addTextEdit("FollowPlayer",storage.buffMedicine or 0 ,function(v590,v591) storage.buffMedicine=v591;end,hpPanel4);TabBar:addTab("Curas",hpPanel);color=UI.Label("ElDevBorges",hpPanel);color:setColor("orange");UI.Separator(hpPanel);UI.Label("ID BIJUU:",hpPanel):setFont("cipsoftFont");addTextEdit("outfitBijuu",storage.outfitBijuu or "302" ,function(v593,v594) storage.outfitBijuu=tonumber(v594);end,hpPanel);for v596,v597 in ipairs({storage.heal}) do local v598=0 + 0 ;local v599;while true do if (v598==0) then v599=macro(10,function() local v753=0 + 0 ;local v754;while true do if (v753==1) then if ((v597.max>=v754) and (v754>=v597.min)) then if TargetBot then TargetBot.saySpell(v597.text);else say(v597.text);end end break;end if (v753==(433 -(153 + 280))) then v754=player:getHealthPercent();if (player:getOutfit().type==storage.outfitBijuu) then return;end v753=1;end end end,hpPanel);v599.setOn(v597.on);v598=2 -1 ;end if (v598==1) then UI.DualScrollPanel(v597,function(v755,v756) v597=v756;v599.setOn(v597.on);end,hpPanel);break;end end end TabBar:addTab("Correr",hpPanel3);UI.Label("CORRER:",hpPanel3):setFont("cipsoftFont");addTextEdit("hasteSpell",storage.hasteSpell or "concentrate chakra feet" ,function(v600,v601) storage.hasteSpell=v601;end,hpPanel3);macro(898 + 102 ,"Correr",function() local v603=0;local v604;while true do if (v603==1) then v604=storage.sealedTypes and storage.sealedTypes.speed and (storage.sealedTypes.speed>=os.time()) ;if ( not v604 and  not hasHaste()) then say(storage.hasteSpell);end break;end if (v603==(0 + 0)) then if (getPlayersAttack()>=(1 + 0)) then return;end delay(1000);v603=1;end end end,hpPanel3);local v522={};bugmap=macro(1,"Bug Map",function() if (modules.game_console:isChatEnabled() or modules.corelib.g_keyboard.isCtrlPressed()) then return;end local v605=pos();for v656,v657 in pairs(v522.directions) do if (v522.isKeyPressed(v656)) then if (storage.bugMapCheck or v657.direction) then local v775=0;local v776;while true do if (0==v775) then if v657.direction then turn(v657.direction);end v776=g_map.getTile({x=v605.x + v657.x ,y=v605.y + v657.y ,z=v605.z});v775=1 + 0 ;end if (v775==(1 + 0)) then if v776 then return g_game.use(v776:getTopUseThing());end break;end end end end end end,hpPanel3);bugmap=addIcon("Bug Map",{item=10610,text="Bug Map"},bugmap);v522.checkBox=setupUI([[
CheckBox
  id: checkBox
  font: cipsoftFont
  text: Diagonal ON?
]],hpPanel3);v522.checkBox.onCheckChange=function(v606,v607) storage.bugMapCheck=v607;end;if (storage.bugMapCheck==nil) then storage.bugMapCheck=true;end v522.checkBox:setChecked(storage.bugMapCheck);v522.directions={W={x=0,y= -(7 -2),direction=0 + 0 },E={x=671 -(89 + 578) ,y= -4},D={x=4 + 1 ,y=0,direction=1 -0 },C={x=4,y=1053 -(572 + 477) },S={x=0,y=1 + 4 ,direction=2},Z={x= -(3 + 1),y=4},A={x= -5,y=0 + 0 ,direction=89 -(84 + 2) },Q={x= -(6 -2),y= -(3 + 1)}};v522.isKeyPressed=modules.corelib.g_keyboard.isKeyPressed;end end PainelsWindow.closeButton.onClick=function(v370) PainelsWindow:hide();end;
