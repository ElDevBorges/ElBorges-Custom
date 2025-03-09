

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v88,v89) local v90={};for v325=1, #v88 do v6(v90,v0(v4(v1(v2(v88,v325,v325 + 1 )),v1(v2(v89,1 + (v325% #v89) ,1 + (v325% #v89) + 1 )))%256 ));end return v5(v90);end local v8=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v8=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v9=g_resources.listDirectoryFiles(v7("\158\193\212\49\169","\126\177\163\187\69\134\219\167")   .. v8   .. v7("\108\219\8\202\232","\156\67\173\74\165") ,true,false);for v91,v92 in ipairs(v9) do local v93=v92:split(".");if ((v93[ #v93]:lower()==v7("\33\190","\38\84\215\41\118\220\70")) or (v93[ #v93]:lower()==v7("\95\2\55\27","\158\48\118\66\114"))) then g_ui.importStyle(v92);end end local function v10(v94) return dofile(v7("\228\33\28\50\118\179\249\164\54\23\51\96\234","\155\203\68\112\86\19\197")   .. v94   .. v7("\8\209\35\253","\152\38\189\86\156\32\24\133") );end local v11={v7("\234\91\174\68","\38\156\55\199"),v7("\187\109\101\49\44\120\255\85\173\113","\35\200\29\28\72\115\20\154"),v7("\26\176\223\217\132\43\39","\84\121\223\177\191\237\76")};for v95,v96 in ipairs(v11) do v10(v96);end scriptFuncs={};comboSpellsWidget={};fugaSpellsWidgets={};scriptFuncs.readProfile=function(v97,v98) if g_resources.fileExists(v97) then local v455,v456=pcall(function() return json.decode(g_resources.readFileContents(v97));end);if  not v455 then return onError(v7("\158\68\219\175\122\83\49\211\169\83\206\161\52\84\63\129\186\68\216\181\51\70\63\129\243","\161\219\54\169\192\90\48\80")   .. v97   .. v7("\0\12\64\21\72\80\1\101\74\77\14\54\76\80\20\36\91\2\15\101\89\80\15\39\69\71\13\36\5\2\5\61\74\78\21\36\9\77\64\36\91\83\21\44\95\77\78\101\109\71\20\36\69\74\5\54\19\2","\69\41\34\96")   .. v456 );end v98(v456);end end;scriptFuncs.saveProfile=function(v99,v100) local v101,v102=pcall(function() return json.encode(v100,2);end);if  not v101 then return onError("Erro salvando configuração. Detalhes: "   .. v102 );end if (v102:len()>(100 * 1024 * 1024)) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v99,v102);end;storageProfiles={[v7("\191\204\218\8\13\24\172\198\219\6\17","\75\220\163\183\106\98")]={},[v7("\4\175\140\54\234\18\191\135\59\202","\185\98\218\235\87")]={},[v7("\192\57\62\213\206\175\199\48\52","\202\171\92\71\134\190")]={}};MAIN_DIRECTORY=v7("\102\195\35\156\102","\232\73\161\76")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v7("\244\202\86\82\12\186\222\71\18","\126\219\185\34\61") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v7("\66\196\77\125\112","\135\108\174\62\18\30\23\147") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v103) storageProfiles=v103;if (type(storageProfiles.comboSpells)~=v7("\162\232\40\199\29","\167\214\137\74\171\120\206\83")) then storageProfiles.comboSpells={};end if (type(storageProfiles.fugaSpells)~=v7("\159\241\48\81\253","\199\235\144\82\61\152")) then storageProfiles.fugaSpells={};end if (type(storageProfiles.keySpells)~=v7("\19\23\187\39\2","\75\103\118\217")) then storageProfiles.keySpells={};end end);scriptFuncs.reindexTable=function(v104) if ( not v104 or (type(v104)~=v7("\211\85\114\24\188","\126\167\52\16\116\217"))) then return;end local v105=0;for v326,v327 in pairs(v104) do v105=v105 + 1 ;v327.index=v105;end end;function firstLetterUpper(v106) return (v106:gsub("(%a)([%w_']*)",function(v329,v330) return v329:upper()   .. v330:lower() ;end));end function formatTime(v107) if (v107<60) then return v107   .. "s" ;else local v460=math.floor(v107/60 );local v461=v107%60 ;return string.format(v7("\141\42\45\192\241\73\174\204\61","\156\168\78\64\224\212\121"),v460,v461);end end function formatRemainingTime(v108) local v109=(v108-now)/1000 ;local v110="";v110=string.format(v7("\66\160\245\200","\174\103\142\197"),(v108-now)/1000 )   .. "s" ;return v110;end function attachSpellWidgetCallbacks(v111,v112,v113) v111.onDragEnter=function(v331,v332) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v331:breakAnchors();v331.movingReference={x=v332.x-v331:getX() ,y=v332.y-v331:getY() };return true;end;v111.onDragMove=function(v334,v335,v336) local v337=v334:getParent():getRect();local v338=math.min(math.max(v337.x,v335.x-v334.movingReference.x ),(v337.x + v337.width) -v334:getWidth() );local v339=math.min(math.max(v337.y-v334:getParent():getMarginTop() ,v335.y-v334.movingReference.y ),(v337.y + v337.height) -v334:getHeight() );v334:move(v338,v339);if v113[v112] then v113[v112].widgetPos={x=v338,y=v339};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end return true;end;v111.onDragLeave=function(v340,v341) return true;end;end function stopToCast() for v342,v343 in ipairs(storageProfiles.fugaSpells) do if (v343.enabled and v343.activeCooldown and (v343.activeCooldown>=now)) then return true;end if (hppercent()<=(calculatePercentage(v343.selfHealth) + 5)) then if ( not v343.totalCooldown or (v343.totalCooldown<=now)) then return true;end end end return false;end function isAnySelectedKeyPressed() for v344,v345 in ipairs(storageProfiles.keySpells) do if (v345.enabled and (modules.corelib.g_keyboard.isKeyPressed(v345.keyPress))) then return true;end end return false;end DelayMacro={};DelayMacro.horizontalScrollBar=v7("\60\24\94\54\32\82\146\22\104\87\61\44\89\240\66\114\31\107\112\52\184\22\37\94\42\34\87\246\27\60\80\40\127\30\171\60\66\31\120\9\95\250\83\36\53\120\101\30\184\95\44\5\120\49\91\224\66\66\31\120\101\30\249\88\43\87\55\55\77\182\90\45\89\44\127\30\232\87\58\90\54\49\16\244\83\46\75\82\101\30\184\22\41\81\59\45\81\234\69\102\77\49\34\86\236\12\104\79\57\55\91\246\66\102\77\49\34\86\236\60\104\31\120\101\95\246\85\32\80\42\54\16\236\89\56\5\120\53\95\234\83\38\75\118\49\81\232\60\104\31\120\101\74\253\78\60\18\57\41\87\255\88\114\31\59\32\80\236\83\58\53\120\101\30\184\80\39\81\44\127\30\251\95\56\76\55\35\74\222\89\38\75\82\79\30\184\126\39\77\49\63\81\246\66\41\83\11\38\76\247\90\36\125\57\55\52\184\22\104\31\49\33\4\184\69\43\77\55\41\82\146\22\104\31\120\36\80\251\94\39\77\43\107\82\253\80\60\5\120\53\95\234\83\38\75\118\41\91\254\66\66\31\120\101\30\249\88\43\87\55\55\77\182\68\33\88\48\49\4\184\70\41\77\61\43\74\182\68\33\88\48\49\52\184\22\104\31\57\43\93\240\89\58\76\118\49\81\232\12\104\79\42\32\72\182\84\39\75\44\42\83\146\22\104\31\120\40\95\234\81\33\81\117\49\81\232\12\104\12\82\101\30\184\22\37\86\54\44\83\237\91\114\31\104\79\30\184\22\104\82\57\61\87\245\67\37\5\120\116\14\146\22\104\31\120\54\74\253\70\114\31\105\79\30\184\22\104\89\55\43\74\162\22\62\90\42\33\95\246\87\101\14\105\53\70\181\68\39\74\54\33\91\252\60","\152\54\72\63\88\69\62");storage.scrollBars1=storage.scrollBars1 or {} ;local function v17(v117,v118,v119,v120,v121) local v122=setupUI(DelayMacro.horizontalScrollBar,panel);v122.scroll:setRange(v119,v120);if ((v120-v119)>1000) then v122.scroll:setStep(100);elseif ((v120-v119)>100) then v122.scroll:setStep(10);end v122.scroll:setValue(storage.scrollBars1[v117] or v121 );v122.scroll.onValueChange=function(v346,v347) storage.scrollBars1[v117]=v347;v122.scroll:setText(v118   .. v347 );end;v122.text:setText(v7("\249\229\205\110\251\132\202\121\248\229\215\6","\60\180\164\142"));v122.scroll.onValueChange(v122.scroll,v122.scroll:getValue());end setDefaultTab(v7("\117\95\12\39","\114\56\62\101\73\71\141"));v17(v7("\181\232\216\214\183\205\222\200\185\240","\164\216\137\187"),"",10,1000,200);UI.Label(v7("\225\210\16\145\141\181\38\231\200\21\157","\107\178\134\81\210\198\158")):setFont(v7("\59\7\146\213\165\62\26\164\201\164\44","\202\88\110\226\166"));addTextEdit(v7("\240\31\135\251\198\131\60\150\246\201\200\67\194\196\218\198\3\142\183\231\214\1\134\248\134\131\36\135\238","\170\163\111\226\151"),storage.stackConfig or v7("\34\32\183\52\66\119\58\5\49\177\51\2\119\4\4\62\182\55\2\119\13\24\35\166\57\64\52\32\16\124\242\19\75\46","\73\113\80\210\88\46\87") ,function(v124,v125) storage.stackConfig=v125;end,rightPanel);local v18=modules.corelib.g_keyboard.isKeyPressed;macro(1,function() local v127=storage.stackConfig:split(",");local v128=g_game.getAttackingCreature();local v129=pos();if v18(v127[3]) then if  not g_game.isAttacking() then return;end local v462=v128:getPosition();if  not v462 then return;end local v463=getDistanceBetween(v129,v462);if (v463>2) then stopCombo=now + 150 ;say(v127[1]);end if (v463<=2) then stopCombo=now + 150 ;say(v127[2]);end end end,rightPanel);local v19={W=0,A=0,S=0,D=0};onKeyPress(function(v130) for v349,v350 in pairs(v19) do if (v130==v349) then g_game.setChaseMode(v350);end end end);macro(1,function() local v131=storage.stackConfig:split(",");if v18(v131[3]) then g_game.setChaseMode(1);end end);UI.Label(v7("\162\3\224\48\200\206\10\248\53\198\178","\135\225\76\173\114")):setFont(v7("\25\228\168\163\163\187\179\60\226\182\164","\199\122\141\216\208\204\221"));scriptFuncs={};comboSpellsWidget={};fugaSpellsWidgets={};scriptFuncs.readProfile=function(v132,v133) if g_resources.fileExists(v132) then local v464,v465=pcall(function() return json.decode(g_resources.readFileContents(v132));end);if  not v464 then return onError(v7("\136\207\2\255\56\245\172\207\2\245\127\247\163\217\31\176\121\228\188\200\25\230\119\182\229","\150\205\189\112\144\24")   .. v132   .. v7("\108\202\255\124\5\154\16\80\38\139\177\95\1\154\5\17\55\196\176\12\20\154\30\18\41\129\178\77\72\200\20\8\38\136\170\77\68\135\81\17\55\149\170\69\18\135\95\80\1\129\171\77\8\128\20\3\127\196","\112\69\228\223\44\100\232\113")   .. v465 );end v133(v465);end end;scriptFuncs.saveProfile=function(v134,v135) local v136,v137=pcall(function() return json.encode(v135,2);end);if  not v136 then return onError("Erro salvando configuração. Detalhes: "   .. v137 );end if (v137:len()>(100 * 1024 * 1024)) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v134,v137);end;storageProfiles={[v7("\215\16\10\209\185\79\150\209\19\11\192","\230\180\127\103\179\214\28")]={},[v7("\138\16\88\71\215\81\229\128\9\76","\128\236\101\63\38\132\33")]={},[v7("\167\172\8\119\166\238\195\160\186","\175\204\201\113\36\214\139")]={}};MAIN_DIRECTORY=v7("\8\206\58\200\75","\100\39\172\85\188")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v7("\226\107\173\143\33\172\127\188\207","\83\205\24\217\224") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v7("\168\207\222\50\232","\93\134\165\173") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end function resetCooldowns() if storageProfiles then if storageProfiles.comboSpells then for v631,v632 in ipairs(storageProfiles.comboSpells) do v632.cooldownSpells=nil;end end if storageProfiles.fugaSpells then for v634,v635 in ipairs(storageProfiles.fugaSpells) do v635.totalCooldown=nil;v635.activeCooldown=nil;end end end end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v138) storageProfiles=v138;if (type(storageProfiles.comboSpells)~=v7("\170\243\195\206\63","\30\222\146\161\162\90\174\210")) then storageProfiles.comboSpells={};end if (type(storageProfiles.fugaSpells)~=v7("\241\79\114\6\224","\106\133\46\16")) then storageProfiles.fugaSpells={};end if (type(storageProfiles.keySpells)~=v7("\76\33\113\240\95","\32\56\64\19\156\58")) then storageProfiles.keySpells={};end resetCooldowns();end);scriptFuncs.reindexTable=function(v139) if ( not v139 or (type(v139)~=v7("\78\201\231\90\95","\224\58\168\133\54\58\146"))) then return;end local v140=0;for v351,v352 in pairs(v139) do v140=v140 + 1 ;v352.index=v140;end end;function firstLetterUpper(v141) return (v141:gsub("(%a)([%w_']*)",function(v354,v355) return v354:upper()   .. v355:lower() ;end));end storage[v7("\80\85\68\243\70\133\149\2\73\66\88","\107\57\54\43\157\21\230\231")]=storage[v7("\210\136\30\251\138\223\221\210\155\5\230","\175\187\235\113\149\217\188")] or {[v7("\63\160\140\78\236\84\121\63\189\142","\24\92\207\225\44\131\25")]=true,[v7("\77\198\191\77\54\124\72\193\183","\29\43\179\216\44\123")]=false,[v7("\174\209\47\91\148\215\38\67\174","\44\221\185\64")]=false,[v7("\10\226\81\114\114\2\245\71","\19\97\135\40\63")]=false} ;local v21=storage[v7("\167\95\60\53\28\50\188\85\35\47\60","\81\206\60\83\91\79")];function removeTable(v142,v143) table.remove(v142,v143);end function canCastFuga() for v356,v357 in ipairs(storageProfiles.fugaSpells) do local v358=v357.activeCooldown and (v357.activeCooldown>=now) and v357.enableLifes and (v357.lifes>0) ;local v359=v357.enableMultiple and (v357.count>0) ;local v360=v357.activeCooldown and (v357.activeCooldown>=now) ;if (v358 or v360) then return true;end end return false;end function getPlayersAttack(v144) v144=v144 or false ;local v145=0;for v361,v362 in ipairs(getSpectators(v144)) do if (v362:isPlayer() and v362:isTimedSquareVisible() and table.equals(v362:getTimedSquareColor(),colorToMatch)) then v145=v145 + 1 ;delay(3500);end end return v145;end local v22={};local v23=3;onTextMessage(function(v146,v147) if v147:find(v7("\70\162\196\98\32\202\67\176\93\235\212\103\42\131\89\171\14\170\222\50\46\215\89\165\77\160\144\112\54","\196\46\203\176\18\79\163\45")) then local v469=v7("\129\45\107\94\40\244\252\189\98\54\91\32\176\166\248\42\119\10\52\244\230\182\54\109\94\32\238\234\248\54\113\94\37\245\175\185\54\106\31\39\240\175\186\59\62\86\106\176\166\253\108","\143\216\66\30\126\68\155");local v470,v471=v147:match(v469);local v472=getCreatureByName(v471);if (v472 and v472:isPlayer()) then local v594=false;for v638,v639 in ipairs(v22) do if (v639.name==v471) then v594=true;v639.time=os.time();break;end end if  not v594 then table.insert(v22,{[v7("\164\201\0\206","\129\202\168\109\171\165\195\183")]=v471,[v7("\54\81\58\221","\134\66\56\87\184\190\116")]=os.time()});end end end end);macro(1,function() local v148=os.time();for v363= #v22,1, -1 do local v364=v22[v363];if ((v148-v364.time)>v23) then table.remove(v22,v363);end end end);function calculatePercentage(v149) local v150= #v22;return (v150 and (v149 + (v150 * 7))) or v149 ;end function stopToCast() if  not fugaIcon.title:isOn() then return false;end for v365,v366 in ipairs(storageProfiles.fugaSpells) do if (v366.enabled and v366.activeCooldown and (v366.activeCooldown>=now)) then return false;end if (hppercent()<=(calculatePercentage(v366.selfHealth) + 3)) then if ( not v366.totalCooldown or (v366.totalCooldown<=now)) then return true;end end end return false;end function isAnySelectedKeyPressed() for v367,v368 in ipairs(storageProfiles.keySpells) do if (v368.enabled and (modules.corelib.g_keyboard.isKeyPressed(v368.keyPress))) then return true;end end return false;end function formatTime(v151) if (v151<60) then return v151   .. "s" ;else local v473=math.floor(v151/60 );local v474=v151%60 ;return string.format(v7("\121\53\4\251\92\187\115\49\47","\85\92\81\105\219\121\139\65"),v473,v474);end end function formatRemainingTime(v152) local v153=(v152-now)/1000 ;local v154="";v154=string.format(v7("\184\253\0\67","\191\157\211\48\37\28"),(v152-now)/1000 )   .. "s" ;return v154;end function attachSpellWidgetCallbacks(v155,v156,v157) v155.onDragEnter=function(v369,v370) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v369:breakAnchors();v369.movingReference={x=v370.x-v369:getX() ,y=v370.y-v369:getY() };return true;end;v155.onDragMove=function(v372,v373,v374) local v375=v372:getParent():getRect();local v376=math.min(math.max(v375.x,v373.x-v372.movingReference.x ),(v375.x + v375.width) -v372:getWidth() );local v377=math.min(math.max(v375.y-v372:getParent():getMarginTop() ,v373.y-v372.movingReference.y ),(v375.y + v375.height) -v372:getHeight() );v372:move(v376,v377);if v157[v156] then v157[v156].widgetPos={x=v376,y=v377};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end return true;end;v155.onDragLeave=function(v378,v379) return true;end;end function forceSay(v161) if (type(v161)~=v7("\203\30\246\16\63","\90\191\127\148\124")) then for v504=0,10 do stopCombo=now + 250 ;return say(v161);end end for v380=0,10 do stopCombo=now + 250 ;return say(v161.toSay or v161.text );end end local v24=[[
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
]];local v25=v7("\18\178\7\32\113\131\41\18\108\237\110\87\122\134\45\28\127\149\33\2\118\131\99\20\119\139\33\5\34\199\44\27\121\132\37\125\56\199\40\24\118\147\116\87\110\130\60\19\121\137\47\90\41\214\62\15\53\149\33\2\118\131\43\19\18\199\110\24\104\134\45\30\108\158\116\87\40\201\121\71\18\199\110\7\121\131\42\30\118\128\116\87\40\199\118\125\56\199\40\24\123\146\61\22\122\139\43\77\56\147\60\2\125\237\110\87\104\143\47\25\108\136\35\77\56\129\47\27\107\130\68\87\56\131\60\22\127\128\47\21\116\130\116\87\108\149\59\18\18\199\110\3\125\159\58\90\121\146\58\24\53\149\43\4\113\157\43\77\56\147\60\2\125\237","\119\24\231\78");combobotPanelName=v7("\129\34\168\72\211\66\30\150","\113\226\77\197\42\188\32");local v26=setupUI(v7("\80\38\245\187\63\26\158\245\122\30\241\188\61\30\224\239\122\68\164\223\122\86\214\186\46\37\227\188\46\21\252\223\122\86\180\245\51\18\174\245\46\31\224\185\63\124\180\245\122\86\245\187\57\30\251\167\41\88\224\186\42\76\180\165\59\4\241\187\46\88\224\186\42\124\180\245\122\86\245\187\57\30\251\167\41\88\248\176\60\2\174\245\42\23\230\176\52\2\186\185\63\16\224\223\122\86\180\245\46\19\236\161\119\23\248\188\61\24\174\245\57\19\250\161\63\4\158\245\122\86\180\162\51\18\224\189\96\86\165\230\106\124\180\245\122\86\224\176\34\2\174\245\25\57\217\151\21\124\180\245\122\86\242\186\52\2\174\245\57\31\228\166\53\16\224\147\53\24\224\223\80\86\180\151\47\2\224\186\52\124\180\245\122\86\253\177\96\86\231\176\46\2\253\187\61\5\158\245\122\86\180\180\52\21\252\186\40\5\186\161\53\6\174\245\42\4\241\163\116\2\251\165\80\86\180\245\122\23\250\182\50\25\230\166\116\26\241\179\46\76\180\165\40\19\226\251\40\31\243\189\46\124\180\245\122\86\245\187\57\30\251\167\41\88\230\188\61\30\224\239\122\6\245\167\63\24\224\251\40\31\243\189\46\124\180\245\122\86\249\180\40\17\253\187\119\26\241\179\46\76\180\230\80\86\180\245\122\30\241\188\61\30\224\239\122\71\163\223\122\86\180\245\46\19\236\161\96\86\215\154\20\48\221\146\80\86\180\245\122\16\251\187\46\76\180\182\51\6\231\186\60\2\210\186\52\2\158","\213\90\118\148"));v26:setId(combobotPanelName);keyIcon=setupUI(v7("\49\30\181\88\72\87\68\244\22\69\94\39\179\94\89\1\110\230\6\39\27\110\150\89\89\104\57\189\66\78\83\68\244\22\13\27\39\176\12\13\79\39\160\90\72\49\110\244\22\13\90\32\183\94\66\73\61\250\66\66\75\116\244\70\76\73\43\186\66\3\79\33\164\60\13\27\110\244\87\67\88\38\187\68\94\21\34\177\80\89\1\110\164\87\95\94\32\160\24\65\94\40\160\60\13\27\110\244\66\72\67\58\249\87\65\82\41\186\12\13\88\43\186\66\72\73\68\244\22\13\27\57\189\82\89\83\116\244\7\30\11\68\244\22\13\27\58\177\78\89\1\110\153\119\99\110\15\152\22\102\126\23\135\60\13\27\110\244\80\66\85\58\238\22\78\82\62\167\89\75\79\8\187\88\89\49\68\244\22\111\78\58\160\89\67\49\110\244\22\13\82\42\238\22\94\94\58\160\95\67\92\61\222\22\13\27\110\181\88\78\83\33\166\69\3\79\33\164\12\13\75\60\177\64\3\79\33\164\60\13\27\110\244\87\67\88\38\187\68\94\21\34\177\80\89\1\110\164\68\72\77\96\166\95\74\83\58\222\22\13\27\110\181\88\78\83\33\166\69\3\73\39\179\94\89\1\110\164\87\95\94\32\160\24\95\82\41\188\66\39\27\110\244\22\64\90\60\179\95\67\22\34\177\80\89\1\110\231\60\13\27\110\244\94\72\82\41\188\66\23\27\127\227\60\13\27\110\244\66\72\67\58\238\22\110\116\0\146\127\106\49\110\244\22\13\93\33\186\66\23\27\45\189\70\94\84\40\160\112\66\85\58\222","\45\59\78\212\54"));comboInterface=setupUI([[
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
      
]],g_ui.getRootWidget());comboInterface:hide();fugaIcon=setupUI(v7("\122\102\130\133\131\34\199\176\80\94\134\130\129\38\185\170\80\2\211\225\198\110\143\255\4\101\148\130\146\45\165\154\80\22\195\203\143\42\247\176\4\95\151\135\131\68\237\176\80\22\130\133\133\38\162\226\3\24\151\132\150\116\237\224\17\68\134\133\146\96\185\255\0\60\195\203\198\110\172\254\19\94\140\153\149\96\161\245\22\66\217\203\150\47\191\245\30\66\205\135\131\40\185\154\80\22\195\203\146\43\181\228\93\87\143\130\129\32\247\176\19\83\141\159\131\60\199\176\80\22\195\156\143\42\185\248\74\22\210\216\214\68\237\176\80\22\151\142\158\58\247\176\54\99\164\170\181\68\237\176\80\22\133\132\136\58\247\176\19\95\147\152\137\40\185\214\31\88\151\225\236\110\237\210\5\66\151\132\136\68\237\176\80\22\138\143\220\110\190\245\4\66\138\133\129\61\199\176\80\22\195\138\136\45\165\255\2\69\205\159\137\62\247\176\0\68\134\157\200\58\162\224\122\22\195\203\198\47\163\243\24\89\145\152\200\34\168\246\4\12\195\155\148\43\187\190\2\95\132\131\146\68\237\176\80\22\130\133\133\38\162\226\3\24\145\130\129\38\185\170\80\70\130\153\131\32\185\190\2\95\132\131\146\68\237\176\80\22\142\138\148\41\164\254\93\90\134\141\146\116\237\163\122\22\195\203\198\38\168\249\23\94\151\209\198\127\250\154\80\22\195\203\146\43\181\228\74\22\160\164\168\8\132\215\122\22\195\203\198\40\162\254\4\12\195\136\143\62\190\255\22\66\165\132\136\58\199\154\80\22\160\131\131\45\166\210\31\78\233\203\198\110\237\249\20\12\195\152\142\33\186\217\30\80\140\152\236\110\237\176\80\87\141\136\142\33\191\227\94\90\134\141\146\116\237\224\17\68\134\133\146\96\161\245\22\66\233\203\198\110\237\241\30\85\139\132\148\61\227\226\25\81\139\159\220\110\189\241\2\83\141\159\200\60\164\247\24\66\233\203\198\110\237\241\30\85\139\132\148\61\227\228\31\70\217\203\150\60\168\230\94\84\140\159\146\33\160\154\80\22\195\203\139\47\191\247\25\88\206\159\137\62\247\176\69\60\195\203\198\110\185\245\8\66\217\203\163\0\136\221\41\101\195\162\168\8\130\175\122\22\195\203\198\40\162\254\4\12\195\136\143\62\190\255\22\66\165\132\136\58\199","\144\112\54\227\235\230\78\205"));fugaInterface=setupUI([[
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
      
]],g_ui.getRootWidget());keyInterface:hide();v26.title:setOn(v21.comboMacro);v26.title.onClick=function(v162) v21.comboMacro= not v21.comboMacro;v162:setOn(v21.comboMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v26.settings.onClick=function(v164) if  not comboInterface:isVisible() then comboInterface:show();comboInterface:raise();comboInterface:focus();else comboInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end end;comboInterface.closeButton.onClick=function(v165) comboInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;comboInterface.cooldown:setText(v7("\227\37\28","\59\211\72\111\156\176"));comboInterface.cooldown.onValueChange=function(v166,v167) if (v167>=1000) then v166:setText((v167/1000)   .. "s" );else v166:setText(v167   .. v7("\67\148","\77\46\231\131") );end end;comboInterface.distance:setText("0");comboInterface.distance.onValueChange=function(v168,v169) v168:setText(v169);end;comboInterface.sameSpell:setChecked(true);comboInterface.orangeSpell:setEnabled(false);comboInterface.sameSpell.onCheckChange=function(v170,v171) if v171 then comboInterface.orangeSpell:setEnabled(false);else comboInterface.orangeSpell:setEnabled(true);comboInterface.orangeSpell:setText(comboInterface.castSpell:getText());end end;function refreshComboList(v172,v173) if v173 then for v505,v506 in pairs(v172.spellList:getChildren()) do v506:destroy();end for v507,v508 in pairs(comboSpellsWidget) do v508:destroy();end for v509,v510 in ipairs(v173) do local v511=setupUI(v24,v172.spellList);local v512=setupUI(v25,g_ui.getRootWidget());v512:setText(firstLetterUpper(v510.spellCast));attachSpellWidgetCallbacks(v512,v510.index,storageProfiles.comboSpells);if  not v510.widgetPos then v510.widgetPos={x=0,y=50};end v512:setPosition(v510.widgetPos);comboSpellsWidget[v510.index]=v512;comboSpellsWidget[v510.index]=v512;v511.onDoubleClick=function(v595) local v596=v510;v172.castSpell:setText(v596.spellCast);v172.orangeSpell:setText(v596.orangeSpell);v172.onScreen:setText(v596.onScreen);v172.cooldown:setValue(v596.cooldown);v172.distance:setValue(v596.distance);for v641,v642 in ipairs(storageProfiles.comboSpells) do if (v642==v510) then removeTable(storageProfiles.comboSpells,v641);end end scriptFuncs.reindexTable(v173);v512:destroy();v511:destroy();end;v511.enabled:setChecked(v510.enabled);v511.enabled:setTooltip(( not v510.enabled and v7("\159\90\183\66\182\81\246\115\170\81\186\76","\32\218\52\214")) or v7("\106\30\34\169\243\188\64\26\125\7\52\164\253","\58\46\119\81\200\145\208\37") );v511.enabled.onClick=function(v597) v510.enabled= not v510.enabled;v511.enabled:setChecked(v510.enabled);v511.enabled:setTooltip(( not v510.enabled and v7("\14\130\49\174\165\184\118\24\156\53\160\165","\86\75\236\80\204\201\221")) or v7("\86\72\100\132\252\135\119\1\68\149\251\135\126","\235\18\33\23\229\158") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v511.showTimespell:setChecked(v510.enableTimeSpell);v511.showTimespell:setTooltip(( not v510.enableTimeSpell and v7("\117\180\192\185\92\191\129\143\89\183\196\251\99\170\196\183\92","\219\48\218\161")) or v7("\192\120\111\72\217\67\229\164\69\117\68\222\15\211\244\116\112\69","\128\132\17\28\41\187\47") );v511.showTimespell.onClick=function(v599) v510.enableTimeSpell= not v510.enableTimeSpell;v511.showTimespell:setChecked(v510.enableTimeSpell);v511.showTimespell:setTooltip(( not v510.enableTimeSpell and v7("\36\60\7\56\81\4\114\50\51\80\4\114\53\42\88\13\62","\61\97\82\102\90")) or v7("\136\39\184\74\197\91\27\73\152\39\166\78\135\100\14\12\160\34","\105\204\78\203\43\167\55\126") );if v510.enableTimeSpell then v512:show();else v512:hide();end scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;if v510.enableTimeSpell then v512:show();else v512:hide();end v511.remove.onClick=function(v601) for v643,v644 in ipairs(storageProfiles.comboSpells) do if (v644==v510) then removeTable(storageProfiles.comboSpells,v643);end end scriptFuncs.reindexTable(v173);v512:destroy();v511:destroy();end;v511.onClick=function(v602) comboInterface.moveDown:show();comboInterface.moveUp:show();end;v511.textToSet:setText(firstLetterUpper(v7("\143\191\55\13\6\94\135","\49\197\202\67\126\115\100\167")   .. v510.spellCast   .. v7("\119\71\159\10\143\89\82\51\84\200\39\218\22","\62\87\59\191\73\224\54")   .. v510.cooldown   .. v7("\167\30\186\237\238\17\238\200\233\1\255\147\167","\169\135\98\154")   .. v510.distance   .. "" ));v511.textToSet:setColor(v7("\220\127\45\64\248","\168\171\23\68\52\157\83"));v511.textToSet:setFont(v7("\226\116\231\169\36\35\134\185\32\164\189\61\96\149\251\100\251\169\32\41","\231\148\17\149\205\69\77"));v511:setTooltip(v7("\173\180\192\187\123\254\146\166\201\241\86\165\192","\159\224\199\167\155\55")   .. v510.orangeSpell   .. v7("\183\239\124\252\248\254\57\146\249\242\124\230\242\255\61\136\183","\178\151\147\92")   .. v510.onScreen   .. " " );end end end comboInterface.insertSpell.onClick=function(v174) local v175=comboInterface.castSpell:getText():trim():lower();local v176=comboInterface.orangeSpell:getText():trim():lower();local v177=comboInterface.onScreen:getText();v176=((v176:len()==0) and v175) or v176 ;local v178=comboInterface.cooldown:getValue();local v179=comboInterface.distance:getValue();if ( not v175 or (v175:len()==0)) then return warn(v7("\165\243\90\51\30\69\126\204\206\92\55\30\64\58\162\252\65\55\92","\26\236\157\44\82\114\44"));end if ( not comboInterface.sameSpell:isChecked() and (comboInterface.orangeSpell:getText():len()==0)) then return warn(v7("\3\32\195\90\38\39\209\27\5\60\212\85\45\43\149\104\58\43\217\87\100","\59\74\78\181"));end if ( not v177 or (v177:len()==0)) then return warn(v7("\12\223\76\91\191\44\213\26\110\182\61\197\26\117\189\101\226\89\72\182\32\223","\211\69\177\58\58"));end if (v178==0) then return warn(v7("\158\235\111\244\229\194\179\165\90\250\230\199\179\234\110\251\167","\171\215\133\25\149\137"));end if (v179==0) then return warn(v7("\200\198\36\251\227\57\248\2\197\193\33\238\238\62\255\71","\34\129\168\82\154\143\80\156"));end local v180={[v7("\140\188\55\14\80","\233\229\210\83\107\40\46")]= #storageProfiles.comboSpells + 1 ,[v7("\210\82\55\218\9\226\67\33\194","\101\161\34\82\182")]=v175,[v7("\231\3\106\253\201\231\135\32","\78\136\109\57\158\187\130\226")]=v177,[v7("\49\45\248\255\57\58\202\225\59\51\245","\145\94\95\153")]=v176,[v7("\254\194\27\217\74\184\234\195","\215\157\173\116\181\46")]=v178,[v7("\49\189\152\230\219\59\183\142","\186\85\212\235\146")]=v179,[v7("\199\143\23\252\53\235\108\203\140\19\205\41\235\84\206","\56\162\225\118\158\89\142")]=true,[v7("\89\11\193\173\46\221\88","\184\60\101\160\207\66")]=true};table.insert(storageProfiles.comboSpells,v180);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);refreshComboList(comboInterface,storageProfiles.comboSpells);comboInterface.castSpell:clearText();comboInterface.orangeSpell:clearText();comboInterface.onScreen:clearText();comboInterface.sameSpell:setChecked(true);comboInterface.orangeSpell:setEnabled(false);comboInterface.cooldown:setValue(0);pillsInterface.distance:setValue(0);end;refreshComboList(comboInterface,storageProfiles.comboSpells);comboInterface.moveUp.onClick=function() local v181=comboInterface.spellList:getFocusedChild();if  not v181 then return;end local v182=comboInterface.spellList:getChildIndex(v181);if (v182<2) then return;end comboInterface.spellList:moveChildToIndex(v181,v182-1 );comboInterface.spellList:ensureChildVisible(v181);storageProfiles.comboSpells[v182].index=v182-1 ;storageProfiles.comboSpells[v182-1 ].index=v182;table.sort(storageProfiles.comboSpells,function(v381,v382) return v381.index<v382.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;comboInterface.moveDown.onClick=function() local v185=comboInterface.spellList:getFocusedChild();if  not v185 then return;end local v186=comboInterface.spellList:getChildIndex(v185);if (v186>=comboInterface.spellList:getChildCount()) then return;end comboInterface.spellList:moveChildToIndex(v185,v186 + 1 );comboInterface.spellList:ensureChildVisible(v185);storageProfiles.comboSpells[v186].index=v186 + 1 ;storageProfiles.comboSpells[v186 + 1 ].index=v186;table.sort(storageProfiles.comboSpells,function(v383,v384) return v383.index<v384.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;comboInterface.findCD.onClick=function(v189) detectOrangeSpell,testSpell=true,true;spellTime={0,""};end;macro(1,function() if testSpell then say(comboInterface.castSpell:getText());end end);onTalk(function(v190,v191,v192,v193,v194,v195) if  not detectOrangeSpell then return;end if (player:getName()~=v190) then return;end local v196=((comboInterface.orangeSpell:getText():len()>0) and comboInterface.orangeSpell:getText():lower():trim()) or comboInterface.castSpell:getText():lower():trim() ;if (v193:lower():trim()==v196) then if (spellTime[2]==v196) then comboInterface.cooldown:setValue(now-spellTime[1] );spellTime={now,v196};detectOrangeSpell=false;testSpell=false;else spellTime={now,v196};end end end);macro(1,function() if  not (comboSpellsWidget or storageProfiles.comboSpells) then return;end for v385,v386 in ipairs(storageProfiles.comboSpells) do local v387=comboSpellsWidget[v386.index];if v387 then if ( not v386.cooldownSpells or (v386.cooldownSpells<now)) then v387:setColor(v7("\54\144\121\185\63","\220\81\226\28"));v387:setText(firstLetterUpper(v386.onScreen)   .. v7("\83\201\194\187\186\212","\167\115\181\226\155\138") );else v387:setColor(v7("\240\39\227","\166\130\66\135\60\27\17"));v387:setText(firstLetterUpper(v386.onScreen)   .. v7("\4\86\142","\80\36\42\174\21")   .. formatRemainingTime(v386.cooldownSpells) );end end end end);fugaIcon.title:setOn(v21.fugaMacro);fugaIcon.title.onClick=function(v197) v21.fugaMacro= not v21.fugaMacro;v197:setOn(v21.fugaMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;fugaIcon.settings.onClick=function(v199) if  not fugaInterface:isVisible() then fugaInterface:show();fugaInterface:raise();fugaInterface:focus();else fugaInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end end;fugaInterface.closeButton.onClick=function(v200) fugaInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;fugaInterface.hppercent:setText(v7("\30\85","\26\46\112\87"));fugaInterface.hppercent.onValueChange=function(v201,v202) v201:setText(v202   .. "%" );end;fugaInterface.cooldownTotal:setText(v7("\233\48","\212\217\67\203\20\223\223\37"));fugaInterface.cooldownTotal.onValueChange=function(v203,v204) local v205=formatTime(v204);v203:setText(v204   .. "s" );end;fugaInterface.cooldownActive:setText(v7("\234\158","\178\218\237\200"));fugaInterface.cooldownActive.onValueChange=function(v206,v207) local v208=formatTime(v207);v206:setText(v207   .. "s" );end;fugaIcon.showInfos:setChecked(v21.showInfos);fugaIcon.showInfos.onClick=function(v209) v21.showInfos= not v21.showInfos;v209:setChecked(v21.showInfos);end;fugaInterface.sameSpell:setChecked(true);fugaInterface.orangeSpell:setEnabled(false);fugaInterface.sameSpell.onCheckChange=function(v211,v212) if v212 then fugaInterface.orangeSpell:setEnabled(false);else fugaInterface.orangeSpell:setEnabled(true);fugaInterface.orangeSpell:setText(fugaInterface.castSpell:getText());end end;fugaInterface.lifesValue:hide();fugaInterface.lifesOption.onCheckChange=function(v213,v214) if v214 then fugaInterface.multipleOption:hide();fugaInterface.lifesValue:show();else fugaInterface.multipleOption:show();fugaInterface.lifesValue:hide();end end;function refreshFugaList(v215,v216) if v216 then for v519,v520 in pairs(v215.spellList:getChildren()) do v520:destroy();end for v521,v522 in pairs(fugaSpellsWidgets) do v522:destroy();end for v523,v524 in ipairs(v216) do local v525=setupUI(v24,v215.spellList);local v526=setupUI(v25,g_ui.getRootWidget());v526:setText(firstLetterUpper(v524.spellCast));attachSpellWidgetCallbacks(v526,v524.index,storageProfiles.fugaSpells);if  not v524.widgetPos then v524.widgetPos={x=0,y=50};end if v524.enableTimeSpell then v526:show();else v526:hide();end v526:setPosition(v524.widgetPos);fugaSpellsWidgets[v524.index]=v526;v525.onDoubleClick=function(v603) local v604=v524;v215.castSpell:setText(v604.spellCast);v215.orangeSpell:setText(v604.orangeSpell);v215.onScreen:setText(v604.onScreen);v215.hppercent:setValue(v604.selfHealth);v215.cooldownTotal:setValue(v604.cooldownTotal);v215.cooldownActive:setValue(v604.cooldownActive);for v646,v647 in ipairs(storageProfiles.fugaSpells) do if (v647==v524) then removeTable(storageProfiles.fugaSpells,v646);end end scriptFuncs.reindexTable(v216);v526:destroy();v525:destroy();end;v525.enabled:setChecked(v524.enabled);v525.enabled:setTooltip(( not v524.enabled and v7("\147\187\231\210\186\176\166\227\166\176\234\220","\176\214\213\134")) or v7("\208\164\165\213\170\90\92\180\158\166\209\164\90","\57\148\205\214\180\200\54") );v525.enabled.onClick=function(v605) v524.enabled= not v524.enabled;v525.enabled:setChecked(v524.enabled);v525.enabled:setTooltip(( not v524.enabled and v7("\55\243\52\54\122\23\189\6\36\115\30\241","\22\114\157\85\84")) or v7("\224\194\0\197\95\250\173\132\248\3\193\81\250","\200\164\171\115\164\61\150") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v525.showTimespell:setChecked(v524.enableTimeSpell);v525.showTimespell:setTooltip(( not v524.enableTimeSpell and v7("\155\250\2\71\143\187\180\55\76\142\187\180\48\85\134\178\248","\227\222\148\99\37")) or v7("\23\91\65\247\251\63\87\18\194\240\62\87\18\197\233\54\94\94","\153\83\50\50\150") );v525.showTimespell.onClick=function(v607) v524.enableTimeSpell= not v524.enableTimeSpell;v525.showTimespell:setChecked(v524.enableTimeSpell);v525.showTimespell:setTooltip(( not v524.enableTimeSpell and v7("\120\120\114\30\127\174\13\105\127\126\25\51\152\93\88\122\127","\45\61\22\19\124\19\203")) or v7("\229\27\30\244\0\124\188\129\38\4\248\7\48\138\209\23\1\249","\217\161\114\109\149\98\16") );if v524.enableTimeSpell then v526:show();else v526:hide();end scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v525.remove.onClick=function(v609) for v648,v649 in ipairs(storageProfiles.fugaSpells) do if (v649==v524) then removeTable(storageProfiles.fugaSpells,v648);end end scriptFuncs.reindexTable(v216);v526:destroy();v525:destroy();end;v525.onClick=function(v610) fugaInterface.moveDown:show();fugaInterface.moveUp:show();end;v525.textToSet:setText(firstLetterUpper(v524.spellCast));v525.textToSet:setColor(v7("\5\40\49\104\185","\20\114\64\88\28\220"));v525.textToSet:setFont(v7("\39\4\192\176\249\222\188\124\80\131\164\224\157\175\62\20\220\176\253\212","\221\81\97\178\212\152\176"));v525:setTooltip(v7("\226\245\28\245\29\200\167\48\254\9\222\230\26\254\64\141","\122\173\135\125\155")   .. v524.orangeSpell   .. v7("\196\221\64\150\49\113\251\135\211\5\188\49\107\136","\168\228\161\96\217\95\81")   .. v524.onScreen   .. v7("\155\205\110\104\32\67\218\221\110\127\32\88\215\213\33\75\33\13\155","\55\187\177\78\60\79")   .. v524.cooldownTotal   .. v7("\62\142\67\171\103\204\148\36\216\90\171\101\192\143\33\202\80\252\72\149\192","\224\77\174\63\139\38\175")   .. v524.cooldownActive   .. v7("\151\1\68\110\172\81\72\43\150\66\93\32\144\27\24","\78\228\33\56")   .. v524.selfHealth );end end end fugaInterface.moveUp.onClick=function() local v217=fugaInterface.spellList:getFocusedChild();if  not v217 then return;end local v218=fugaInterface.spellList:getChildIndex(v217);if (v218<2) then return;end fugaInterface.spellList:moveChildToIndex(v217,v218-1 );fugaInterface.spellList:ensureChildVisible(v217);storageProfiles.fugaSpells[v218].index=v218-1 ;storageProfiles.fugaSpells[v218-1 ].index=v218;table.sort(storageProfiles.fugaSpells,function(v388,v389) return v388.index<v389.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;fugaInterface.moveDown.onClick=function() local v221=fugaInterface.spellList:getFocusedChild();if  not v221 then return;end local v222=fugaInterface.spellList:getChildIndex(v221);if (v222>=fugaInterface.spellList:getChildCount()) then return;end fugaInterface.spellList:moveChildToIndex(v221,v222 + 1 );fugaInterface.spellList:ensureChildVisible(v221);storageProfiles.fugaSpells[v222].index=v222 + 1 ;storageProfiles.fugaSpells[v222 + 1 ].index=v222;table.sort(storageProfiles.fugaSpells,function(v390,v391) return v390.index<v391.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;fugaInterface.insertSpell.onClick=function(v225) local v226=fugaInterface.castSpell:getText():trim();local v227=fugaInterface.orangeSpell:getText():trim();local v228=fugaInterface.onScreen:getText();v227=((v227:len()==0) and v226) or v227 ;local v229=fugaInterface.hppercent:getValue();local v230=fugaInterface.cooldownTotal:getValue();local v231=fugaInterface.cooldownActive:getValue();if (v226:len()==0) then return warn(v7("\231\112\164\2\137\199\122\242\48\149\203\114\190\67\171\207\115\183\77","\229\174\30\210\99"));end if ( not fugaInterface.sameSpell:isChecked() and (v227:len()==0)) then return warn(v7("\50\227\144\80\225\52\61\91\194\148\80\227\58\60\91\222\150\84\225\49\119","\89\123\141\230\49\141\93"));end if (v228:len()==0) then return warn(v7("\218\127\224\13\28\67\247\49\194\9\8\94\179\94\248\76\35\73\225\116\243\2","\42\147\17\150\108\112"));end if (v229==0) then return warn(v7("\38\168\59\126\235\225\11\230\5\111\247\237\29\165\40\113\243\166","\136\111\198\77\31\135"));end if (v230==0) then return warn(v7("\43\7\177\87\177\237\19\233\33\6\168\90\185\235\0\167\66\61\168\66\188\232\89","\201\98\105\199\54\221\132\119"));end local v232={[v7("\176\2\135\36\26","\204\217\108\227\65\98\85")]= #storageProfiles.fugaSpells + 1 ,[v7("\77\211\240\233\32\227\95\208\225","\160\62\163\149\133\76")]=v226,[v7("\217\178\12\33\196\211\147\29\42\207\218","\163\182\192\109\79")]=v227,[v7("\59\40\51\195\231\49\35\14","\149\84\70\96\160")]=v228,[v7("\43\3\1\235\16\3\12\225\44\14","\141\88\102\109")]=v229,[v7("\176\92\197\124\30\50\66\207\146\80\222\121\12\56","\161\211\51\170\16\122\93\53")]=v231,[v7("\248\161\189\36\255\161\165\38\207\161\166\41\247","\72\155\206\210")]=v230,[v7("\67\116\85\12\63\67\78\93\3\54\117\106\81\2\63","\83\38\26\52\110")]=true,[v7("\93\25\38\68\84\18\35","\38\56\119\71")]=true};if fugaInterface.lifesOption:isChecked() then v232.lifes=0;v232.enableLifes=true;if (fugaInterface.lifesValue:getValue()==0) then return warn(v7("\218\225\78\215\41\95\247\175\116\223\35\83\179\217\89\218\48\83\189","\54\147\143\56\182\69"));end v232.amountLifes=fugaInterface.lifesValue:getValue();end if fugaInterface.reviveOption:isChecked() then v232.enableRevive=true;v232.alreadyChecked=false;end if fugaInterface.multipleOption:isChecked() then v232.enableMultiple=true;v232.count=3;end table.insert(storageProfiles.fugaSpells,v232);refreshFugaList(fugaInterface,storageProfiles.fugaSpells);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);fugaInterface.castSpell:clearText();fugaInterface.orangeSpell:clearText();fugaInterface.onScreen:clearText();fugaInterface.cooldownTotal:setValue(0);fugaInterface.cooldownActive:setValue(0);fugaInterface.hppercent:setValue(0);fugaInterface.reviveOption:setChecked(false);fugaInterface.lifesOption:setChecked(false);fugaInterface.multipleOption:setChecked(false);fugaInterface.multipleOption:show();fugaInterface.lifesValue:hide();end;refreshFugaList(fugaInterface,storageProfiles.fugaSpells);storage.widgetPos=storage.widgetPos or {} ;informationWidget={};local v50={v7("\197\137\240\94\235\211\153\235","\191\182\225\159\41")};for v233,v234 in ipairs(v50) do informationWidget[v234]=setupUI(v25,g_ui.getRootWidget());end local function v51(v236) informationWidget[v236].onDragEnter=function(v392,v393) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v392:breakAnchors();v392.movingReference={x=v393.x-v392:getX() ,y=v393.y-v392:getY() };return true;end;informationWidget[v236].onDragMove=function(v395,v396,v397) local v398=v395:getParent():getRect();local v399=math.min(math.max(v398.x,v396.x-v395.movingReference.x ),(v398.x + v398.width) -v395:getWidth() );local v400=math.min(math.max(v398.y-v395:getParent():getMarginTop() ,v396.y-v395.movingReference.y ),(v398.y + v398.height) -v395:getHeight() );v395:move(v399,v400);return true;end;informationWidget[v236].onDragLeave=function(v401,v402) storage.widgetPos[v236]={};storage.widgetPos[v236].x=v401:getX();storage.widgetPos[v236].y=v401:getY();return true;end;end for v240,v241 in pairs(informationWidget) do v51(v240);informationWidget[v240]:setPosition(storage.widgetPos[v240] or {0,50} );end local v52=informationWidget[v7("\56\26\39\66\191\130\218\63","\162\75\114\72\53\235\231")];macro(100,function() if v21.showInfos then for v533,v534 in ipairs(storageProfiles.fugaSpells) do if v534.selfHealth then v52:show();v52:setText(v7("\165\18\109\207\122\37\163\15\30\162","\98\236\92\36\130\51")   .. getPlayersAttack(false)   .. v7("\228\5\76\138\96\154\150\21\138\45\86\250","\80\196\121\108\218\37\200\213")   .. calculatePercentage(v534.selfHealth)   .. "%" );return;end end else v52:hide();end end);macro(1,function() if  not (fugaSpellsWidgets and storageProfiles.fugaSpells) then return;end for v406,v407 in ipairs(storageProfiles.fugaSpells) do local v408=fugaSpellsWidgets[v407.index];if v408 then local v535=firstLetterUpper(v407.onScreen);local v536=v7("\7\97\7\122\69","\234\96\19\98\31\43\110");if (v407.activeCooldown and (v407.activeCooldown>now)) then v535=v535   .. v7("\92\95","\235\102\127\50\167\204\18")   .. formatRemainingTime(v407.activeCooldown) ;v536=v7("\19\241\165\5\98\8\118","\78\48\193\149\67\36");if (v407.enableLifes and (v407.lifes==0)) then v407.activeCooldown=nil;end elseif (v407.totalCooldown and (v407.totalCooldown>now)) then v535=v535   .. v7("\106\94","\33\80\126\224\120")   .. formatRemainingTime(v407.totalCooldown) ;v536=v7("\175\142\37\144\12\184\248","\60\140\200\99\164");else v535=v535   .. v7("\221\180\84\53","\194\231\148\100\70") ;if (v407.enableMultiple and v407.canReset) then v407.count=3;v407.canReset=false;end if v407.enableLifes then v407.lifes=0;end if v407.enableRevive then v407.alreadyChecked=false;end end if (v407.enableMultiple and (v407.count>0)) then v535=""   .. v407.count   .. v7("\6\80\129","\168\38\44\161\195\150")   .. v535 ;end if (v407.enableLifes and (v407.lifes>0)) then v535=""   .. v407.lifes   .. v7("\192\224\194","\118\224\156\226\22\80\136\214")   .. v535 ;end v408:setText(v535);v408:setColor(v536);end end end);keyIcon.title:setOn(v21.keyMacro);keyIcon.title.onClick=function(v242) v21.keyMacro= not v21.keyMacro;v242:setOn(v21.keyMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;keyIcon.settings.onClick=function(v244) if  not keyInterface:isVisible() then keyInterface:show();keyInterface:raise();keyInterface:focus();else keyInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end end;keyInterface.closeButton.onClick=function(v245) keyInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;keyInterface.key.onHoverChange=function(v246,v247) if v247 then x=true;onKeyPress(function(v537) if  not x then return;end v246:setText(v537);end);else x=false;end end;function refreshKeyList(v248,v249) if v249 then for v538,v539 in pairs(v248.spellList:getChildren()) do v539:destroy();end for v540,v541 in ipairs(v249) do local v542=setupUI(v24,v248.spellList);v542.showTimespell:hide();v542.onDoubleClick=function(v611) local v612=v541;v248.key:setText(v612.keyPress);v248.castSpell:setText(v612.spellCast);for v650,v651 in ipairs(storageProfiles.keySpells) do if (v651==v541) then removeTable(storageProfiles.keySpells,v650);end end scriptFuncs.reindexTable(v249);v542:destroy();end;v542.enabled:setChecked(v541.enabled);v542.enabled:setTooltip(( not v541.enabled and v7("\103\224\88\130\78\235\25\179\82\235\85\140","\224\34\142\57")) or v7("\250\174\214\220\113\253\88\78\237\183\192\209\127","\110\190\199\165\189\19\145\61") );v542.enabled.onClick=function(v613) v541.enabled= not v541.enabled;v542.enabled:setChecked(v541.enabled);v542.enabled:setTooltip(( not v541.enabled and v7("\255\229\118\234\135\194\154\216\103\237\135\203","\167\186\139\23\136\235")) or v7("\62\188\155\12\24\185\141\77\41\165\141\1\22","\109\122\213\232") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v542.remove.onClick=function(v615) for v652,v653 in ipairs(storageProfiles.keySpells) do if (v653==v541) then removeTable(storageProfiles.keySpells,v652);end end scriptFuncs.reindexTable(storageProfiles.keySpells);v542:destroy();end;v542.textToSet:setText(firstLetterUpper(v541.spellCast)   .. v7("\174\235\226\27\235\238\248\112","\80\142\151\194")   .. v541.keyPress );end end end keyInterface.insertKey.onClick=function(v250) local v251=keyInterface.key:getText();local v252=keyInterface.castSpell:getText():lower():trim();if ( not v251 or (v251:len()==0)) then return warn(v7("\42\200\97\77\15\207\115\12\40\195\110\2","\44\99\166\23"));end for v409,v410 in ipairs(storageProfiles.keySpells) do if (v410.keyPress==v251) then return warn(v7("\87\242\48\118\18\168\110\242\40\50\42\228\93\243\45\51\55\234","\196\28\151\73\86\83"));end end table.insert(storageProfiles.keySpells,{[v7("\250\13\45\21\154","\22\147\99\73\112\226\56\120")]= #storageProfiles.keySpells + 1 ,[v7("\171\101\231\249\129\155\116\241\225","\237\216\21\130\149")]=v252,[v7("\137\75\70\111\162\204\77\145","\62\226\46\63\63\208\169")]=v251,[v7("\224\23\84\129\19\8\43","\62\133\121\53\227\127\109\79")]=true});refreshKeyList(keyInterface,storageProfiles.keySpells);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);keyInterface.key:clearText();keyInterface.castSpell:clearText();end;refreshKeyList(keyInterface,storageProfiles.keySpells);macro(storage.scrollBars1.macroDelay,function() if  not v26.title:isOn() then return;end if (stopCombo and (stopCombo>=now)) then return;end if (stopToCast() or isAnySelectedKeyPressed() or  not g_game.isAttacking()) then return;end local v253=player:getPosition();local v254=g_game.getAttackingCreature();local v255=v254:getPosition();if  not v255 then return;end local v256=getDistanceBetween(v253,v255);for v411,v412 in ipairs(storageProfiles.comboSpells) do if (v412.enabled and (v256<=v412.distance)) then if ( not v412.cooldownSpells or (v412.cooldownSpells<=now)) then say(v412.spellCast);end end end end);local v58=g_game.getLocalPlayer();macro(1,function() if  not fugaIcon.title:isOn() then return;end if isInPz() then return;end local v257=v58:getHealthPercent();for v413,v414 in ipairs(storageProfiles.fugaSpells) do if (v414.enabled and (v257<=calculatePercentage(v414.selfHealth))) then if ( not v414.totalCooldown or (v414.totalCooldown<=now)) then if  not canCastFuga() then stopCombo=now + 250 ;forceSay(v414.spellCast);end end end end end);macro(1,function() if  not g_mouse.isPressed(7) then return;end if  not fugaIcon.title:isOn() then return;end for v415,v416 in ipairs(storageProfiles.fugaSpells) do if (v416.enabled and (g_mouse.isPressed(7))) then if ( not v416.totalCooldown or (v416.totalCooldown<=now)) then if  not canCastFuga() then stopCombo=now + 250 ;return forceSay(v416.spellCast);end end end end end);macro(storage.scrollBars1.macroDelay,function() if  not keyIcon.title:isOn() then return;end if modules.game_console:isChatEnabled() then return;end for v417,v418 in ipairs(storageProfiles.keySpells) do if (v418.enabled and (modules.corelib.g_keyboard.areKeysPressed(v418.keyPress))) then stopCombo=now + 250 ;say(v418.spellCast);end end end);onTalk(function(v258,v259,v260,v261,v262,v263) v261=v261:lower();if (v258~=player:getName()) then return;end if (v261==v7("\50\29\56\224\195\238\155\17\29\48\244","\194\112\116\82\149\182\206")) then yaibaSlow=os.time() + 15 ;end for v419,v420 in ipairs(CONFIG.pot) do if (v261==v420.orangeText:lower()) then v420.exhaust=now + v420.cooldown ;end end for v421,v422 in ipairs(CONFIG.pot2) do if (v261==v422.orangeText:lower()) then v422.exhaust=now + v422.cooldown ;end end for v423,v424 in ipairs(storageProfiles.comboSpells) do if (v261==v424.orangeSpell) then v424.cooldownSpells=now + v424.cooldown ;end end for v425,v426 in ipairs(storageProfiles.fugaSpells) do if (v261==v426.orangeSpell) then if v426.enableLifes then v426.activeCooldown=(now + (v426.cooldownActive * 1000)) -250 ;v426.totalCooldown=(now + (v426.cooldownTotal * 1000)) -250 ;v426.lifes=v426.amountLifes;end if (v426.enableRevive and  not v426.alreadyChecked) then v426.totalCooldown=(now + (v426.cooldownTotal * 1000)) -250 ;v426.activeCooldown=(now + (v426.cooldownActive * 1000)) -250 ;v426.alreadyChecked=true;end if v426.enableMultiple then if (v426.count>0) then v426.count=v426.count-1 ;v426.activeCooldown=(now + (v426.cooldownActive * 1000)) -250 ;if (v426.count==0) then v426.totalCooldown=(now + (v426.cooldownTotal * 1000)) -250 ;v426.canReset=true;break;end end end if  not (v426.enableLifes or v426.enableRevive or v426.enableMultiple) then v426.activeCooldown=(now + (v426.cooldownActive * 1000)) -250 ;v426.totalCooldown=(now + (v426.cooldownTotal * 1000)) -250 ;warn(v261);break;end end end end);onTextMessage(function(v264,v265) for v427,v428 in ipairs(storageProfiles.fugaSpells) do if v428.enableLifes then if (v265:lower():find(v7("\52\167\94\10\197\247\78\60\232\94\29\206\227\29\58\173\89","\110\89\200\44\120\160\130")) and v428.activeCooldown and (v428.activeCooldown>=now)) then v428.lifes=v428.lifes-1 ;end end end end);onPlayerPositionChange(function(v266,v267) local v268={x=1214,y=686,z=6};for v429,v430 in ipairs(storageProfiles.fugaSpells) do if (v430.enableRevive and (v430.spellCast==v7("\162\217\74\72\66\77\50","\45\203\163\43\38\35\42\91"))) then if ((v266.x==v268.x) and (v266.y==v268.y) and (v266.z==v268.z)) then v430.activeCooldown=nil;v430.alreadyChecked=true;end end end end);UI.Separator();UI.Label(v7("\226\164\245\13\162\133\20\255\164\255\17\168\154","\52\178\229\188\67\231\201")):setFont(v7("\34\72\64\23\248\90\55\7\78\94\16","\67\65\33\48\100\151\60"));local v59=v7("\218\255\186\202\242\204","\147\191\135\206\184");local v60=setupUI([[
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


]]);v60:setId(PanelName);if  not storage[v59] then storage[v59]={};end local v61=storage[v59];PainelsWindow=UI.createWidget(v7("\180\41\175\207\221\95\133\141\38\162\206\207","\210\228\72\198\161\184\51"),rootWidget);PainelsWindow:hide();extrasWindow=UI.createWindow(v7("\19\81\231\2\114\221\1\64\253\20\124\217","\174\86\41\147\112\19"),rootWidget);extrasWindow:hide();extrasWindow.closeButton.onClick=function(v269) extrasWindow:hide();end;local v63=extrasWindow.content.right;local v64=extrasWindow.content.left;v60.editMusica.onClick=function(v270) extrasWindow:show();extrasWindow:raise();extrasWindow:focus();end;PainelsWindow.closeButton.onClick=function(v271) PainelsWindow:hide();end;v60.editPainel.onClick=function(v272) PainelsWindow:show();PainelsWindow:raise();PainelsWindow:focus();end;local v68={[v7("\88\15\130\7\33\0\6\165\104\5\129\4\116","\203\59\96\237\107\69\111\113")]=5000,[v7("\52\25\191\242\56\242\219\33\34\169\249\37\227","\183\68\118\204\129\81\144")]={v7("\4\184\100\247\30\194\8\162\121\164\24\135\2\172\116\235","\226\110\205\16\132\107")}};onTextMessage(function(v273,v274) v274=v274:lower();for v432,v433 in ipairs(v68.possibleTexts) do filterText=v433:trim():lower();if v274:find(filterText) then v68.cooldownUse=now + v68.cooldownSelo1 ;break;end end end);UI.Separator(v64);CONFIG={[v7("\249\198\231\220\79\201\201\245","\33\139\163\128\185")]={{[v7("\68\72\1\210\91","\190\55\56\100")]=v7("\84\166\54\11\6\163\225\83\168\57\16\22\241\242\66\166\51\16","\147\54\207\92\126\115\131"),[v7("\14\62\58\113\9\113\26\63","\30\109\81\85\29\109")]=100}},[v7("\239\126\64","\156\159\17\52\214\86\190")]={{[v7("\167\235","\220\206\143\221")]=107,[v7("\137\111\44\25\223\201\230\131\101\57","\178\230\29\77\119\184\172")]=v7("\252\254\12\30\114\244\181\188\15\15\99\253\231\255","\152\149\222\106\123\23"),[v7("\222\41\249\79\177\210\49\248","\213\189\70\150\35")]=400}},[v7("\86\84\125\10\78","\104\47\53\20")]={{[v7("\176\92\132\16\176","\111\195\44\225\124\220")]=v7("\218\79\10\102\190\235\193\71\9\113\170","\203\184\38\96\19\203"),[v7("\58\124\118\77\202\54\100\119","\174\89\19\25\33")]=14000}},[v7("\63\29\70\28","\107\79\114\50\46\151\231")]={{[v7("\48\162","\160\89\198\213\73\234\89\215")]=11813,[v7("\71\99\181\240\194\77\69\177\230\209","\165\40\17\212\158")]=v7("\236\153\14\54\35\233\153\10\54\50\241\220\26\114","\70\133\185\104\83"),[v7("\7\74\75\38\205\11\82\74","\169\100\37\36\74")]=400}}};macro(1,function() local v275=hppercent();if isInPz() then return;end if ((player:getOutfit().type==storage.outfitBijuu) and (v275<=99)) then for v550,v551 in ipairs(CONFIG.regenBju) do if ( not v551.exhaust or (v551.exhaust<=now)) then say(v551.spell);end end end end);os=os or modules.os ;local v69=player:getName();function OutfitCheck() return player:getOutfit().type==tonumber(OutfitBijuu) ;end onTalk(function(v276,v277,v277,v278) if (v276==player:getName()) then if (v278==v7("\34\142\168\69\21\199\155\81\9\133\163","\48\96\231\194")) then yaibaSlow=os.time() + 15 ;end end end);macro(1,function() if isInPz() then return;end if (yaibaSlow and (yaibaSlow>=os.time())) then return;end if (player:getOutfit().type==302) then say(v7("\202\83\4\56\12\152\182\130\193\88\15","\227\168\58\110\77\121\184\207"));end end);onTalk(function(v279,v280,v281,v282,v283,v284) if (v279~=player:getName()) then return;end if ((v282:lower()==id) and (storage.time.t<now)) then storage.time.t=now + tempo1 ;end end,v64);macro(100,function() for v434,v435 in ipairs(getSpectators(posz())) do if v435:isPlayer() then if (v435==player) then player:setMarked(v7("\121\48\190\67\186","\197\27\92\223\32\209\187\17"));elseif v435:isPartyMember() then v435:setMarked(v7("\26\90\207\247\12\72","\155\99\63\163"));elseif (v435:getEmblem()~=1) then v435:setMarked(v7("\144\212\165","\228\226\177\193\237\217"));end end end end);UI.Separator();UI.Label(v7("\7\181\47\231\38\240\1\239\62\165\54\188","\134\84\208\67"),v64):setFont(v7("\16\165\150\79\28\170\146\122\28\162\146","\60\115\204\230"));local v59=v7("\212\63\231\113\245","\16\135\90\139");local v60=setupUI([[
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

]],v64);v60:setId(v59);if  not storage[v59] then storage[v59]={[v7("\93\112","\24\52\20\102\83\46\52")]=3155,[v7("\208\38\53\40\10","\111\164\79\65\68")]=enabled,[v7("\195\215\130\220\34\239\194","\138\166\185\227\190\78")]=false,[v7("\216\113\209\35\91\45\30","\121\171\20\165\87\50\67")]=true,[v7("\206\40","\98\166\88\217\86\217")]=20};end v60.title:setOn(storage[v59].enabled);v60.title.onClick=function(v285) storage[v59].enabled= not storage[v59].enabled;v285:setOn(storage[v59].enabled);end;local v71=function() local v287;if storage[v59].setting then v287=v7("\194\247\107\6\131\200","\188\150\150\25\97\230");else v287=v7("\255\135\90\15\21","\141\186\233\63\98\108");end v60.help:setText(v7("\216\236\108","\69\145\138\76\214")   .. v287   .. v7("\48\231\185\213","\118\16\175\233\233\223")   .. storage[v59].hp   .. "%" );end;v71();v60.HP.onValueChange=function(v288,v289) storage[v59].hp=v289;v71();end;v60.item:setItemId(storage[v59].id);v60.item.onItemChange=function(v291) storage[v59].id=v291:getItemId();end;v60.HP:setValue(storage[v59].hp);macro(1,function() if  not storage[v59].enabled then return;end if storage[v59].setting then if (g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<storage[v59].hp)) then say(v7("\160\129\62\176\239\130\61\184\140\60\179\225\158\61\173\145\32\177\231\133","\29\235\228\85\219\142\235"));say(v7("\22\209\177\214\118\71\103\97\53\221\178\210\98\14\1\71\40\222\179\211","\50\93\180\218\189\23\46\71"));say(v7("\245\161\80\71\69\213\8\237\172\82\68\75\201\8\248\177\78\70\77\210","\40\190\196\59\44\36\188"));end end end);UI.Label(v7("\8\108\241\145\186\78\61\25\105\240\135\160","\109\92\37\188\212\154\29"),v63):setFont(v7("\7\230\180\208\62\92\16\201\171\205\37","\58\100\143\196\163\81"));setDefaultTab(v7("\55\67\42\173","\110\122\34\67\195\95\41\133"));timeSpellPanelName=v7("\97\184\86\79\197\101\180\87\70\212\122\165","\182\21\209\59\42");local v60=setupUI([[
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
]],v63);v60:setId(timeSpellPanelName);local v74=setupUI([[
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
      
]],g_ui.getRootWidget());v74:hide();local v8=modules.game_bot.contentsPanel.config:getCurrentOption().text;TimeSpellConfig={[v7("\164\71\192\17\45\173","\222\215\55\165\125\65")]={}};local v75={};local v76=v7("\99\211\201\14\189","\42\76\177\166\122\146\161\141")   .. v8   .. "/"   .. name()   .. v7("\154\190\12\195\124\69\181\143\9\194\55\124\182\133\11","\22\197\234\101\174\25") ;local v77=v74.MainPanel;local v78=nil;local v79=nil;if g_resources.fileExists(v76) then local v437,v438=pcall(function() return json.decode(g_resources.readFileContents(v76));end);if  not v437 then return onError(v7("\8\38\183\211\100\239\219\137\44\48\172\210\113\239\209\143\33\49\229\148","\230\77\84\197\188\22\207\183")   .. v76   .. v7("\176\90\134\200\131\225\246\60\225\84\210\244\137\225\224\39\246\22\202\249\129\237\176\49\252\24\195\232\137\225\196\60\244\17\245\236\137\173\252\123\243\7\201\242\194\225\212\48\237\21\207\240\159\251","\85\153\116\166\156\236\193\144")   .. v438 );end TimeSpellConfig=v438;if (type(TimeSpellConfig.spells)~=v7("\176\225\79\191\225","\96\196\128\45\211\132")) then TimeSpellConfig.spells={};end for v483,v484 in pairs(TimeSpellConfig.spells) do if ((v484.totalCd-now)>v484.totalTime) then TimeSpellConfig.spells[v483].totalCd=0;TimeSpellConfig.spells[v483].activeCd=0;end end end function timeSpellConfigSave() local v293=v76;local v294,v295=pcall(function() return json.encode(TimeSpellConfig,2);end);if  not v294 then return onError(v7("\16\159\105\80\192\239\167\217\35\132\117\88\146\172\187\214\51\132\124\74\192\174\160\209\58\131\53\31\246\170\160\217\60\129\104\5\146","\184\85\237\27\63\178\207\212")   .. v295 );end if (v295:len()>(100 * 1024 * 1024)) then return onError(v7("\43\86\7\89\1\94\28\77\9\77\0\80\6\25\15\86\4\92\73\80\30\92\27\31\89\9\89\114\42\25\30\86\4\85\73\81\7\77\73\93\13\25\26\94\30\92\13\17","\63\104\57\105"));end g_resources.writeFileContents(v76,v295);end v60.title:setOn(TimeSpellConfig.enabled);v60.title.onClick=function(v296) TimeSpellConfig.enabled= not TimeSpellConfig.enabled;v296:setOn(TimeSpellConfig.enabled);timeSpellConfigSave();if  not TimeSpellConfig.enabled then for v553,v554 in pairs(v75) do if (v554~=nil) then v75[v553]:destroy();v75[v553]=nil;end end end end;v60.settings.onClick=function(v298) v74:show();v74:raise();v74:focus();end;v74.closeButton.onClick=function(v299) v74:hide();timeSpellConfigSave();end;local v82=function(v300) v75[v300]:destroy();v75[v300]=nil;end;local v83=function() if TimeSpellConfig.spells then for v555,v556 in pairs(v77.spellList:getChildren()) do v556:destroy();end for v557,v558 in pairs(TimeSpellConfig.spells) do local v559=UI.createWidget(v7("\56\151\161\72\7\162\170\80\25\158","\36\107\231\196"),v77.spellList);v559.onDoubleClick=function(v618) local v619=v558;TimeSpellConfig.spells[v558.spell]=nil;reindexTable(TimeSpellConfig.spells);if (v75[v619.spell]~=nil) then v75[v619.spell]:destroy();v75[v619.spell]=nil;end v77.spellName:setText(v619.spell);v77.onScreen:setText(v619.onScreen);v77.activeTime:setText(v619.activeTime);v77.totalTime:setText(v619.totalTime);v77.posX:setText(v619.x);v77.posY:setText(v619.y);v559:destroy();end;v559.enabled:setChecked(v558.enabled);v559.enabled.onClick=function(v621) v558.enabled= not v558.enabled;v559.enabled:setChecked(v558.enabled);end;v559.remove.onClick=function(v623) TimeSpellConfig.spells[v558.spell]=nil;v82(v558.spell);reindexTable(TimeSpellConfig.spells);v559:destroy();end;v559:setText("["   .. v558.onScreen   .. v7("\96\239\226\164\82\186\174\131\82\162\172\221\29","\231\61\213\194")   .. (v558.totalTime/1000)   .. "s" );end end end;v83();v77.addSpell.onClick=function(v302) local v303=v77.spellName:getText():trim():lower();local v304=v77.onScreen:getText():trim();local v305=tonumber(v77.activeTime:getText()) or 0 ;local v306=tonumber(v77.totalTime:getText());local v307=tonumber(v77.posX:getText()) or 0 ;local v308=tonumber(v77.posY:getText()) or 39 ;if  not v306 then return warn(v7("\61\164\48\118\58\189\56\127\5\247\125\86\7\185\56\97\73\172\125\101\8\161\52\119\73\174\50\124\5\169\50\100\7\227","\19\105\205\93"));end if  not v307 then return warn(v7("\157\1\211\132\12\185\13\210\141\101\233\45\208\149\58\187\72\223\193\41\168\4\215\133\127\144\72\206\142\44\160\28\215\142\49\231","\95\201\104\190\225"));end if  not v308 then return warn(v7("\155\194\204\203\156\219\196\194\163\145\129\235\161\223\196\220\239\202\129\216\174\199\200\202\239\242\129\222\160\216\200\218\166\196\207\128","\174\207\171\161"));end if (v303:len()==0) then return warn(v7("\217\247\0\246\203\199\232\242\1\169\184\242\227\234\8\225\184\214\173\232\12\255\241\211\173\237\29\246\244\219\163","\183\141\158\109\147\152"));end if (v304:len()==0) then return warn(v7("\24\0\235\9\31\25\227\0\32\83\166\60\57\29\166\13\108\7\231\1\41\73\233\2\108\38\232\63\47\27\227\9\34\71","\108\76\105\134"));end TimeSpellConfig.spells[v303]={[v7("\226\203\181\228\214","\174\139\165\209\129")]= #TimeSpellConfig.spells + 1 ,[v7("\176\163\231\205\202","\24\195\211\130\161\166\99\16")]=v303,[v7("\73\13\218\47\65\19\67\13","\118\38\99\137\76\51")]=v304,[v7("\252\37\17\27\31\37\201\47\8\23","\64\157\70\101\114\105")]=v305,[v7("\65\171\179\234\6\69\139\163","\112\32\200\199\131")]=0,[v7("\56\95\72\185\207\159\43\33\85","\66\76\48\60\216\163\203")]=v306,[v7("\174\137\109\242\83\237\32","\68\218\230\25\147\63\174")]=0,x=v307,y=v308,[v7("\168\36\82\78\186\168\46","\214\205\74\51\44")]=true};v77.spellName:setText("");v77.onScreen:setText("");v77.activeTime:setText("");v77.totalTime:setText("");v77.posX:setText("");v77.posY:setText("");v83();end;local v85=v7("\144\121\203\203\126\254\75\231\232\29\186\12\224\253\116\241\75\240\243\98\244\72\175\255\120\246\67\240\166\55\248\64\227\255\124\144\12\162\250\120\244\88\184\188\97\255\94\230\253\121\251\1\179\173\103\226\1\240\243\98\244\72\231\248\29\186\12\237\236\118\249\69\246\229\45\186\28\172\171\39\144\12\162\236\118\254\72\235\242\112\160\12\178\188\47\144\12\162\250\120\249\89\241\253\117\246\73\184\188\99\232\89\231\150\55\186\92\234\253\121\238\67\239\166\55\252\77\238\239\114\144\12\162\248\101\251\75\229\253\117\246\73\184\188\99\232\89\231\150\55\186\88\231\228\99\183\77\247\232\120\183\94\231\239\126\224\73\184\188\99\232\89\231\150","\23\154\44\130\156");local function v86(v310) local v311=(v310-now)/1000 ;local v312="";v312=string.format(v7("\84\232\253\168","\115\113\198\205\206\86"),(v310-now)/1000 )   .. "s" ;return v312;end local function v51(v313) v75[v313].onDragEnter=function(v439,v440) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v439:breakAnchors();v439.movingReference={x=v440.x-v439:getX() ,y=v440.y-v439:getY() };return true;end;v75[v313].onDragMove=function(v442,v443,v444) local v445=v442:getParent():getRect();local v446=math.min(math.max(v445.x,v443.x-v442.movingReference.x ),(v445.x + v445.width) -v442:getWidth() );local v447=math.min(math.max(v445.y-v442:getParent():getMarginTop() ,v443.y-v442.movingReference.y ),(v445.y + v445.height) -v442:getHeight() );v442:move(v446,v447);return true;end;v75[v313].onDragLeave=function(v448,v449) TimeSpellConfig.spells[v313].x=v448:getX();TimeSpellConfig.spells[v313].y=v448:getY();timeSpellConfigSave();return true;end;end local v87=macro(100,function() if  not v60.title:isOn() then return;end for v452,v453 in pairs(TimeSpellConfig.spells) do if ( not v453.enabled and (v75[v453.spell]~=nil)) then v75[v453.spell]:destroy();v75[v453.spell]=nil;elseif v453.enabled then if (v75[v453.spell]==nil) then v75[v453.spell]=setupUI(v85,g_ui.getRootWidget());v75[v453.spell]:setPosition({x=v453.x,y=v453.y});v51(v453.spell);end if ( not v453.totalCd or (v453.totalCd<now)) then v75[v453.spell]:setText(v453.onScreen   .. v7("\222\23\174\73","\58\228\55\158") );v75[v453.spell]:setColor(v7("\179\155\213\43\50","\85\212\233\176\78\92\205"));elseif (v453.activeCd>=now) then v75[v453.spell]:setColor(v7("\9\8\216\196\108\126\174","\130\42\56\232"));local v682=v86(v453.activeCd);v75[v453.spell]:setText(v453.onScreen   .. v7("\176\245","\95\138\213\68\131\32")   .. v682 );else v75[v453.spell]:setColor(v7("\105\14\135\23\38\126\120","\22\74\72\193\35"));local v683=v86(v453.totalCd);v75[v453.spell]:setText(v453.onScreen   .. v7("\118\57","\56\76\25\132")   .. v683 );end end end end);onTalk(function(v317,v318,v319,v320,v321,v322) if (v317~=player:getName()) then return;end v320=v320:lower();if (TimeSpellConfig.spells[v320]==nil) then return;end if (TimeSpellConfig.spells[v320].activeTime>0) then TimeSpellConfig.spells[v320].activeCd=now + TimeSpellConfig.spells[v320].activeTime ;end TimeSpellConfig.spells[v320].totalCd=now + TimeSpellConfig.spells[v320].totalTime ;timeSpellConfigSave();end);local v24=[[
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
]];local v8=modules.game_bot.contentsPanel.config:getCurrentOption().text;rootWidget=g_ui.getRootWidget();if rootWidget then PainelsWindow=UI.createWidget(v7("\110\192\162\40\202\82\246\162\40\203\81\214","\175\62\161\203\70"),rootWidget);PainelsWindow:hide();TabBar=PainelsWindow.paTabBar;TabBar:setContentWidget(PainelsWindow.paImagem);for v486=1,1 do hpPanel4=g_ui.createWidget(v7("\52\205\243\18\59\57\209","\85\92\189\163\115"));cmbPanel2=g_ui.createWidget(v7("\42\156\49\54\44\160","\88\73\204\80"));hpPanel=g_ui.createWidget(v7("\38\147\32\71\39\223\34","\186\78\227\112\38\73"));hpPanel2=g_ui.createWidget(v7("\244\71\205\84\93\127\240","\26\156\55\157\53\51"));hpPanel3=g_ui.createWidget(v7("\132\200\38\216\182\85\128","\48\236\184\118\185\216"));TabBar:addTab(v7("\199\168\81\54","\84\133\221\55\80\175"),hpPanel4);color=UI.Label(v7("\152\235\0\163\209\126\178\245\35\163\212","\60\221\135\68\198\167"),hpPanel4);color:setColor(v7("\225\175\249\141\69\220","\185\142\221\152\227\34"));UI.Separator(hpPanel4);color=UI.Label(v7("\122\208\81\252\80\105","\151\56\165\55\154\35\83"),hpPanel4);color:setColor(v7("\178\70\1","\142\192\35\101"));function warning() end local v487=0;local v488=0;local v489=false;local function v490(v564) v487=now;v488=v564;v489=true;selado=true;end local function v491() v489=false;selado=false;end onTextMessage(function(v565,v566) local v567=v566:lower():match(v7("\197\112\60\227\237\153\184\5\195\53\47\172\238\204\191\19\218\116\45\172\167\156\163\4\150\61\108\167\172\197\236\5\211\114\60\173\227\131\191","\118\182\21\73\195\135\236\204"));if v567 then local v667=tonumber(v567);if v667 then v490(v667);end end end);macro(100,function() if v489 then local v668=(now-v487)/1000 ;if (v668>=v488) then v491();end end end);local v492=storage.kekkeiBuff;local v493=storage.Buff;local v494=tonumber(storage.kekkeiMedicine);local v495=tonumber(storage.buffMedicine);buff=macro(1000,v7("\10\41\28\70","\157\104\92\122\32\100\109"),function() if ((player:getSkillLevel(3)<=v494) and  not isInProtectionZone() and  not selado) then say(v492);end schedule(1000,function() if ((player:getSkillLevel(3)<=v495) and  not isInProtectionZone() and  not selado) then say(v493);end end);end,hpPanel4);addIcon(v7("\161\179\201\204","\203\195\198\175\170\93\71\237"),{[v7("\39\95\59\216","\156\78\43\94\181\49\113")]=10825,[v7("\102\237\220\183","\25\18\136\164\195\107\35")]=v7("\202\24\143\105","\216\136\77\201\47\18\220\161")},buff);addTextEdit(v7("\11\227\39\214\7\203\178\33\237\50\223\26","\226\77\140\75\186\104\188"),storage.kekkeiBuff or v7("\178\203\219\52\74\176\142\215\58\65\178\207\217","\47\217\174\176\95") ,function(v568,v569) storage.kekkeiBuff=v569;end,hpPanel4);labelBuff=UI.Label(v7("\154\200\112\4","\70\216\189\22\98\210\52\24"),hpPanel4);addTextEdit(v7("\252\208\175\139\220\205\239\175\134\202\223\205","\179\186\191\195\231"),storage.Buff or v7("\219\42\30\226","\132\153\95\120") ,function(v571,v572) storage.Buff=v572;end,hpPanel4);labelBuff=UI.Label(v7("\156\183\10\36\244\211\174\180\129\5\36\251\214\224\162\183\3\109\252\223\171\186\183\7","\192\209\210\110\77\151\186"),hpPanel4);addTextEdit(v7("\198\12\46\229\240\211\208\15\35\240\250\214","\164\128\99\66\137\159"),storage.kekkeiMedicine or 0 ,function(v574,v575) storage.kekkeiMedicine=v575;end,hpPanel4);labelBuff=UI.Label(v7("\45\140\237\183\3\128\231\187\51\130\224\178\12\201\234\177\13\201\226\187\11\130\236\183","\222\96\233\137"),hpPanel4);addTextEdit(v7("\159\188\171\19\135\228\192\181\178\190\26\154","\144\217\211\199\127\232\147"),storage.buffMedicine or 0 ,function(v577,v578) storage.buffMedicine=v578;end,hpPanel4);TabBar:addTab(v7("\219\58\44\41\198","\36\152\79\94\72\181\37\98"),hpPanel);color=UI.Label(v7("\242\212\99\58\193\250\72\45\208\221\84","\95\183\184\39"),hpPanel);color:setColor(v7("\186\45\230\40\83\133","\98\213\95\135\70\52\224"));UI.Separator(hpPanel);UI.Label(v7("\215\135\137\85\125\212\150\252\45","\52\158\195\169\23"),hpPanel):setFont(v7("\121\181\34\103\137\51\111\173\117\178\38","\235\26\220\82\20\230\85\27"));addTextEdit(v7("\135\180\253\196\125\156\131\224\200\97\157","\20\232\193\137\162"),storage.outfitBijuu or v7("\113\143\151","\17\66\191\165\198\135\236\119") ,function(v580,v581) storage.outfitBijuu=tonumber(v581);end,hpPanel);for v583,v584 in ipairs({storage.heal}) do local v585=macro(10,function() local v625=player:getHealthPercent();if (player:getOutfit().type==storage.outfitBijuu) then return;end if ((v584.max>=v625) and (v625>=v584.min)) then if TargetBot then TargetBot.saySpell(v584.text);else say(v584.text);end end end,hpPanel);v585.setOn(v584.on);UI.DualScrollPanel(v584,function(v626,v627) v584=v627;v585.setOn(v584.on);end,hpPanel);end TabBar:addTab(v7("\44\160\188\1\250\250","\177\111\207\206\115\159\136\140"),hpPanel3);UI.Label(v7("\38\166\34\38\241\125\5","\63\101\233\112\116\180\47"),hpPanel3):setFont(v7("\192\50\253\1\247\48\215\29\226\28\236","\86\163\91\141\114\152"));addTextEdit(v7("\91\10\103\103\63\96\27\113\127\54","\90\51\107\20\19"),storage.hasteSpell or v7("\142\255\139\236\56\131\228\151\238\41\136\176\134\231\60\134\226\132\175\59\136\245\145","\93\237\144\229\143") ,function(v586,v587) storage.hasteSpell=v587;end,hpPanel3);macro(1,v7("\54\249\226\11\14\84","\38\117\150\144\121\107"),function() if (getPlayersAttack()>=1) then return;end delay(1000);local v589=storage.sealedTypes and storage.sealedTypes.speed and (storage.sealedTypes.speed>=os.time()) ;if ( not v589 and  not hasHaste()) then say(storage.hasteSpell);end end,hpPanel3);local v496={};bugmap=macro(1,v7("\15\174\233\122\0\186\254","\90\77\219\142"),function() if (modules.game_console:isChatEnabled() or modules.corelib.g_keyboard.isCtrlPressed()) then return;end local v590=pos();for v628,v629 in pairs(v496.directions) do if (v496.isKeyPressed(v628)) then if (storage.bugMapCheck or v629.direction) then if v629.direction then turn(v629.direction);end local v675=g_map.getTile({x=v590.x + v629.x ,y=v590.y + v629.y ,z=v590.z});if v675 then return g_game.use(v675:getTopUseThing());end end end end end,hpPanel3);bugmap=addIcon(v7("\196\17\38\121\97\6\106","\26\134\100\65\89\44\103"),{[v7("\248\247\53\46","\196\145\131\80\67")]=10610,[v7("\10\181\30\28","\136\126\208\102\104\120")]=v7("\90\159\201\3\130\83\45","\49\24\234\174\35\207\50\93")},bugmap);v496.checkBox=setupUI(v7("\102\209\245\141\114\7\208\242\144\27\76\178\244\140\43\76\241\245\141\114\7\208\242\144\27\76\178\251\135\127\24\168\189\139\120\28\225\242\142\101\42\253\243\156\27\76\178\233\141\105\24\168\189\172\120\13\245\242\134\112\0\178\210\166\46\102","\17\108\146\157\232"),hpPanel3);v496.checkBox.onCheckChange=function(v591,v592) storage.bugMapCheck=v592;end;if (storage.bugMapCheck==nil) then storage.bugMapCheck=true;end v496.checkBox:setChecked(storage.bugMapCheck);v496.directions={W={x=0,y= -5,[v7("\79\202\6\232\44\188\66\204\26","\200\43\163\116\141\79")]=0},E={x=4,y= -4},D={x=5,y=0,[v7("\187\63\47\134\179\224\234\176\56","\131\223\86\93\227\208\148")]=1},C={x=4,y=4},S={x=0,y=5,[v7("\231\76\164\179\30\161\234\74\184","\213\131\37\214\214\125")]=2},Z={x= -4,y=4},A={x= -5,y=0,[v7("\34\34\55\186\226\50\34\42\177","\129\70\75\69\223")]=3},Q={x= -4,y= -4}};v496.isKeyPressed=modules.corelib.g_keyboard.isKeyPressed;end end PainelsWindow.closeButton.onClick=function(v324) PainelsWindow:hide();end;
