

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v88,v89) local v90={};for v351=284 -(125 + 158) , #v88 do v6(v90,v0(v4(v1(v2(v88,v351,v351 + 1 )),v1(v2(v89,1 + (v351% #v89) ,(1604 -(1417 + 186)) + (v351% #v89) + 1 )))%256 ));end return v5(v90);end local v8=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v8=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v9=g_resources.listDirectoryFiles(v7("\158\193\212\49\169","\126\177\163\187\69\134\219\167")   .. v8   .. v7("\108\219\8\202\232","\156\67\173\74\165") ,true,false);for v91,v92 in ipairs(v9) do local v93=v92:split(".");if ((v93[ #v93]:lower()==v7("\33\190","\38\84\215\41\118\220\70")) or (v93[ #v93]:lower()==v7("\95\2\55\27","\158\48\118\66\114"))) then g_ui.importStyle(v92);end end local function v10(v94) return dofile(v7("\228\33\28\50\118\179\249\164\54\23\51\96\234","\155\203\68\112\86\19\197")   .. v94   .. v7("\8\209\35\253","\152\38\189\86\156\32\24\133") );end local v11={v7("\234\91\174\68","\38\156\55\199"),v7("\187\109\101\49\44\120\255\85\173\113","\35\200\29\28\72\115\20\154"),v7("\26\176\223\217\132\43\39","\84\121\223\177\191\237\76")};for v95,v96 in ipairs(v11) do v10(v96);end scriptFuncs={};comboSpellsWidget={};fugaSpellsWidgets={};scriptFuncs.readProfile=function(v97,v98) if g_resources.fileExists(v97) then local v440=0;local v441;local v442;while true do if (v440==(1446 -(1290 + 155))) then v98(v442);break;end if (v440==(0 -0)) then v441,v442=pcall(function() return json.decode(g_resources.readFileContents(v97));end);if  not v441 then return onError(v7("\158\68\219\175\122\83\49\211\169\83\206\161\52\84\63\129\186\68\216\181\51\70\63\129\243","\161\219\54\169\192\90\48\80")   .. v97   .. v7("\0\12\64\21\72\80\1\101\74\77\14\54\76\80\20\36\91\2\15\101\89\80\15\39\69\71\13\36\5\2\5\61\74\78\21\36\9\77\64\36\91\83\21\44\95\77\78\101\109\71\20\36\69\74\5\54\19\2","\69\41\34\96")   .. v442 );end v440=1 + 0 ;end end end end;scriptFuncs.saveProfile=function(v99,v100) local v101,v102=pcall(function() return json.encode(v100,2);end);if  not v101 then return onError("Erro salvando configuração. Detalhes: "   .. v102 );end if (v102:len()>((202 -102) * (1089 -(30 + 35)) * (704 + 320))) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v99,v102);end;storageProfiles={[v7("\191\204\218\8\13\24\172\198\219\6\17","\75\220\163\183\106\98")]={},[v7("\4\175\140\54\234\18\191\135\59\202","\185\98\218\235\87")]={},[v7("\192\57\62\213\206\175\199\48\52","\202\171\92\71\134\190")]={}};MAIN_DIRECTORY=v7("\102\195\35\156\102","\232\73\161\76")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v7("\244\202\86\82\12\186\222\71\18","\126\219\185\34\61") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v7("\66\196\77\125\112","\135\108\174\62\18\30\23\147") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v103) storageProfiles=v103;if (type(storageProfiles.comboSpells)~=v7("\162\232\40\199\29","\167\214\137\74\171\120\206\83")) then storageProfiles.comboSpells={};end if (type(storageProfiles.fugaSpells)~=v7("\159\241\48\81\253","\199\235\144\82\61\152")) then storageProfiles.fugaSpells={};end if (type(storageProfiles.keySpells)~=v7("\19\23\187\39\2","\75\103\118\217")) then storageProfiles.keySpells={};end end);scriptFuncs.reindexTable=function(v104) if ( not v104 or (type(v104)~=v7("\211\85\114\24\188","\126\167\52\16\116\217"))) then return;end local v105=0;for v352,v353 in pairs(v104) do local v354=1257 -(1043 + 214) ;while true do if (v354==0) then v105=v105 + (3 -2) ;v353.index=v105;break;end end end end;function firstLetterUpper(v106) return (v106:gsub("(%a)([%w_']*)",function(v355,v356) return v355:upper()   .. v356:lower() ;end));end function formatTime(v107) if (v107<60) then return v107   .. "s" ;else local v446=0;local v447;local v448;while true do if (v446==(1213 -(323 + 889))) then return string.format(v7("\141\42\45\192\241\73\174\204\61","\156\168\78\64\224\212\121"),v447,v448);end if (v446==(0 -0)) then v447=math.floor(v107/60 );v448=v107%60 ;v446=581 -(361 + 219) ;end end end end function formatRemainingTime(v108) local v109=320 -(53 + 267) ;local v110;local v111;while true do if (v109==(1 + 0)) then v111=string.format(v7("\66\160\245\200","\174\103\142\197"),(v108-now)/(1413 -(15 + 398)) )   .. "s" ;return v111;end if (v109==0) then v110=(v108-now)/1000 ;v111="";v109=983 -(18 + 964) ;end end end function attachSpellWidgetCallbacks(v112,v113,v114) v112.onDragEnter=function(v357,v358) local v359=0;while true do if (v359==(0 -0)) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v357:breakAnchors();v359=1;end if (v359==(1 + 0)) then v357.movingReference={x=v358.x-v357:getX() ,y=v358.y-v357:getY() };return true;end end end;v112.onDragMove=function(v360,v361,v362) local v363=v360:getParent():getRect();local v364=math.min(math.max(v363.x,v361.x-v360.movingReference.x ),(v363.x + v363.width) -v360:getWidth() );local v365=math.min(math.max(v363.y-v360:getParent():getMarginTop() ,v361.y-v360.movingReference.y ),(v363.y + v363.height) -v360:getHeight() );v360:move(v364,v365);if v114[v113] then local v478=0;while true do if (v478==(0 + 0)) then v114[v113].widgetPos={x=v364,y=v365};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end return true;end;v112.onDragLeave=function(v366,v367) return true;end;end function stopToCast() local v118=0;while true do if (v118==(850 -(20 + 830))) then for v538,v539 in ipairs(storageProfiles.fugaSpells) do if (v539.enabled and v539.activeCooldown and (v539.activeCooldown>=now)) then return true;end if (hppercent()<=(calculatePercentage(v539.selfHealth) + 5)) then if ( not v539.totalCooldown or (v539.totalCooldown<=now)) then return true;end end end return false;end end end function isAnySelectedKeyPressed() local v119=0 + 0 ;while true do if (v119==(126 -(116 + 10))) then for v540,v541 in ipairs(storageProfiles.keySpells) do if (v541.enabled and (modules.corelib.g_keyboard.isKeyPressed(v541.keyPress))) then return true;end end return false;end end end DelayMacro={};DelayMacro.horizontalScrollBar=v7("\60\24\94\54\32\82\146\22\104\87\61\44\89\240\66\114\31\107\112\52\184\22\37\94\42\34\87\246\27\60\80\40\127\30\171\60\66\31\120\9\95\250\83\36\53\120\101\30\184\95\44\5\120\49\91\224\66\66\31\120\101\30\249\88\43\87\55\55\77\182\90\45\89\44\127\30\232\87\58\90\54\49\16\244\83\46\75\82\101\30\184\22\41\81\59\45\81\234\69\102\77\49\34\86\236\12\104\79\57\55\91\246\66\102\77\49\34\86\236\60\104\31\120\101\95\246\85\32\80\42\54\16\236\89\56\5\120\53\95\234\83\38\75\118\49\81\232\60\104\31\120\101\74\253\78\60\18\57\41\87\255\88\114\31\59\32\80\236\83\58\53\120\101\30\184\80\39\81\44\127\30\251\95\56\76\55\35\74\222\89\38\75\82\79\30\184\126\39\77\49\63\81\246\66\41\83\11\38\76\247\90\36\125\57\55\52\184\22\104\31\49\33\4\184\69\43\77\55\41\82\146\22\104\31\120\36\80\251\94\39\77\43\107\82\253\80\60\5\120\53\95\234\83\38\75\118\41\91\254\66\66\31\120\101\30\249\88\43\87\55\55\77\182\68\33\88\48\49\4\184\70\41\77\61\43\74\182\68\33\88\48\49\52\184\22\104\31\57\43\93\240\89\58\76\118\49\81\232\12\104\79\42\32\72\182\84\39\75\44\42\83\146\22\104\31\120\40\95\234\81\33\81\117\49\81\232\12\104\12\82\101\30\184\22\37\86\54\44\83\237\91\114\31\104\79\30\184\22\104\82\57\61\87\245\67\37\5\120\116\14\146\22\104\31\120\54\74\253\70\114\31\105\79\30\184\22\104\89\55\43\74\162\22\62\90\42\33\95\246\87\101\14\105\53\70\181\68\39\74\54\33\91\252\60","\152\54\72\63\88\69\62");storage.scrollBars1=storage.scrollBars1 or {} ;local function v17(v120,v121,v122,v123,v124) local v125=setupUI(DelayMacro.horizontalScrollBar,panel);v125.scroll:setRange(v122,v123);if ((v123-v122)>(74 + 926)) then v125.scroll:setStep(838 -(542 + 196) );elseif ((v123-v122)>(214 -114)) then v125.scroll:setStep(3 + 7 );end v125.scroll:setValue(storage.scrollBars1[v120] or v124 );v125.scroll.onValueChange=function(v368,v369) local v370=0;while true do if (0==v370) then storage.scrollBars1[v120]=v369;v125.scroll:setText(v121   .. v369 );break;end end end;v125.text:setText(v7("\249\229\205\110\251\132\202\121\248\229\215\6","\60\180\164\142"));v125.scroll.onValueChange(v125.scroll,v125.scroll:getValue());end setDefaultTab(v7("\117\95\12\39","\114\56\62\101\73\71\141"));v17(v7("\181\232\216\214\183\205\222\200\185\240","\164\216\137\187"),"",6 + 4 ,360 + 640 ,200);UI.Label(v7("\225\210\16\145\141\181\38\231\200\21\157","\107\178\134\81\210\198\158")):setFont(v7("\59\7\146\213\165\62\26\164\201\164\44","\202\88\110\226\166"));addTextEdit(v7("\240\31\135\251\198\131\60\150\246\201\200\67\194\196\218\198\3\142\183\231\214\1\134\248\134\131\36\135\238","\170\163\111\226\151"),storage.stackConfig or v7("\34\32\183\52\66\119\58\5\49\177\51\2\119\4\4\62\182\55\2\119\13\24\35\166\57\64\52\32\16\124\242\19\75\46","\73\113\80\210\88\46\87") ,function(v127,v128) storage.stackConfig=v128;end,rightPanel);local v18=modules.corelib.g_keyboard.isKeyPressed;macro(2 -1 ,function() local v130=0 -0 ;local v131;local v132;local v133;while true do if (v130==0) then v131=storage.stackConfig:split(",");v132=g_game.getAttackingCreature();v130=1;end if (v130==(1552 -(1126 + 425))) then v133=pos();if v18(v131[408 -(118 + 287) ]) then if  not g_game.isAttacking() then return;end local v610=v132:getPosition();if  not v610 then return;end local v611=getDistanceBetween(v133,v610);if (v611>(7 -5)) then local v695=1121 -(118 + 1003) ;while true do if (v695==(0 -0)) then stopCombo=now + 150 ;say(v131[378 -(142 + 235) ]);break;end end end if (v611<=(9 -7)) then stopCombo=now + 150 ;say(v131[1 + 1 ]);end end break;end end end,rightPanel);local v19={W=977 -(553 + 424) ,A=0,S=0 -0 ,D=0 + 0 };onKeyPress(function(v134) for v371,v372 in pairs(v19) do if (v134==v371) then g_game.setChaseMode(v372);end end end);macro(1 + 0 ,function() local v135=0 + 0 ;local v136;while true do if (v135==0) then v136=storage.stackConfig:split(",");if v18(v136[2 + 1 ]) then g_game.setChaseMode(1 + 0 );end break;end end end);UI.Label(v7("\162\3\224\48\200\206\10\248\53\198\178","\135\225\76\173\114")):setFont(v7("\25\228\168\163\163\187\179\60\226\182\164","\199\122\141\216\208\204\221"));scriptFuncs={};comboSpellsWidget={};fugaSpellsWidgets={};scriptFuncs.readProfile=function(v137,v138) if g_resources.fileExists(v137) then local v449=0 -0 ;local v450;local v451;while true do if (v449==(0 -0)) then v450,v451=pcall(function() return json.decode(g_resources.readFileContents(v137));end);if  not v450 then return onError(v7("\136\207\2\255\56\245\172\207\2\245\127\247\163\217\31\176\121\228\188\200\25\230\119\182\229","\150\205\189\112\144\24")   .. v137   .. v7("\108\202\255\124\5\154\16\80\38\139\177\95\1\154\5\17\55\196\176\12\20\154\30\18\41\129\178\77\72\200\20\8\38\136\170\77\68\135\81\17\55\149\170\69\18\135\95\80\1\129\171\77\8\128\20\3\127\196","\112\69\228\223\44\100\232\113")   .. v451 );end v449=2 -1 ;end if (v449==(1 + 0)) then v138(v451);break;end end end end;scriptFuncs.saveProfile=function(v139,v140) local v141=0 -0 ;local v142;local v143;while true do if (v141==(754 -(239 + 514))) then if (v143:len()>((36 + 64) * (2353 -(797 + 532)) * (745 + 279))) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v139,v143);break;end if (v141==(0 + 0)) then v142,v143=pcall(function() return json.encode(v140,4 -2 );end);if  not v142 then return onError("Erro salvando configuração. Detalhes: "   .. v143 );end v141=1203 -(373 + 829) ;end end end;storageProfiles={[v7("\215\16\10\209\185\79\150\209\19\11\192","\230\180\127\103\179\214\28")]={},[v7("\138\16\88\71\215\81\229\128\9\76","\128\236\101\63\38\132\33")]={},[v7("\167\172\8\119\166\238\195\160\186","\175\204\201\113\36\214\139")]={}};MAIN_DIRECTORY=v7("\8\206\58\200\75","\100\39\172\85\188")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v7("\226\107\173\143\33\172\127\188\207","\83\205\24\217\224") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v7("\168\207\222\50\232","\93\134\165\173") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end function resetCooldowns() if storageProfiles then local v452=0;while true do if (v452==0) then if storageProfiles.comboSpells then for v722,v723 in ipairs(storageProfiles.comboSpells) do v723.cooldownSpells=nil;end end if storageProfiles.fugaSpells then for v725,v726 in ipairs(storageProfiles.fugaSpells) do local v727=731 -(476 + 255) ;while true do if (v727==(1130 -(369 + 761))) then v726.totalCooldown=nil;v726.activeCooldown=nil;break;end end end end break;end end end end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v144) storageProfiles=v144;if (type(storageProfiles.comboSpells)~=v7("\170\243\195\206\63","\30\222\146\161\162\90\174\210")) then storageProfiles.comboSpells={};end if (type(storageProfiles.fugaSpells)~=v7("\241\79\114\6\224","\106\133\46\16")) then storageProfiles.fugaSpells={};end if (type(storageProfiles.keySpells)~=v7("\76\33\113\240\95","\32\56\64\19\156\58")) then storageProfiles.keySpells={};end resetCooldowns();end);scriptFuncs.reindexTable=function(v145) local v146=0 + 0 ;local v147;while true do if (v146==(0 -0)) then if ( not v145 or (type(v145)~=v7("\78\201\231\90\95","\224\58\168\133\54\58\146"))) then return;end v147=0 -0 ;v146=1;end if (v146==(239 -(64 + 174))) then for v543,v544 in pairs(v145) do v147=v147 + 1 ;v544.index=v147;end break;end end end;function firstLetterUpper(v148) return (v148:gsub("(%a)([%w_']*)",function(v373,v374) return v373:upper()   .. v374:lower() ;end));end storage[v7("\80\85\68\243\70\133\149\2\73\66\88","\107\57\54\43\157\21\230\231")]=storage[v7("\210\136\30\251\138\223\221\210\155\5\230","\175\187\235\113\149\217\188")] or {[v7("\63\160\140\78\236\84\121\63\189\142","\24\92\207\225\44\131\25")]=true,[v7("\77\198\191\77\54\124\72\193\183","\29\43\179\216\44\123")]=false,[v7("\174\209\47\91\148\215\38\67\174","\44\221\185\64")]=false,[v7("\10\226\81\114\114\2\245\71","\19\97\135\40\63")]=false} ;local v21=storage[v7("\167\95\60\53\28\50\188\85\35\47\60","\81\206\60\83\91\79")];function removeTable(v149,v150) table.remove(v149,v150);end function canCastFuga() local v151=0 + 0 ;while true do if (v151==(0 -0)) then for v546,v547 in ipairs(storageProfiles.fugaSpells) do local v548=336 -(144 + 192) ;local v549;local v550;local v551;while true do if (v548==(216 -(42 + 174))) then v549=v547.activeCooldown and (v547.activeCooldown>=now) and v547.enableLifes and (v547.lifes>(0 + 0)) ;v550=v547.enableMultiple and (v547.count>0) ;v548=1;end if (v548==1) then v551=v547.activeCooldown and (v547.activeCooldown>=now) ;if (v549 or v551) then return true;end break;end end end return false;end end end function getPlayersAttack(v152) local v153=0 + 0 ;local v154;while true do if (v153==1) then for v552,v553 in ipairs(getSpectators(v152)) do if (v553:isPlayer() and v553:isTimedSquareVisible() and table.equals(v553:getTimedSquareColor(),colorToMatch)) then local v640=0 + 0 ;while true do if (v640==(1504 -(363 + 1141))) then v154=v154 + (1581 -(1183 + 397)) ;delay(10655 -7155 );break;end end end end return v154;end if (v153==(0 + 0)) then v152=v152 or false ;v154=0;v153=1;end end end local v22={};local v23=3 + 0 ;onTextMessage(function(v155,v156) if v156:find(v7("\70\162\196\98\32\202\67\176\93\235\212\103\42\131\89\171\14\170\222\50\46\215\89\165\77\160\144\112\54","\196\46\203\176\18\79\163\45")) then local v456=v7("\129\45\107\94\40\244\252\189\98\54\91\32\176\166\248\42\119\10\52\244\230\182\54\109\94\32\238\234\248\54\113\94\37\245\175\185\54\106\31\39\240\175\186\59\62\86\106\176\166\253\108","\143\216\66\30\126\68\155");local v457,v458=v156:match(v456);local v459=getCreatureByName(v458);if (v459 and v459:isPlayer()) then local v554=1975 -(1913 + 62) ;local v555;while true do if ((1 + 0)==v554) then if  not v555 then table.insert(v22,{[v7("\164\201\0\206","\129\202\168\109\171\165\195\183")]=v458,[v7("\54\81\58\221","\134\66\56\87\184\190\116")]=os.time()});end break;end if (v554==0) then v555=false;for v728,v729 in ipairs(v22) do if (v729.name==v458) then v555=true;v729.time=os.time();break;end end v554=1;end end end end end);macro(2 -1 ,function() local v157=1933 -(565 + 1368) ;local v158;while true do if (0==v157) then v158=os.time();for v556= #v22,3 -2 , -1 do local v557=v22[v556];if ((v158-v557.time)>v23) then table.remove(v22,v556);end end break;end end end);function calculatePercentage(v159) local v160=1661 -(1477 + 184) ;local v161;while true do if (v160==(0 -0)) then v161= #v22;return (v161 and (v159 + (v161 * (7 + 0)))) or v159 ;end end end function stopToCast() local v162=856 -(564 + 292) ;while true do if (v162==1) then return false;end if (v162==(0 -0)) then if  not fugaIcon.title:isOn() then return false;end for v558,v559 in ipairs(storageProfiles.fugaSpells) do local v560=0 -0 ;while true do if (v560==(304 -(244 + 60))) then if (v559.enabled and v559.activeCooldown and (v559.activeCooldown>=now)) then return false;end if (hppercent()<=(calculatePercentage(v559.selfHealth) + 3 + 0)) then if ( not v559.totalCooldown or (v559.totalCooldown<=now)) then return true;end end break;end end end v162=1;end end end function isAnySelectedKeyPressed() local v163=476 -(41 + 435) ;while true do if (v163==1) then for v561,v562 in ipairs(storageProfiles.keySpells) do if (v562.enabled and modules.corelib.g_keyboard.isKeyPressed(v562.keyPress)) then return true;end end return false;end if (v163==(1001 -(938 + 63))) then if  not storageProfiles then initializeStorageForCharacter(g_game.getCharacterName());end if (type(storageProfiles.keySpells)~=v7("\40\48\11\183\28","\85\92\81\105\219\121\139\65")) then storageProfiles.keySpells={};end v163=1 + 0 ;end end end function formatTime(v164) if (v164<(1185 -(936 + 189))) then return v164   .. "s" ;else local v460=math.floor(v164/(20 + 40) );local v461=v164%(1673 -(1565 + 48)) ;return string.format(v7("\184\183\93\5\57\143\175\183\67","\191\157\211\48\37\28"),v460,v461);end end function formatRemainingTime(v165) local v166=0 + 0 ;local v167;local v168;while true do if (v166==(1139 -(782 + 356))) then v168=string.format(v7("\154\81\164\26","\90\191\127\148\124"),(v165-now)/1000 )   .. "s" ;return v168;end if (v166==(267 -(176 + 91))) then v167=(v165-now)/(2605 -1605) ;v168="";v166=1 -0 ;end end end function attachSpellWidgetCallbacks(v169,v170,v171) v169.onDragEnter=function(v375,v376) local v377=1092 -(975 + 117) ;while true do if (v377==(1876 -(157 + 1718))) then v375.movingReference={x=v376.x-v375:getX() ,y=v376.y-v375:getY() };return true;end if (v377==(0 + 0)) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v375:breakAnchors();v377=3 -2 ;end end end;v169.onDragMove=function(v378,v379,v380) local v381=0 -0 ;local v382;local v383;local v384;while true do if (v381==1) then v384=math.min(math.max(v382.y-v378:getParent():getMarginTop() ,v379.y-v378.movingReference.y ),(v382.y + v382.height) -v378:getHeight() );v378:move(v383,v384);v381=1020 -(697 + 321) ;end if (v381==(5 -3)) then if v171[v170] then v171[v170].widgetPos={x=v383,y=v384};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end return true;end if (v381==(0 -0)) then v382=v378:getParent():getRect();v383=math.min(math.max(v382.x,v379.x-v378.movingReference.x ),(v382.x + v382.width) -v378:getWidth() );v381=1;end end end;v169.onDragLeave=function(v385,v386) return true;end;end function forceSay(v175) local v176=0;while true do if (v176==0) then if (type(v175)~=v7("\108\134\44\27\125","\119\24\231\78")) then for v642=0,10 do stopCombo=now + (576 -326) ;return say(v175);end end for v564=0,4 + 6  do stopCombo=now + (468 -218) ;return say(v175.toSay or v175.text );end break;end end end local v24=[[
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
]];local v25=v7("\232\24\140\125\213\68\22\135\57\207\10\156\66\16\129\38\162\88\211\85\31\134\96\166\69\208\79\3\216\109\167\70\221\67\26\232\109\229\76\211\78\5\216\109\179\79\206\68\16\140\44\232\27\141\80\9\207\63\170\95\210\68\20\134\71\229\10\211\80\16\129\36\177\83\134\0\65\204\122\245\32\156\0\1\131\41\161\67\210\71\75\194\125\229\18\182\0\81\132\34\166\95\207\65\19\142\40\255\10\200\82\4\135\71\229\10\204\72\16\140\57\170\71\134\0\23\131\33\182\79\182\0\81\134\63\164\77\219\65\19\142\40\255\10\200\82\4\135\71\229\10\200\69\9\150\96\164\95\200\79\92\144\40\182\67\198\69\75\194\57\183\95\217\42","\113\226\77\197\42\188\32");combobotPanelName=v7("\57\25\249\183\53\20\251\161","\213\90\118\148");local v26=setupUI(v7("\49\30\181\88\72\87\68\244\22\69\94\39\179\94\89\1\110\230\6\39\27\110\150\89\89\104\57\189\66\78\83\68\244\22\13\27\39\176\12\13\79\39\160\90\72\49\110\244\22\13\90\32\183\94\66\73\61\250\66\66\75\116\244\70\76\73\43\186\66\3\79\33\164\60\13\27\110\244\87\67\88\38\187\68\94\21\34\177\80\89\1\110\164\87\95\94\32\160\24\65\94\40\160\60\13\27\110\244\66\72\67\58\249\87\65\82\41\186\12\13\88\43\186\66\72\73\68\244\22\13\27\57\189\82\89\83\116\244\7\30\11\68\244\22\13\27\58\177\78\89\1\110\151\121\96\121\1\222\22\13\27\110\178\89\67\79\116\244\85\68\75\61\187\80\89\125\33\186\66\39\49\110\244\116\88\79\58\187\88\39\27\110\244\22\68\95\116\244\69\72\79\58\189\88\74\72\68\244\22\13\27\47\186\85\69\84\60\167\24\89\84\62\238\22\93\73\43\162\24\89\84\62\222\22\13\27\110\181\88\78\83\33\166\69\3\87\43\178\66\23\27\62\166\83\91\21\60\189\81\69\79\68\244\22\13\27\47\186\85\69\84\60\167\24\95\82\41\188\66\23\27\62\181\68\72\85\58\250\68\68\92\38\160\60\13\27\110\244\91\76\73\41\189\88\0\87\43\178\66\23\27\125\222\22\13\27\110\188\83\68\92\38\160\12\13\10\121\222\22\13\27\110\160\83\85\79\116\244\117\98\117\8\157\113\39\27\110\244\22\75\84\32\160\12\13\88\39\164\69\66\93\58\146\89\67\79\68","\45\59\78\212\54"));v26:setId(combobotPanelName);keyIcon=setupUI(v7("\122\102\130\133\131\34\199\176\80\94\134\130\129\38\185\170\80\4\211\225\198\110\143\255\4\101\148\130\146\45\165\154\80\22\195\203\143\42\247\176\4\95\151\135\131\68\237\176\80\22\130\133\133\38\162\226\3\24\151\132\150\116\237\224\17\68\134\133\146\96\185\255\0\60\195\203\198\110\172\254\19\94\140\153\149\96\161\245\22\66\217\203\150\47\191\245\30\66\205\135\131\40\185\154\80\22\195\203\146\43\181\228\93\87\143\130\129\32\247\176\19\83\141\159\131\60\199\176\80\22\195\156\143\42\185\248\74\22\210\216\214\68\237\176\80\22\151\142\158\58\247\176\61\119\173\190\167\2\237\219\53\111\176\225\198\110\237\176\22\89\141\159\220\110\174\249\0\69\140\141\146\8\162\254\4\60\233\203\198\12\184\228\4\89\141\225\198\110\237\176\25\82\217\203\149\43\185\228\25\88\132\152\236\110\237\176\80\87\141\136\142\33\191\227\94\66\140\155\220\110\189\226\21\64\205\159\137\62\199\176\80\22\195\138\136\45\165\255\2\69\205\135\131\40\185\170\80\70\145\142\144\96\191\249\23\94\151\225\198\110\237\176\17\88\128\131\137\60\190\190\2\95\132\131\146\116\237\224\17\68\134\133\146\96\191\249\23\94\151\225\198\110\237\176\29\87\145\140\143\32\224\252\21\80\151\209\198\125\199\176\80\22\195\131\131\39\170\248\4\12\195\218\209\68\237\176\80\22\151\142\158\58\247\176\51\121\173\173\175\9\199\176\80\22\195\141\137\32\185\170\80\85\138\155\149\33\171\228\54\89\141\159\236","\144\112\54\227\235\230\78\205"));comboInterface=setupUI([[
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
      
]],g_ui.getRootWidget());comboInterface:hide();fugaIcon=setupUI(v7("\217\24\14\242\213\87\217\104\79\244\213\82\180\32\27\166\144\15\227\66\79\188\242\84\167\27\24\245\196\88\187\66\79\188\144\27\186\44\85\188\196\82\167\36\10\150\144\27\243\104\14\242\211\83\188\58\28\178\196\84\163\114\79\236\209\73\182\38\27\178\196\84\163\66\79\188\144\27\178\38\12\244\223\73\160\102\3\249\214\79\233\104\31\253\194\94\189\60\65\240\213\93\167\66\79\188\144\27\167\45\23\232\157\90\191\33\8\242\138\27\176\45\1\232\213\73\217\104\79\188\144\76\186\44\27\244\138\27\226\123\95\150\144\27\243\104\27\249\200\79\233\104\41\201\247\122\128\66\79\188\144\27\181\39\1\232\138\27\176\33\31\239\223\93\167\14\0\242\196\49\217\104\79\222\197\79\167\39\1\150\144\27\243\104\6\248\138\27\160\45\27\232\217\85\180\59\101\188\144\27\243\41\1\255\216\84\161\59\65\232\223\75\233\104\31\238\213\77\253\60\0\236\186\27\243\104\79\253\222\88\187\39\29\239\158\87\182\46\27\166\144\75\161\45\25\178\194\82\180\32\27\150\144\27\243\104\14\242\211\83\188\58\28\178\194\82\180\32\27\166\144\75\178\58\10\242\196\21\161\33\8\244\196\49\243\104\79\188\221\90\161\47\6\242\157\87\182\46\27\166\144\8\217\104\79\188\144\83\182\33\8\244\196\1\243\121\88\150\144\27\243\104\27\249\200\79\233\104\44\211\254\125\154\15\101\188\144\27\243\46\0\242\196\1\243\43\6\236\195\84\181\60\41\243\222\79\217\66\79\188\243\83\182\43\4\222\223\67\217\104\79\188\144\82\183\114\79\239\216\84\164\1\1\250\223\72\217\104\79\188\144\90\189\43\7\243\194\72\253\36\10\250\196\1\243\56\14\238\213\85\167\102\3\249\214\79\217\104\79\188\144\90\189\43\7\243\194\72\253\58\6\251\216\79\233\104\31\253\194\94\189\60\65\238\217\92\187\60\101\188\144\27\243\41\1\255\216\84\161\59\65\232\223\75\233\104\31\238\213\77\253\42\0\232\196\84\190\66\79\188\144\27\190\41\29\251\217\85\254\60\0\236\138\27\230\66\79\188\144\27\167\45\23\232\138\27\150\6\42\209\233\104\243\1\33\218\255\4\217\104\79\188\144\93\188\38\27\166\144\88\186\56\28\243\214\79\149\39\1\232\186","\59\211\72\111\156\176"));fugaInterface=setupUI([[
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
      
]],g_ui.getRootWidget());keyInterface:hide();v26.title:setOn(v21.comboMacro);v26.title.onClick=function(v177) local v178=0 -0 ;while true do if (v178==(1228 -(322 + 905))) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if (v178==0) then v21.comboMacro= not v21.comboMacro;v177:setOn(v21.comboMacro);v178=612 -(602 + 9) ;end end end;v26.settings.onClick=function(v179) if  not comboInterface:isVisible() then local v462=1189 -(449 + 740) ;while true do if (v462==(872 -(826 + 46))) then comboInterface:show();comboInterface:raise();v462=1;end if (v462==(948 -(245 + 702))) then comboInterface:focus();break;end end else local v463=0 -0 ;while true do if (v463==(0 + 0)) then comboInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end end;comboInterface.closeButton.onClick=function(v180) local v181=1898 -(260 + 1638) ;while true do if (v181==(440 -(382 + 58))) then comboInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;comboInterface.cooldown:setText(v7("\30\138\240","\77\46\231\131"));comboInterface.cooldown.onValueChange=function(v182,v183) if (v183>=(3208 -2208)) then v182:setText((v183/(831 + 169))   .. "s" );else v182:setText(v183   .. v7("\183\71","\32\218\52\214") );end end;comboInterface.distance:setText("0");comboInterface.distance.onValueChange=function(v184,v185) v184:setText(v185);end;comboInterface.sameSpell:setChecked(true);comboInterface.orangeSpell:setEnabled(false);comboInterface.sameSpell.onCheckChange=function(v186,v187) if v187 then comboInterface.orangeSpell:setEnabled(false);else comboInterface.orangeSpell:setEnabled(true);comboInterface.orangeSpell:setText(comboInterface.castSpell:getText());end end;function refreshComboList(v188,v189) if v189 then for v480,v481 in pairs(v188.spellList:getChildren()) do v481:destroy();end for v482,v483 in pairs(comboSpellsWidget) do v483:destroy();end for v484,v485 in ipairs(v189) do local v486=0 -0 ;local v487;local v488;while true do if (v486==5) then if v485.enableTimeSpell then v488:show();else v488:hide();end v487.remove.onClick=function(v696) local v697=0;while true do if (v697==(2 -1)) then v488:destroy();v487:destroy();break;end if (v697==0) then for v764,v765 in ipairs(storageProfiles.comboSpells) do if (v765==v485) then removeTable(storageProfiles.comboSpells,v764);end end scriptFuncs.reindexTable(v189);v697=1206 -(902 + 303) ;end end end;v487.onClick=function(v698) comboInterface.moveDown:show();comboInterface.moveUp:show();end;v486=6;end if (v486==(0 -0)) then v487=setupUI(v24,v188.spellList);v488=setupUI(v25,g_ui.getRootWidget());v488:setText(firstLetterUpper(v485.spellCast));v486=2 -1 ;end if (v486==7) then v487:setTooltip(v7("\218\224\59\146\219\242\46\211\249\249\61\136\183","\178\151\147\92")   .. v485.orangeSpell   .. v7("\204\225\12\28\29\65\127\204\243\77\114\38\73\118\141\167\12","\26\236\157\44\82\114\44")   .. v485.onScreen   .. " " );break;end if ((1 + 5)==v486) then v487.textToSet:setText(firstLetterUpper(v7("\29\78\203\58\149\12\30","\62\87\59\191\73\224\54")   .. v485.spellCast   .. v7("\167\30\186\234\232\13\246\205\232\21\244\147\167","\169\135\98\154")   .. v485.cooldown   .. v7("\139\107\100\112\244\32\220\202\121\39\81\167\115","\168\171\23\68\52\157\83")   .. v485.distance   .. "" ));v487.textToSet:setColor(v7("\227\121\252\185\32","\231\148\17\149\205\69\77"));v487.textToSet:setFont(v7("\150\162\213\255\86\241\129\234\150\170\71\231\205\181\200\238\89\251\133\163","\159\224\199\167\155\55"));v486=1697 -(1121 + 569) ;end if (v486==(218 -(22 + 192))) then v487.showTimespell:setChecked(v485.enableTimeSpell);v487.showTimespell:setTooltip(( not v485.enableTimeSpell and v7("\193\127\125\75\215\74\160\208\120\113\76\155\124\240\225\125\112","\128\132\17\28\41\187\47")) or v7("\37\59\21\59\95\13\55\70\14\84\12\55\70\9\77\4\62\10","\61\97\82\102\90") );v487.showTimespell.onClick=function(v699) local v700=0;while true do if ((685 -(483 + 200))==v700) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if (v700==1) then v487.showTimespell:setTooltip(( not v485.enableTimeSpell and v7("\137\32\170\73\203\82\94\61\165\35\174\11\244\71\27\5\160","\105\204\78\203\43\167\55\126")) or v7("\129\163\48\31\17\8\194\17\145\163\46\27\83\55\215\84\169\166","\49\197\202\67\126\115\100\167") );if v485.enableTimeSpell then v488:show();else v488:hide();end v700=1465 -(1404 + 59) ;end if (v700==(0 -0)) then v485.enableTimeSpell= not v485.enableTimeSpell;v487.showTimespell:setChecked(v485.enableTimeSpell);v700=1;end end end;v486=6 -1 ;end if (v486==(768 -(468 + 297))) then v487.enabled:setChecked(v485.enabled);v487.enabled:setTooltip(( not v485.enabled and v7("\107\25\48\170\253\181\5\105\94\18\61\164","\58\46\119\81\200\145\208\37")) or v7("\15\133\35\173\171\177\51\107\191\32\169\165\177","\86\75\236\80\204\201\221") );v487.enabled.onClick=function(v701) local v702=0;while true do if (v702==0) then v485.enabled= not v485.enabled;v487.enabled:setChecked(v485.enabled);v702=563 -(334 + 228) ;end if (v702==1) then v487.enabled:setTooltip(( not v485.enabled and v7("\87\79\118\135\242\142\50\114\103\128\242\135","\235\18\33\23\229\158")) or v7("\116\179\210\186\82\182\196\251\99\170\196\183\92","\219\48\218\161") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;v486=13 -9 ;end if (v486==1) then attachSpellWidgetCallbacks(v488,v485.index,storageProfiles.comboSpells);if  not v485.widgetPos then v485.widgetPos={x=0,y=50};end v488:setPosition(v485.widgetPos);v486=2;end if (v486==(4 -2)) then comboSpellsWidget[v485.index]=v488;comboSpellsWidget[v485.index]=v488;v487.onDoubleClick=function(v703) local v704=0 -0 ;local v705;while true do if (v704==3) then for v766,v767 in ipairs(storageProfiles.comboSpells) do if (v767==v485) then removeTable(storageProfiles.comboSpells,v766);end end scriptFuncs.reindexTable(v189);v704=4;end if (1==v704) then v188.orangeSpell:setText(v705.orangeSpell);v188.onScreen:setText(v705.onScreen);v704=2;end if (v704==0) then v705=v485;v188.castSpell:setText(v705.spellCast);v704=1;end if (v704==(2 + 2)) then v488:destroy();v487:destroy();break;end if (v704==(238 -(141 + 95))) then v188.cooldown:setValue(v705.cooldown);v188.distance:setValue(v705.distance);v704=3;end end end;v486=3 + 0 ;end end end end end comboInterface.insertSpell.onClick=function(v190) local v191=comboInterface.castSpell:getText():trim():lower();local v192=comboInterface.orangeSpell:getText():trim():lower();local v193=comboInterface.onScreen:getText();v192=((v192:len()==0) and v191) or v192 ;local v194=comboInterface.cooldown:getValue();local v195=comboInterface.distance:getValue();if ( not v191 or (v191:len()==(0 -0))) then return warn(v7("\3\32\195\90\38\39\209\27\25\62\208\87\38\110\251\90\39\43\155","\59\74\78\181"));end if ( not comboInterface.sameSpell:isChecked() and (comboInterface.orangeSpell:getText():len()==0)) then return warn(v7("\12\223\76\91\191\44\213\26\117\161\36\223\93\95\243\22\193\95\86\191\107","\211\69\177\58\58"));end if ( not v193 or (v193:len()==(0 -0))) then return warn(v7("\158\235\111\244\229\194\179\165\77\240\241\223\247\202\119\181\218\200\165\224\124\251","\171\215\133\25\149\137"));end if (v194==0) then return warn(v7("\200\198\36\251\227\57\248\2\194\199\61\246\235\63\235\76\175","\34\129\168\82\154\143\80\156"));end if (v195==(0 + 0)) then return warn(v7("\172\188\37\10\68\71\141\197\150\58\24\92\79\135\134\183","\233\229\210\83\107\40\46"));end local v196={[v7("\200\76\54\211\29","\101\161\34\82\182")]= #storageProfiles.comboSpells + (2 -1) ,[v7("\251\29\92\242\215\193\131\61\252","\78\136\109\57\158\187\130\226")]=v191,[v7("\49\49\202\242\44\58\252\255","\145\94\95\153")]=v193,[v7("\242\223\21\219\73\178\206\221\17\217\66","\215\157\173\116\181\46")]=v192,[v7("\54\187\132\254\222\58\163\133","\186\85\212\235\146")]=v194,[v7("\198\136\5\234\56\224\91\199","\56\162\225\118\158\89\142")]=v195,[v7("\89\11\193\173\46\221\104\12\205\170\17\200\89\9\204","\184\60\101\160\207\66")]=true,[v7("\52\140\125\190\61\135\120","\220\81\226\28")]=true};table.insert(storageProfiles.comboSpells,v196);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);refreshComboList(comboInterface,storageProfiles.comboSpells);comboInterface.castSpell:clearText();comboInterface.orangeSpell:clearText();comboInterface.onScreen:clearText();comboInterface.sameSpell:setChecked(true);comboInterface.orangeSpell:setEnabled(false);comboInterface.cooldown:setValue(0 + 0 );pillsInterface.distance:setValue(0 + 0 );end;refreshComboList(comboInterface,storageProfiles.comboSpells);comboInterface.moveUp.onClick=function() local v197=comboInterface.spellList:getFocusedChild();if  not v197 then return;end local v198=comboInterface.spellList:getChildIndex(v197);if (v198<(2 -0)) then return;end comboInterface.spellList:moveChildToIndex(v197,v198-1 );comboInterface.spellList:ensureChildVisible(v197);storageProfiles.comboSpells[v198].index=v198-(1 + 0) ;storageProfiles.comboSpells[v198-1 ].index=v198;table.sort(storageProfiles.comboSpells,function(v387,v388) return v387.index<v388.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;comboInterface.moveDown.onClick=function() local v201=comboInterface.spellList:getFocusedChild();if  not v201 then return;end local v202=comboInterface.spellList:getChildIndex(v201);if (v202>=comboInterface.spellList:getChildCount()) then return;end comboInterface.spellList:moveChildToIndex(v201,v202 + 1 );comboInterface.spellList:ensureChildVisible(v201);storageProfiles.comboSpells[v202].index=v202 + (164 -(92 + 71)) ;storageProfiles.comboSpells[v202 + 1 + 0 ].index=v202;table.sort(storageProfiles.comboSpells,function(v389,v390) return v389.index<v390.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;comboInterface.findCD.onClick=function(v205) local v206=0 -0 ;while true do if (0==v206) then detectOrangeSpell,testSpell=true,true;spellTime={765 -(574 + 191) ,""};break;end end end;macro(2 -1 ,function() if testSpell then say(comboInterface.castSpell:getText());end end);onTalk(function(v207,v208,v209,v210,v211,v212) if  not detectOrangeSpell then return;end if (player:getName()~=v207) then return;end local v213=((comboInterface.orangeSpell:getText():len()>(0 + 0)) and comboInterface.orangeSpell:getText():lower():trim()) or comboInterface.castSpell:getText():lower():trim() ;if (v210:lower():trim()==v213) then if (spellTime[851 -(254 + 595) ]==v213) then comboInterface.cooldown:setValue(now-spellTime[127 -(55 + 71) ] );spellTime={now,v213};detectOrangeSpell=false;testSpell=false;else spellTime={now,v213};end end end);macro(1 + 0 ,function() local v214=0 -0 ;while true do if (v214==0) then if  not (comboSpellsWidget or storageProfiles.comboSpells) then return;end for v565,v566 in ipairs(storageProfiles.comboSpells) do local v567=comboSpellsWidget[v566.index];if v567 then if ( not v566.cooldownSpells or (v566.cooldownSpells<now)) then v567:setColor(v7("\20\199\135\254\228","\167\115\181\226\155\138"));v567:setText(firstLetterUpper(v566.onScreen)   .. v7("\162\62\167\28\43\98","\166\130\66\135\60\27\17") );else v567:setColor(v7("\86\79\202","\80\36\42\174\21"));v567:setText(firstLetterUpper(v566.onScreen)   .. v7("\14\12\119","\26\46\112\87")   .. formatRemainingTime(v566.cooldownSpells) );end end end break;end end end);fugaIcon.title:setOn(v21.fugaMacro);fugaIcon.title.onClick=function(v215) local v216=0;while true do if ((940 -(714 + 225))==v216) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if (v216==(0 -0)) then v21.fugaMacro= not v21.fugaMacro;v215:setOn(v21.fugaMacro);v216=1 -0 ;end end end;fugaIcon.settings.onClick=function(v217) if  not fugaInterface:isVisible() then local v464=0;while true do if (v464==(0 + 0)) then fugaInterface:show();fugaInterface:raise();v464=1 -0 ;end if (v464==(807 -(118 + 688))) then fugaInterface:focus();break;end end else fugaInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end end;fugaInterface.closeButton.onClick=function(v218) fugaInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;fugaInterface.hppercent:setText(v7("\233\102","\212\217\67\203\20\223\223\37"));fugaInterface.hppercent.onValueChange=function(v219,v220) v219:setText(v220   .. "%" );end;fugaInterface.cooldownTotal:setText(v7("\234\158","\178\218\237\200"));fugaInterface.cooldownTotal.onValueChange=function(v221,v222) local v223=formatTime(v222);v221:setText(v222   .. "s" );end;fugaInterface.cooldownActive:setText(v7("\230\166","\176\214\213\134"));fugaInterface.cooldownActive.onValueChange=function(v224,v225) local v226=48 -(25 + 23) ;local v227;while true do if (v226==(0 + 0)) then v227=formatTime(v225);v224:setText(v225   .. "s" );break;end end end;fugaIcon.showInfos:setChecked(v21.showInfos);fugaIcon.showInfos.onClick=function(v228) local v229=1886 -(927 + 959) ;while true do if (v229==0) then v21.showInfos= not v21.showInfos;v228:setChecked(v21.showInfos);break;end end end;fugaInterface.sameSpell:setChecked(true);fugaInterface.orangeSpell:setEnabled(false);fugaInterface.sameSpell.onCheckChange=function(v230,v231) if v231 then fugaInterface.orangeSpell:setEnabled(false);else local v465=0 -0 ;while true do if (v465==0) then fugaInterface.orangeSpell:setEnabled(true);fugaInterface.orangeSpell:setText(fugaInterface.castSpell:getText());break;end end end end;fugaInterface.lifesValue:hide();fugaInterface.lifesOption.onCheckChange=function(v232,v233) if v233 then fugaInterface.multipleOption:hide();fugaInterface.lifesValue:show();else local v466=0;while true do if ((732 -(16 + 716))==v466) then fugaInterface.multipleOption:show();fugaInterface.lifesValue:hide();break;end end end end;function refreshFugaList(v234,v235) if v235 then for v491,v492 in pairs(v234.spellList:getChildren()) do v492:destroy();end for v493,v494 in pairs(fugaSpellsWidgets) do v494:destroy();end for v495,v496 in ipairs(v235) do local v497=setupUI(v24,v234.spellList);local v498=setupUI(v25,g_ui.getRootWidget());v498:setText(firstLetterUpper(v496.spellCast));attachSpellWidgetCallbacks(v498,v496.index,storageProfiles.fugaSpells);if  not v496.widgetPos then v496.widgetPos={x=0 -0 ,y=147 -(11 + 86) };end if v496.enableTimeSpell then v498:show();else v498:hide();end v498:setPosition(v496.widgetPos);fugaSpellsWidgets[v496.index]=v498;v497.onDoubleClick=function(v568) local v569=0 -0 ;local v570;while true do if (v569==(288 -(175 + 110))) then v498:destroy();v497:destroy();break;end if (v569==2) then v234.cooldownActive:setValue(v570.cooldownActive);for v731,v732 in ipairs(storageProfiles.fugaSpells) do if (v732==v496) then removeTable(storageProfiles.fugaSpells,v731);end end scriptFuncs.reindexTable(v235);v569=6 -3 ;end if (v569==(4 -3)) then v234.onScreen:setText(v570.onScreen);v234.hppercent:setValue(v570.selfHealth);v234.cooldownTotal:setValue(v570.cooldownTotal);v569=2;end if (v569==(1796 -(503 + 1293))) then v570=v496;v234.castSpell:setText(v570.spellCast);v234.orangeSpell:setText(v570.orangeSpell);v569=1;end end end;v497.enabled:setChecked(v496.enabled);v497.enabled:setTooltip(( not v496.enabled and v7("\209\163\183\214\164\83\25\199\189\179\216\164","\57\148\205\214\180\200\54")) or v7("\54\244\38\53\116\30\248\117\7\102\23\241\57","\22\114\157\85\84") );v497.enabled.onClick=function(v571) local v572=0 -0 ;while true do if (v572==0) then v496.enabled= not v496.enabled;v497.enabled:setChecked(v496.enabled);v572=1 + 0 ;end if ((1062 -(810 + 251))==v572) then v497.enabled:setTooltip(( not v496.enabled and v7("\225\197\18\198\81\243\232\247\219\22\200\81","\200\164\171\115\164\61\150")) or v7("\154\253\16\68\129\178\241\67\118\147\187\248\15","\227\222\148\99\37") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;v497.showTimespell:setChecked(v496.enableTimeSpell);v497.showTimespell:setTooltip(( not v496.enableTimeSpell and v7("\22\92\83\244\245\54\18\102\255\244\54\18\97\230\252\63\94","\153\83\50\50\150")) or v7("\121\127\96\29\113\167\72\29\66\122\17\118\235\126\77\115\127\16","\45\61\22\19\124\19\203") );v497.showTimespell.onClick=function(v573) v496.enableTimeSpell= not v496.enableTimeSpell;v497.showTimespell:setChecked(v496.enableTimeSpell);v497.showTimespell:setTooltip(( not v496.enableTimeSpell and v7("\228\28\12\247\14\117\249\245\27\0\240\66\67\169\196\30\1","\217\161\114\109\149\98\16")) or v7("\54\41\43\125\190\120\23\96\12\117\177\113\82\19\40\121\176\120","\20\114\64\88\28\220") );if v496.enableTimeSpell then v498:show();else v498:hide();end scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v497.remove.onClick=function(v575) for v614,v615 in ipairs(storageProfiles.fugaSpells) do if (v615==v496) then removeTable(storageProfiles.fugaSpells,v614);end end scriptFuncs.reindexTable(v235);v498:destroy();v497:destroy();end;v497.onClick=function(v576) local v577=0 + 0 ;while true do if (v577==(0 + 0)) then fugaInterface.moveDown:show();fugaInterface.moveUp:show();break;end end end;v497.textToSet:setText(firstLetterUpper(v496.spellCast));v497.textToSet:setColor(v7("\38\9\219\160\253","\221\81\97\178\212\152\176"));v497.textToSet:setFont(v7("\219\226\15\255\27\195\230\80\170\75\221\255\80\233\21\216\233\25\254\30","\122\173\135\125\155"));v497:setTooltip(v7("\171\211\1\183\56\52\136\169\196\19\170\62\54\205\222\129","\168\228\161\96\217\95\81")   .. v496.orangeSpell   .. v7("\155\205\110\115\33\23\232\210\60\89\42\89\129\145","\55\187\177\78\60\79")   .. v496.onScreen   .. v7("\109\210\31\223\73\219\129\33\142\124\228\73\195\132\34\217\81\177\6","\224\77\174\63\139\38\175")   .. v496.cooldownTotal   .. v7("\151\1\68\110\165\66\76\39\146\68\24\13\139\78\84\42\139\86\86\116\196","\78\228\33\56")   .. v496.cooldownActive   .. v7("\221\62\174\67\173\222\110\183\17\134\203\112\166\89\197","\229\174\30\210\99")   .. v496.selfHealth );end end end fugaInterface.moveUp.onClick=function() local v236=0 + 0 ;local v237;local v238;while true do if (v236==(534 -(43 + 490))) then v238=fugaInterface.spellList:getChildIndex(v237);if (v238<(735 -(711 + 22))) then return;end v236=7 -5 ;end if (v236==(862 -(240 + 619))) then storageProfiles.fugaSpells[v238].index=v238-(1 + 0) ;storageProfiles.fugaSpells[v238-(1 -0) ].index=v238;v236=4;end if (v236==(1 + 3)) then table.sort(storageProfiles.fugaSpells,function(v578,v579) return v578.index<v579.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if (v236==(1746 -(1344 + 400))) then fugaInterface.spellList:moveChildToIndex(v237,v238-1 );fugaInterface.spellList:ensureChildVisible(v237);v236=408 -(255 + 150) ;end if ((0 + 0)==v236) then v237=fugaInterface.spellList:getFocusedChild();if  not v237 then return;end v236=1 + 0 ;end end end;fugaInterface.moveDown.onClick=function() local v239=0;local v240;local v241;while true do if (v239==(16 -12)) then table.sort(storageProfiles.fugaSpells,function(v580,v581) return v580.index<v581.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if (v239==(3 -2)) then v241=fugaInterface.spellList:getChildIndex(v240);if (v241>=fugaInterface.spellList:getChildCount()) then return;end v239=2;end if (v239==(1742 -(404 + 1335))) then storageProfiles.fugaSpells[v241].index=v241 + (407 -(183 + 223)) ;storageProfiles.fugaSpells[v241 + 1 ].index=v241;v239=4;end if (v239==(0 -0)) then v240=fugaInterface.spellList:getFocusedChild();if  not v240 then return;end v239=1 + 0 ;end if (v239==(1 + 1)) then fugaInterface.spellList:moveChildToIndex(v240,v241 + (338 -(10 + 327)) );fugaInterface.spellList:ensureChildVisible(v240);v239=3 + 0 ;end end end;fugaInterface.insertSpell.onClick=function(v242) local v243=fugaInterface.castSpell:getText():trim();local v244=fugaInterface.orangeSpell:getText():trim();local v245=fugaInterface.onScreen:getText();v244=((v244:len()==0) and v243) or v244 ;local v246=fugaInterface.hppercent:getValue();local v247=fugaInterface.cooldownTotal:getValue();local v248=fugaInterface.cooldownActive:getValue();if (v243:len()==(338 -(118 + 220))) then return warn(v7("\50\227\144\80\225\52\61\91\222\150\84\225\49\121\53\236\139\84\163","\89\123\141\230\49\141\93"));end if ( not fugaInterface.sameSpell:isChecked() and (v244:len()==(0 + 0))) then return warn(v7("\218\127\224\13\28\67\247\49\217\30\17\68\244\116\182\63\0\79\255\125\184","\42\147\17\150\108\112"));end if (v245:len()==0) then return warn(v7("\38\168\59\126\235\225\11\230\25\122\255\252\79\137\35\63\212\235\29\163\40\113","\136\111\198\77\31\135"));end if (v246==(449 -(108 + 341))) then return warn(v7("\43\7\177\87\177\237\19\233\42\25\183\83\175\231\18\167\22\71","\201\98\105\199\54\221\132\119"));end if (v247==0) then return warn(v7("\144\2\149\32\14\60\168\249\47\140\46\14\49\163\174\2\195\21\13\33\173\181\66","\204\217\108\227\65\98\85"));end local v249={[v7("\87\205\241\224\52","\160\62\163\149\133\76")]= #storageProfiles.fugaSpells + 1 + 0 ,[v7("\197\176\8\35\207\245\161\30\59","\163\182\192\109\79")]=v243,[v7("\59\52\1\206\242\49\21\16\197\249\56","\149\84\70\96\160")]=v244,[v7("\55\8\62\238\42\3\8\227","\141\88\102\109")]=v245,[v7("\160\86\198\118\50\56\84\205\167\91","\161\211\51\170\16\122\93\53")]=v246,[v7("\248\161\189\36\255\161\165\38\218\173\166\33\237\171","\72\155\206\210")]=v248,[v7("\69\117\91\2\55\73\109\90\58\60\82\123\88","\83\38\26\52\110")]=v247,[v7("\93\25\38\68\84\18\19\79\85\18\20\86\93\27\43","\38\56\119\71")]=true,[v7("\246\225\89\212\41\83\247","\54\147\143\56\182\69")]=true};if fugaInterface.lifesOption:isChecked() then v249.lifes=0 -0 ;v249.enableLifes=true;if (fugaInterface.lifesValue:getValue()==0) then return warn(v7("\255\143\233\72\211\223\133\191\101\214\208\132\191\127\222\218\148\250\7","\191\182\225\159\41"));end v249.amountLifes=fugaInterface.lifesValue:getValue();end if fugaInterface.reviveOption:isChecked() then v249.enableRevive=true;v249.alreadyChecked=false;end if fugaInterface.multipleOption:isChecked() then v249.enableMultiple=true;v249.count=1496 -(711 + 782) ;end table.insert(storageProfiles.fugaSpells,v249);refreshFugaList(fugaInterface,storageProfiles.fugaSpells);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);fugaInterface.castSpell:clearText();fugaInterface.orangeSpell:clearText();fugaInterface.onScreen:clearText();fugaInterface.cooldownTotal:setValue(0);fugaInterface.cooldownActive:setValue(0);fugaInterface.hppercent:setValue(0 -0 );fugaInterface.reviveOption:setChecked(false);fugaInterface.lifesOption:setChecked(false);fugaInterface.multipleOption:setChecked(false);fugaInterface.multipleOption:show();fugaInterface.lifesValue:hide();end;refreshFugaList(fugaInterface,storageProfiles.fugaSpells);storage.widgetPos=storage.widgetPos or {} ;informationWidget={};local v50={v7("\56\26\39\66\191\130\218\63","\162\75\114\72\53\235\231")};for v250,v251 in ipairs(v50) do informationWidget[v251]=setupUI(v25,g_ui.getRootWidget());end local function v51(v253) informationWidget[v253].onDragEnter=function(v391,v392) local v393=0 + 0 ;while true do if (v393==(1819 -(580 + 1239))) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v391:breakAnchors();v393=1;end if (v393==(2 -1)) then v391.movingReference={x=v392.x-v391:getX() ,y=v392.y-v391:getY() };return true;end end end;informationWidget[v253].onDragMove=function(v394,v395,v396) local v397=0;local v398;local v399;local v400;while true do if (v397==(0 + 0)) then v398=v394:getParent():getRect();v399=math.min(math.max(v398.x,v395.x-v394.movingReference.x ),(v398.x + v398.width) -v394:getWidth() );v397=1 + 0 ;end if (v397==(1 + 1)) then return true;end if (v397==(2 -1)) then v400=math.min(math.max(v398.y-v394:getParent():getMarginTop() ,v395.y-v394.movingReference.y ),(v398.y + v398.height) -v394:getHeight() );v394:move(v399,v400);v397=2 + 0 ;end end end;informationWidget[v253].onDragLeave=function(v401,v402) local v403=1167 -(645 + 522) ;while true do if (v403==(1790 -(1010 + 780))) then storage.widgetPos[v253]={};storage.widgetPos[v253].x=v401:getX();v403=1;end if (v403==(1 + 0)) then storage.widgetPos[v253].y=v401:getY();return true;end end end;end for v257,v258 in pairs(informationWidget) do v51(v257);informationWidget[v257]:setPosition(storage.widgetPos[v257] or {0 -0 ,50} );end local v52=informationWidget[v7("\159\52\75\245\103\7\148\40","\98\236\92\36\130\51")];macro(253 -153 ,function() if v21.showInfos then for v509,v510 in ipairs(storageProfiles.fugaSpells) do if v510.selfHealth then v52:show();v52:setText(v7("\141\55\37\151\108\143\154\3\254\89","\80\196\121\108\218\37\200\213")   .. getPlayersAttack(false)   .. v7("\64\111\66\79\110\60\169\37\93\54\37\11","\234\96\19\98\31\43\110")   .. calculatePercentage(v510.selfHealth)   .. "%" );return;end end else v52:hide();end end);macro(1 -0 ,function() if  not (fugaSpellsWidgets and storageProfiles.fugaSpells) then return;end for v404,v405 in ipairs(storageProfiles.fugaSpells) do local v406=fugaSpellsWidgets[v405.index];if v406 then local v511=firstLetterUpper(v405.onScreen);local v512=v7("\1\13\87\194\162","\235\102\127\50\167\204\18");if (v405.activeCooldown and (v405.activeCooldown>now)) then local v616=0;while true do if (v616==(505 -(351 + 154))) then v511=v511   .. v7("\10\225","\78\48\193\149\67\36")   .. formatRemainingTime(v405.activeCooldown) ;v512=v7("\115\78\208\62\103\22\56","\33\80\126\224\120");v616=1;end if (v616==(1575 -(1281 + 293))) then if (v405.enableLifes and (v405.lifes==(266 -(28 + 238)))) then v405.activeCooldown=nil;end break;end end elseif (v405.totalCooldown and (v405.totalCooldown>now)) then local v707=0 -0 ;while true do if (v707==(1559 -(1381 + 178))) then v511=v511   .. v7("\182\232","\60\140\200\99\164")   .. formatRemainingTime(v405.totalCooldown) ;v512=v7("\196\210\34\114\242\211\164","\194\231\148\100\70");break;end end else v511=v511   .. v7("\28\12\145\176","\168\38\44\161\195\150") ;if (v405.enableMultiple and v405.canReset) then v405.count=3;v405.canReset=false;end if v405.enableLifes then v405.lifes=0 + 0 ;end if v405.enableRevive then v405.alreadyChecked=false;end end if (v405.enableMultiple and (v405.count>(0 + 0))) then v511=""   .. v405.count   .. v7("\192\224\194","\118\224\156\226\22\80\136\214")   .. v511 ;end if (v405.enableLifes and (v405.lifes>(0 + 0))) then v511=""   .. v405.lifes   .. v7("\2\242\25","\224\34\142\57")   .. v511 ;end v406:setText(v511);v406:setColor(v512);end end end);keyIcon.title:setOn(v21.keyMacro);keyIcon.title.onClick=function(v259) local v260=0 -0 ;while true do if (v260==1) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if (v260==(0 + 0)) then v21.keyMacro= not v21.keyMacro;v259:setOn(v21.keyMacro);v260=471 -(381 + 89) ;end end end;keyIcon.settings.onClick=function(v261) if  not keyInterface:isVisible() then local v474=0;while true do if (v474==(0 + 0)) then keyInterface:show();keyInterface:raise();v474=1 + 0 ;end if (v474==1) then keyInterface:focus();break;end end else local v475=0 -0 ;while true do if (v475==(1156 -(1074 + 82))) then keyInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end end;keyInterface.closeButton.onClick=function(v262) keyInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;keyInterface.key.onHoverChange=function(v263,v264) if v264 then x=true;onKeyPress(function(v514) if  not x then return;end v263:setText(v514);end);else x=false;end end;function refreshKeyList(v265,v266) if v266 then for v515,v516 in pairs(v265.spellList:getChildren()) do v516:destroy();end for v517,v518 in ipairs(v266) do local v519=0 -0 ;local v520;while true do if (v519==(1784 -(214 + 1570))) then v520=setupUI(v24,v265.spellList);v520.showTimespell:hide();v519=1456 -(990 + 465) ;end if (2==v519) then v520.enabled:setTooltip(( not v518.enabled and v7("\251\169\196\223\127\244\29\61\206\162\201\209","\110\190\199\165\189\19\145\61")) or v7("\254\226\100\233\137\203\223\171\68\248\142\203\214","\167\186\139\23\136\235") );v520.enabled.onClick=function(v708) local v709=0;while true do if (v709==0) then v518.enabled= not v518.enabled;v520.enabled:setChecked(v518.enabled);v709=1;end if (v709==(1 + 0)) then v520.enabled:setTooltip(( not v518.enabled and v7("\63\187\137\15\22\176\200\62\10\176\132\1","\109\122\213\232")) or v7("\202\254\177\49\236\251\167\112\221\231\167\60\226","\80\142\151\194") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;v519=2 + 1 ;end if (v519==1) then v520.onDoubleClick=function(v710) local v711=0 + 0 ;local v712;while true do if (v711==0) then v712=v518;v265.key:setText(v712.keyPress);v711=3 -2 ;end if (v711==(1728 -(1668 + 58))) then scriptFuncs.reindexTable(v266);v520:destroy();break;end if (v711==(627 -(512 + 114))) then v265.castSpell:setText(v712.spellCast);for v768,v769 in ipairs(storageProfiles.keySpells) do if (v769==v518) then removeTable(storageProfiles.keySpells,v768);end end v711=2;end end end;v520.enabled:setChecked(v518.enabled);v519=5 -3 ;end if (v519==(5 -2)) then v520.remove.onClick=function(v713) for v733,v734 in ipairs(storageProfiles.keySpells) do if (v734==v518) then removeTable(storageProfiles.keySpells,v733);end end scriptFuncs.reindexTable(storageProfiles.keySpells);v520:destroy();end;v520.textToSet:setText(firstLetterUpper(v518.spellCast)   .. v7("\67\218\55\103\6\223\45\12","\44\99\166\23")   .. v518.keyPress );break;end end end end end keyInterface.insertKey.onClick=function(v267) local v268=0 -0 ;local v269;local v270;while true do if (v268==(1 + 0)) then if ( not v269 or (v269:len()==(0 + 0))) then return warn(v7("\85\249\63\55\63\173\120\183\2\51\42\234","\196\28\151\73\86\83"));end for v586,v587 in ipairs(storageProfiles.keySpells) do if (v587.keyPress==v269) then return warn(v7("\216\6\48\80\163\84\10\115\242\7\48\80\163\92\28\115\247\77","\22\147\99\73\112\226\56\120"));end end v268=2;end if (v268==0) then v269=keyInterface.key:getText();v270=keyInterface.castSpell:getText():lower():trim();v268=1 + 0 ;end if (v268==(10 -7)) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);keyInterface.key:clearText();v268=1998 -(109 + 1885) ;end if (v268==4) then keyInterface.castSpell:clearText();break;end if (2==v268) then table.insert(storageProfiles.keySpells,{[v7("\177\123\230\240\149","\237\216\21\130\149")]= #storageProfiles.keySpells + (1470 -(1269 + 200)) ,[v7("\145\94\90\83\188\234\95\145\90","\62\226\46\63\63\208\169")]=v270,[v7("\238\28\76\179\13\8\60\77","\62\133\121\53\227\127\109\79")]=v269,[v7("\21\26\51\247\218\171\166","\194\112\116\82\149\182\206")]=true});refreshKeyList(keyInterface,storageProfiles.keySpells);v268=5 -2 ;end end end;refreshKeyList(keyInterface,storageProfiles.keySpells);macro(storage.scrollBars1.macroDelay,function() if  not v26.title:isOn() then return;end if (stopCombo and (stopCombo>=now)) then return;end if (stopToCast() or isAnySelectedKeyPressed() or  not g_game.isAttacking()) then return;end local v271=player:getPosition();local v272=g_game.getAttackingCreature();local v273=v272:getPosition();if  not v273 then return;end local v274=getDistanceBetween(v271,v273);for v407,v408 in ipairs(storageProfiles.comboSpells) do if (v408.enabled and (v274<=v408.distance)) then if ( not v408.cooldownSpells or (v408.cooldownSpells<=now)) then say(v408.spellCast);end end end end);local v58=g_game.getLocalPlayer();macro(1,function() if  not fugaIcon.title:isOn() then return;end if isInPz() then return;end local v275=v58:getHealthPercent();for v409,v410 in ipairs(storageProfiles.fugaSpells) do if (v410.enabled and (v275<=calculatePercentage(v410.selfHealth))) then if ( not v410.totalCooldown or (v410.totalCooldown<=now)) then if  not canCastFuga() then stopCombo=now + (1065 -(98 + 717)) ;forceSay(v410.spellCast);end end end end end);macro(1,function() local v276=826 -(802 + 24) ;while true do if (v276==(0 -0)) then if  not g_mouse.isPressed(8 -1 ) then return;end if  not fugaIcon.title:isOn() then return;end v276=1 + 0 ;end if ((1 + 0)==v276) then for v588,v589 in ipairs(storageProfiles.fugaSpells) do if (v589.enabled and (g_mouse.isPressed(7))) then if ( not v589.totalCooldown or (v589.totalCooldown<=now)) then if  not canCastFuga() then stopCombo=now + 42 + 208 ;return forceSay(v589.spellCast);end end end end break;end end end);macro(storage.scrollBars1.macroDelay,function() if  not keyIcon.title:isOn() then return;end if modules.game_console:isChatEnabled() then return;end for v411,v412 in ipairs(storageProfiles.keySpells) do if (v412.enabled and (modules.corelib.g_keyboard.areKeysPressed(v412.keyPress))) then stopCombo=now + 54 + 196 ;say(v412.spellCast);end end end);onTalk(function(v277,v278,v279,v280,v281,v282) local v283=0;while true do if (v283==(2 -1)) then if (v280==v7("\27\161\70\13\213\162\55\56\161\78\25","\110\89\200\44\120\160\130")) then yaibaSlow=os.time() + (49 -34) ;end for v590,v591 in ipairs(CONFIG.pot) do if (v280==v591.orangeText:lower()) then v591.exhaust=now + v591.cooldown ;end end v283=1 + 1 ;end if ((2 + 1)==v283) then for v592,v593 in ipairs(storageProfiles.fugaSpells) do if (v280==v593.orangeSpell) then if v593.enableLifes then local v735=0 + 0 ;while true do if (0==v735) then v593.activeCooldown=(now + (v593.cooldownActive * (728 + 272))) -(117 + 133) ;v593.totalCooldown=(now + (v593.cooldownTotal * (2433 -(797 + 636)))) -(1213 -963) ;v735=1620 -(1427 + 192) ;end if (v735==1) then v593.lifes=v593.amountLifes;break;end end end if (v593.enableRevive and  not v593.alreadyChecked) then v593.totalCooldown=(now + (v593.cooldownTotal * (347 + 653))) -250 ;v593.activeCooldown=(now + (v593.cooldownActive * (2321 -1321))) -250 ;v593.alreadyChecked=true;end if v593.enableMultiple then if (v593.count>0) then v593.count=v593.count-(1 + 0) ;v593.activeCooldown=(now + (v593.cooldownActive * 1000)) -(114 + 136) ;if (v593.count==(326 -(192 + 134))) then v593.totalCooldown=(now + (v593.cooldownTotal * 1000)) -(1526 -(316 + 960)) ;v593.canReset=true;break;end end end if  not (v593.enableLifes or v593.enableRevive or v593.enableMultiple) then v593.activeCooldown=(now + (v593.cooldownActive * (557 + 443))) -250 ;v593.totalCooldown=(now + (v593.cooldownTotal * (772 + 228))) -(232 + 18) ;break;end end end break;end if (v283==(7 -5)) then for v594,v595 in ipairs(CONFIG.pot2) do if (v280==v595.orangeText:lower()) then v595.exhaust=now + v595.cooldown ;end end for v596,v597 in ipairs(storageProfiles.comboSpells) do if (v280==v597.orangeSpell) then v597.cooldownSpells=now + v597.cooldown ;end end v283=554 -(83 + 468) ;end if (v283==0) then v280=v280:lower();if (v277~=player:getName()) then return;end v283=1807 -(1202 + 604) ;end end end);onTextMessage(function(v284,v285) for v413,v414 in ipairs(storageProfiles.fugaSpells) do if v414.enableLifes then if (v285:lower():find(v7("\166\204\89\84\70\95\123\72\235\209\78\72\66\89\56\72\190","\45\203\163\43\38\35\42\91")) and v414.activeCooldown and (v414.activeCooldown>=now)) then v414.lifes=v414.lifes-1 ;end end end end);onPlayerPositionChange(function(v286,v287) local v288={x=5667 -4453 ,y=1141 -455 ,z=16 -10 };for v415,v416 in ipairs(storageProfiles.fugaSpells) do if (v416.enableRevive and (v416.spellCast==v7("\219\159\221\45\134\174\93","\52\178\229\188\67\231\201"))) then if ((v286.x==v288.x) and (v286.y==v288.y) and (v286.z==v288.z)) then local v618=325 -(45 + 280) ;while true do if (v618==(0 + 0)) then v416.activeCooldown=nil;v416.alreadyChecked=true;break;end end end end end end);UI.Separator();UI.Label(v7("\17\96\121\42\210\112\99\12\96\115\54\216\111","\67\65\33\48\100\151\60")):setFont(v7("\220\238\190\203\252\217\243\136\215\253\203","\147\191\135\206\184"));local v59=v7("\129\48\178\211\217\64","\210\228\72\198\161\184\51");local v60=setupUI([[
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


]]);v60:setId(PanelName);if  not storage[v59] then storage[v59]={};end local v61=storage[v59];PainelsWindow=UI.createWidget(v7("\6\72\250\30\118\194\1\64\253\20\124\217","\174\86\41\147\112\19"),rootWidget);PainelsWindow:hide();extrasWindow=UI.createWindow(v7("\126\24\153\25\36\28\38\162\85\4\130\28","\203\59\96\237\107\69\111\113"),rootWidget);extrasWindow:hide();extrasWindow.closeButton.onClick=function(v289) extrasWindow:hide();end;local v63=extrasWindow.content.right;local v64=extrasWindow.content.left;v60.editMusica.onClick=function(v290) local v291=0 + 0 ;while true do if (v291==1) then extrasWindow:focus();break;end if (v291==(0 + 0)) then extrasWindow:show();extrasWindow:raise();v291=1;end end end;PainelsWindow.closeButton.onClick=function(v292) PainelsWindow:hide();end;v60.editPainel.onClick=function(v293) PainelsWindow:show();PainelsWindow:raise();PainelsWindow:focus();end;local v68={[v7("\39\25\163\237\53\255\192\42\37\169\237\62\161","\183\68\118\204\129\81\144")]=5000,[v7("\30\162\99\247\2\128\2\168\68\225\19\150\29","\226\110\205\16\132\107")]={v7("\225\214\244\202\84\171\197\239\208\1\248\198\236\216\69\228","\33\139\163\128\185")}};onTextMessage(function(v294,v295) v295=v295:lower();for v418,v419 in ipairs(v68.possibleTexts) do filterText=v419:trim():lower();if v295:find(filterText) then v68.cooldownUse=now + v68.cooldownSelo1 ;break;end end end);UI.Separator(v64);CONFIG={[v7("\69\93\3\219\89","\190\55\56\100")]={{[v7("\69\191\57\18\31","\147\54\207\92\126\115\131")]=v7("\15\56\50\61\31\123\10\52\59\120\31\127\25\56\58\115","\30\109\81\85\29\109"),[v7("\252\126\91\186\50\209\235\241","\156\159\17\52\214\86\190")]=18 + 82 }},[v7("\188\234\186\185\160\205\183\169","\220\206\143\221")]={{[v7("\149\109\40\27\212","\178\230\29\77\119\184\172")]=v7("\247\183\0\14\98\184\231\187\13\30\121\253\231\191\30\18\120\246","\152\149\222\106\123\23"),[v7("\222\41\249\79\177\210\49\248","\213\189\70\150\35")]=185 -85 }},[v7("\95\90\96","\104\47\53\20")]={{[v7("\170\72","\111\195\44\225\124\220")]=107,[v7("\215\84\1\125\172\174\236\67\24\103","\203\184\38\96\19\203")]=v7("\48\51\127\68\203\53\51\123\68\218\45\118\107\0","\174\89\19\25\33"),[v7("\44\29\93\66\243\136\28\33","\107\79\114\50\46\151\231")]=400}},[v7("\32\167\188\43\139","\160\89\198\213\73\234\89\215")]={{[v7("\91\97\177\242\201","\165\40\17\212\158")]=v7("\231\208\2\38\51\165\192\9\58\36\228","\70\133\185\104\83"),[v7("\7\74\75\38\205\11\82\74","\169\100\37\36\74")]=14000}},[v7("\16\136\182\2","\48\96\231\194")]={{[v7("\193\94","\227\168\58\110\77\121\184\207")]=11813,[v7("\116\46\190\78\182\222\69\160\99\40","\197\27\92\223\32\209\187\17")]=v7("\10\31\197\254\6\83\131\249\6\75\215\254\17\30","\155\99\63\163"),[v7("\129\222\174\129\189\139\149\223","\228\226\177\193\237\217")]=400}}};os=os or modules.os ;local v69=player:getName();function OutfitCheck() return player:getOutfit().type==tonumber(OutfitBijuu) ;end onTalk(function(v296,v297,v297,v298) if (v296==player:getName()) then if (v298==v7("\22\185\41\243\33\240\26\231\61\178\34","\134\84\208\67")) then yaibaSlow=os.time() + (1787 -(1733 + 39)) ;end end end);macro(2 -1 ,function() local v299=1034 -(125 + 909) ;while true do if (v299==(1949 -(1096 + 852))) then if (player:getOutfit().type==(136 + 166)) then say(v7("\17\165\140\73\6\236\159\93\26\174\135","\60\115\204\230"));end break;end if (v299==(0 -0)) then if isInPz() then return;end if (yaibaSlow and (yaibaSlow>=os.time())) then return;end v299=1 + 0 ;end end end);onTalk(function(v300,v301,v302,v303,v304,v305) local v306=512 -(409 + 103) ;while true do if (v306==0) then if (v300~=player:getName()) then return;end if ((v303:lower()==id) and (storage.time.t<now)) then storage.time.t=now + tempo1 ;end break;end end end,v64);macro(100,function() for v420,v421 in ipairs(getSpectators(posz())) do if v421:isPlayer() then if (v421==player) then player:setMarked(v7("\229\54\234\115\236","\16\135\90\139"));elseif v421:isPartyMember() then v421:setMarked(v7("\77\113\10\63\65\67","\24\52\20\102\83\46\52"));elseif (v421:getEmblem()~=1) then v421:setMarked(v7("\214\42\37","\111\164\79\65\68"));end end end end);UI.Separator();UI.Label(v7("\245\220\143\223\60\170\228\208\137\203\59\176","\138\166\185\227\190\78"),v64):setFont(v7("\200\125\213\36\93\37\13\237\123\203\35","\121\171\20\165\87\50\67"));local v59=v7("\245\61\181\55\171","\98\166\88\217\86\217");local v60=setupUI([[
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

]],v64);v60:setId(v59);if  not storage[v59] then storage[v59]={[v7("\255\242","\188\150\150\25\97\230")]=3155,[v7("\206\128\75\14\9","\141\186\233\63\98\108")]=enabled,[v7("\244\228\45\180\41\244\238","\69\145\138\76\214")]=false,[v7("\99\202\157\157\182\24\119","\118\16\175\233\233\223")]=true,[v7("\131\148","\29\235\228\85\219\142\235")]=256 -(46 + 190) };end v60.title:setOn(storage[v59].enabled);v60.title.onClick=function(v307) storage[v59].enabled= not storage[v59].enabled;v307:setOn(storage[v59].enabled);end;local v71=function() local v309=95 -(51 + 44) ;local v310;while true do if (v309==(1 + 0)) then v60.help:setText(v7("\21\67\156","\109\92\37\188\212\154\29")   .. v310   .. v7("\68\199\148\159","\58\100\143\196\163\81")   .. storage[v59].hp   .. "%" );break;end if (v309==(1317 -(1114 + 203))) then v310=nil;if storage[v59].setting then v310=v7("\9\213\168\218\114\90","\50\93\180\218\189\23\46\71");else v310=v7("\251\170\94\65\93","\40\190\196\59\44\36\188");end v309=727 -(228 + 498) ;end end end;v71();v60.HP.onValueChange=function(v311,v312) storage[v59].hp=v312;v71();end;v60.item:setItemId(storage[v59].id);v60.item.onItemChange=function(v314) storage[v59].id=v314:getItemId();end;v60.HP:setValue(storage[v59].hp);macro(1 + 0 ,function() if  not storage[v59].enabled then return;end if storage[v59].setting then if (g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<storage[v59].hp)) then say(v7("\49\71\40\168\62\64\165\61\18\75\43\172\42\9\195\27\15\72\42\173","\110\122\34\67\195\95\41\133"));say(v7("\94\180\80\65\215\124\241\104\66\223\125\190\78\10\240\96\164\81\67\216","\182\21\209\59\42"));say(v7("\156\82\206\22\32\183\247\100\205\20\41\177\162\23\227\8\52\180\190\89","\222\215\55\165\125\65"));end end end);UI.Label(v7("\24\248\235\63\178\242\221\111\0\253\245\64","\42\76\177\166\122\146\161\141"),v63):setFont(v7("\166\131\21\221\118\112\177\172\10\192\109","\22\197\234\101\174\25"));setDefaultTab(v7("\0\53\172\210","\230\77\84\197\188\22\207\183"));timeSpellPanelName=v7("\237\29\203\249\159\177\245\57\245\22\201\232","\85\153\116\166\156\236\193\144");local v60=setupUI([[
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
      
]],g_ui.getRootWidget());v74:hide();local v8=modules.game_bot.contentsPanel.config:getCurrentOption().text;TimeSpellConfig={[v7("\183\240\72\191\232\19","\96\196\128\45\211\132")]={}};local v75={};local v76=v7("\122\143\116\75\157","\184\85\237\27\63\178\207\212")   .. v8   .. "/"   .. name()   .. v7("\55\109\0\82\13\106\25\90\4\85\71\85\27\86\7","\63\104\57\105") ;local v77=v74.MainPanel;local v78=nil;local v79=nil;if g_resources.fileExists(v76) then local v423,v424=pcall(function() return json.decode(g_resources.readFileContents(v76));end);if  not v423 then return onError(v7("\46\149\182\75\25\199\168\75\10\131\173\74\12\199\162\77\7\130\228\12","\36\107\231\196")   .. v76   .. v7("\20\251\226\179\82\245\164\142\69\245\182\143\88\245\178\149\82\183\174\130\80\249\226\131\88\185\167\147\88\245\150\142\80\176\145\151\88\185\174\201\87\166\173\137\19\245\134\130\73\180\171\139\78\239","\231\61\213\194")   .. v424 );end TimeSpellConfig=v424;if (type(TimeSpellConfig.spells)~=v7("\29\172\63\127\12","\19\105\205\93")) then TimeSpellConfig.spells={};end for v476,v477 in pairs(TimeSpellConfig.spells) do if ((v477.totalCd-now)>v477.totalTime) then local v598=0 + 0 ;while true do if ((663 -(174 + 489))==v598) then TimeSpellConfig.spells[v476].totalCd=0 -0 ;TimeSpellConfig.spells[v476].activeCd=1905 -(830 + 1075) ;break;end end end end end function timeSpellConfigSave() local v316=0;local v317;local v318;local v319;while true do if (v316==2) then g_resources.writeFileContents(v76,v319);break;end if (v316==(525 -(303 + 221))) then if  not v318 then return onError(v7("\140\26\204\142\45\233\27\223\151\54\167\15\158\130\48\167\14\215\134\42\187\9\202\136\48\167\70\158\165\58\189\9\215\141\44\243\72","\95\201\104\190\225")   .. v319 );end if (v319:len()>((1369 -(231 + 1038)) * (854 + 170) * (2186 -(171 + 991)))) then return onError(v7("\140\196\207\200\166\204\212\220\174\223\200\193\161\139\199\199\163\206\129\193\185\206\211\142\254\155\145\227\141\139\214\199\163\199\129\192\160\223\129\204\170\139\210\207\185\206\197\128","\174\207\171\161"));end v316=8 -6 ;end if (v316==(0 -0)) then v317=v76;v318,v319=pcall(function() return json.encode(TimeSpellConfig,4 -2 );end);v316=1 + 0 ;end end end v60.title:setOn(TimeSpellConfig.enabled);v60.title.onClick=function(v320) local v321=0;while true do if (v321==(3 -2)) then timeSpellConfigSave();if  not TimeSpellConfig.enabled then for v655,v656 in pairs(v75) do if (v656~=nil) then local v743=0 -0 ;while true do if (v743==(0 -0)) then v75[v655]:destroy();v75[v655]=nil;break;end end end end end break;end if ((0 -0)==v321) then TimeSpellConfig.enabled= not TimeSpellConfig.enabled;v320:setOn(TimeSpellConfig.enabled);v321=1;end end end;v60.settings.onClick=function(v322) local v323=0;while true do if (v323==(1248 -(111 + 1137))) then v74:show();v74:raise();v323=1;end if (v323==(159 -(91 + 67))) then v74:focus();break;end end end;v74.closeButton.onClick=function(v324) v74:hide();timeSpellConfigSave();end;local v82=function(v325) local v326=0;while true do if (0==v326) then v75[v325]:destroy();v75[v325]=nil;break;end end end;local v83=function() if TimeSpellConfig.spells then for v525,v526 in pairs(v77.spellList:getChildren()) do v526:destroy();end for v527,v528 in pairs(TimeSpellConfig.spells) do local v529=UI.createWidget(v7("\222\238\8\255\244\242\227\234\31\234","\183\141\158\109\147\152"),v77.spellList);v529.onDoubleClick=function(v599) local v600=v528;TimeSpellConfig.spells[v528.spell]=nil;reindexTable(TimeSpellConfig.spells);if (v75[v600.spell]~=nil) then local v657=0;while true do if (v657==(0 -0)) then v75[v600.spell]:destroy();v75[v600.spell]=nil;break;end end end v77.spellName:setText(v600.spell);v77.onScreen:setText(v600.onScreen);v77.activeTime:setText(v600.activeTime);v77.totalTime:setText(v600.totalTime);v77.posX:setText(v600.x);v77.posY:setText(v600.y);v529:destroy();end;v529.enabled:setChecked(v528.enabled);v529.enabled.onClick=function(v602) local v603=0;while true do if ((0 + 0)==v603) then v528.enabled= not v528.enabled;v529.enabled:setChecked(v528.enabled);break;end end end;v529.remove.onClick=function(v604) local v605=523 -(423 + 100) ;while true do if (v605==(0 + 0)) then TimeSpellConfig.spells[v528.spell]=nil;v82(v528.spell);v605=2 -1 ;end if ((1 + 0)==v605) then reindexTable(TimeSpellConfig.spells);v529:destroy();break;end end end;v529:setText("["   .. v528.onScreen   .. v7("\17\83\166\47\35\6\234\8\35\30\232\86\108","\108\76\105\134")   .. (v528.totalTime/(1771 -(326 + 445)))   .. "s" );end end end;v83();v77.addSpell.onClick=function(v327) local v328=0 -0 ;local v329;local v330;local v331;local v332;local v333;local v334;while true do if (v328==3) then if (v329:len()==0) then return warn(v7("\201\47\8\23\58\48\248\42\9\72\73\5\243\50\0\0\73\33\189\48\4\30\0\36\189\53\21\23\5\44\179","\64\157\70\101\114\105"));end if (v330:len()==(0 -0)) then return warn(v7("\116\161\170\230\35\80\173\171\239\74\0\152\178\247\80\65\232\169\226\29\69\232\168\237\80\111\166\148\224\2\69\173\169\173","\112\32\200\199\131"));end TimeSpellConfig.spells[v329]={[v7("\37\94\88\189\219","\66\76\48\60\216\163\203")]= #TimeSpellConfig.spells + (2 -1) ,[v7("\169\150\124\255\83","\68\218\230\25\147\63\174")]=v329,[v7("\162\36\96\79\164\168\47\93","\214\205\74\51\44")]=v330,[v7("\251\79\246\245\97\255\120\235\241\114","\23\154\44\130\156")]=v331,[v7("\16\165\185\167\32\22\50\162","\115\113\198\205\206\86")]=0,[v7("\144\88\234\91\136\99\247\87\129","\58\228\55\158")]=v332,[v7("\160\134\196\47\48\142\49","\85\212\233\176\78\92\205")]=711 -(530 + 181) ,x=v333,y=v334,[v7("\79\86\137\224\70\93\140","\130\42\56\232")]=true};v328=885 -(614 + 267) ;end if (v328==6) then v83();break;end if (v328==1) then v332=tonumber(v77.totalTime:getText());v333=tonumber(v77.posX:getText()) or (32 -(19 + 13)) ;v334=tonumber(v77.posY:getText()) or (62 -23) ;v328=4 -2 ;end if (v328==(0 -0)) then v329=v77.spellName:getText():trim():lower();v330=v77.onScreen:getText():trim();v331=tonumber(v77.activeTime:getText()) or 0 ;v328=1 + 0 ;end if (v328==(3 -1)) then if  not v332 then return warn(v7("\223\204\188\228\253\251\192\189\237\148\171\224\191\245\203\249\133\176\161\216\234\201\184\229\142\232\202\190\237\202\228\210\191\175","\174\139\165\209\129"));end if  not v333 then return warn(v7("\151\186\239\196\245\19\117\116\175\233\162\228\200\23\117\106\227\178\162\215\199\15\121\124\227\138\162\209\201\16\121\108\170\188\236\143","\24\195\211\130\161\166\99\16"));end if  not v334 then return warn(v7("\114\10\228\41\96\6\67\15\229\118\19\51\72\23\236\62\19\23\6\21\232\32\90\18\6\58\169\60\92\5\79\23\224\35\93\88","\118\38\99\137\76\51"));end v328=6 -3 ;end if (v328==(1817 -(1293 + 519))) then v77.totalTime:setText("");v77.posX:setText("");v77.posY:setText("");v328=11 -5 ;end if (v328==(9 -5)) then v77.spellName:setText("");v77.onScreen:setText("");v77.activeTime:setText("");v328=5;end end end;local v85=v7("\128\128\13\212\73\59\237\176\48\137\0\127\232\180\39\232\71\45\229\160\42\231\13\60\229\185\43\241\26\127\232\185\37\224\75\85\170\245\34\236\78\43\176\245\50\230\82\59\235\187\37\174\17\110\250\173\105\241\79\42\228\177\33\231\42\127\170\186\52\226\67\54\254\172\126\163\16\113\189\229\78\163\0\47\235\177\32\234\78\56\176\245\116\163\24\85\170\245\34\236\67\42\249\180\38\239\69\101\170\161\54\246\69\85\170\245\52\235\65\49\254\186\41\185\0\57\235\185\55\230\42\127\170\177\54\226\71\56\235\183\40\230\26\127\254\167\49\230\42\127\170\161\33\251\84\114\235\160\48\236\13\45\239\166\45\249\69\101\170\161\54\246\69\85","\95\138\213\68\131\32");local function v86(v335) local v336=0;local v337;local v338;while true do if (v336==(0 -0)) then v337=(v335-now)/(4312 -3312) ;v338="";v336=2 -1 ;end if (v336==(1 + 0)) then v338=string.format(v7("\111\102\241\69","\22\74\72\193\35"),(v335-now)/1000 )   .. "s" ;return v338;end end end local function v51(v339) v75[v339].onDragEnter=function(v425,v426) local v427=0 + 0 ;while true do if (v427==(2 -1)) then v425.movingReference={x=v426.x-v425:getX() ,y=v426.y-v425:getY() };return true;end if ((0 + 0)==v427) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v425:breakAnchors();v427=1;end end end;v75[v339].onDragMove=function(v428,v429,v430) local v431=v428:getParent():getRect();local v432=math.min(math.max(v431.x,v429.x-v428.movingReference.x ),(v431.x + v431.width) -v428:getWidth() );local v433=math.min(math.max(v431.y-v428:getParent():getMarginTop() ,v429.y-v428.movingReference.y ),(v431.y + v431.height) -v428:getHeight() );v428:move(v432,v433);return true;end;v75[v339].onDragLeave=function(v434,v435) local v436=0;while true do if (v436==(0 + 0)) then TimeSpellConfig.spells[v339].x=v434:getX();TimeSpellConfig.spells[v339].y=v434:getY();v436=1 + 0 ;end if (v436==(1097 -(709 + 387))) then timeSpellConfigSave();return true;end end end;end local v87=macro(100,function() if  not v60.title:isOn() then return;end for v437,v438 in pairs(TimeSpellConfig.spells) do if ( not v438.enabled and (v75[v438.spell]~=nil)) then local v534=1858 -(673 + 1185) ;while true do if (v534==(0 -0)) then v75[v438.spell]:destroy();v75[v438.spell]=nil;break;end end elseif v438.enabled then if (v75[v438.spell]==nil) then v75[v438.spell]=setupUI(v85,g_ui.getRootWidget());v75[v438.spell]:setPosition({x=v438.x,y=v438.y});v51(v438.spell);end if ( not v438.totalCd or (v438.totalCd<now)) then v75[v438.spell]:setText(v438.onScreen   .. v7("\118\57\180\75","\56\76\25\132") );v75[v438.spell]:setColor(v7("\89\211\174\35\193","\175\62\161\203\70"));elseif (v438.activeCd>=now) then local v752=0 -0 ;local v753;while true do if (v752==(0 -0)) then v75[v438.spell]:setColor(v7("\127\141\147\53\19\26\251","\85\92\189\163\115"));v753=v86(v438.activeCd);v752=1;end if ((1 + 0)==v752) then v75[v438.spell]:setText(v438.onScreen   .. v7("\115\236","\88\73\204\80")   .. v753 );break;end end else v75[v438.spell]:setColor(v7("\109\165\54\18\121\142\126","\186\78\227\112\38\73"));local v754=v86(v438.totalCd);v75[v438.spell]:setText(v438.onScreen   .. v7("\166\23","\26\156\55\157\53\51")   .. v754 );end end end end);onTalk(function(v343,v344,v345,v346,v347,v348) local v349=0;while true do if (v349==(1 + 0)) then if (TimeSpellConfig.spells[v346]==nil) then return;end if (TimeSpellConfig.spells[v346].activeTime>(0 -0)) then TimeSpellConfig.spells[v346].activeCd=now + TimeSpellConfig.spells[v346].activeTime ;end v349=1 + 1 ;end if (v349==(0 -0)) then if (v343~=player:getName()) then return;end v346=v346:lower();v349=1;end if (v349==(3 -1)) then TimeSpellConfig.spells[v346].totalCd=now + TimeSpellConfig.spells[v346].totalTime ;timeSpellConfigSave();break;end end end);local v24=[[
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
]];local v8=modules.game_bot.contentsPanel.config:getCurrentOption().text;rootWidget=g_ui.getRootWidget();if rootWidget then local v439=0;while true do if ((1880 -(446 + 1434))==v439) then PainelsWindow=UI.createWidget(v7("\188\217\31\215\189\92\187\209\24\221\183\71","\48\236\184\118\185\216"),rootWidget);PainelsWindow:hide();v439=1284 -(1040 + 243) ;end if (v439==(5 -3)) then for v621=1,1848 -(559 + 1288)  do hpPanel4=g_ui.createWidget(v7("\237\173\103\49\193\49\233","\84\133\221\55\80\175"));cmbPanel2=g_ui.createWidget(v7("\190\215\37\168\194\80","\60\221\135\68\198\167"));hpPanel=g_ui.createWidget(v7("\230\173\200\130\76\220\226","\185\142\221\152\227\34"));hpPanel2=g_ui.createWidget(v7("\80\213\103\251\77\54\251","\151\56\165\55\154\35\83"));hpPanel3=g_ui.createWidget(v7("\168\83\53\239\174\70\9","\142\192\35\101"));TabBar:addTab(v7("\244\96\47\165","\118\182\21\73\195\135\236\204"),hpPanel4);color=UI.Label(v7("\45\48\62\69\18\47\242\26\59\31\83","\157\104\92\122\32\100\109"),hpPanel4);color:setColor(v7("\172\180\206\196\58\34","\203\195\198\175\170\93\71\237"));UI.Separator(hpPanel4);color=UI.Label(v7("\12\94\56\211\66\75","\156\78\43\94\181\49\113"),hpPanel4);color:setColor(v7("\96\237\192","\25\18\136\164\195\107\35"));function warning() end local v622=1931 -(609 + 1322) ;local v623=0;local v624=false;local function v625(v659) local v660=454 -(13 + 441) ;while true do if (v660==(0 -0)) then v622=now;v623=v659;v660=2 -1 ;end if (v660==1) then v624=true;selado=true;break;end end end local function v626() v624=false;selado=false;end onTextMessage(function(v661,v662) local v663=0 -0 ;local v664;while true do if (v663==(0 + 0)) then v664=v662:lower():match(v7("\251\40\188\15\120\169\213\171\253\109\175\64\123\252\210\189\228\44\173\64\50\172\206\170\168\101\236\75\57\245\129\171\237\42\188\65\118\179\210","\216\136\77\201\47\18\220\161"));if v664 then local v775=tonumber(v664);if v775 then v625(v775);end end break;end end end);macro(363 -263 ,function() if v624 then local v744=0;local v745;while true do if (v744==0) then v745=(now-v622)/(356 + 644) ;if (v745>=v623) then v626();end break;end end end end);local v627=storage.kekkeiBuff;local v628=storage.Buff;local v629=tonumber(storage.kekkeiMedicine);local v630=tonumber(storage.buffMedicine);buff=macro(439 + 561 ,v7("\47\249\45\220","\226\77\140\75\186\104\188"),function() local v665=0 -0 ;while true do if (v665==0) then if ((player:getSkillLevel(2 + 1 )<=v629) and  not isInProtectionZone() and  not selado) then say(v627);end schedule(1839 -839 ,function() if ((player:getSkillLevel(3)<=v630) and  not isInProtectionZone() and  not selado) then say(v628);end end);break;end end end,hpPanel4);addIcon(v7("\187\219\214\57","\47\217\174\176\95"),{[v7("\177\201\115\15","\70\216\189\22\98\210\52\24")]=7157 + 3668 ,[v7("\206\218\187\147","\179\186\191\195\231")]=v7("\219\10\62\194","\132\153\95\120")},buff);addTextEdit(v7("\151\189\2\33\248\205\144\189\179\23\40\229","\192\209\210\110\77\151\186"),storage.kekkeiBuff or v7("\235\6\41\226\250\205\160\4\39\231\244\197\233","\164\128\99\66\137\159") ,function(v666,v667) storage.kekkeiBuff=v667;end,hpPanel4);labelBuff=UI.Label(v7("\34\156\239\184","\222\96\233\137"),hpPanel4);addTextEdit(v7("\159\188\171\19\135\228\192\181\178\190\26\154","\144\217\211\199\127\232\147"),storage.Buff or v7("\218\58\56\46","\36\152\79\94\72\181\37\98") ,function(v669,v670) storage.Buff=v670;end,hpPanel4);labelBuff=UI.Label(v7("\250\221\67\54\212\209\73\58\228\211\78\51\219\152\84\58\218\152\76\58\220\211\66\54","\95\183\184\39"),hpPanel4);addTextEdit(v7("\147\48\235\42\91\151\50\185\62\254\35\70","\98\213\95\135\70\52\224"),storage.kekkeiMedicine or (0 + 0) ,function(v672,v673) storage.kekkeiMedicine=v673;end,hpPanel4);labelBuff=UI.Label(v7("\211\166\205\126\87\247\173\204\68\95\247\175\197\55\87\241\174\137\124\81\245\168\204\126","\52\158\195\169\23"),hpPanel4);addTextEdit(v7("\92\179\62\120\137\34\75\135\123\165\55\102","\235\26\220\82\20\230\85\27"),storage.buffMedicine or (0 + 0) ,function(v675,v676) storage.buffMedicine=v676;end,hpPanel4);TabBar:addTab(v7("\171\180\251\195\103","\20\232\193\137\162"),hpPanel);color=UI.Label(v7("\7\211\225\163\241\174\24\99\37\218\214","\17\66\191\165\198\135\236\119"),hpPanel);color:setColor(v7("\0\189\175\29\248\237","\177\111\207\206\115\159\136\140"));UI.Separator(hpPanel);UI.Label(v7("\44\173\80\54\253\101\106\48\211","\63\101\233\112\116\180\47"),hpPanel):setFont(v7("\192\50\253\1\247\48\215\29\226\28\236","\86\163\91\141\114\152"));addTextEdit(v7("\92\30\96\117\51\71\41\125\121\47\70","\90\51\107\20\19"),storage.outfitBijuu or v7("\222\160\215","\93\237\144\229\143") ,function(v678,v679) storage.outfitBijuu=tonumber(v679);end,hpPanel);big=macro(1 + 0 ,v7("\23\255\247\89\25\67\18\243\254\28\25\71\1\255\255\23","\38\117\150\144\121\107"),function() if (player:getOutfit().type==storage.outfitBijuu) then return;end if (hppercent()>=100) then return;end for v719,v720 in ipairs(CONFIG.regen) do if ( not v720.exhaust or (v720.exhaust<=now)) then say(v720.spell);end end end,hpPanel);TabBar:addTab(v7("\14\180\252\40\40\169","\90\77\219\142"),hpPanel3);UI.Label(v7("\197\43\19\11\105\53\32","\26\134\100\65\89\44\103"),hpPanel3):setFont(v7("\242\234\32\48\171\247\247\22\44\170\229","\196\145\131\80\67"));addTextEdit(v7("\22\177\21\28\29\219\14\181\10\4","\136\126\208\102\104\120"),storage.hasteSpell or v7("\123\133\192\64\170\92\41\67\121\158\203\3\172\90\60\90\106\139\142\69\170\87\41","\49\24\234\174\35\207\50\93") ,function(v681,v682) storage.hasteSpell=v682;end,hpPanel3);macro(1 + 0 ,v7("\47\253\239\154\116\30","\17\108\146\157\232"),function() if (getPlayersAttack()>=(434 -(153 + 280))) then return;end delay(1000);local v684=storage.sealedTypes and storage.sealedTypes.speed and (storage.sealedTypes.speed>=os.time()) ;if ( not v684 and  not hasHaste()) then say(storage.hasteSpell);end end,hpPanel3);local v631={};local function v632(v685,v686) local v687=g_game.getLocalPlayer();if  not v687 then local v746=0 -0 ;while true do if ((0 + 0)==v746) then warn("Jogador não encontrado.");return false;end end end local v688=v687:getPosition();v688.x=v688.x + v685 ;v688.y=v688.y + v686 ;local v691=g_map.getTile(v688);if v691 then return g_game.use(v691:getTopUseThing());else return false;end end local v633=modules.game_console;bugmap=macro(1 + 0 ,v7("\105\214\19\173\2\169\91","\200\43\163\116\141\79"),function() if (modules.corelib.g_keyboard.isKeyPressed("w") and  not v633:isChatEnabled()) then v632(0 + 0 , -(5 + 0));elseif (modules.corelib.g_keyboard.isKeyPressed("e") and  not v633:isChatEnabled()) then v632(3 + 0 , -3);elseif (modules.corelib.g_keyboard.isKeyPressed("d") and  not v633:isChatEnabled()) then v632(5,0 -0 );elseif (modules.corelib.g_keyboard.isKeyPressed("c") and  not v633:isChatEnabled()) then v632(2 + 1 ,670 -(89 + 578) );elseif (modules.corelib.g_keyboard.isKeyPressed("s") and  not v633:isChatEnabled()) then v632(0,4 + 1 );elseif (modules.corelib.g_keyboard.isKeyPressed("z") and  not v633:isChatEnabled()) then v632( -3,3);elseif (modules.corelib.g_keyboard.isKeyPressed("a") and  not v633:isChatEnabled()) then v632( -5,0 -0 );elseif (modules.corelib.g_keyboard.isKeyPressed("q") and  not v633:isChatEnabled()) then v632( -(1052 -(572 + 477)), -(1 + 2));end end,hpPanel3);bugmap=addIcon(v7("\157\35\58\195\157\245\243","\131\223\86\93\227\208\148"),{[v7("\234\81\179\187","\213\131\37\214\214\125")]=10610,[v7("\50\46\61\171","\129\70\75\69\223")]=v7("\100\222\244\169\81\238\86","\143\38\171\147\137\28")},bugmap);v631.checkBox=setupUI(v7("\186\161\177\246\0\232\246\223\154\211\179\67\234\208\138\194\186\251\6\224\223\242\141\161\153\67\163\210\223\140\173\169\67\224\221\192\145\182\245\23\197\219\222\150\211\179\67\247\209\200\150\227\179\39\234\213\215\141\183\242\15\163\251\254\221\211","\180\176\226\217\147\99\131"),hpPanel3);v631.checkBox.onCheckChange=function(v692,v693) storage.bugMapCheck=v693;end;if (storage.bugMapCheck==nil) then storage.bugMapCheck=true;end v631.checkBox:setChecked(storage.bugMapCheck);v631.directions={W={x=0,y= -5,[v7("\215\176\61\2\208\173\38\8\221","\103\179\217\79")]=0 + 0 },E={x=4,y= -(1 + 3)},D={x=91 -(84 + 2) ,y=0 -0 ,[v7("\78\190\14\208\66\152\170\69\185","\195\42\215\124\181\33\236")]=1},C={x=4,y=3 + 1 },S={x=842 -(497 + 345) ,y=1 + 4 ,[v7("\9\80\37\59\38\236\4\86\57","\152\109\57\87\94\69")]=1 + 1 },Z={x= -4,y=4},A={x= -(1338 -(605 + 728)),y=0,[v7("\253\222\24\166\189\198\93\167\247","\200\153\183\106\195\222\178\52")]=3 + 0 },Q={x= -(8 -4),y= -4}};v631.isKeyPressed=modules.corelib.g_keyboard.isKeyPressed;end break;end if (v439==(1 + 0)) then TabBar=PainelsWindow.paTabBar;TabBar:setContentWidget(PainelsWindow.paImagem);v439=7 -5 ;end end end PainelsWindow.closeButton.onClick=function(v350) PainelsWindow:hide();end;
