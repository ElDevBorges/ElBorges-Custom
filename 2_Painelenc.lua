
local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v87,v88) local v89={};for v345=1, #v87 do v6(v89,v0(v4(v1(v2(v87,v345,v345 + 1 )),v1(v2(v88,(2 -1) + (v345% #v88) ,(167 -(122 + 44)) + (v345% #v88) + (1 -0) )))%256 ));end return v5(v89);end local v8=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v8=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v9=g_resources.listDirectoryFiles(v7("\158\193\212\49\169","\126\177\163\187\69\134\219\167")   .. v8   .. v7("\108\219\8\202\232","\156\67\173\74\165") ,true,false);for v90,v91 in ipairs(v9) do local v92=0 -0 ;local v93;while true do if (v92==(0 + 0)) then v93=v91:split(".");if ((v93[ #v93]:lower()==v7("\33\190","\38\84\215\41\118\220\70")) or (v93[ #v93]:lower()==v7("\95\2\55\27","\158\48\118\66\114"))) then g_ui.importStyle(v91);end break;end end end local function v10(v94) return dofile(v7("\228\33\28\50\118\179\249\164\54\23\51\96\234","\155\203\68\112\86\19\197")   .. v94   .. v7("\8\209\35\253","\152\38\189\86\156\32\24\133") );end local v11={v7("\234\91\174\68","\38\156\55\199"),v7("\187\109\101\49\44\120\255\85\173\113","\35\200\29\28\72\115\20\154"),v7("\26\176\223\217\132\43\39","\84\121\223\177\191\237\76")};for v95,v96 in ipairs(v11) do v10(v96);end scriptFuncs={};comboSpellsWidget={};fugaSpellsWidgets={};scriptFuncs.readProfile=function(v97,v98) if g_resources.fileExists(v97) then local v434=0 + 0 ;local v435;local v436;while true do if (v434==1) then v98(v436);break;end if (v434==0) then v435,v436=pcall(function() return json.decode(g_resources.readFileContents(v97));end);if  not v435 then return onError(v7("\158\68\219\175\122\83\49\211\169\83\206\161\52\84\63\129\186\68\216\181\51\70\63\129\243","\161\219\54\169\192\90\48\80")   .. v97   .. v7("\0\12\64\21\72\80\1\101\74\77\14\54\76\80\20\36\91\2\15\101\89\80\15\39\69\71\13\36\5\2\5\61\74\78\21\36\9\77\64\36\91\83\21\44\95\77\78\101\109\71\20\36\69\74\5\54\19\2","\69\41\34\96")   .. v436 );end v434=1;end end end end;scriptFuncs.saveProfile=function(v99,v100) local v101,v102=pcall(function() return json.encode(v100,2);end);if  not v101 then return onError("Erro salvando configuração. Detalhes: "   .. v102 );end if (v102:len()>((1357 -(1043 + 214)) * (3871 -2847) * (2236 -(323 + 889)))) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v99,v102);end;storageProfiles={[v7("\191\204\218\8\13\24\172\198\219\6\17","\75\220\163\183\106\98")]={},[v7("\4\175\140\54\234\18\191\135\59\202","\185\98\218\235\87")]={},[v7("\192\57\62\213\206\175\199\48\52","\202\171\92\71\134\190")]={}};MAIN_DIRECTORY=v7("\102\195\35\156\102","\232\73\161\76")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v7("\244\202\86\82\12\186\222\71\18","\126\219\185\34\61") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v7("\66\196\77\125\112","\135\108\174\62\18\30\23\147") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v103) local v104=0;while true do if (v104==(2 -1)) then if (type(storageProfiles.fugaSpells)~=v7("\159\241\48\81\253","\199\235\144\82\61\152")) then storageProfiles.fugaSpells={};end if (type(storageProfiles.keySpells)~=v7("\19\23\187\39\2","\75\103\118\217")) then storageProfiles.keySpells={};end break;end if (v104==0) then storageProfiles=v103;if (type(storageProfiles.comboSpells)~=v7("\162\232\40\199\29","\167\214\137\74\171\120\206\83")) then storageProfiles.comboSpells={};end v104=581 -(361 + 219) ;end end end);scriptFuncs.reindexTable=function(v105) local v106=0;local v107;while true do if (v106==(321 -(53 + 267))) then for v529,v530 in pairs(v105) do local v531=0 + 0 ;while true do if ((413 -(15 + 398))==v531) then v107=v107 + (983 -(18 + 964)) ;v530.index=v107;break;end end end break;end if (v106==(0 -0)) then if ( not v105 or (type(v105)~=v7("\211\85\114\24\188","\126\167\52\16\116\217"))) then return;end v107=0 + 0 ;v106=1;end end end;function firstLetterUpper(v108) return (v108:gsub("(%a)([%w_']*)",function(v346,v347) return v346:upper()   .. v347:lower() ;end));end function formatTime(v109) if (v109<60) then return v109   .. "s" ;else local v437=math.floor(v109/(38 + 22) );local v438=v109%60 ;return string.format(v7("\141\42\45\192\241\73\174\204\61","\156\168\78\64\224\212\121"),v437,v438);end end function formatRemainingTime(v110) local v111=(v110-now)/(1850 -(20 + 830)) ;local v112="";v112=string.format(v7("\66\160\245\200","\174\103\142\197"),(v110-now)/(781 + 219) )   .. "s" ;return v112;end function attachSpellWidgetCallbacks(v113,v114,v115) v113.onDragEnter=function(v348,v349) local v350=126 -(116 + 10) ;while true do if (v350==(0 + 0)) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v348:breakAnchors();v350=739 -(542 + 196) ;end if (v350==1) then v348.movingReference={x=v349.x-v348:getX() ,y=v349.y-v348:getY() };return true;end end end;v113.onDragMove=function(v351,v352,v353) local v354=v351:getParent():getRect();local v355=math.min(math.max(v354.x,v352.x-v351.movingReference.x ),(v354.x + v354.width) -v351:getWidth() );local v356=math.min(math.max(v354.y-v351:getParent():getMarginTop() ,v352.y-v351.movingReference.y ),(v354.y + v354.height) -v351:getHeight() );v351:move(v355,v356);if v115[v114] then v115[v114].widgetPos={x=v355,y=v356};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end return true;end;v113.onDragLeave=function(v357,v358) return true;end;end function stopToCast() for v359,v360 in ipairs(storageProfiles.fugaSpells) do local v361=0 -0 ;while true do if ((0 + 0)==v361) then if (v360.enabled and v360.activeCooldown and (v360.activeCooldown>=now)) then return true;end if (hppercent()<=(calculatePercentage(v360.selfHealth) + 3 + 2)) then if ( not v360.totalCooldown or (v360.totalCooldown<=now)) then return true;end end break;end end end return false;end function isAnySelectedKeyPressed() for v362,v363 in ipairs(storageProfiles.keySpells) do if (v363.enabled and (modules.corelib.g_keyboard.isKeyPressed(v363.keyPress))) then return true;end end return false;end DelayMacro={};DelayMacro.horizontalScrollBar=v7("\60\24\94\54\32\82\146\22\104\87\61\44\89\240\66\114\31\107\112\52\184\22\37\94\42\34\87\246\27\60\80\40\127\30\171\60\66\31\120\9\95\250\83\36\53\120\101\30\184\95\44\5\120\49\91\224\66\66\31\120\101\30\249\88\43\87\55\55\77\182\90\45\89\44\127\30\232\87\58\90\54\49\16\244\83\46\75\82\101\30\184\22\41\81\59\45\81\234\69\102\77\49\34\86\236\12\104\79\57\55\91\246\66\102\77\49\34\86\236\60\104\31\120\101\95\246\85\32\80\42\54\16\236\89\56\5\120\53\95\234\83\38\75\118\49\81\232\60\104\31\120\101\74\253\78\60\18\57\41\87\255\88\114\31\59\32\80\236\83\58\53\120\101\30\184\80\39\81\44\127\30\251\95\56\76\55\35\74\222\89\38\75\82\79\30\184\126\39\77\49\63\81\246\66\41\83\11\38\76\247\90\36\125\57\55\52\184\22\104\31\49\33\4\184\69\43\77\55\41\82\146\22\104\31\120\36\80\251\94\39\77\43\107\82\253\80\60\5\120\53\95\234\83\38\75\118\41\91\254\66\66\31\120\101\30\249\88\43\87\55\55\77\182\68\33\88\48\49\4\184\70\41\77\61\43\74\182\68\33\88\48\49\52\184\22\104\31\57\43\93\240\89\58\76\118\49\81\232\12\104\79\42\32\72\182\84\39\75\44\42\83\146\22\104\31\120\40\95\234\81\33\81\117\49\81\232\12\104\12\82\101\30\184\22\37\86\54\44\83\237\91\114\31\104\79\30\184\22\104\82\57\61\87\245\67\37\5\120\116\14\146\22\104\31\120\54\74\253\70\114\31\105\79\30\184\22\104\89\55\43\74\162\22\62\90\42\33\95\246\87\101\14\105\53\70\181\68\39\74\54\33\91\252\60","\152\54\72\63\88\69\62");storage.scrollBars1=storage.scrollBars1 or {} ;local function v17(v119,v120,v121,v122,v123) local v124=0;local v125;while true do if (v124==(1 + 0)) then if ((v122-v121)>1000) then v125.scroll:setStep(100);elseif ((v122-v121)>(263 -163)) then v125.scroll:setStep(25 -15 );end v125.scroll:setValue(storage.scrollBars1[v119] or v123 );v124=2;end if (v124==(1553 -(1126 + 425))) then v125.scroll.onValueChange=function(v533,v534) local v535=405 -(118 + 287) ;while true do if (v535==(0 -0)) then storage.scrollBars1[v119]=v534;v125.scroll:setText(v120   .. v534 );break;end end end;v125.text:setText(v7("\249\229\205\110\251\132\202\121\248\229\215\6","\60\180\164\142"));v124=1124 -(118 + 1003) ;end if ((8 -5)==v124) then v125.scroll.onValueChange(v125.scroll,v125.scroll:getValue());break;end if (v124==(377 -(142 + 235))) then v125=setupUI(DelayMacro.horizontalScrollBar,panel);v125.scroll:setRange(v121,v122);v124=4 -3 ;end end end setDefaultTab(v7("\117\95\12\39","\114\56\62\101\73\71\141"));v17(v7("\181\232\216\214\183\205\222\200\185\240","\164\216\137\187"),"",3 + 7 ,1000,1177 -(553 + 424) );UI.Label(v7("\225\210\16\145\141\181\38\231\200\21\157","\107\178\134\81\210\198\158")):setFont(v7("\59\7\146\213\165\62\26\164\201\164\44","\202\88\110\226\166"));addTextEdit(v7("\240\31\135\251\198\131\60\150\246\201\200\67\194\196\218\198\3\142\183\231\214\1\134\248\134\131\36\135\238","\170\163\111\226\151"),storage.stackConfig or v7("\34\32\183\52\66\119\58\5\49\177\51\2\119\4\4\62\182\55\2\119\13\24\35\166\57\64\52\32\16\124\242\19\75\46","\73\113\80\210\88\46\87") ,function(v126,v127) storage.stackConfig=v127;end,rightPanel);local v18=modules.corelib.g_keyboard.isKeyPressed;macro(1 -0 ,function() local v129=storage.stackConfig:split(",");local v130=g_game.getAttackingCreature();local v131=pos();if v18(v129[3 + 0 ]) then local v439=0 + 0 ;local v440;local v441;while true do if (v439==(1 + 0)) then if  not v440 then return;end v441=getDistanceBetween(v131,v440);v439=1 + 1 ;end if (v439==(0 + 0)) then if  not g_game.isAttacking() then return;end v440=v130:getPosition();v439=2 -1 ;end if (v439==2) then if (v441>(5 -3)) then local v703=0 -0 ;while true do if (v703==(0 + 0)) then stopCombo=now + (724 -574) ;say(v129[754 -(239 + 514) ]);break;end end end if (v441<=2) then stopCombo=now + 53 + 97 ;say(v129[1331 -(797 + 532) ]);end break;end end end end,rightPanel);local v19={W=0 + 0 ,A=0,S=0 + 0 ,D=0 -0 };onKeyPress(function(v132) for v364,v365 in pairs(v19) do if (v132==v364) then g_game.setChaseMode(v365);end end end);macro(1,function() local v133=1202 -(373 + 829) ;local v134;while true do if (v133==(731 -(476 + 255))) then v134=storage.stackConfig:split(",");if v18(v134[3]) then g_game.setChaseMode(1);end break;end end end);UI.Label(v7("\162\3\224\48\200\206\10\248\53\198\178","\135\225\76\173\114")):setFont(v7("\25\228\168\163\163\187\179\60\226\182\164","\199\122\141\216\208\204\221"));scriptFuncs={};comboSpellsWidget={};fugaSpellsWidgets={};scriptFuncs.readProfile=function(v135,v136) if g_resources.fileExists(v135) then local v442=0;local v443;local v444;while true do if (v442==(1130 -(369 + 761))) then v443,v444=pcall(function() return json.decode(g_resources.readFileContents(v135));end);if  not v443 then return onError(v7("\136\207\2\255\56\245\172\207\2\245\127\247\163\217\31\176\121\228\188\200\25\230\119\182\229","\150\205\189\112\144\24")   .. v135   .. v7("\108\202\255\124\5\154\16\80\38\139\177\95\1\154\5\17\55\196\176\12\20\154\30\18\41\129\178\77\72\200\20\8\38\136\170\77\68\135\81\17\55\149\170\69\18\135\95\80\1\129\171\77\8\128\20\3\127\196","\112\69\228\223\44\100\232\113")   .. v444 );end v442=1 + 0 ;end if (v442==(1 -0)) then v136(v444);break;end end end end;scriptFuncs.saveProfile=function(v137,v138) local v139=0 -0 ;local v140;local v141;while true do if (v139==(238 -(64 + 174))) then v140,v141=pcall(function() return json.encode(v138,2);end);if  not v140 then return onError("Erro salvando configuração. Detalhes: "   .. v141 );end v139=1;end if ((1 + 0)==v139) then if (v141:len()>(100 * 1024 * (1515 -491))) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v137,v141);break;end end end;storageProfiles={[v7("\215\16\10\209\185\79\150\209\19\11\192","\230\180\127\103\179\214\28")]={},[v7("\138\16\88\71\215\81\229\128\9\76","\128\236\101\63\38\132\33")]={},[v7("\167\172\8\119\166\238\195\160\186","\175\204\201\113\36\214\139")]={}};MAIN_DIRECTORY=v7("\8\206\58\200\75","\100\39\172\85\188")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v7("\226\107\173\143\33\172\127\188\207","\83\205\24\217\224") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v7("\168\207\222\50\232","\93\134\165\173") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end function resetCooldowns() if storageProfiles then local v445=336 -(144 + 192) ;while true do if (v445==(216 -(42 + 174))) then if storageProfiles.comboSpells then for v724,v725 in ipairs(storageProfiles.comboSpells) do v725.cooldownSpells=nil;end end if storageProfiles.fugaSpells then for v727,v728 in ipairs(storageProfiles.fugaSpells) do v728.totalCooldown=nil;v728.activeCooldown=nil;end end break;end end end end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v142) local v143=0 + 0 ;while true do if (v143==(1 + 0)) then if (type(storageProfiles.fugaSpells)~=v7("\241\79\114\6\224","\106\133\46\16")) then storageProfiles.fugaSpells={};end if (type(storageProfiles.keySpells)~=v7("\76\33\113\240\95","\32\56\64\19\156\58")) then storageProfiles.keySpells={};end v143=1 + 1 ;end if (v143==2) then resetCooldowns();break;end if (v143==(1504 -(363 + 1141))) then storageProfiles=v142;if (type(storageProfiles.comboSpells)~=v7("\170\243\195\206\63","\30\222\146\161\162\90\174\210")) then storageProfiles.comboSpells={};end v143=1;end end end);scriptFuncs.reindexTable=function(v144) if ( not v144 or (type(v144)~=v7("\78\201\231\90\95","\224\58\168\133\54\58\146"))) then return;end local v145=1580 -(1183 + 397) ;for v366,v367 in pairs(v144) do v145=v145 + 1 ;v367.index=v145;end end;function firstLetterUpper(v146) return (v146:gsub("(%a)([%w_']*)",function(v369,v370) return v369:upper()   .. v370:lower() ;end));end storage[v7("\80\85\68\243\70\133\149\2\73\66\88","\107\57\54\43\157\21\230\231")]=storage[v7("\210\136\30\251\138\223\221\210\155\5\230","\175\187\235\113\149\217\188")] or {[v7("\63\160\140\78\236\84\121\63\189\142","\24\92\207\225\44\131\25")]=true,[v7("\77\198\191\77\54\124\72\193\183","\29\43\179\216\44\123")]=false,[v7("\174\209\47\91\148\215\38\67\174","\44\221\185\64")]=false,[v7("\10\226\81\114\114\2\245\71","\19\97\135\40\63")]=false} ;local v21=storage[v7("\167\95\60\53\28\50\188\85\35\47\60","\81\206\60\83\91\79")];function removeTable(v147,v148) table.remove(v147,v148);end function canCastFuga() local v149=0 -0 ;while true do if ((0 + 0)==v149) then for v536,v537 in ipairs(storageProfiles.fugaSpells) do local v538=v537.activeCooldown and (v537.activeCooldown>=now) and v537.enableLifes and (v537.lifes>(0 + 0)) ;local v539=v537.enableMultiple and (v537.count>(1975 -(1913 + 62))) ;local v540=v537.activeCooldown and (v537.activeCooldown>=now) ;if (v538 or v540) then return true;end end return false;end end end function getPlayersAttack(v150) local v151=0 + 0 ;local v152;while true do if (v151==(2 -1)) then for v541,v542 in ipairs(getSpectators(v150)) do if (v542:isPlayer() and v542:isTimedSquareVisible() and table.equals(v542:getTimedSquareColor(),colorToMatch)) then v152=v152 + (1934 -(565 + 1368)) ;delay(13162 -9662 );end end return v152;end if (v151==0) then v150=v150 or false ;v152=1661 -(1477 + 184) ;v151=1;end end end local v22={};local v23=3 -0 ;onTextMessage(function(v153,v154) if v154:find(v7("\70\162\196\98\32\202\67\176\93\235\212\103\42\131\89\171\14\170\222\50\46\215\89\165\77\160\144\112\54","\196\46\203\176\18\79\163\45")) then local v446=v7("\129\45\107\94\40\244\252\189\98\54\91\32\176\166\248\42\119\10\52\244\230\182\54\109\94\32\238\234\248\54\113\94\37\245\175\185\54\106\31\39\240\175\186\59\62\86\106\176\166\253\108","\143\216\66\30\126\68\155");local v447,v448=v154:match(v446);local v449=getCreatureByName(v448);if (v449 and v449:isPlayer()) then local v543=false;for v612,v613 in ipairs(v22) do if (v613.name==v448) then v543=true;v613.time=os.time();break;end end if  not v543 then table.insert(v22,{[v7("\164\201\0\206","\129\202\168\109\171\165\195\183")]=v448,[v7("\54\81\58\221","\134\66\56\87\184\190\116")]=os.time()});end end end end);macro(1,function() local v155=0 + 0 ;local v156;while true do if (0==v155) then v156=os.time();for v544= #v22,857 -(564 + 292) , -(1 -0) do local v545=0 -0 ;local v546;while true do if (v545==(304 -(244 + 60))) then v546=v22[v544];if ((v156-v546.time)>v23) then table.remove(v22,v544);end break;end end end break;end end end);function calculatePercentage(v157) local v158= #v22;return (v158 and (v157 + (v158 * (6 + 1)))) or v157 ;end function stopToCast() if  not fugaIcon.title:isOn() then return false;end for v371,v372 in ipairs(storageProfiles.fugaSpells) do if (v372.enabled and v372.activeCooldown and (v372.activeCooldown>=now)) then return false;end if (hppercent()<=(calculatePercentage(v372.selfHealth) + (479 -(41 + 435)))) then if ( not v372.totalCooldown or (v372.totalCooldown<=now)) then return true;end end end return false;end function isAnySelectedKeyPressed() if  not storageProfiles then initializeStorageForCharacter(g_game.getCharacterName());end if (type(storageProfiles.keySpells)~=v7("\40\48\11\183\28","\85\92\81\105\219\121\139\65")) then storageProfiles.keySpells={};end for v373,v374 in ipairs(storageProfiles.keySpells) do if (v374.enabled and modules.corelib.g_keyboard.isKeyPressed(v374.keyPress)) then return true;end end return false;end function formatTime(v159) if (v159<(1061 -(938 + 63))) then return v159   .. "s" ;else local v451=0 + 0 ;local v452;local v453;while true do if (v451==(1125 -(936 + 189))) then v452=math.floor(v159/(20 + 40) );v453=v159%(1673 -(1565 + 48)) ;v451=1 + 0 ;end if (v451==(1139 -(782 + 356))) then return string.format(v7("\184\183\93\5\57\143\175\183\67","\191\157\211\48\37\28"),v452,v453);end end end end function formatRemainingTime(v160) local v161=0;local v162;local v163;while true do if (v161==(268 -(176 + 91))) then v163=string.format(v7("\154\81\164\26","\90\191\127\148\124"),(v160-now)/1000 )   .. "s" ;return v163;end if (v161==(0 -0)) then v162=(v160-now)/(1473 -473) ;v163="";v161=1093 -(975 + 117) ;end end end function attachSpellWidgetCallbacks(v164,v165,v166) v164.onDragEnter=function(v375,v376) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v375:breakAnchors();v375.movingReference={x=v376.x-v375:getX() ,y=v376.y-v375:getY() };return true;end;v164.onDragMove=function(v378,v379,v380) local v381=1875 -(157 + 1718) ;local v382;local v383;local v384;while true do if (v381==0) then v382=v378:getParent():getRect();v383=math.min(math.max(v382.x,v379.x-v378.movingReference.x ),(v382.x + v382.width) -v378:getWidth() );v381=1;end if (v381==(1 + 0)) then v384=math.min(math.max(v382.y-v378:getParent():getMarginTop() ,v379.y-v378.movingReference.y ),(v382.y + v382.height) -v378:getHeight() );v378:move(v383,v384);v381=6 -4 ;end if (v381==(6 -4)) then if v166[v165] then v166[v165].widgetPos={x=v383,y=v384};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end return true;end end end;v164.onDragLeave=function(v385,v386) return true;end;end function forceSay(v170) local v171=0;while true do if (v171==(1018 -(697 + 321))) then if (type(v170)~=v7("\108\134\44\27\125","\119\24\231\78")) then for v645=0 -0 ,21 -11  do stopCombo=now + (576 -326) ;return say(v170);end end for v547=0 + 0 ,18 -8  do local v548=0 -0 ;while true do if (v548==0) then stopCombo=now + 250 ;return say(v170.toSay or v170.text );end end end break;end end end local v24=[[
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
      
]],g_ui.getRootWidget());keyInterface:hide();v26.title:setOn(v21.comboMacro);v26.title.onClick=function(v172) local v173=0;while true do if (v173==(1228 -(322 + 905))) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if (v173==(611 -(602 + 9))) then v21.comboMacro= not v21.comboMacro;v172:setOn(v21.comboMacro);v173=1190 -(449 + 740) ;end end end;v26.settings.onClick=function(v174) if  not comboInterface:isVisible() then comboInterface:show();comboInterface:raise();comboInterface:focus();else comboInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end end;comboInterface.closeButton.onClick=function(v175) comboInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;comboInterface.cooldown:setText(v7("\30\138\240","\77\46\231\131"));comboInterface.cooldown.onValueChange=function(v176,v177) if (v177>=(1872 -(826 + 46))) then v176:setText((v177/1000)   .. "s" );else v176:setText(v177   .. v7("\183\71","\32\218\52\214") );end end;comboInterface.distance:setText("0");comboInterface.distance.onValueChange=function(v178,v179) v178:setText(v179);end;comboInterface.sameSpell:setChecked(true);comboInterface.orangeSpell:setEnabled(false);comboInterface.sameSpell.onCheckChange=function(v180,v181) if v181 then comboInterface.orangeSpell:setEnabled(false);else local v454=947 -(245 + 702) ;while true do if (v454==(0 -0)) then comboInterface.orangeSpell:setEnabled(true);comboInterface.orangeSpell:setText(comboInterface.castSpell:getText());break;end end end end;function refreshComboList(v182,v183) if v183 then for v471,v472 in pairs(v182.spellList:getChildren()) do v472:destroy();end for v473,v474 in pairs(comboSpellsWidget) do v474:destroy();end for v475,v476 in ipairs(v183) do local v477=0;local v478;local v479;while true do if (v477==(0 + 0)) then v478=setupUI(v24,v182.spellList);v479=setupUI(v25,g_ui.getRootWidget());v479:setText(firstLetterUpper(v476.spellCast));v477=1;end if (v477==(1901 -(260 + 1638))) then v478.enabled:setChecked(v476.enabled);v478.enabled:setTooltip(( not v476.enabled and v7("\107\25\48\170\253\181\5\105\94\18\61\164","\58\46\119\81\200\145\208\37")) or v7("\15\133\35\173\171\177\51\107\191\32\169\165\177","\86\75\236\80\204\201\221") );v478.enabled.onClick=function(v706) local v707=0;while true do if (v707==(440 -(382 + 58))) then v476.enabled= not v476.enabled;v478.enabled:setChecked(v476.enabled);v707=3 -2 ;end if (v707==(1 + 0)) then v478.enabled:setTooltip(( not v476.enabled and v7("\87\79\118\135\242\142\50\114\103\128\242\135","\235\18\33\23\229\158")) or v7("\116\179\210\186\82\182\196\251\99\170\196\183\92","\219\48\218\161") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;v477=4;end if (v477==(14 -7)) then v478:setTooltip(v7("\218\224\59\146\219\242\46\211\249\249\61\136\183","\178\151\147\92")   .. v476.orangeSpell   .. v7("\204\225\12\28\29\65\127\204\243\77\114\38\73\118\141\167\12","\26\236\157\44\82\114\44")   .. v476.onScreen   .. " " );break;end if (v477==(2 -1)) then attachSpellWidgetCallbacks(v479,v476.index,storageProfiles.comboSpells);if  not v476.widgetPos then v476.widgetPos={x=1205 -(902 + 303) ,y=109 -59 };end v479:setPosition(v476.widgetPos);v477=2;end if ((14 -8)==v477) then v478.textToSet:setText(firstLetterUpper(v7("\29\78\203\58\149\12\30","\62\87\59\191\73\224\54")   .. v476.spellCast   .. v7("\167\30\186\234\232\13\246\205\232\21\244\147\167","\169\135\98\154")   .. v476.cooldown   .. v7("\139\107\100\112\244\32\220\202\121\39\81\167\115","\168\171\23\68\52\157\83")   .. v476.distance   .. "" ));v478.textToSet:setColor(v7("\227\121\252\185\32","\231\148\17\149\205\69\77"));v478.textToSet:setFont(v7("\150\162\213\255\86\241\129\234\150\170\71\231\205\181\200\238\89\251\133\163","\159\224\199\167\155\55"));v477=7;end if (v477==4) then v478.showTimespell:setChecked(v476.enableTimeSpell);v478.showTimespell:setTooltip(( not v476.enableTimeSpell and v7("\193\127\125\75\215\74\160\208\120\113\76\155\124\240\225\125\112","\128\132\17\28\41\187\47")) or v7("\37\59\21\59\95\13\55\70\14\84\12\55\70\9\77\4\62\10","\61\97\82\102\90") );v478.showTimespell.onClick=function(v708) v476.enableTimeSpell= not v476.enableTimeSpell;v478.showTimespell:setChecked(v476.enableTimeSpell);v478.showTimespell:setTooltip(( not v476.enableTimeSpell and v7("\137\32\170\73\203\82\94\61\165\35\174\11\244\71\27\5\160","\105\204\78\203\43\167\55\126")) or v7("\129\163\48\31\17\8\194\17\145\163\46\27\83\55\215\84\169\166","\49\197\202\67\126\115\100\167") );if v476.enableTimeSpell then v479:show();else v479:hide();end scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v477=5;end if (v477==(1 + 1)) then comboSpellsWidget[v476.index]=v479;comboSpellsWidget[v476.index]=v479;v478.onDoubleClick=function(v710) local v711=1690 -(1121 + 569) ;local v712;while true do if (v711==(215 -(22 + 192))) then v182.orangeSpell:setText(v712.orangeSpell);v182.onScreen:setText(v712.onScreen);v711=2;end if (v711==(687 -(483 + 200))) then v479:destroy();v478:destroy();break;end if (v711==(1463 -(1404 + 59))) then v712=v476;v182.castSpell:setText(v712.spellCast);v711=2 -1 ;end if (v711==(2 -0)) then v182.cooldown:setValue(v712.cooldown);v182.distance:setValue(v712.distance);v711=3;end if (v711==(768 -(468 + 297))) then for v764,v765 in ipairs(storageProfiles.comboSpells) do if (v765==v476) then removeTable(storageProfiles.comboSpells,v764);end end scriptFuncs.reindexTable(v183);v711=4;end end end;v477=565 -(334 + 228) ;end if (v477==5) then if v476.enableTimeSpell then v479:show();else v479:hide();end v478.remove.onClick=function(v713) for v732,v733 in ipairs(storageProfiles.comboSpells) do if (v733==v476) then removeTable(storageProfiles.comboSpells,v732);end end scriptFuncs.reindexTable(v183);v479:destroy();v478:destroy();end;v478.onClick=function(v714) local v715=0 -0 ;while true do if (v715==(0 -0)) then comboInterface.moveDown:show();comboInterface.moveUp:show();break;end end end;v477=10 -4 ;end end end end end comboInterface.insertSpell.onClick=function(v184) local v185=0 + 0 ;local v186;local v187;local v188;local v189;local v190;local v191;while true do if (v185==(242 -(141 + 95))) then comboInterface.sameSpell:setChecked(true);comboInterface.orangeSpell:setEnabled(false);comboInterface.cooldown:setValue(0);v185=7 + 0 ;end if (5==v185) then comboInterface.castSpell:clearText();comboInterface.orangeSpell:clearText();comboInterface.onScreen:clearText();v185=6;end if ((7 -4)==v185) then if (v189==(0 -0)) then return warn(v7("\200\198\36\251\227\57\248\2\194\199\61\246\235\63\235\76\175","\34\129\168\82\154\143\80\156"));end if (v190==(0 + 0)) then return warn(v7("\172\188\37\10\68\71\141\197\150\58\24\92\79\135\134\183","\233\229\210\83\107\40\46"));end v191={[v7("\200\76\54\211\29","\101\161\34\82\182")]= #storageProfiles.comboSpells + (2 -1) ,[v7("\251\29\92\242\215\193\131\61\252","\78\136\109\57\158\187\130\226")]=v186,[v7("\49\49\202\242\44\58\252\255","\145\94\95\153")]=v188,[v7("\242\223\21\219\73\178\206\221\17\217\66","\215\157\173\116\181\46")]=v187,[v7("\54\187\132\254\222\58\163\133","\186\85\212\235\146")]=v189,[v7("\198\136\5\234\56\224\91\199","\56\162\225\118\158\89\142")]=v190,[v7("\89\11\193\173\46\221\104\12\205\170\17\200\89\9\204","\184\60\101\160\207\66")]=true,[v7("\52\140\125\190\61\135\120","\220\81\226\28")]=true};v185=4;end if ((1 + 0)==v185) then v187=((v187:len()==0) and v186) or v187 ;v189=comboInterface.cooldown:getValue();v190=comboInterface.distance:getValue();v185=2;end if (v185==4) then table.insert(storageProfiles.comboSpells,v191);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);refreshComboList(comboInterface,storageProfiles.comboSpells);v185=5;end if (v185==(2 + 0)) then if ( not v186 or (v186:len()==(0 -0))) then return warn(v7("\3\32\195\90\38\39\209\27\25\62\208\87\38\110\251\90\39\43\155","\59\74\78\181"));end if ( not comboInterface.sameSpell:isChecked() and (comboInterface.orangeSpell:getText():len()==(0 + 0))) then return warn(v7("\12\223\76\91\191\44\213\26\117\161\36\223\93\95\243\22\193\95\86\191\107","\211\69\177\58\58"));end if ( not v188 or (v188:len()==0)) then return warn(v7("\158\235\111\244\229\194\179\165\77\240\241\223\247\202\119\181\218\200\165\224\124\251","\171\215\133\25\149\137"));end v185=166 -(92 + 71) ;end if ((0 + 0)==v185) then v186=comboInterface.castSpell:getText():trim():lower();v187=comboInterface.orangeSpell:getText():trim():lower();v188=comboInterface.onScreen:getText();v185=1 -0 ;end if (v185==7) then pillsInterface.distance:setValue(765 -(574 + 191) );break;end end end;refreshComboList(comboInterface,storageProfiles.comboSpells);comboInterface.moveUp.onClick=function() local v192=0 + 0 ;local v193;local v194;while true do if (v192==3) then storageProfiles.comboSpells[v194].index=v194-1 ;storageProfiles.comboSpells[v194-(2 -1) ].index=v194;v192=3 + 1 ;end if (1==v192) then v194=comboInterface.spellList:getChildIndex(v193);if (v194<2) then return;end v192=851 -(254 + 595) ;end if (v192==4) then table.sort(storageProfiles.comboSpells,function(v549,v550) return v549.index<v550.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if (v192==(126 -(55 + 71))) then v193=comboInterface.spellList:getFocusedChild();if  not v193 then return;end v192=1 -0 ;end if (v192==(1792 -(573 + 1217))) then comboInterface.spellList:moveChildToIndex(v193,v194-(2 -1) );comboInterface.spellList:ensureChildVisible(v193);v192=1 + 2 ;end end end;comboInterface.moveDown.onClick=function() local v195=comboInterface.spellList:getFocusedChild();if  not v195 then return;end local v196=comboInterface.spellList:getChildIndex(v195);if (v196>=comboInterface.spellList:getChildCount()) then return;end comboInterface.spellList:moveChildToIndex(v195,v196 + (1 -0) );comboInterface.spellList:ensureChildVisible(v195);storageProfiles.comboSpells[v196].index=v196 + (940 -(714 + 225)) ;storageProfiles.comboSpells[v196 + 1 ].index=v196;table.sort(storageProfiles.comboSpells,function(v387,v388) return v387.index<v388.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;comboInterface.findCD.onClick=function(v199) local v200=0 -0 ;while true do if (v200==0) then detectOrangeSpell,testSpell=true,true;spellTime={0 + 0 ,""};break;end end end;macro(1,function() if testSpell then say(comboInterface.castSpell:getText());end end);onTalk(function(v201,v202,v203,v204,v205,v206) local v207=0;local v208;while true do if (v207==(1 -0)) then v208=((comboInterface.orangeSpell:getText():len()>(806 -(118 + 688))) and comboInterface.orangeSpell:getText():lower():trim()) or comboInterface.castSpell:getText():lower():trim() ;if (v204:lower():trim()==v208) then if (spellTime[2]==v208) then local v716=48 -(25 + 23) ;while true do if ((0 + 0)==v716) then comboInterface.cooldown:setValue(now-spellTime[1887 -(927 + 959) ] );spellTime={now,v208};v716=1 -0 ;end if (1==v716) then detectOrangeSpell=false;testSpell=false;break;end end else spellTime={now,v208};end end break;end if (v207==0) then if  not detectOrangeSpell then return;end if (player:getName()~=v201) then return;end v207=2 -1 ;end end end);macro(286 -(175 + 110) ,function() local v209=0 -0 ;while true do if (v209==(0 -0)) then if  not (comboSpellsWidget or storageProfiles.comboSpells) then return;end for v551,v552 in ipairs(storageProfiles.comboSpells) do local v553=comboSpellsWidget[v552.index];if v553 then if ( not v552.cooldownSpells or (v552.cooldownSpells<now)) then local v734=1796 -(503 + 1293) ;while true do if (v734==0) then v553:setColor(v7("\20\199\135\254\228","\167\115\181\226\155\138"));v553:setText(firstLetterUpper(v552.onScreen)   .. v7("\162\62\167\28\43\98","\166\130\66\135\60\27\17") );break;end end else local v735=0 -0 ;while true do if (v735==0) then v553:setColor(v7("\86\79\202","\80\36\42\174\21"));v553:setText(firstLetterUpper(v552.onScreen)   .. v7("\14\12\119","\26\46\112\87")   .. formatRemainingTime(v552.cooldownSpells) );break;end end end end end break;end end end);fugaIcon.title:setOn(v21.fugaMacro);fugaIcon.title.onClick=function(v210) v21.fugaMacro= not v21.fugaMacro;v210:setOn(v21.fugaMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;fugaIcon.settings.onClick=function(v212) if  not fugaInterface:isVisible() then local v455=0 + 0 ;while true do if ((1062 -(810 + 251))==v455) then fugaInterface:focus();break;end if ((0 + 0)==v455) then fugaInterface:show();fugaInterface:raise();v455=1;end end else local v456=0;while true do if (v456==(0 + 0)) then fugaInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end end;fugaInterface.closeButton.onClick=function(v213) local v214=0 + 0 ;while true do if (v214==0) then fugaInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;fugaInterface.hppercent:setText(v7("\233\102","\212\217\67\203\20\223\223\37"));fugaInterface.hppercent.onValueChange=function(v215,v216) v215:setText(v216   .. "%" );end;fugaInterface.cooldownTotal:setText(v7("\234\158","\178\218\237\200"));fugaInterface.cooldownTotal.onValueChange=function(v217,v218) local v219=0;local v220;while true do if (v219==(533 -(43 + 490))) then v220=formatTime(v218);v217:setText(v218   .. "s" );break;end end end;fugaInterface.cooldownActive:setText(v7("\230\166","\176\214\213\134"));fugaInterface.cooldownActive.onValueChange=function(v221,v222) local v223=formatTime(v222);v221:setText(v222   .. "s" );end;fugaIcon.showInfos:setChecked(v21.showInfos);fugaIcon.showInfos.onClick=function(v224) local v225=0;while true do if (v225==(733 -(711 + 22))) then v21.showInfos= not v21.showInfos;v224:setChecked(v21.showInfos);break;end end end;fugaInterface.sameSpell:setChecked(true);fugaInterface.orangeSpell:setEnabled(false);fugaInterface.sameSpell.onCheckChange=function(v226,v227) if v227 then fugaInterface.orangeSpell:setEnabled(false);else fugaInterface.orangeSpell:setEnabled(true);fugaInterface.orangeSpell:setText(fugaInterface.castSpell:getText());end end;fugaInterface.lifesValue:hide();fugaInterface.lifesOption.onCheckChange=function(v228,v229) if v229 then local v457=0 -0 ;while true do if (v457==0) then fugaInterface.multipleOption:hide();fugaInterface.lifesValue:show();break;end end else local v458=0;while true do if (v458==0) then fugaInterface.multipleOption:show();fugaInterface.lifesValue:hide();break;end end end end;function refreshFugaList(v230,v231) if v231 then for v483,v484 in pairs(v230.spellList:getChildren()) do v484:destroy();end for v485,v486 in pairs(fugaSpellsWidgets) do v486:destroy();end for v487,v488 in ipairs(v231) do local v489=setupUI(v24,v230.spellList);local v490=setupUI(v25,g_ui.getRootWidget());v490:setText(firstLetterUpper(v488.spellCast));attachSpellWidgetCallbacks(v490,v488.index,storageProfiles.fugaSpells);if  not v488.widgetPos then v488.widgetPos={x=859 -(240 + 619) ,y=13 + 37 };end if v488.enableTimeSpell then v490:show();else v490:hide();end v490:setPosition(v488.widgetPos);fugaSpellsWidgets[v488.index]=v490;v489.onDoubleClick=function(v554) local v555=v488;v230.castSpell:setText(v555.spellCast);v230.orangeSpell:setText(v555.orangeSpell);v230.onScreen:setText(v555.onScreen);v230.hppercent:setValue(v555.selfHealth);v230.cooldownTotal:setValue(v555.cooldownTotal);v230.cooldownActive:setValue(v555.cooldownActive);for v615,v616 in ipairs(storageProfiles.fugaSpells) do if (v616==v488) then removeTable(storageProfiles.fugaSpells,v615);end end scriptFuncs.reindexTable(v231);v490:destroy();v489:destroy();end;v489.enabled:setChecked(v488.enabled);v489.enabled:setTooltip(( not v488.enabled and v7("\209\163\183\214\164\83\25\199\189\179\216\164","\57\148\205\214\180\200\54")) or v7("\54\244\38\53\116\30\248\117\7\102\23\241\57","\22\114\157\85\84") );v489.enabled.onClick=function(v556) v488.enabled= not v488.enabled;v489.enabled:setChecked(v488.enabled);v489.enabled:setTooltip(( not v488.enabled and v7("\225\197\18\198\81\243\232\247\219\22\200\81","\200\164\171\115\164\61\150")) or v7("\154\253\16\68\129\178\241\67\118\147\187\248\15","\227\222\148\99\37") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v489.showTimespell:setChecked(v488.enableTimeSpell);v489.showTimespell:setTooltip(( not v488.enableTimeSpell and v7("\22\92\83\244\245\54\18\102\255\244\54\18\97\230\252\63\94","\153\83\50\50\150")) or v7("\121\127\96\29\113\167\72\29\66\122\17\118\235\126\77\115\127\16","\45\61\22\19\124\19\203") );v489.showTimespell.onClick=function(v558) local v559=0 -0 ;while true do if ((0 + 0)==v559) then v488.enableTimeSpell= not v488.enableTimeSpell;v489.showTimespell:setChecked(v488.enableTimeSpell);v559=1745 -(1344 + 400) ;end if (v559==(406 -(255 + 150))) then v489.showTimespell:setTooltip(( not v488.enableTimeSpell and v7("\228\28\12\247\14\117\249\245\27\0\240\66\67\169\196\30\1","\217\161\114\109\149\98\16")) or v7("\54\41\43\125\190\120\23\96\12\117\177\113\82\19\40\121\176\120","\20\114\64\88\28\220") );if v488.enableTimeSpell then v490:show();else v490:hide();end v559=2 + 0 ;end if (v559==(2 + 0)) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;v489.remove.onClick=function(v560) local v561=0;while true do if (v561==(0 -0)) then for v736,v737 in ipairs(storageProfiles.fugaSpells) do if (v737==v488) then removeTable(storageProfiles.fugaSpells,v736);end end scriptFuncs.reindexTable(v231);v561=3 -2 ;end if (v561==(1740 -(404 + 1335))) then v490:destroy();v489:destroy();break;end end end;v489.onClick=function(v562) fugaInterface.moveDown:show();fugaInterface.moveUp:show();end;v489.textToSet:setText(firstLetterUpper(v488.spellCast));v489.textToSet:setColor(v7("\38\9\219\160\253","\221\81\97\178\212\152\176"));v489.textToSet:setFont(v7("\219\226\15\255\27\195\230\80\170\75\221\255\80\233\21\216\233\25\254\30","\122\173\135\125\155"));v489:setTooltip(v7("\171\211\1\183\56\52\136\169\196\19\170\62\54\205\222\129","\168\228\161\96\217\95\81")   .. v488.orangeSpell   .. v7("\155\205\110\115\33\23\232\210\60\89\42\89\129\145","\55\187\177\78\60\79")   .. v488.onScreen   .. v7("\109\210\31\223\73\219\129\33\142\124\228\73\195\132\34\217\81\177\6","\224\77\174\63\139\38\175")   .. v488.cooldownTotal   .. v7("\151\1\68\110\165\66\76\39\146\68\24\13\139\78\84\42\139\86\86\116\196","\78\228\33\56")   .. v488.cooldownActive   .. v7("\221\62\174\67\173\222\110\183\17\134\203\112\166\89\197","\229\174\30\210\99")   .. v488.selfHealth );end end end fugaInterface.moveUp.onClick=function() local v232=fugaInterface.spellList:getFocusedChild();if  not v232 then return;end local v233=fugaInterface.spellList:getChildIndex(v232);if (v233<(408 -(183 + 223))) then return;end fugaInterface.spellList:moveChildToIndex(v232,v233-(1 -0) );fugaInterface.spellList:ensureChildVisible(v232);storageProfiles.fugaSpells[v233].index=v233-(1 + 0) ;storageProfiles.fugaSpells[v233-(1 + 0) ].index=v233;table.sort(storageProfiles.fugaSpells,function(v389,v390) return v389.index<v390.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;fugaInterface.moveDown.onClick=function() local v236=0;local v237;local v238;while true do if (v236==(339 -(10 + 327))) then fugaInterface.spellList:moveChildToIndex(v237,v238 + 1 + 0 );fugaInterface.spellList:ensureChildVisible(v237);v236=341 -(118 + 220) ;end if (3==v236) then storageProfiles.fugaSpells[v238].index=v238 + 1 + 0 ;storageProfiles.fugaSpells[v238 + (450 -(108 + 341)) ].index=v238;v236=4;end if (v236==1) then v238=fugaInterface.spellList:getChildIndex(v237);if (v238>=fugaInterface.spellList:getChildCount()) then return;end v236=1 + 1 ;end if (v236==(16 -12)) then table.sort(storageProfiles.fugaSpells,function(v563,v564) return v563.index<v564.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if (v236==0) then v237=fugaInterface.spellList:getFocusedChild();if  not v237 then return;end v236=1;end end end;fugaInterface.insertSpell.onClick=function(v239) local v240=fugaInterface.castSpell:getText():trim();local v241=fugaInterface.orangeSpell:getText():trim();local v242=fugaInterface.onScreen:getText();v241=((v241:len()==0) and v240) or v241 ;local v243=fugaInterface.hppercent:getValue();local v244=fugaInterface.cooldownTotal:getValue();local v245=fugaInterface.cooldownActive:getValue();if (v240:len()==0) then return warn(v7("\50\227\144\80\225\52\61\91\222\150\84\225\49\121\53\236\139\84\163","\89\123\141\230\49\141\93"));end if ( not fugaInterface.sameSpell:isChecked() and (v241:len()==(1493 -(711 + 782)))) then return warn(v7("\218\127\224\13\28\67\247\49\217\30\17\68\244\116\182\63\0\79\255\125\184","\42\147\17\150\108\112"));end if (v242:len()==(0 -0)) then return warn(v7("\38\168\59\126\235\225\11\230\25\122\255\252\79\137\35\63\212\235\29\163\40\113","\136\111\198\77\31\135"));end if (v243==(469 -(270 + 199))) then return warn(v7("\43\7\177\87\177\237\19\233\42\25\183\83\175\231\18\167\22\71","\201\98\105\199\54\221\132\119"));end if (v244==(0 + 0)) then return warn(v7("\144\2\149\32\14\60\168\249\47\140\46\14\49\163\174\2\195\21\13\33\173\181\66","\204\217\108\227\65\98\85"));end local v246={[v7("\87\205\241\224\52","\160\62\163\149\133\76")]= #storageProfiles.fugaSpells + (1820 -(580 + 1239)) ,[v7("\197\176\8\35\207\245\161\30\59","\163\182\192\109\79")]=v240,[v7("\59\52\1\206\242\49\21\16\197\249\56","\149\84\70\96\160")]=v241,[v7("\55\8\62\238\42\3\8\227","\141\88\102\109")]=v242,[v7("\160\86\198\118\50\56\84\205\167\91","\161\211\51\170\16\122\93\53")]=v243,[v7("\248\161\189\36\255\161\165\38\218\173\166\33\237\171","\72\155\206\210")]=v245,[v7("\69\117\91\2\55\73\109\90\58\60\82\123\88","\83\38\26\52\110")]=v244,[v7("\93\25\38\68\84\18\19\79\85\18\20\86\93\27\43","\38\56\119\71")]=true,[v7("\246\225\89\212\41\83\247","\54\147\143\56\182\69")]=true};if fugaInterface.lifesOption:isChecked() then local v459=0 -0 ;while true do if (v459==0) then v246.lifes=0 + 0 ;v246.enableLifes=true;v459=1 + 0 ;end if ((1 + 0)==v459) then if (fugaInterface.lifesValue:getValue()==(0 -0)) then return warn(v7("\255\143\233\72\211\223\133\191\101\214\208\132\191\127\222\218\148\250\7","\191\182\225\159\41"));end v246.amountLifes=fugaInterface.lifesValue:getValue();break;end end end if fugaInterface.reviveOption:isChecked() then v246.enableRevive=true;v246.alreadyChecked=false;end if fugaInterface.multipleOption:isChecked() then local v462=0;while true do if ((0 + 0)==v462) then v246.enableMultiple=true;v246.count=1170 -(645 + 522) ;break;end end end table.insert(storageProfiles.fugaSpells,v246);refreshFugaList(fugaInterface,storageProfiles.fugaSpells);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);fugaInterface.castSpell:clearText();fugaInterface.orangeSpell:clearText();fugaInterface.onScreen:clearText();fugaInterface.cooldownTotal:setValue(1790 -(1010 + 780) );fugaInterface.cooldownActive:setValue(0 + 0 );fugaInterface.hppercent:setValue(0 -0 );fugaInterface.reviveOption:setChecked(false);fugaInterface.lifesOption:setChecked(false);fugaInterface.multipleOption:setChecked(false);fugaInterface.multipleOption:show();fugaInterface.lifesValue:hide();end;refreshFugaList(fugaInterface,storageProfiles.fugaSpells);storage.widgetPos=storage.widgetPos or {} ;informationWidget={};local v50={v7("\56\26\39\66\191\130\218\63","\162\75\114\72\53\235\231")};for v247,v248 in ipairs(v50) do informationWidget[v248]=setupUI(v25,g_ui.getRootWidget());end local function v51(v250) informationWidget[v250].onDragEnter=function(v391,v392) local v393=0 -0 ;while true do if (1==v393) then v391.movingReference={x=v392.x-v391:getX() ,y=v392.y-v391:getY() };return true;end if (v393==(1836 -(1045 + 791))) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v391:breakAnchors();v393=2 -1 ;end end end;informationWidget[v250].onDragMove=function(v394,v395,v396) local v397=v394:getParent():getRect();local v398=math.min(math.max(v397.x,v395.x-v394.movingReference.x ),(v397.x + v397.width) -v394:getWidth() );local v399=math.min(math.max(v397.y-v394:getParent():getMarginTop() ,v395.y-v394.movingReference.y ),(v397.y + v397.height) -v394:getHeight() );v394:move(v398,v399);return true;end;informationWidget[v250].onDragLeave=function(v400,v401) local v402=0 -0 ;while true do if (v402==(505 -(351 + 154))) then storage.widgetPos[v250]={};storage.widgetPos[v250].x=v400:getX();v402=1;end if (v402==(1575 -(1281 + 293))) then storage.widgetPos[v250].y=v400:getY();return true;end end end;end for v254,v255 in pairs(informationWidget) do v51(v254);informationWidget[v254]:setPosition(storage.widgetPos[v254] or {266 -(28 + 238) ,1609 -(1381 + 178) } );end local v52=informationWidget[v7("\159\52\75\245\103\7\148\40","\98\236\92\36\130\51")];macro(94 + 6 ,function() if v21.showInfos then for v499,v500 in ipairs(storageProfiles.fugaSpells) do if v500.selfHealth then local v622=0;while true do if (v622==0) then v52:show();v52:setText(v7("\141\55\37\151\108\143\154\3\254\89","\80\196\121\108\218\37\200\213")   .. getPlayersAttack(false)   .. v7("\64\111\66\79\110\60\169\37\93\54\37\11","\234\96\19\98\31\43\110")   .. calculatePercentage(v500.selfHealth)   .. "%" );v622=1 + 0 ;end if (v622==(1 + 0)) then return;end end end end else v52:hide();end end);macro(1,function() if  not (fugaSpellsWidgets and storageProfiles.fugaSpells) then return;end for v403,v404 in ipairs(storageProfiles.fugaSpells) do local v405=fugaSpellsWidgets[v404.index];if v405 then local v501=0 -0 ;local v502;local v503;while true do if (v501==0) then v502=firstLetterUpper(v404.onScreen);v503=v7("\1\13\87\194\162","\235\102\127\50\167\204\18");v501=1 + 0 ;end if (v501==(472 -(381 + 89))) then if (v404.enableLifes and (v404.lifes>(0 + 0))) then v502=""   .. v404.lifes   .. v7("\2\242\25","\224\34\142\57")   .. v502 ;end v405:setText(v502);v501=3 + 0 ;end if (v501==(1 -0)) then if (v404.activeCooldown and (v404.activeCooldown>now)) then local v738=0;while true do if (v738==(1157 -(1074 + 82))) then if (v404.enableLifes and (v404.lifes==(0 -0))) then v404.activeCooldown=nil;end break;end if (v738==0) then v502=v502   .. v7("\10\225","\78\48\193\149\67\36")   .. formatRemainingTime(v404.activeCooldown) ;v503=v7("\115\78\208\62\103\22\56","\33\80\126\224\120");v738=1;end end elseif (v404.totalCooldown and (v404.totalCooldown>now)) then v502=v502   .. v7("\182\232","\60\140\200\99\164")   .. formatRemainingTime(v404.totalCooldown) ;v503=v7("\196\210\34\114\242\211\164","\194\231\148\100\70");else v502=v502   .. v7("\28\12\145\176","\168\38\44\161\195\150") ;if (v404.enableMultiple and v404.canReset) then v404.count=1787 -(214 + 1570) ;v404.canReset=false;end if v404.enableLifes then v404.lifes=0;end if v404.enableRevive then v404.alreadyChecked=false;end end if (v404.enableMultiple and (v404.count>0)) then v502=""   .. v404.count   .. v7("\192\224\194","\118\224\156\226\22\80\136\214")   .. v502 ;end v501=1457 -(990 + 465) ;end if (v501==3) then v405:setColor(v503);break;end end end end end);keyIcon.title:setOn(v21.keyMacro);keyIcon.title.onClick=function(v256) local v257=0 + 0 ;while true do if (v257==(1 + 0)) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if (v257==(0 + 0)) then v21.keyMacro= not v21.keyMacro;v256:setOn(v21.keyMacro);v257=1;end end end;keyIcon.settings.onClick=function(v258) if  not keyInterface:isVisible() then local v463=0 -0 ;while true do if (v463==1) then keyInterface:focus();break;end if (v463==0) then keyInterface:show();keyInterface:raise();v463=1727 -(1668 + 58) ;end end else local v464=626 -(512 + 114) ;while true do if (v464==(0 -0)) then keyInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end end;keyInterface.closeButton.onClick=function(v259) keyInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;keyInterface.key.onHoverChange=function(v260,v261) if v261 then x=true;onKeyPress(function(v505) if  not x then return;end v260:setText(v505);end);else x=false;end end;function refreshKeyList(v262,v263) if v263 then for v506,v507 in pairs(v262.spellList:getChildren()) do v507:destroy();end for v508,v509 in ipairs(v263) do local v510=setupUI(v24,v262.spellList);v510.showTimespell:hide();v510.onDoubleClick=function(v569) local v570=0 -0 ;local v571;while true do if (v570==(3 -2)) then v262.castSpell:setText(v571.spellCast);for v739,v740 in ipairs(storageProfiles.keySpells) do if (v740==v509) then removeTable(storageProfiles.keySpells,v739);end end v570=1 + 1 ;end if (v570==(1 + 1)) then scriptFuncs.reindexTable(v263);v510:destroy();break;end if ((0 + 0)==v570) then v571=v509;v262.key:setText(v571.keyPress);v570=3 -2 ;end end end;v510.enabled:setChecked(v509.enabled);v510.enabled:setTooltip(( not v509.enabled and v7("\251\169\196\223\127\244\29\61\206\162\201\209","\110\190\199\165\189\19\145\61")) or v7("\254\226\100\233\137\203\223\171\68\248\142\203\214","\167\186\139\23\136\235") );v510.enabled.onClick=function(v572) local v573=1994 -(109 + 1885) ;while true do if (v573==1) then v510.enabled:setTooltip(( not v509.enabled and v7("\63\187\137\15\22\176\200\62\10\176\132\1","\109\122\213\232")) or v7("\202\254\177\49\236\251\167\112\221\231\167\60\226","\80\142\151\194") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if ((1469 -(1269 + 200))==v573) then v509.enabled= not v509.enabled;v510.enabled:setChecked(v509.enabled);v573=1 -0 ;end end end;v510.remove.onClick=function(v574) local v575=815 -(98 + 717) ;while true do if (v575==1) then v510:destroy();break;end if (v575==(826 -(802 + 24))) then for v741,v742 in ipairs(storageProfiles.keySpells) do if (v742==v509) then removeTable(storageProfiles.keySpells,v741);end end scriptFuncs.reindexTable(storageProfiles.keySpells);v575=1 -0 ;end end end;v510.textToSet:setText(firstLetterUpper(v509.spellCast)   .. v7("\67\218\55\103\6\223\45\12","\44\99\166\23")   .. v509.keyPress );end end end keyInterface.insertKey.onClick=function(v264) local v265=0 -0 ;local v266;local v267;while true do if (v265==(1 + 2)) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);keyInterface.key:clearText();v265=4 + 0 ;end if (v265==(1 + 0)) then if ( not v266 or (v266:len()==0)) then return warn(v7("\85\249\63\55\63\173\120\183\2\51\42\234","\196\28\151\73\86\83"));end for v576,v577 in ipairs(storageProfiles.keySpells) do if (v577.keyPress==v266) then return warn(v7("\216\6\48\80\163\84\10\115\242\7\48\80\163\92\28\115\247\77","\22\147\99\73\112\226\56\120"));end end v265=1 + 1 ;end if (v265==(5 -3)) then table.insert(storageProfiles.keySpells,{[v7("\177\123\230\240\149","\237\216\21\130\149")]= #storageProfiles.keySpells + (3 -2) ,[v7("\145\94\90\83\188\234\95\145\90","\62\226\46\63\63\208\169")]=v267,[v7("\238\28\76\179\13\8\60\77","\62\133\121\53\227\127\109\79")]=v266,[v7("\21\26\51\247\218\171\166","\194\112\116\82\149\182\206")]=true});refreshKeyList(keyInterface,storageProfiles.keySpells);v265=2 + 1 ;end if (v265==(0 + 0)) then v266=keyInterface.key:getText();v267=keyInterface.castSpell:getText():lower():trim();v265=1;end if ((4 + 0)==v265) then keyInterface.castSpell:clearText();break;end end end;refreshKeyList(keyInterface,storageProfiles.keySpells);macro(storage.scrollBars1.macroDelay,function() if  not v26.title:isOn() then return;end if (stopCombo and (stopCombo>=now)) then return;end if (stopToCast() or isAnySelectedKeyPressed() or  not g_game.isAttacking()) then return;end local v268=player:getPosition();local v269=g_game.getAttackingCreature();local v270=v269:getPosition();if  not v270 then return;end local v271=getDistanceBetween(v268,v270);for v406,v407 in ipairs(storageProfiles.comboSpells) do if (v407.enabled and (v271<=v407.distance)) then if ( not v407.cooldownSpells or (v407.cooldownSpells<=now)) then say(v407.spellCast);end end end end);local v58=g_game.getLocalPlayer();macro(1 + 0 ,function() local v272=0;local v273;while true do if (v272==(0 + 0)) then if  not fugaIcon.title:isOn() then return;end if isInPz() then return;end v272=1;end if (v272==(1434 -(797 + 636))) then v273=v58:getHealthPercent();for v578,v579 in ipairs(storageProfiles.fugaSpells) do if (v579.enabled and (v273<=calculatePercentage(v579.selfHealth))) then if ( not v579.totalCooldown or (v579.totalCooldown<=now)) then if  not canCastFuga() then stopCombo=now + (1213 -963) ;forceSay(v579.spellCast);end end end end break;end end end);macro(1620 -(1427 + 192) ,function() local v274=0 + 0 ;while true do if (v274==0) then if  not g_mouse.isPressed(16 -9 ) then return;end if  not fugaIcon.title:isOn() then return;end v274=1 + 0 ;end if (v274==(1 + 0)) then for v580,v581 in ipairs(storageProfiles.fugaSpells) do if (v581.enabled and (g_mouse.isPressed(7))) then if ( not v581.totalCooldown or (v581.totalCooldown<=now)) then if  not canCastFuga() then local v758=326 -(192 + 134) ;while true do if (v758==0) then stopCombo=now + 250 ;return forceSay(v581.spellCast);end end end end end end break;end end end);macro(storage.scrollBars1.macroDelay,function() if  not keyIcon.title:isOn() then return;end if modules.game_console:isChatEnabled() then return;end for v408,v409 in ipairs(storageProfiles.keySpells) do if (v409.enabled and (modules.corelib.g_keyboard.areKeysPressed(v409.keyPress))) then local v514=1276 -(316 + 960) ;while true do if (v514==0) then stopCombo=now + 140 + 110 ;say(v409.spellCast);break;end end end end end);onTalk(function(v275,v276,v277,v278,v279,v280) local v281=0 + 0 ;while true do if (v281==(2 + 0)) then for v582,v583 in ipairs(CONFIG.pot2) do if (v278==v583.orangeText:lower()) then v583.exhaust=now + v583.cooldown ;end end for v584,v585 in ipairs(storageProfiles.comboSpells) do if (v278==v585.orangeSpell) then v585.cooldownSpells=now + v585.cooldown ;end end v281=11 -8 ;end if (v281==(552 -(83 + 468))) then if (v278==v7("\27\161\70\13\213\162\55\56\161\78\25","\110\89\200\44\120\160\130")) then yaibaSlow=os.time() + (1821 -(1202 + 604)) ;end for v586,v587 in ipairs(CONFIG.pot) do if (v278==v587.orangeText:lower()) then v587.exhaust=now + v587.cooldown ;end end v281=2;end if (3==v281) then for v588,v589 in ipairs(storageProfiles.fugaSpells) do if (v278==v589.orangeSpell) then if v589.enableLifes then local v743=0;while true do if (v743==(0 -0)) then v589.activeCooldown=(now + (v589.cooldownActive * 1000)) -(416 -166) ;v589.totalCooldown=(now + (v589.cooldownTotal * (2768 -1768))) -(575 -(45 + 280)) ;v743=1 + 0 ;end if (v743==(1 + 0)) then v589.lifes=v589.amountLifes;break;end end end if (v589.enableRevive and  not v589.alreadyChecked) then local v744=0 + 0 ;while true do if (v744==(1 + 0)) then v589.alreadyChecked=true;break;end if (0==v744) then v589.totalCooldown=(now + (v589.cooldownTotal * 1000)) -(44 + 206) ;v589.activeCooldown=(now + (v589.cooldownActive * (1851 -851))) -(2161 -(340 + 1571)) ;v744=1;end end end if v589.enableMultiple then if (v589.count>(0 + 0)) then v589.count=v589.count-(1773 -(1733 + 39)) ;v589.activeCooldown=(now + (v589.cooldownActive * (2747 -1747))) -(1284 -(125 + 909)) ;if (v589.count==(1948 -(1096 + 852))) then v589.totalCooldown=(now + (v589.cooldownTotal * (449 + 551))) -250 ;v589.canReset=true;break;end end end if  not (v589.enableLifes or v589.enableRevive or v589.enableMultiple) then v589.activeCooldown=(now + (v589.cooldownActive * (1428 -428))) -250 ;v589.totalCooldown=(now + (v589.cooldownTotal * (970 + 30))) -(762 -(409 + 103)) ;break;end end end break;end if (v281==0) then v278=v278:lower();if (v275~=player:getName()) then return;end v281=237 -(46 + 190) ;end end end);onTextMessage(function(v282,v283) for v410,v411 in ipairs(storageProfiles.fugaSpells) do if v411.enableLifes then if (v283:lower():find(v7("\166\204\89\84\70\95\123\72\235\209\78\72\66\89\56\72\190","\45\203\163\43\38\35\42\91")) and v411.activeCooldown and (v411.activeCooldown>=now)) then v411.lifes=v411.lifes-(96 -(51 + 44)) ;end end end end);onPlayerPositionChange(function(v284,v285) local v286=0 + 0 ;local v287;while true do if (0==v286) then v287={x=2531 -(1114 + 203) ,y=1412 -(228 + 498) ,z=2 + 4 };for v590,v591 in ipairs(storageProfiles.fugaSpells) do if (v591.enableRevive and (v591.spellCast==v7("\219\159\221\45\134\174\93","\52\178\229\188\67\231\201"))) then if ((v284.x==v287.x) and (v284.y==v287.y) and (v284.z==v287.z)) then local v747=0;while true do if (v747==(0 + 0)) then v591.activeCooldown=nil;v591.alreadyChecked=true;break;end end end end end break;end end end);UI.Separator();UI.Label(v7("\17\96\121\42\210\112\99\12\96\115\54\216\111","\67\65\33\48\100\151\60")):setFont(v7("\220\238\190\203\252\217\243\136\215\253\203","\147\191\135\206\184"));local v59=v7("\129\48\178\211\217\64","\210\228\72\198\161\184\51");local v60=setupUI([[
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


]]);v60:setId(PanelName);if  not storage[v59] then storage[v59]={};end local v61=storage[v59];PainelsWindow=UI.createWidget(v7("\6\72\250\30\118\194\1\64\253\20\124\217","\174\86\41\147\112\19"),rootWidget);PainelsWindow:hide();extrasWindow=UI.createWindow(v7("\126\24\153\25\36\28\38\162\85\4\130\28","\203\59\96\237\107\69\111\113"),rootWidget);extrasWindow:hide();extrasWindow.closeButton.onClick=function(v288) extrasWindow:hide();end;local v63=extrasWindow.content.right;local v64=extrasWindow.content.left;v60.editMusica.onClick=function(v289) extrasWindow:show();extrasWindow:raise();extrasWindow:focus();end;PainelsWindow.closeButton.onClick=function(v290) PainelsWindow:hide();end;v60.editPainel.onClick=function(v291) PainelsWindow:show();PainelsWindow:raise();PainelsWindow:focus();end;local v68={[v7("\39\25\163\237\53\255\192\42\37\169\237\62\161","\183\68\118\204\129\81\144")]=5000,[v7("\30\162\99\247\2\128\2\168\68\225\19\150\29","\226\110\205\16\132\107")]={v7("\225\214\244\202\84\171\197\239\208\1\248\198\236\216\69\228","\33\139\163\128\185")}};onTextMessage(function(v292,v293) local v294=0 -0 ;while true do if (v294==(1905 -(830 + 1075))) then v293=v293:lower();for v592,v593 in ipairs(v68.possibleTexts) do filterText=v593:trim():lower();if v293:find(filterText) then v68.cooldownUse=now + v68.cooldownSelo1 ;break;end end break;end end end);UI.Separator(v64);CONFIG={[v7("\69\93\3\219\89","\190\55\56\100")]={{[v7("\69\191\57\18\31","\147\54\207\92\126\115\131")]=v7("\15\56\50\61\31\123\10\52\59\120\31\127\25\56\58\115","\30\109\81\85\29\109"),[v7("\252\126\91\186\50\209\235\241","\156\159\17\52\214\86\190")]=100}},[v7("\188\234\186\185\160\205\183\169","\220\206\143\221")]={{[v7("\149\109\40\27\212","\178\230\29\77\119\184\172")]=v7("\247\183\0\14\98\184\231\187\13\30\121\253\231\191\30\18\120\246","\152\149\222\106\123\23"),[v7("\222\41\249\79\177\210\49\248","\213\189\70\150\35")]=1369 -(231 + 1038) }},[v7("\95\90\96","\104\47\53\20")]={{[v7("\170\72","\111\195\44\225\124\220")]=107,[v7("\215\84\1\125\172\174\236\67\24\103","\203\184\38\96\19\203")]=v7("\48\51\127\68\203\53\51\123\68\218\45\118\107\0","\174\89\19\25\33"),[v7("\44\29\93\66\243\136\28\33","\107\79\114\50\46\151\231")]=400}},[v7("\32\167\188\43\139","\160\89\198\213\73\234\89\215")]={{[v7("\91\97\177\242\201","\165\40\17\212\158")]=v7("\231\208\2\38\51\165\192\9\58\36\228","\70\133\185\104\83"),[v7("\7\74\75\38\205\11\82\74","\169\100\37\36\74")]=57696 -43696 }},[v7("\16\136\182\2","\48\96\231\194")]={{[v7("\193\94","\227\168\58\110\77\121\184\207")]=31720 -19907 ,[v7("\116\46\190\78\182\222\69\160\99\40","\197\27\92\223\32\209\187\17")]=v7("\10\31\197\254\6\83\131\249\6\75\215\254\17\30","\155\99\63\163"),[v7("\129\222\174\129\189\139\149\223","\228\226\177\193\237\217")]=998 -598 }}};onTalk(function(v295,v296,v297,v298,v299,v300) local v301=0;while true do if (v301==(0 + 0)) then if (v295~=player:getName()) then return;end if ((v298:lower()==id) and (storage.time.t<now)) then storage.time.t=now + tempo1 ;end break;end end end,v64);macro(100,function() for v413,v414 in ipairs(getSpectators(posz())) do if v414:isPlayer() then if (v414==player) then player:setMarked(v7("\54\188\34\229\63","\134\84\208\67"));elseif v414:isPartyMember() then v414:setMarked(v7("\10\169\138\80\28\187","\60\115\204\230"));elseif (v414:getEmblem()~=1) then v414:setMarked(v7("\245\63\239","\16\135\90\139"));end end end end);UI.Separator();UI.Label(v7("\103\113\10\50\92\20\90\93\126\19\38\20","\24\52\20\102\83\46\52"),v64):setFont(v7("\199\38\49\55\0\194\59\7\43\1\208","\111\164\79\65\68"));local v59=v7("\245\220\143\223\60","\138\166\185\227\190\78");local v60=setupUI([[
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

]],v64);v60:setId(v59);if  not storage[v59] then storage[v59]={[v7("\194\112","\121\171\20\165\87\50\67")]=11059 -7904 ,[v7("\210\49\173\58\188","\98\166\88\217\86\217")]=enabled,[v7("\243\248\120\3\138\217\242","\188\150\150\25\97\230")]=false,[v7("\201\140\75\22\5\227\221","\141\186\233\63\98\108")]=true,[v7("\249\250","\69\145\138\76\214")]=57 -37 };end v60.title:setOn(storage[v59].enabled);v60.title.onClick=function(v302) local v303=0;while true do if (v303==(0 -0)) then storage[v59].enabled= not storage[v59].enabled;v302:setOn(storage[v59].enabled);break;end end end;local v70=function() local v304=0 -0 ;local v305;while true do if (v304==(1249 -(111 + 1137))) then v60.help:setText(v7("\20\210\250","\50\93\180\218\189\23\46\71")   .. v305   .. v7("\158\140\107\16","\40\190\196\59\44\36\188")   .. storage[v59].hp   .. "%" );break;end if (v304==0) then v305=nil;if storage[v59].setting then v305=v7("\68\206\155\142\186\2","\118\16\175\233\233\223");else v305=v7("\174\138\48\182\247","\29\235\228\85\219\142\235");end v304=1;end end end;v70();v60.HP.onValueChange=function(v306,v307) storage[v59].hp=v307;v70();end;v60.item:setItemId(storage[v59].id);v60.item.onItemChange=function(v309) storage[v59].id=v309:getItemId();end;v60.HP:setValue(storage[v59].hp);macro(159 -(91 + 67) ,function() if  not storage[v59].enabled then return;end if storage[v59].setting then if (g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<storage[v59].hp)) then local v594=0;while true do if (v594==(0 -0)) then say(v7("\23\64\215\191\251\116\77\15\77\213\188\245\104\77\26\80\201\190\243\115","\109\92\37\188\212\154\29"));say(v7("\47\234\175\200\48\83\68\220\172\202\57\85\17\175\130\214\36\80\13\225","\58\100\143\196\163\81"));v594=1 + 0 ;end if ((524 -(423 + 100))==v594) then say(v7("\49\71\40\168\62\64\165\61\18\75\43\172\42\9\195\27\15\72\42\173","\110\122\34\67\195\95\41\133"));break;end end end end end);UI.Label(v7("\65\152\118\111\150\70\129\126\102\250\70\235","\182\21\209\59\42"),v63):setFont(v7("\180\94\213\14\46\184\163\113\202\19\53","\222\215\55\165\125\65"));setDefaultTab(v7("\1\208\207\20","\42\76\177\166\122\146\161\141"));timeSpellPanelName=v7("\177\131\8\203\106\102\160\134\9\204\118\98","\22\197\234\101\174\25");local v60=setupUI([[
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
]],v63);v60:setId(timeSpellPanelName);local v73=setupUI([[
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
      
]],g_ui.getRootWidget());v73:hide();local v8=modules.game_bot.contentsPanel.config:getCurrentOption().text;TimeSpellConfig={[v7("\62\36\160\208\122\188","\230\77\84\197\188\22\207\183")]={}};local v74={};local v75=v7("\182\22\201\232\195","\85\153\116\166\156\236\193\144")   .. v8   .. "/"   .. name()   .. v7("\155\212\68\190\225\51\180\229\65\191\170\10\183\239\67","\96\196\128\45\211\132") ;local v76=v73.MainPanel;local v77=nil;local v78=nil;if g_resources.fileExists(v75) then local v416,v417=pcall(function() return json.decode(g_resources.readFileContents(v75));end);if  not v416 then return onError(v7("\16\159\105\80\192\239\184\215\52\137\114\81\213\239\178\209\57\136\59\23","\184\85\237\27\63\178\207\212")   .. v75   .. v7("\65\23\73\107\7\25\15\86\16\25\29\87\13\25\25\77\7\91\5\90\5\21\73\91\13\85\12\75\13\25\61\86\5\92\58\79\13\85\5\17\2\74\6\81\70\25\45\90\28\88\0\83\27\3","\63\104\57\105")   .. v417 );end TimeSpellConfig=v417;if (type(TimeSpellConfig.spells)~=v7("\31\134\166\72\14","\36\107\231\196")) then TimeSpellConfig.spells={};end for v465,v466 in pairs(TimeSpellConfig.spells) do if ((v466.totalCd-now)>v466.totalTime) then local v595=0;while true do if (v595==(0 + 0)) then TimeSpellConfig.spells[v465].totalCd=0;TimeSpellConfig.spells[v465].activeCd=0 -0 ;break;end end end end end function timeSpellConfigSave() local v311=v75;local v312,v313=pcall(function() return json.encode(TimeSpellConfig,2 + 0 );end);if  not v312 then return onError(v7("\120\167\176\136\79\245\177\134\75\188\172\128\29\182\173\137\91\188\165\146\79\180\182\142\82\187\236\199\121\176\182\134\84\185\177\221\29","\231\61\213\194")   .. v313 );end if (v313:len()>((871 -(326 + 445)) * (4468 -3444) * (2281 -1257))) then return onError(v7("\42\162\51\117\0\170\40\97\8\185\52\124\7\237\59\122\5\168\125\124\31\168\47\51\88\253\109\94\43\237\42\122\5\161\125\125\6\185\125\113\12\237\46\114\31\168\57\61","\19\105\205\93"));end g_resources.writeFileContents(v75,v313);end v60.title:setOn(TimeSpellConfig.enabled);v60.title.onClick=function(v314) local v315=0 -0 ;while true do if (v315==1) then timeSpellConfigSave();if  not TimeSpellConfig.enabled then for v656,v657 in pairs(v74) do if (v657~=nil) then v74[v656]:destroy();v74[v656]=nil;end end end break;end if (v315==(711 -(530 + 181))) then TimeSpellConfig.enabled= not TimeSpellConfig.enabled;v314:setOn(TimeSpellConfig.enabled);v315=882 -(614 + 267) ;end end end;v60.settings.onClick=function(v316) local v317=0;while true do if (v317==0) then v73:show();v73:raise();v317=33 -(19 + 13) ;end if (1==v317) then v73:focus();break;end end end;v73.closeButton.onClick=function(v318) v73:hide();timeSpellConfigSave();end;local v81=function(v319) local v320=0;while true do if (v320==0) then v74[v319]:destroy();v74[v319]=nil;break;end end end;local v82=function() if TimeSpellConfig.spells then for v519,v520 in pairs(v76.spellList:getChildren()) do v520:destroy();end for v521,v522 in pairs(TimeSpellConfig.spells) do local v523=UI.createWidget(v7("\154\24\219\141\51\140\6\202\147\38","\95\201\104\190\225"),v76.spellList);v523.onDoubleClick=function(v596) local v597=v522;TimeSpellConfig.spells[v522.spell]=nil;reindexTable(TimeSpellConfig.spells);if (v74[v597.spell]~=nil) then local v658=0 -0 ;while true do if (v658==0) then v74[v597.spell]:destroy();v74[v597.spell]=nil;break;end end end v76.spellName:setText(v597.spell);v76.onScreen:setText(v597.onScreen);v76.activeTime:setText(v597.activeTime);v76.totalTime:setText(v597.totalTime);v76.posX:setText(v597.x);v76.posY:setText(v597.y);v523:destroy();end;v523.enabled:setChecked(v522.enabled);v523.enabled.onClick=function(v599) local v600=0 -0 ;while true do if ((0 -0)==v600) then v522.enabled= not v522.enabled;v523.enabled:setChecked(v522.enabled);break;end end end;v523.remove.onClick=function(v601) TimeSpellConfig.spells[v522.spell]=nil;v81(v522.spell);reindexTable(TimeSpellConfig.spells);v523:destroy();end;v523:setText("["   .. v522.onScreen   .. v7("\146\145\129\237\160\196\205\202\160\220\207\148\239","\174\207\171\161")   .. (v522.totalTime/(260 + 740))   .. "s" );end end end;v82();v76.addSpell.onClick=function(v321) local v322=0 -0 ;local v323;local v324;local v325;local v326;local v327;local v328;while true do if (v322==0) then v323=v76.spellName:getText():trim():lower();v324=v76.onScreen:getText():trim();v325=tonumber(v76.activeTime:getText()) or (0 -0) ;v322=1813 -(1293 + 519) ;end if (v322==5) then v76.totalTime:setText("");v76.posX:setText("");v76.posY:setText("");v322=6;end if (v322==(11 -5)) then v82();break;end if ((4 -2)==v322) then if  not v326 then return warn(v7("\217\247\0\246\203\199\232\242\1\169\184\242\227\234\8\225\184\214\173\232\12\255\241\211\173\253\2\252\244\211\226\233\3\189","\183\141\158\109\147\152"));end if  not v327 then return warn(v7("\24\0\235\9\31\25\227\0\32\83\166\41\34\29\227\30\108\8\166\26\45\5\239\8\108\48\166\28\35\26\239\24\37\6\232\66","\108\76\105\134"));end if  not v328 then return warn(v7("\223\204\188\228\253\251\192\189\237\148\171\224\191\245\203\249\133\176\161\216\234\201\184\229\142\210\133\161\238\221\226\209\184\238\192\165","\174\139\165\209\129"));end v322=5 -2 ;end if (v322==3) then if (v323:len()==(0 -0)) then return warn(v7("\151\186\239\196\245\19\117\116\175\233\162\228\200\23\117\106\227\178\162\215\199\15\121\124\227\160\242\196\202\15\62","\24\195\211\130\161\166\99\16"));end if (v324:len()==0) then return warn(v7("\114\10\228\41\96\6\67\15\229\118\19\38\83\23\169\45\19\24\71\14\236\108\92\24\6\44\231\31\80\4\67\6\231\98","\118\38\99\137\76\51"));end TimeSpellConfig.spells[v323]={[v7("\244\40\1\23\17","\64\157\70\101\114\105")]= #TimeSpellConfig.spells + (2 -1) ,[v7("\83\184\162\239\28","\112\32\200\199\131")]=v323,[v7("\35\94\111\187\209\174\39\34","\66\76\48\60\216\163\203")]=v324,[v7("\187\133\109\250\73\203\16\179\139\124","\68\218\230\25\147\63\174")]=v325,[v7("\172\41\71\69\160\168\9\87","\214\205\74\51\44")]=0 + 0 ,[v7("\238\67\246\253\123\206\69\239\249","\23\154\44\130\156")]=v326,[v7("\5\169\185\175\58\48\21","\115\113\198\205\206\86")]=0,x=v327,y=v328,[v7("\129\89\255\88\136\82\250","\58\228\55\158")]=true};v322=4;end if (1==v322) then v326=tonumber(v76.totalTime:getText());v327=tonumber(v76.posX:getText()) or (0 + 0) ;v328=tonumber(v76.posY:getText()) or (90 -51) ;v322=1 + 1 ;end if ((2 + 2)==v322) then v76.spellName:setText("");v76.onScreen:setText("");v76.activeTime:setText("");v322=5;end end end;local v84=v7("\222\188\249\25\53\169\50\177\157\186\110\124\175\52\183\130\215\60\51\184\59\176\196\211\33\48\162\39\238\201\210\34\61\174\62\222\201\144\40\51\163\33\238\201\198\43\46\169\52\186\136\157\127\109\189\45\249\155\223\59\50\169\48\176\227\144\110\51\189\52\183\128\196\55\102\237\101\250\222\128\68\124\237\37\181\141\212\39\50\170\111\244\217\144\118\86\237\117\178\134\211\59\47\172\55\184\140\138\110\40\191\32\177\227\144\110\44\165\52\186\157\223\35\102\237\51\181\133\195\43\86\237\117\176\155\209\41\59\172\55\184\140\138\110\40\191\32\177\227\144\110\40\168\45\160\196\209\59\40\162\120\166\140\195\39\38\168\111\244\157\194\59\57\199","\85\212\233\176\78\92\205");local function v85(v329) local v330=0 + 0 ;local v331;local v332;while true do if (v330==(1097 -(709 + 387))) then v332=string.format(v7("\15\22\216\228","\130\42\56\232"),(v329-now)/1000 )   .. "s" ;return v332;end if (v330==0) then v331=(v329-now)/(2858 -(673 + 1185)) ;v332="";v330=1;end end end local function v51(v333) v74[v333].onDragEnter=function(v418,v419) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v418:breakAnchors();v418.movingReference={x=v419.x-v418:getX() ,y=v419.y-v418:getY() };return true;end;v74[v333].onDragMove=function(v421,v422,v423) local v424=0;local v425;local v426;local v427;while true do if (v424==(5 -3)) then return true;end if (v424==1) then v427=math.min(math.max(v425.y-v421:getParent():getMarginTop() ,v422.y-v421.movingReference.y ),(v425.y + v425.height) -v421:getHeight() );v421:move(v426,v427);v424=6 -4 ;end if (v424==(0 -0)) then v425=v421:getParent():getRect();v426=math.min(math.max(v425.x,v422.x-v421.movingReference.x ),(v425.x + v425.width) -v421:getWidth() );v424=1 + 0 ;end end end;v74[v333].onDragLeave=function(v428,v429) local v430=0;while true do if (v430==1) then timeSpellConfigSave();return true;end if ((0 + 0)==v430) then TimeSpellConfig.spells[v333].x=v428:getX();TimeSpellConfig.spells[v333].y=v428:getY();v430=1 -0 ;end end end;end local v86=macro(25 + 75 ,function() if  not v60.title:isOn() then return;end for v431,v432 in pairs(TimeSpellConfig.spells) do if ( not v432.enabled and (v74[v432.spell]~=nil)) then v74[v432.spell]:destroy();v74[v432.spell]=nil;elseif v432.enabled then if (v74[v432.spell]==nil) then local v722=0 -0 ;while true do if (v722==(1 -0)) then v51(v432.spell);break;end if (v722==(1880 -(446 + 1434))) then v74[v432.spell]=setupUI(v84,g_ui.getRootWidget());v74[v432.spell]:setPosition({x=v432.x,y=v432.y});v722=1284 -(1040 + 243) ;end end end if ( not v432.totalCd or (v432.totalCd<now)) then v74[v432.spell]:setText(v432.onScreen   .. v7("\176\245\116\240","\95\138\213\68\131\32") );v74[v432.spell]:setColor(v7("\45\58\164\70\120","\22\74\72\193\35"));elseif (v432.activeCd>=now) then v74[v432.spell]:setColor(v7("\111\41\180\126\10\95\194","\56\76\25\132"));local v754=v85(v432.activeCd);v74[v432.spell]:setText(v432.onScreen   .. v7("\4\129","\175\62\161\203\70")   .. v754 );else local v755=0;local v756;while true do if (v755==1) then v74[v432.spell]:setText(v432.onScreen   .. v7("\115\236","\88\73\204\80")   .. v756 );break;end if (v755==0) then v74[v432.spell]:setColor(v7("\127\251\229\71\101\104\141","\85\92\189\163\115"));v756=v85(v432.totalCd);v755=1;end end end end end end);onTalk(function(v337,v338,v339,v340,v341,v342) if (v337~=player:getName()) then return;end v340=v340:lower();if (TimeSpellConfig.spells[v340]==nil) then return;end if (TimeSpellConfig.spells[v340].activeTime>0) then TimeSpellConfig.spells[v340].activeCd=now + TimeSpellConfig.spells[v340].activeTime ;end TimeSpellConfig.spells[v340].totalCd=now + TimeSpellConfig.spells[v340].totalTime ;timeSpellConfigSave();end);local v24=[[
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
]];local v8=modules.game_bot.contentsPanel.config:getCurrentOption().text;rootWidget=g_ui.getRootWidget();if rootWidget then local v433=0;while true do if (v433==(2 -1)) then TabBar=PainelsWindow.paTabBar;TabBar:setContentWidget(PainelsWindow.paImagem);v433=1849 -(559 + 1288) ;end if (v433==(1933 -(609 + 1322))) then for v625=1,455 -(13 + 441)  do hpPanel4=g_ui.createWidget(v7("\244\71\205\84\93\127\240","\26\156\55\157\53\51"));cmbPanel2=g_ui.createWidget(v7("\143\232\23\215\189\92","\48\236\184\118\185\216"));hpPanel=g_ui.createWidget(v7("\237\173\103\49\193\49\233","\84\133\221\55\80\175"));hpPanel2=g_ui.createWidget(v7("\181\247\20\167\201\89\177","\60\221\135\68\198\167"));hpPanel3=g_ui.createWidget(v7("\230\173\200\130\76\220\226","\185\142\221\152\227\34"));TabBar:addTab(v7("\122\208\81\252","\151\56\165\55\154\35\83"),hpPanel4);color=UI.Label(v7("\133\79\33\235\182\97\10\252\167\70\22","\142\192\35\101"),hpPanel4);color:setColor(v7("\217\103\40\173\224\137","\118\182\21\73\195\135\236\204"));UI.Separator(hpPanel4);color=UI.Label(v7("\42\41\28\70\23\87","\157\104\92\122\32\100\109"),hpPanel4);color:setColor(v7("\177\163\203","\203\195\198\175\170\93\71\237"));function warning() end local v626=0 -0 ;local v627=0 -0 ;local v628=false;local function v629(v659) local v660=0 -0 ;while true do if ((0 + 0)==v660) then v626=now;v627=v659;v660=1;end if (v660==1) then v628=true;selado=true;break;end end end local function v630() local v661=0 -0 ;while true do if (v661==(0 + 0)) then v628=false;selado=false;break;end end end onTextMessage(function(v662,v663) local v664=v663:lower():match(v7("\61\78\43\149\91\4\232\61\94\126\211\94\24\188\61\78\50\212\85\30\188\62\68\44\149\25\84\248\101\2\126\198\84\22\233\32\79\49\198","\156\78\43\94\181\49\113"));if v664 then local v749=0 + 0 ;local v750;while true do if (v749==(0 -0)) then v750=tonumber(v664);if v750 then v629(v750);end break;end end end end);macro(100,function() if v628 then local v751=0;local v752;while true do if (v751==(0 + 0)) then v752=(now-v626)/(1839 -839) ;if (v752>=v627) then v630();end break;end end end end);local v631=storage.kekkeiBuff;local v632=storage.Buff;local v633=tonumber(storage.kekkeiMedicine);local v634=tonumber(storage.buffMedicine);buff=macro(662 + 338 ,v7("\112\253\194\165","\25\18\136\164\195\107\35"),function() local v665=0 + 0 ;while true do if ((0 + 0)==v665) then if ((player:getSkillLevel(3 + 0 )<=v633) and  not isInProtectionZone() and  not selado) then say(v631);end schedule(979 + 21 ,function() if ((player:getSkillLevel(436 -(153 + 280) )<=v634) and  not isInProtectionZone() and  not selado) then say(v632);end end);break;end end end,hpPanel4);addIcon(v7("\234\56\175\73","\216\136\77\201\47\18\220\161"),{[v7("\36\248\46\215","\226\77\140\75\186\104\188")]=31258 -20433 ,[v7("\173\203\200\43","\47\217\174\176\95")]=v7("\154\232\80\36","\70\216\189\22\98\210\52\24")},buff);addTextEdit(v7("\252\208\175\139\220\205\239\175\134\202\223\205","\179\186\191\195\231"),storage.kekkeiBuff or v7("\242\58\19\239\252\54\88\227\252\49\19\229\240","\132\153\95\120") ,function(v666,v667) storage.kekkeiBuff=v667;end,hpPanel4);labelBuff=UI.Label(v7("\147\167\8\43","\192\209\210\110\77\151\186"),hpPanel4);addTextEdit(v7("\198\12\46\229\240\211\208\15\35\240\250\214","\164\128\99\66\137\159"),storage.Buff or v7("\34\156\239\184","\222\96\233\137") ,function(v669,v670) storage.Buff=v670;end,hpPanel4);labelBuff=UI.Label(v7("\148\182\163\22\139\250\254\188\128\172\22\132\255\176\170\182\170\95\131\246\251\178\182\174","\144\217\211\199\127\232\147"),hpPanel4);addTextEdit(v7("\222\32\50\36\218\82\50\72\249\54\59\58","\36\152\79\94\72\181\37\98"),storage.kekkeiMedicine or (0 + 0) ,function(v672,v673) storage.kekkeiMedicine=v673;end,hpPanel4);labelBuff=UI.Label(v7("\250\221\67\54\212\209\73\58\228\211\78\51\219\152\68\48\218\152\76\58\220\211\66\54","\95\183\184\39"),hpPanel4);addTextEdit(v7("\147\48\235\42\91\151\50\185\62\254\35\70","\98\213\95\135\70\52\224"),storage.buffMedicine or (0 + 0) ,function(v675,v676) storage.buffMedicine=v676;end,hpPanel4);TabBar:addTab(v7("\221\182\219\118\71","\52\158\195\169\23"),hpPanel);color=UI.Label(v7("\95\176\22\113\144\23\116\153\125\185\33","\235\26\220\82\20\230\85\27"),hpPanel);color:setColor(v7("\135\179\232\204\115\141","\20\232\193\137\162"));UI.Separator(hpPanel);UI.Label(v7("\11\251\133\132\206\166\34\68\120","\17\66\191\165\198\135\236\119"),hpPanel):setFont(v7("\12\166\190\0\240\238\248\247\0\161\186","\177\111\207\206\115\159\136\140"));addTextEdit(v7("\10\156\4\18\221\91\125\12\131\5\1","\63\101\233\112\116\180\47"),storage.outfitBijuu or v7("\144\107\191","\86\163\91\141\114\152") ,function(v678,v679) storage.outfitBijuu=tonumber(v679);end,hpPanel);biju=macro(1,v7("\81\2\126\102\47\19\25\113\116\63\93\14\102\114\46\90\4\122","\90\51\107\20\19"),function() local v681=0 + 0 ;local v682;while true do if ((1 + 0)==v681) then if ((player:getOutfit().type==storage.outfitBijuu) and (v682<=(72 + 27))) then for v781,v782 in ipairs(CONFIG.regenBju) do if ( not v782.exhaust or (v782.exhaust<=now)) then say(v782.spell);end end end break;end if (v681==(0 -0)) then v682=v682();if isInPz() then return;end v681=1;end end end,hpPanel);big=macro(1 + 0 ,v7("\143\249\130\175\47\136\247\128\225\56\159\241\145\230\50\131","\93\237\144\229\143"),function() local v683=667 -(89 + 578) ;while true do if (v683==(0 + 0)) then if (player:getOutfit().type==storage.outfitBijuu) then return;end if (hppercent()>=100) then return;end v683=1;end if ((1 -0)==v683) then for v762,v763 in ipairs(CONFIG.regen) do if ( not v763.exhaust or (v763.exhaust<=now)) then say(v763.spell);end end break;end end end,hpPanel);os=os or modules.os ;local v635=player:getName();function OutfitCheck() return player:getOutfit().type==tonumber(OutfitBijuu) ;end onTalk(function(v684,v685,v685,v686) if (v684==player:getName()) then if (v686==v7("\55\255\250\12\30\6\44\247\249\27\10","\38\117\150\144\121\107")) then yaibaSlow=os.time() + (1064 -(572 + 477)) ;end end end);macro(1 + 0 ,function() if isInPz() then return;end if (yaibaSlow and (yaibaSlow>=os.time())) then return;end if (player:getOutfit().type==(182 + 120)) then say(v7("\47\178\228\47\56\251\247\59\36\185\239","\90\77\219\142"));end end);TabBar:addTab(v7("\197\11\51\43\73\21","\26\134\100\65\89\44\103"),hpPanel3);UI.Label(v7("\210\204\2\17\129\195\185","\196\145\131\80\67"),hpPanel3):setFont(v7("\29\185\22\27\23\238\10\150\9\6\12","\136\126\208\102\104\120"));addTextEdit(v7("\112\139\221\87\170\97\45\84\116\134","\49\24\234\174\35\207\50\93"),storage.hasteSpell or v7("\15\253\243\139\116\2\230\239\137\101\9\178\254\128\112\7\224\252\200\119\9\247\233","\17\108\146\157\232") ,function(v687,v688) storage.hasteSpell=v688;end,hpPanel3);macro(1 + 0 ,v7("\104\204\6\255\42\186","\200\43\163\116\141\79"),function() if (getPlayersAttack()>=(87 -(84 + 2))) then return;end delay(1000);local v690=storage.sealedTypes and storage.sealedTypes.speed and (storage.sealedTypes.speed>=os.time()) ;if ( not v690 and  not hasHaste()) then say(storage.hasteSpell);end end,hpPanel3);local v636={};local function v637(v691,v692) local v693=g_game.getLocalPlayer();if  not v693 then warn("Jogador não encontrado.");return false;end local v694=v693:getPosition();v694.x=v694.x + v691 ;v694.y=v694.y + v692 ;local v697=g_map.getTile(v694);if v697 then return g_game.use(v697:getTopUseThing());else return false;end end local v638=modules.game_console;bugmap=macro(1 -0 ,v7("\157\35\58\195\157\245\243","\131\223\86\93\227\208\148"),function() if (modules.corelib.g_keyboard.isKeyPressed("w") and  not v638:isChatEnabled()) then v637(0 + 0 , -(847 -(497 + 345)));elseif (modules.corelib.g_keyboard.isKeyPressed("e") and  not v638:isChatEnabled()) then v637(1 + 2 , -(1 + 2));elseif (modules.corelib.g_keyboard.isKeyPressed("d") and  not v638:isChatEnabled()) then v637(1338 -(605 + 728) ,0);elseif (modules.corelib.g_keyboard.isKeyPressed("c") and  not v638:isChatEnabled()) then v637(3 + 0 ,6 -3 );elseif (modules.corelib.g_keyboard.isKeyPressed("s") and  not v638:isChatEnabled()) then v637(0 + 0 ,5);elseif (modules.corelib.g_keyboard.isKeyPressed("z") and  not v638:isChatEnabled()) then v637( -(10 -7),3 + 0 );elseif (modules.corelib.g_keyboard.isKeyPressed("a") and  not v638:isChatEnabled()) then v637( -(13 -8),0);elseif (modules.corelib.g_keyboard.isKeyPressed("q") and  not v638:isChatEnabled()) then v637( -3, -(3 + 0));end end,hpPanel3);bugmap=addIcon(v7("\193\80\177\246\48\180\243","\213\131\37\214\214\125"),{[v7("\47\63\32\178","\129\70\75\69\223")]=11099 -(457 + 32) ,[v7("\82\206\235\253","\143\38\171\147\137\28")]=v7("\242\151\190\179\46\226\196","\180\176\226\217\147\99\131")},bugmap);v636.checkBox=setupUI(v7("\185\154\39\2\208\178\13\8\203\211\111\71\218\189\117\71\208\177\42\4\216\155\32\31\185\249\111\1\220\183\59\93\147\186\38\23\192\182\41\19\245\182\33\19\185\249\111\19\214\161\59\93\147\157\38\6\212\182\33\6\223\249\0\41\140\211","\103\179\217\79"),hpPanel3);v636.checkBox.onCheckChange=function(v698,v699) storage.bugMapCheck=v699;end;if (storage.bugMapCheck==nil) then storage.bugMapCheck=true;end v636.checkBox:setChecked(storage.bugMapCheck);v636.directions={W={x=0,y= -(3 + 2),[v7("\78\190\14\208\66\152\170\69\185","\195\42\215\124\181\33\236")]=1402 -(832 + 570) },E={x=4 + 0 ,y= -4},D={x=2 + 3 ,y=0,[v7("\9\80\37\59\38\236\4\86\57","\152\109\57\87\94\69")]=3 -2 },C={x=4,y=2 + 2 },S={x=796 -(588 + 208) ,y=5,[v7("\253\222\24\166\189\198\93\167\247","\200\153\183\106\195\222\178\52")]=2},Z={x= -4,y=4},A={x= -(13 -8),y=1800 -(884 + 916) ,[v7("\54\234\154\56\74\78\59\236\134","\58\82\131\232\93\41")]=3},Q={x= -(8 -4),y= -(3 + 1)}};v636.isKeyPressed=modules.corelib.g_keyboard.isKeyPressed;end break;end if (v433==(653 -(232 + 421))) then PainelsWindow=UI.createWidget(v7("\30\130\25\72\44\214\25\138\30\66\38\205","\186\78\227\112\38\73"),rootWidget);PainelsWindow:hide();v433=1;end end end PainelsWindow.closeButton.onClick=function(v344) PainelsWindow:hide();end;
