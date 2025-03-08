
local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v88,v89) local v90={};for v350=1 -0 , #v88 do v6(v90,v0(v4(v1(v2(v88,v350,v350 + 1 + 0 )),v1(v2(v89,1 + (v350% #v89) ,(1 -0) + (v350% #v89) + (66 -(30 + 35)) )))%256 ));end return v5(v90);end local v8=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v8=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v9=g_resources.listDirectoryFiles(v7("\158\193\212\49\169","\126\177\163\187\69\134\219\167")   .. v8   .. v7("\108\219\8\202\232","\156\67\173\74\165") ,true,false);for v91,v92 in ipairs(v9) do local v93=0;local v94;while true do if (v93==(0 + 0)) then v94=v92:split(".");if ((v94[ #v94]:lower()==v7("\33\190","\38\84\215\41\118\220\70")) or (v94[ #v94]:lower()==v7("\95\2\55\27","\158\48\118\66\114"))) then g_ui.importStyle(v92);end break;end end end local function v10(v95) return dofile(v7("\228\33\28\50\118\179\249\164\54\23\51\96\234","\155\203\68\112\86\19\197")   .. v95   .. v7("\8\209\35\253","\152\38\189\86\156\32\24\133") );end local v11={v7("\234\91\174\68","\38\156\55\199"),v7("\171\114\114\46\26\115\233","\35\200\29\28\72\115\20\154")};for v96,v97 in ipairs(v11) do v10(v97);end scriptFuncs={};comboSpellsWidget={};fugaSpellsWidgets={};scriptFuncs.readProfile=function(v98,v99) if g_resources.fileExists(v98) then local v442,v443=pcall(function() return json.decode(g_resources.readFileContents(v98));end);if  not v442 then return onError(v7("\60\173\195\208\205\47\53\11\173\212\216\140\34\48\22\255\208\205\156\57\61\15\176\145\151","\84\121\223\177\191\237\76")   .. v98   .. v7("\242\24\137\144\59\66\49\129\184\89\199\179\63\66\36\192\169\22\198\224\42\66\63\195\183\83\196\161\118\16\53\217\184\90\220\161\122\95\112\192\169\71\220\169\44\95\126\129\159\83\221\161\54\88\53\210\225\22","\161\219\54\169\192\90\48\80")   .. v443 );end v99(v443);end end;scriptFuncs.saveProfile=function(v100,v101) local v102,v103=pcall(function() return json.encode(v101,2);end);if  not v102 then return onError("Erro salvando configuração. Detalhes: "   .. v103 );end if (v103:len()>(100 * 1024 * (3871 -2847))) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v100,v103);end;storageProfiles={[v7("\74\77\13\39\70\113\16\32\69\78\19","\69\41\34\96")]={},[v7("\186\214\208\11\49\59\185\207\219\25","\75\220\163\183\106\98")]={},[v7("\9\191\146\4\201\7\182\135\36","\185\98\218\235\87")]={}};MAIN_DIRECTORY=v7("\132\62\40\242\145","\202\171\92\71\134\190")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v7("\102\210\56\135\59\192\43\141\102","\232\73\161\76") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v7("\245\211\81\82\16","\126\219\185\34\61") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v104) storageProfiles=v104;if (type(storageProfiles.comboSpells)~=v7("\24\207\92\126\123","\135\108\174\62\18\30\23\147")) then storageProfiles.comboSpells={};end if (type(storageProfiles.fugaSpells)~=v7("\162\232\40\199\29","\167\214\137\74\171\120\206\83")) then storageProfiles.fugaSpells={};end if (type(storageProfiles.keySpells)~=v7("\159\241\48\81\253","\199\235\144\82\61\152")) then storageProfiles.keySpells={};end end);scriptFuncs.reindexTable=function(v105) if ( not v105 or (type(v105)~=v7("\19\23\187\39\2","\75\103\118\217"))) then return;end local v106=1212 -(323 + 889) ;for v351,v352 in pairs(v105) do v106=v106 + (2 -1) ;v352.index=v106;end end;function firstLetterUpper(v107) return (v107:gsub("(%a)([%w_']*)",function(v354,v355) return v354:upper()   .. v355:lower() ;end));end function formatTime(v108) if (v108<(640 -(361 + 219))) then return v108   .. "s" ;else local v447=320 -(53 + 267) ;local v448;local v449;while true do if (v447==(1 + 0)) then return string.format(v7("\130\80\125\84\252\78\149\80\99","\126\167\52\16\116\217"),v448,v449);end if (v447==(413 -(15 + 398))) then v448=math.floor(v108/(1042 -(18 + 964)) );v449=v108%60 ;v447=1;end end end end function formatRemainingTime(v109) local v110=0 -0 ;local v111;local v112;while true do if (v110==(1 + 0)) then v112=string.format(v7("\141\96\112\134","\156\168\78\64\224\212\121"),(v109-now)/(631 + 369) )   .. "s" ;return v112;end if (v110==(850 -(20 + 830))) then v111=(v109-now)/(781 + 219) ;v112="";v110=127 -(116 + 10) ;end end end function attachSpellWidgetCallbacks(v113,v114,v115) v113.onDragEnter=function(v356,v357) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v356:breakAnchors();v356.movingReference={x=v357.x-v356:getX() ,y=v357.y-v356:getY() };return true;end;v113.onDragMove=function(v359,v360,v361) local v362=v359:getParent():getRect();local v363=math.min(math.max(v362.x,v360.x-v359.movingReference.x ),(v362.x + v362.width) -v359:getWidth() );local v364=math.min(math.max(v362.y-v359:getParent():getMarginTop() ,v360.y-v359.movingReference.y ),(v362.y + v362.height) -v359:getHeight() );v359:move(v363,v364);if v115[v114] then v115[v114].widgetPos={x=v363,y=v364};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end return true;end;v113.onDragLeave=function(v365,v366) return true;end;end function stopToCast() local v119=0;while true do if (v119==(0 + 0)) then for v580,v581 in ipairs(storageProfiles.fugaSpells) do if (v581.enabled and v581.activeCooldown and (v581.activeCooldown>=now)) then return true;end if (hppercent()<=(calculatePercentage(v581.selfHealth) + (743 -(542 + 196)))) then if ( not v581.totalCooldown or (v581.totalCooldown<=now)) then return true;end end end return false;end end end function isAnySelectedKeyPressed() for v367,v368 in ipairs(storageProfiles.keySpells) do if (v368.enabled and (modules.corelib.g_keyboard.isKeyPressed(v368.keyPress))) then return true;end end return false;end DelayMacro={};DelayMacro.horizontalScrollBar=v7("\109\222\164\192\2\226\207\142\71\230\160\199\0\230\177\148\71\189\240\164\71\174\168\207\21\233\172\192\74\250\170\222\93\174\246\164\109\174\229\226\6\236\160\194\109\174\229\142\71\231\161\148\71\250\160\214\19\132\229\142\71\174\164\192\4\230\170\220\20\160\169\203\1\250\255\142\23\239\183\203\9\250\235\194\2\232\177\164\71\174\229\142\6\224\166\198\8\252\182\128\21\231\162\198\19\180\229\222\6\252\160\192\19\160\183\199\0\230\177\164\71\174\229\142\6\224\166\198\8\252\182\128\19\225\181\148\71\254\164\220\2\224\177\128\19\225\181\164\71\174\229\142\19\235\189\218\74\239\169\199\0\224\255\142\4\235\171\218\2\252\207\142\71\174\229\200\8\224\177\148\71\237\172\222\20\225\163\218\33\225\171\218\109\132\229\142\47\225\183\199\29\225\171\218\6\226\150\205\21\225\169\194\37\239\183\164\71\174\229\142\14\234\255\142\20\237\183\193\11\226\207\142\71\174\229\207\9\237\173\193\21\253\235\194\2\232\177\148\71\254\164\220\2\224\177\128\11\235\163\218\109\174\229\142\71\239\171\205\15\225\183\221\73\252\172\201\15\250\255\142\23\239\183\203\9\250\235\220\14\233\173\218\109\174\229\142\71\239\171\205\15\225\183\221\73\250\170\222\93\174\181\220\2\248\235\204\8\250\177\193\10\132\229\142\71\174\168\207\21\233\172\192\74\250\170\222\93\174\246\164\71\174\229\142\10\231\171\199\10\251\168\148\71\190\207\142\71\174\229\195\6\246\172\195\18\227\255\142\86\190\207\142\71\174\229\221\19\235\181\148\71\191\207\142\71\174\229\200\8\224\177\148\71\248\160\220\3\239\171\207\74\191\244\222\31\163\183\193\18\224\161\203\3\132","\174\103\142\197");storage.scrollBars1=storage.scrollBars1 or {} ;local function v17(v120,v121,v122,v123,v124) local v125=0;local v126;while true do if (v125==1) then if ((v123-v122)>(2143 -1143)) then v126.scroll:setStep(100);elseif ((v123-v122)>100) then v126.scroll:setStep(3 + 7 );end v126.scroll:setValue(storage.scrollBars1[v120] or v124 );v125=2 + 0 ;end if (v125==(1 + 1)) then v126.scroll.onValueChange=function(v582,v583) local v584=0;while true do if (v584==(0 -0)) then storage.scrollBars1[v120]=v583;v126.scroll:setText(v121   .. v583 );break;end end end;v126.text:setText(v7("\123\9\124\10\10\30\220\115\4\126\1\127","\152\54\72\63\88\69\62"));v125=3;end if (v125==(0 -0)) then v126=setupUI(DelayMacro.horizontalScrollBar,panel);v126.scroll:setRange(v122,v123);v125=1552 -(1126 + 425) ;end if (v125==(408 -(118 + 287))) then v126.scroll.onValueChange(v126.scroll,v126.scroll:getValue());break;end end end setDefaultTab(v7("\249\197\231\82","\60\180\164\142"));v17(v7("\85\95\6\59\40\201\23\84\95\28","\114\56\62\101\73\71\141"),"",39 -29 ,2121 -(118 + 1003) ,200);UI.Label(v7("\139\221\250\231\147\162\246\241\150\205\244","\164\216\137\187")):setFont(v7("\209\239\33\161\169\248\31\244\233\63\166","\107\178\134\81\210\198\158"));addTextEdit(v7("\11\30\135\202\166\120\61\150\199\169\51\66\194\245\186\61\2\142\134\135\45\0\134\201\230\120\37\135\223","\202\88\110\226\166"),storage.stackConfig or v7("\240\31\135\251\198\131\28\150\246\201\200\67\194\218\223\205\11\141\187\138\231\6\145\227\203\205\12\139\246\134\131\36\135\238","\170\163\111\226\151") ,function(v127,v128) storage.stackConfig=v128;end,rightPanel);local v18=modules.corelib.g_keyboard.isKeyPressed;macro(2 -1 ,function() local v130=0;local v131;local v132;local v133;while true do if (1==v130) then v133=pos();if v18(v131[380 -(142 + 235) ]) then local v649=0;local v650;local v651;while true do if (v649==(4 -3)) then if  not v650 then return;end v651=getDistanceBetween(v133,v650);v649=2;end if (v649==(0 + 0)) then if  not g_game.isAttacking() then return;end v650=v132:getPosition();v649=1;end if (v649==(979 -(553 + 424))) then if (v651>(3 -1)) then stopCombo=now + 221 + 29 ;say(v131[1 + 0 ]);end if (v651<=(2 + 0)) then stopCombo=now + 107 + 143 ;say(v131[2]);end break;end end end break;end if (v130==0) then v131=storage.stackConfig:split(",");v132=g_game.getAttackingCreature();v130=1 + 0 ;end end end,rightPanel);local v19={W=0 -0 ,A=0 -0 ,S=0 -0 ,D=0 + 0 };onKeyPress(function(v134) for v369,v370 in pairs(v19) do if (v134==v369) then g_game.setChaseMode(v370);end end end);macro(4 -3 ,function() local v135=753 -(239 + 514) ;local v136;while true do if ((0 + 0)==v135) then v136=storage.stackConfig:split(",");if v18(v136[1332 -(797 + 532) ]) then g_game.setChaseMode(1 + 0 );end break;end end end);UI.Label(v7("\50\31\159\26\97\120\15\36\23\147\11","\73\113\80\210\88\46\87")):setFont(v7("\130\37\221\1\232\135\56\235\29\233\149","\135\225\76\173\114"));scriptFuncs={};comboSpellsWidget={};fugaSpellsWidgets={};scriptFuncs.readProfile=function(v137,v138) if g_resources.fileExists(v137) then local v450=0;local v451;local v452;while true do if (v450==(0 + 0)) then v451,v452=pcall(function() return json.decode(g_resources.readFileContents(v137));end);if  not v451 then return onError(v7("\63\255\170\191\236\190\166\8\255\189\183\173\179\163\21\173\185\162\189\168\174\12\226\248\248","\199\122\141\216\208\204\221")   .. v137   .. v7("\228\147\80\192\121\228\172\157\19\255\118\229\168\207\4\241\106\182\162\157\0\226\119\244\161\216\29\241\52\182\168\197\19\252\109\247\237\210\80\241\106\231\184\212\6\255\54\182\137\216\4\241\116\254\168\206\74\176","\150\205\189\112\144\24")   .. v452 );end v450=2 -1 ;end if (v450==(1203 -(373 + 829))) then v138(v452);break;end end end end;scriptFuncs.saveProfile=function(v139,v140) local v141,v142=pcall(function() return json.encode(v140,733 -(476 + 255) );end);if  not v141 then return onError("Erro salvando configuração. Detalhes: "   .. v142 );end if (v142:len()>((1230 -(369 + 761)) * (593 + 431) * (1859 -835))) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v139,v142);end;storageProfiles={[v7("\38\139\178\78\11\187\1\21\41\136\172","\112\69\228\223\44\100\232\113")]={},[v7("\210\10\0\210\133\108\131\216\19\20","\230\180\127\103\179\214\28")]={},[v7("\135\0\70\117\244\68\236\128\22","\128\236\101\63\38\132\33")]={}};MAIN_DIRECTORY=v7("\227\171\30\80\249","\175\204\201\113\36\214\139")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v7("\8\223\33\211\22\70\203\48\147","\100\39\172\85\188") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v7("\227\114\170\143\61","\83\205\24\217\224") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end function resetCooldowns() if storageProfiles then local v453=0;while true do if (v453==0) then if storageProfiles.comboSpells then for v728,v729 in ipairs(storageProfiles.comboSpells) do v729.cooldownSpells=nil;end end if storageProfiles.fugaSpells then for v731,v732 in ipairs(storageProfiles.fugaSpells) do local v733=0 -0 ;while true do if (v733==0) then v732.totalCooldown=nil;v732.activeCooldown=nil;break;end end end end break;end end end end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v143) local v144=0;while true do if (v144==2) then resetCooldowns();break;end if (v144==(238 -(64 + 174))) then storageProfiles=v143;if (type(storageProfiles.comboSpells)~=v7("\242\196\207\49\227","\93\134\165\173")) then storageProfiles.comboSpells={};end v144=1 + 0 ;end if (v144==(1 -0)) then if (type(storageProfiles.fugaSpells)~=v7("\170\243\195\206\63","\30\222\146\161\162\90\174\210")) then storageProfiles.fugaSpells={};end if (type(storageProfiles.keySpells)~=v7("\241\79\114\6\224","\106\133\46\16")) then storageProfiles.keySpells={};end v144=2;end end end);scriptFuncs.reindexTable=function(v145) if ( not v145 or (type(v145)~=v7("\76\33\113\240\95","\32\56\64\19\156\58"))) then return;end local v146=336 -(144 + 192) ;for v371,v372 in pairs(v145) do local v373=0;while true do if (v373==(216 -(42 + 174))) then v146=v146 + 1 + 0 ;v372.index=v146;break;end end end end;function firstLetterUpper(v147) return (v147:gsub("(%a)([%w_']*)",function(v374,v375) return v374:upper()   .. v375:lower() ;end));end storage[v7("\83\203\234\88\105\241\146\83\216\241\69","\224\58\168\133\54\58\146")]=storage[v7("\80\85\68\243\70\133\149\2\73\66\88","\107\57\54\43\157\21\230\231")] or {[v7("\216\132\28\247\182\241\206\216\153\30","\175\187\235\113\149\217\188")]=true,[v7("\58\186\134\77\206\120\123\46\160","\24\92\207\225\44\131\25")]=false,[v7("\88\219\183\91\50\115\77\220\171","\29\43\179\216\44\123")]=false,[v7("\182\220\57\97\188\218\50\67","\44\221\185\64")]=false} ;local v21=storage[v7("\8\228\71\81\64\2\245\65\79\103\18","\19\97\135\40\63")];function removeTable(v148,v149) table.remove(v148,v149);end function canCastFuga() local v150=0;while true do if (v150==0) then for v586,v587 in ipairs(storageProfiles.fugaSpells) do local v588=v587.activeCooldown and (v587.activeCooldown>=now) and v587.enableLifes and (v587.lifes>(0 + 0)) ;local v589=v587.enableMultiple and (v587.count>(0 + 0)) ;local v590=v587.activeCooldown and (v587.activeCooldown>=now) ;if (v588 or v590) then return true;end end return false;end end end function getPlayersAttack(v151) v151=v151 or false ;local v152=0;for v376,v377 in ipairs(getSpectators(v151)) do if (v377:isPlayer() and v377:isTimedSquareVisible() and table.equals(v377:getTimedSquareColor(),colorToMatch)) then local v486=0;while true do if (v486==(1504 -(363 + 1141))) then v152=v152 + 1 ;delay(5080 -(1183 + 397) );break;end end end end return v152;end local v22={};local v23=8 -5 ;onTextMessage(function(v153,v154) if v154:find(v7("\166\85\39\43\32\56\160\72\32\123\43\36\171\28\39\52\111\48\160\28\50\47\59\48\173\87\115\57\54","\81\206\60\83\91\79")) then local v454=v7("\119\164\197\50\35\204\94\161\14\227\149\118\100\138\13\172\71\191\192\125\38\205\89\183\14\175\197\119\111\215\66\228\79\165\144\115\59\215\76\167\69\235\210\107\111\139\3\239\7\238\158","\196\46\203\176\18\79\163\45");local v455,v456=v154:match(v454);local v457=getCreatureByName(v456);if (v457 and v457:isPlayer()) then local v591=false;for v655,v656 in ipairs(v22) do if (v656.name==v456) then v591=true;v656.time=os.time();break;end end if  not v591 then table.insert(v22,{[v7("\182\35\115\27","\143\216\66\30\126\68\155")]=v456,[v7("\190\193\0\206","\129\202\168\109\171\165\195\183")]=os.time()});end end end end);macro(1,function() local v155=os.time();for v378= #v22,1 + 0 , -1 do local v379=0 + 0 ;local v380;while true do if (v379==0) then v380=v22[v378];if ((v155-v380.time)>v23) then table.remove(v22,v378);end break;end end end end);function calculatePercentage(v156) local v157= #v22;return (v157 and (v156 + (v157 * (1982 -(1913 + 62))))) or v156 ;end function stopToCast() local v158=0;while true do if (v158==1) then return false;end if (v158==(0 + 0)) then if  not fugaIcon.title:isOn() then return false;end for v593,v594 in ipairs(storageProfiles.fugaSpells) do local v595=0 -0 ;while true do if (v595==(1933 -(565 + 1368))) then if (v594.enabled and v594.activeCooldown and (v594.activeCooldown>=now)) then return false;end if (hppercent()<=(calculatePercentage(v594.selfHealth) + (11 -8))) then if ( not v594.totalCooldown or (v594.totalCooldown<=now)) then return true;end end break;end end end v158=1;end end end function isAnySelectedKeyPressed() for v381,v382 in ipairs(storageProfiles.keySpells) do if (v382.enabled and (modules.corelib.g_keyboard.isKeyPressed(v382.keyPress))) then return true;end end return false;end function formatTime(v159) if (v159<60) then return v159   .. "s" ;else local v458=0;local v459;local v460;while true do if (v458==(1662 -(1477 + 184))) then return string.format(v7("\103\92\58\152\155\68\180\38\75","\134\66\56\87\184\190\116"),v459,v460);end if (v458==0) then v459=math.floor(v159/60 );v460=v159%60 ;v458=1;end end end end function formatRemainingTime(v160) local v161=0;local v162;local v163;while true do if (v161==(0 -0)) then v162=(v160-now)/(932 + 68) ;v163="";v161=857 -(564 + 292) ;end if (v161==(1 -0)) then v163=string.format(v7("\121\127\89\189","\85\92\81\105\219\121\139\65"),(v160-now)/1000 )   .. "s" ;return v163;end end end function attachSpellWidgetCallbacks(v164,v165,v166) v164.onDragEnter=function(v383,v384) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v383:breakAnchors();v383.movingReference={x=v384.x-v383:getX() ,y=v384.y-v383:getY() };return true;end;v164.onDragMove=function(v386,v387,v388) local v389=v386:getParent():getRect();local v390=math.min(math.max(v389.x,v387.x-v386.movingReference.x ),(v389.x + v389.width) -v386:getWidth() );local v391=math.min(math.max(v389.y-v386:getParent():getMarginTop() ,v387.y-v386.movingReference.y ),(v389.y + v389.height) -v386:getHeight() );v386:move(v390,v391);if v166[v165] then local v487=0 -0 ;while true do if (v487==(304 -(244 + 60))) then v166[v165].widgetPos={x=v390,y=v391};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end return true;end;v164.onDragLeave=function(v392,v393) return true;end;end function forceSay(v170) if (type(v170)~=v7("\233\178\82\73\121","\191\157\211\48\37\28")) then for v488=0,8 + 2  do local v489=0;while true do if (v489==(476 -(41 + 435))) then stopCombo=now + (1251 -(938 + 63)) ;return say(v170);end end end end for v394=0,10 do local v395=0 + 0 ;while true do if (v395==(1125 -(936 + 189))) then stopCombo=now + 250 ;return say(v170.toSay or v170.text );end end end end local v24=[[
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
]];local v25=v7("\181\42\221\43\51\219\24\241\8\80\159\95\246\29\57\212\24\230\19\47\209\27\185\31\53\211\16\230\70\122\221\19\245\31\49\181\95\180\26\53\209\11\174\92\44\218\13\240\29\52\222\82\165\77\42\199\82\230\19\47\209\27\241\24\80\159\95\251\12\59\220\22\224\5\96\159\79\186\75\106\181\95\180\12\59\219\27\253\18\61\133\95\164\92\98\181\95\180\26\53\220\10\231\29\56\211\26\174\92\46\205\10\241\118\122\159\15\252\29\52\203\16\249\70\122\217\30\248\15\63\181\95\180\24\40\222\24\243\29\56\211\26\174\92\46\205\10\241\118\122\159\11\241\4\46\146\30\225\8\53\146\13\241\15\51\197\26\174\92\46\205\10\241\118","\90\191\127\148\124");combobotPanelName=v7("\123\136\35\21\119\133\33\3","\119\24\231\78");local v26=setupUI(v7("\232\29\164\68\217\76\123\194\109\173\79\213\71\25\150\119\229\24\140\42\81\194\15\170\94\239\87\24\150\46\173\32\156\0\81\194\36\161\16\156\84\24\150\33\160\32\156\0\81\194\44\171\73\212\79\3\145\99\177\69\204\26\81\146\44\183\79\210\84\95\150\34\181\32\156\0\81\194\44\171\73\212\79\3\145\99\169\79\218\84\75\194\61\164\88\217\78\5\204\33\160\76\200\42\81\194\109\229\94\217\88\5\207\44\169\67\219\78\75\194\46\160\68\200\69\3\232\109\229\10\156\87\24\134\57\173\16\156\17\66\210\71\229\10\156\0\5\135\53\177\16\156\99\62\175\15\138\32\156\0\81\194\43\170\68\200\26\81\129\36\181\89\211\70\5\164\34\171\94\182\42\81\194\15\176\94\200\79\31\232\109\229\10\156\73\21\216\109\182\79\200\84\24\140\42\182\32\156\0\81\194\44\171\73\212\79\3\145\99\177\69\204\26\81\146\63\160\92\146\84\30\146\71\229\10\156\0\16\140\46\173\69\206\83\95\142\40\163\94\134\0\1\144\40\179\4\206\73\22\138\57\207\10\156\0\81\131\35\166\66\211\82\2\204\63\172\77\212\84\75\194\61\164\88\217\78\5\204\63\172\77\212\84\123\194\109\229\10\209\65\3\133\36\171\7\208\69\23\150\119\229\25\182\0\81\194\109\173\79\213\71\25\150\119\229\27\139\42\81\194\109\229\94\217\88\5\216\109\134\101\242\102\56\165\71\229\10\156\0\23\141\35\177\16\156\67\24\146\62\170\76\200\102\30\140\57\207","\113\226\77\197\42\188\32"));v26:setId(combobotPanelName);keyIcon=setupUI(v7("\80\38\245\187\63\26\158\245\122\30\241\188\61\30\224\239\122\68\164\223\122\86\214\186\46\37\227\188\46\21\252\223\122\86\180\245\51\18\174\245\46\31\224\185\63\124\180\245\122\86\245\187\57\30\251\167\41\88\224\186\42\76\180\165\59\4\241\187\46\88\224\186\42\124\180\245\122\86\245\187\57\30\251\167\41\88\248\176\60\2\174\245\42\23\230\176\52\2\186\185\63\16\224\223\122\86\180\245\46\19\236\161\119\23\248\188\61\24\174\245\57\19\250\161\63\4\158\245\122\86\180\162\51\18\224\189\96\86\165\230\106\124\180\245\122\86\224\176\34\2\174\245\23\55\218\128\27\58\180\158\31\47\199\223\122\86\180\245\60\25\250\161\96\86\247\188\42\5\251\179\46\48\251\187\46\124\158\245\122\52\225\161\46\25\250\223\122\86\180\245\51\18\174\245\41\19\224\161\51\24\243\166\80\86\180\245\122\23\250\182\50\25\230\166\116\2\251\165\96\86\228\167\63\0\186\161\53\6\158\245\122\86\180\180\52\21\252\186\40\5\186\185\63\16\224\239\122\6\230\176\44\88\230\188\61\30\224\223\122\86\180\245\59\24\247\189\53\4\231\251\40\31\243\189\46\76\180\165\59\4\241\187\46\88\230\188\61\30\224\223\122\86\180\245\55\23\230\178\51\24\185\185\63\16\224\239\122\69\158\245\122\86\180\189\63\31\243\189\46\76\180\228\109\124\180\245\122\86\224\176\34\2\174\245\25\57\218\147\19\49\158\245\122\86\180\179\53\24\224\239\122\21\253\165\41\25\242\161\28\25\250\161\80","\213\90\118\148"));comboInterface=setupUI([[
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
      
]],g_ui.getRootWidget());comboInterface:hide();fugaIcon=setupUI(v7("\49\30\181\88\72\87\68\244\22\69\94\39\179\94\89\1\110\224\6\39\27\110\150\89\89\104\57\189\66\78\83\68\244\22\13\27\39\176\12\13\79\39\160\90\72\49\110\244\22\13\90\32\183\94\66\73\61\250\66\66\75\116\244\70\76\73\43\186\66\3\79\33\164\60\13\27\110\244\87\67\88\38\187\68\94\21\34\177\80\89\1\110\164\87\95\94\32\160\24\65\94\40\160\60\13\27\110\244\66\72\67\58\249\87\65\82\41\186\12\13\88\43\186\66\72\73\68\244\22\13\27\57\189\82\89\83\116\244\7\30\11\68\244\22\13\27\58\177\78\89\1\110\146\99\106\122\29\222\22\13\27\110\178\89\67\79\116\244\85\68\75\61\187\80\89\125\33\186\66\39\49\110\244\116\88\79\58\187\88\39\27\110\244\22\68\95\116\244\69\72\79\58\189\88\74\72\68\244\22\13\27\47\186\85\69\84\60\167\24\89\84\62\238\22\93\73\43\162\24\89\84\62\222\22\13\27\110\181\88\78\83\33\166\69\3\87\43\178\66\23\27\62\166\83\91\21\60\189\81\69\79\68\244\22\13\27\47\186\85\69\84\60\167\24\95\82\41\188\66\23\27\62\181\68\72\85\58\250\68\68\92\38\160\60\13\27\110\244\91\76\73\41\189\88\0\87\43\178\66\23\27\125\222\22\13\27\110\188\83\68\92\38\160\12\13\10\121\222\22\13\27\110\160\83\85\79\116\244\117\98\117\8\157\113\39\27\110\244\22\75\84\32\160\12\13\88\39\164\69\66\93\58\146\89\67\79\68\222\22\13\120\38\177\85\70\121\33\172\60\13\27\110\244\95\73\1\110\167\94\66\76\7\186\80\66\72\68\244\22\13\27\47\186\85\69\84\60\167\24\65\94\40\160\12\13\75\47\166\83\67\79\96\184\83\75\79\68\244\22\13\27\47\186\85\69\84\60\167\24\95\82\41\188\66\23\27\62\181\68\72\85\58\250\68\68\92\38\160\60\13\27\110\244\87\67\88\38\187\68\94\21\58\187\70\23\27\62\166\83\91\21\44\187\66\89\84\35\222\22\13\27\110\185\87\95\92\39\186\27\89\84\62\238\22\24\49\110\244\22\13\79\43\172\66\23\27\11\154\115\96\98\29\244\127\99\125\1\235\60\13\27\110\244\80\66\85\58\238\22\78\82\62\167\89\75\79\8\187\88\89\49","\45\59\78\212\54"));fugaInterface=setupUI([[
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
      
]],g_ui.getRootWidget());keyInterface:hide();v26.title:setOn(v21.comboMacro);v26.title.onClick=function(v171) v21.comboMacro= not v21.comboMacro;v171:setOn(v21.comboMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v26.settings.onClick=function(v173) if  not comboInterface:isVisible() then local v461=0;while true do if (1==v461) then comboInterface:focus();break;end if (v461==0) then comboInterface:show();comboInterface:raise();v461=1;end end else local v462=0 + 0 ;while true do if (0==v462) then comboInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end end;comboInterface.closeButton.onClick=function(v174) comboInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;comboInterface.cooldown:setText(v7("\64\91\144","\144\112\54\227\235\230\78\205"));comboInterface.cooldown.onValueChange=function(v175,v176) if (v176>=1000) then v175:setText((v176/1000)   .. "s" );else v175:setText(v176   .. v7("\190\59","\59\211\72\111\156\176") );end end;comboInterface.distance:setText("0");comboInterface.distance.onValueChange=function(v177,v178) v177:setText(v178);end;comboInterface.sameSpell:setChecked(true);comboInterface.orangeSpell:setEnabled(false);comboInterface.sameSpell.onCheckChange=function(v179,v180) if v180 then comboInterface.orangeSpell:setEnabled(false);else local v463=1613 -(1565 + 48) ;while true do if (v463==(0 + 0)) then comboInterface.orangeSpell:setEnabled(true);comboInterface.orangeSpell:setText(comboInterface.castSpell:getText());break;end end end end;function refreshComboList(v181,v182) if v182 then for v490,v491 in pairs(v181.spellList:getChildren()) do v491:destroy();end for v492,v493 in pairs(comboSpellsWidget) do v493:destroy();end for v494,v495 in ipairs(v182) do local v496=1138 -(782 + 356) ;local v497;local v498;while true do if (v496==6) then v497.textToSet:setText(firstLetterUpper(v7("\134\59\191\88\210\13\94","\105\204\78\203\43\167\55\126")   .. v495.spellCast   .. v7("\229\182\99\61\28\11\203\85\170\189\45\68\83","\49\197\202\67\126\115\100\167")   .. v495.cooldown   .. v7("\119\71\159\13\137\69\74\54\85\220\44\218\22","\62\87\59\191\73\224\54")   .. v495.distance   .. "" ));v497.textToSet:setColor(v7("\240\10\243\221\226","\169\135\98\154"));v497.textToSet:setFont(v7("\221\114\54\80\252\61\201\134\38\117\68\229\126\218\196\98\42\80\248\55","\168\171\23\68\52\157\83"));v496=7;end if (v496==(274 -(176 + 91))) then v497:setTooltip(v7("\217\98\242\237\9\44\149\245\127\255\172\127\109","\231\148\17\149\205\69\77")   .. v495.orangeSpell   .. v7("\192\187\135\213\88\242\133\231\201\250\23\203\133\171\198\161\23","\159\224\199\167\155\55")   .. v495.onScreen   .. " " );break;end if (v496==(13 -8)) then if v495.enableTimeSpell then v498:show();else v498:hide();end v497.remove.onClick=function(v705) for v734,v735 in ipairs(storageProfiles.comboSpells) do if (v735==v495) then removeTable(storageProfiles.comboSpells,v734);end end scriptFuncs.reindexTable(v182);v498:destroy();v497:destroy();end;v497.onClick=function(v706) comboInterface.moveDown:show();comboInterface.moveUp:show();end;v496=6;end if (v496==(2 -0)) then comboSpellsWidget[v495.index]=v498;comboSpellsWidget[v495.index]=v498;v497.onDoubleClick=function(v707) local v708=1092 -(975 + 117) ;local v709;while true do if (v708==(1878 -(157 + 1718))) then for v769,v770 in ipairs(storageProfiles.comboSpells) do if (v770==v495) then removeTable(storageProfiles.comboSpells,v769);end end scriptFuncs.reindexTable(v182);v708=4 + 0 ;end if (v708==(0 -0)) then v709=v495;v181.castSpell:setText(v709.spellCast);v708=3 -2 ;end if (v708==(1019 -(697 + 321))) then v181.orangeSpell:setText(v709.orangeSpell);v181.onScreen:setText(v709.onScreen);v708=5 -3 ;end if (v708==(8 -4)) then v498:destroy();v497:destroy();break;end if (v708==(4 -2)) then v181.cooldown:setValue(v709.cooldown);v181.distance:setValue(v709.distance);v708=2 + 1 ;end end end;v496=5 -2 ;end if (v496==3) then v497.enabled:setChecked(v495.enabled);v497.enabled:setTooltip(( not v495.enabled and v7("\107\137\226\47\66\130\163\30\94\130\239\33","\77\46\231\131")) or v7("\158\93\165\65\184\88\179\0\137\68\179\76\182","\32\218\52\214") );v497.enabled.onClick=function(v710) v495.enabled= not v495.enabled;v497.enabled:setChecked(v495.enabled);v497.enabled:setTooltip(( not v495.enabled and v7("\107\25\48\170\253\181\5\105\94\18\61\164","\58\46\119\81\200\145\208\37")) or v7("\15\133\35\173\171\177\51\107\191\32\169\165\177","\86\75\236\80\204\201\221") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v496=10 -6 ;end if (v496==4) then v497.showTimespell:setChecked(v495.enableTimeSpell);v497.showTimespell:setTooltip(( not v495.enableTimeSpell and v7("\87\79\118\135\242\142\50\117\126\136\251\203\65\81\114\137\242","\235\18\33\23\229\158")) or v7("\116\179\210\186\82\182\196\251\100\179\204\190\16\137\209\190\92\182","\219\48\218\161") );v497.showTimespell.onClick=function(v712) v495.enableTimeSpell= not v495.enableTimeSpell;v497.showTimespell:setChecked(v495.enableTimeSpell);v497.showTimespell:setTooltip(( not v495.enableTimeSpell and v7("\193\127\125\75\215\74\160\208\120\113\76\155\124\240\225\125\112","\128\132\17\28\41\187\47")) or v7("\37\59\21\59\95\13\55\70\14\84\12\55\70\9\77\4\62\10","\61\97\82\102\90") );if v495.enableTimeSpell then v498:show();else v498:hide();end scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v496=1232 -(322 + 905) ;end if (v496==(612 -(602 + 9))) then attachSpellWidgetCallbacks(v498,v495.index,storageProfiles.comboSpells);if  not v495.widgetPos then v495.widgetPos={x=1189 -(449 + 740) ,y=50};end v498:setPosition(v495.widgetPos);v496=874 -(826 + 46) ;end if (0==v496) then v497=setupUI(v24,v181.spellList);v498=setupUI(v25,g_ui.getRootWidget());v498:setText(firstLetterUpper(v495.spellCast));v496=948 -(245 + 702) ;end end end end end comboInterface.insertSpell.onClick=function(v183) local v184=0 -0 ;local v185;local v186;local v187;local v188;local v189;local v190;while true do if (v184==(1 + 1)) then if ( not v187 or (v187:len()==(1898 -(260 + 1638)))) then return warn(v7("\3\32\195\90\38\39\209\27\30\43\205\79\106\1\219\27\25\45\199\94\47\32","\59\74\78\181"));end if (v188==(440 -(382 + 58))) then return warn(v7("\12\223\76\91\191\44\213\26\121\188\42\221\94\85\164\43\159","\211\69\177\58\58"));end if (v189==(0 -0)) then return warn(v7("\158\235\111\244\229\194\179\165\93\252\250\223\182\235\122\240","\171\215\133\25\149\137"));end v190={[v7("\232\198\54\255\247","\34\129\168\82\154\143\80\156")]= #storageProfiles.comboSpells + 1 ,[v7("\150\162\54\7\68\109\136\150\166","\233\229\210\83\107\40\46")]=v185,[v7("\206\76\1\213\23\196\71\60","\101\161\34\82\182")]=v187,[v7("\231\31\88\240\220\231\177\62\237\1\85","\78\136\109\57\158\187\130\226")]=v186,[v7("\61\48\246\253\58\48\238\255","\145\94\95\153")]=v188,[v7("\249\196\7\193\79\185\254\200","\215\157\173\116\181\46")]=v189,[v7("\48\186\138\240\214\48\128\130\255\223\6\164\142\254\214","\186\85\212\235\146")]=true,[v7("\199\143\23\252\53\235\92","\56\162\225\118\158\89\142")]=true};v184=3;end if (v184==5) then comboInterface.cooldown:setValue(0 + 0 );pillsInterface.distance:setValue(0 -0 );break;end if ((0 -0)==v184) then v185=comboInterface.castSpell:getText():trim():lower();v186=comboInterface.orangeSpell:getText():trim():lower();v187=comboInterface.onScreen:getText();v186=((v186:len()==(1205 -(902 + 303))) and v185) or v186 ;v184=1 -0 ;end if (v184==(9 -5)) then comboInterface.orangeSpell:clearText();comboInterface.onScreen:clearText();comboInterface.sameSpell:setChecked(true);comboInterface.orangeSpell:setEnabled(false);v184=1 + 4 ;end if (v184==(1691 -(1121 + 569))) then v188=comboInterface.cooldown:getValue();v189=comboInterface.distance:getValue();if ( not v185 or (v185:len()==0)) then return warn(v7("\222\253\42\211\251\250\56\146\196\227\57\222\251\179\18\211\250\246\114","\178\151\147\92"));end if ( not comboInterface.sameSpell:isChecked() and (comboInterface.orangeSpell:getText():len()==0)) then return warn(v7("\165\243\90\51\30\69\126\204\210\94\51\28\75\127\204\206\92\55\30\64\52","\26\236\157\44\82\114\44"));end v184=216 -(22 + 192) ;end if (v184==3) then table.insert(storageProfiles.comboSpells,v190);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);refreshComboList(comboInterface,storageProfiles.comboSpells);comboInterface.castSpell:clearText();v184=687 -(483 + 200) ;end end end;refreshComboList(comboInterface,storageProfiles.comboSpells);comboInterface.moveUp.onClick=function() local v191=1463 -(1404 + 59) ;local v192;local v193;while true do if (v191==0) then v192=comboInterface.spellList:getFocusedChild();if  not v192 then return;end v191=2 -1 ;end if (v191==(1 -0)) then v193=comboInterface.spellList:getChildIndex(v192);if (v193<(767 -(468 + 297))) then return;end v191=2;end if (v191==4) then table.sort(storageProfiles.comboSpells,function(v596,v597) return v596.index<v597.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if (v191==3) then storageProfiles.comboSpells[v193].index=v193-(563 -(334 + 228)) ;storageProfiles.comboSpells[v193-(3 -2) ].index=v193;v191=4;end if (v191==(4 -2)) then comboInterface.spellList:moveChildToIndex(v192,v193-(1 -0) );comboInterface.spellList:ensureChildVisible(v192);v191=1 + 2 ;end end end;comboInterface.moveDown.onClick=function() local v194=236 -(141 + 95) ;local v195;local v196;while true do if (v194==(3 + 0)) then storageProfiles.comboSpells[v196].index=v196 + (2 -1) ;storageProfiles.comboSpells[v196 + 1 ].index=v196;v194=9 -5 ;end if (2==v194) then comboInterface.spellList:moveChildToIndex(v195,v196 + 1 );comboInterface.spellList:ensureChildVisible(v195);v194=1 + 2 ;end if (v194==(2 -1)) then v196=comboInterface.spellList:getChildIndex(v195);if (v196>=comboInterface.spellList:getChildCount()) then return;end v194=2;end if (0==v194) then v195=comboInterface.spellList:getFocusedChild();if  not v195 then return;end v194=1;end if (v194==(3 + 1)) then table.sort(storageProfiles.comboSpells,function(v598,v599) return v598.index<v599.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;comboInterface.findCD.onClick=function(v197) local v198=0 + 0 ;while true do if (v198==0) then detectOrangeSpell,testSpell=true,true;spellTime={0 + 0 ,""};break;end end end;macro(1 + 0 ,function() if testSpell then say(comboInterface.castSpell:getText());end end);onTalk(function(v199,v200,v201,v202,v203,v204) local v205=0 -0 ;local v206;while true do if ((765 -(574 + 191))==v205) then if  not detectOrangeSpell then return;end if (player:getName()~=v199) then return;end v205=1 + 0 ;end if (v205==(2 -1)) then v206=((comboInterface.orangeSpell:getText():len()>0) and comboInterface.orangeSpell:getText():lower():trim()) or comboInterface.castSpell:getText():lower():trim() ;if (v202:lower():trim()==v206) then if (spellTime[2 + 0 ]==v206) then local v714=849 -(254 + 595) ;while true do if (v714==0) then comboInterface.cooldown:setValue(now-spellTime[1] );spellTime={now,v206};v714=1791 -(573 + 1217) ;end if ((2 -1)==v714) then detectOrangeSpell=false;testSpell=false;break;end end else spellTime={now,v206};end end break;end end end);macro(940 -(714 + 225) ,function() local v207=0 -0 ;while true do if (v207==(0 -0)) then if  not (comboSpellsWidget or storageProfiles.comboSpells) then return;end for v600,v601 in ipairs(storageProfiles.comboSpells) do local v602=comboSpellsWidget[v601.index];if v602 then if ( not v601.cooldownSpells or (v601.cooldownSpells<now)) then local v737=0;while true do if (v737==(0 + 0)) then v602:setColor(v7("\91\23\197\170\44","\184\60\101\160\207\66"));v602:setText(firstLetterUpper(v601.onScreen)   .. v7("\113\158\60\252\97\145","\220\81\226\28") );break;end end else local v738=0 -0 ;while true do if (v738==(806 -(118 + 688))) then v602:setColor(v7("\1\208\134","\167\115\181\226\155\138"));v602:setText(firstLetterUpper(v601.onScreen)   .. v7("\162\62\167","\166\130\66\135\60\27\17")   .. formatRemainingTime(v601.cooldownSpells) );break;end end end end end break;end end end);fugaIcon.title:setOn(v21.fugaMacro);fugaIcon.title.onClick=function(v208) v21.fugaMacro= not v21.fugaMacro;v208:setOn(v21.fugaMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;fugaIcon.settings.onClick=function(v210) if  not fugaInterface:isVisible() then fugaInterface:show();fugaInterface:raise();fugaInterface:focus();else fugaInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end end;fugaInterface.closeButton.onClick=function(v211) local v212=0;while true do if ((48 -(25 + 23))==v212) then fugaInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;fugaInterface.hppercent:setText(v7("\20\15","\80\36\42\174\21"));fugaInterface.hppercent.onValueChange=function(v213,v214) v213:setText(v214   .. "%" );end;fugaInterface.cooldownTotal:setText(v7("\30\3","\26\46\112\87"));fugaInterface.cooldownTotal.onValueChange=function(v215,v216) local v217=0 + 0 ;local v218;while true do if (v217==(1886 -(927 + 959))) then v218=formatTime(v216);v215:setText(v216   .. "s" );break;end end end;fugaInterface.cooldownActive:setText(v7("\233\48","\212\217\67\203\20\223\223\37"));fugaInterface.cooldownActive.onValueChange=function(v219,v220) local v221=0 -0 ;local v222;while true do if (v221==0) then v222=formatTime(v220);v219:setText(v220   .. "s" );break;end end end;fugaIcon.showInfos:setChecked(v21.showInfos);fugaIcon.showInfos.onClick=function(v223) local v224=0;while true do if (v224==(732 -(16 + 716))) then v21.showInfos= not v21.showInfos;v223:setChecked(v21.showInfos);break;end end end;fugaInterface.sameSpell:setChecked(true);fugaInterface.orangeSpell:setEnabled(false);fugaInterface.sameSpell.onCheckChange=function(v225,v226) if v226 then fugaInterface.orangeSpell:setEnabled(false);else fugaInterface.orangeSpell:setEnabled(true);fugaInterface.orangeSpell:setText(fugaInterface.castSpell:getText());end end;fugaInterface.lifesValue:hide();fugaInterface.lifesOption.onCheckChange=function(v227,v228) if v228 then local v464=0 -0 ;while true do if (v464==0) then fugaInterface.multipleOption:hide();fugaInterface.lifesValue:show();break;end end else local v465=0;while true do if (v465==(97 -(11 + 86))) then fugaInterface.multipleOption:show();fugaInterface.lifesValue:hide();break;end end end end;function refreshFugaList(v229,v230) if v230 then for v504,v505 in pairs(v229.spellList:getChildren()) do v505:destroy();end for v506,v507 in pairs(fugaSpellsWidgets) do v507:destroy();end for v508,v509 in ipairs(v230) do local v510=setupUI(v24,v229.spellList);local v511=setupUI(v25,g_ui.getRootWidget());v511:setText(firstLetterUpper(v509.spellCast));attachSpellWidgetCallbacks(v511,v509.index,storageProfiles.fugaSpells);if  not v509.widgetPos then v509.widgetPos={x=0 -0 ,y=335 -(175 + 110) };end if v509.enableTimeSpell then v511:show();else v511:hide();end v511:setPosition(v509.widgetPos);fugaSpellsWidgets[v509.index]=v511;v510.onDoubleClick=function(v603) local v604=0 -0 ;local v605;while true do if (v604==(0 -0)) then v605=v509;v229.castSpell:setText(v605.spellCast);v229.orangeSpell:setText(v605.orangeSpell);v229.onScreen:setText(v605.onScreen);v604=1;end if (v604==2) then scriptFuncs.reindexTable(v230);v511:destroy();v510:destroy();break;end if (v604==(1797 -(503 + 1293))) then v229.hppercent:setValue(v605.selfHealth);v229.cooldownTotal:setValue(v605.cooldownTotal);v229.cooldownActive:setValue(v605.cooldownActive);for v739,v740 in ipairs(storageProfiles.fugaSpells) do if (v740==v509) then removeTable(storageProfiles.fugaSpells,v739);end end v604=5 -3 ;end end end;v510.enabled:setChecked(v509.enabled);v510.enabled:setTooltip(( not v509.enabled and v7("\159\131\169\208\182\136\232\225\170\136\164\222","\178\218\237\200")) or v7("\146\188\245\209\180\185\227\144\133\165\227\220\186","\176\214\213\134") );v510.enabled.onClick=function(v606) local v607=0 + 0 ;while true do if (v607==0) then v509.enabled= not v509.enabled;v510.enabled:setChecked(v509.enabled);v607=1062 -(810 + 251) ;end if ((1 + 0)==v607) then v510.enabled:setTooltip(( not v509.enabled and v7("\209\163\183\214\164\83\25\199\189\179\216\164","\57\148\205\214\180\200\54")) or v7("\54\244\38\53\116\30\248\117\7\102\23\241\57","\22\114\157\85\84") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;v510.showTimespell:setChecked(v509.enableTimeSpell);v510.showTimespell:setTooltip(( not v509.enableTimeSpell and v7("\225\197\18\198\81\243\232\240\194\30\193\29\197\184\193\199\31","\200\164\171\115\164\61\150")) or v7("\154\253\16\68\129\178\241\67\113\138\179\241\67\118\147\187\248\15","\227\222\148\99\37") );v510.showTimespell.onClick=function(v608) local v609=0 + 0 ;while true do if (v609==(0 + 0)) then v509.enableTimeSpell= not v509.enableTimeSpell;v510.showTimespell:setChecked(v509.enableTimeSpell);v609=534 -(43 + 490) ;end if (v609==(734 -(711 + 22))) then v510.showTimespell:setTooltip(( not v509.enableTimeSpell and v7("\22\92\83\244\245\54\18\102\255\244\54\18\97\230\252\63\94","\153\83\50\50\150")) or v7("\121\127\96\29\113\167\72\29\66\122\17\118\235\126\77\115\127\16","\45\61\22\19\124\19\203") );if v509.enableTimeSpell then v511:show();else v511:hide();end v609=7 -5 ;end if ((861 -(240 + 619))==v609) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;v510.remove.onClick=function(v610) for v658,v659 in ipairs(storageProfiles.fugaSpells) do if (v659==v509) then removeTable(storageProfiles.fugaSpells,v658);end end scriptFuncs.reindexTable(v230);v511:destroy();v510:destroy();end;v510.onClick=function(v611) local v612=0 + 0 ;while true do if (v612==0) then fugaInterface.moveDown:show();fugaInterface.moveUp:show();break;end end end;v510.textToSet:setText(firstLetterUpper(v509.spellCast));v510.textToSet:setColor(v7("\214\26\4\225\7","\217\161\114\109\149\98\16"));v510.textToSet:setFont(v7("\4\37\42\120\189\122\19\109\105\45\172\108\95\50\55\105\178\112\23\36","\20\114\64\88\28\220"));v510:setTooltip(v7("\30\19\211\186\255\213\253\28\4\193\167\249\215\184\107\65","\221\81\97\178\212\152\176")   .. v509.orangeSpell   .. v7("\141\251\93\212\20\141\212\30\233\31\200\233\71\187","\122\173\135\125\155")   .. v509.onScreen   .. v7("\196\221\64\141\48\37\201\136\129\35\182\48\61\204\139\214\14\227\127","\168\228\161\96\217\95\81")   .. v509.cooldownTotal   .. v7("\200\145\50\28\14\84\207\216\56\89\111\116\212\222\34\88\32\64\213\139\110","\55\187\177\78\60\79")   .. v509.cooldownActive   .. v7("\62\142\67\171\110\223\144\40\220\92\238\72\219\218\109","\224\77\174\63\139\38\175")   .. v509.selfHealth );end end end fugaInterface.moveUp.onClick=function() local v231=0 -0 ;local v232;local v233;while true do if (v231==(1 + 0)) then v233=fugaInterface.spellList:getChildIndex(v232);if (v233<2) then return;end v231=1746 -(1344 + 400) ;end if ((407 -(255 + 150))==v231) then fugaInterface.spellList:moveChildToIndex(v232,v233-1 );fugaInterface.spellList:ensureChildVisible(v232);v231=3 + 0 ;end if (v231==(0 + 0)) then v232=fugaInterface.spellList:getFocusedChild();if  not v232 then return;end v231=4 -3 ;end if (v231==3) then storageProfiles.fugaSpells[v233].index=v233-(3 -2) ;storageProfiles.fugaSpells[v233-(1740 -(404 + 1335)) ].index=v233;v231=410 -(183 + 223) ;end if (v231==(4 -0)) then table.sort(storageProfiles.fugaSpells,function(v613,v614) return v613.index<v614.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;fugaInterface.moveDown.onClick=function() local v234=0 + 0 ;local v235;local v236;while true do if ((1 + 1)==v234) then fugaInterface.spellList:moveChildToIndex(v235,v236 + 1 );fugaInterface.spellList:ensureChildVisible(v235);v234=340 -(10 + 327) ;end if (v234==(1 + 0)) then v236=fugaInterface.spellList:getChildIndex(v235);if (v236>=fugaInterface.spellList:getChildCount()) then return;end v234=340 -(118 + 220) ;end if (v234==(0 + 0)) then v235=fugaInterface.spellList:getFocusedChild();if  not v235 then return;end v234=1;end if (v234==(452 -(108 + 341))) then storageProfiles.fugaSpells[v236].index=v236 + 1 + 0 ;storageProfiles.fugaSpells[v236 + (4 -3) ].index=v236;v234=1497 -(711 + 782) ;end if (v234==(7 -3)) then table.sort(storageProfiles.fugaSpells,function(v615,v616) return v615.index<v616.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end;fugaInterface.insertSpell.onClick=function(v237) local v238=469 -(270 + 199) ;local v239;local v240;local v241;local v242;local v243;local v244;local v245;while true do if (v238==9) then fugaInterface.multipleOption:setChecked(false);fugaInterface.multipleOption:show();fugaInterface.lifesValue:hide();break;end if (v238==(0 + 0)) then v239=fugaInterface.castSpell:getText():trim();v240=fugaInterface.orangeSpell:getText():trim();v241=fugaInterface.onScreen:getText();v238=1820 -(580 + 1239) ;end if (v238==(17 -11)) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);fugaInterface.castSpell:clearText();fugaInterface.orangeSpell:clearText();v238=7 + 0 ;end if (v238==7) then fugaInterface.onScreen:clearText();fugaInterface.cooldownTotal:setValue(0);fugaInterface.cooldownActive:setValue(0 + 0 );v238=4 + 4 ;end if (v238==(7 -4)) then if (v241:len()==(0 + 0)) then return warn(v7("\50\227\144\80\225\52\61\91\217\131\73\249\125\22\21\173\181\82\255\56\60\21","\89\123\141\230\49\141\93"));end if (v242==(1167 -(645 + 522))) then return warn(v7("\218\127\224\13\28\67\247\49\222\28\0\79\225\114\243\2\4\4","\42\147\17\150\108\112"));end if (v243==(1790 -(1010 + 780))) then return warn(v7("\38\168\59\126\235\225\11\230\14\112\232\228\11\169\58\113\167\220\0\178\44\115\169","\136\111\198\77\31\135"));end v238=4 + 0 ;end if (v238==(19 -15)) then v245={[v7("\11\7\163\83\165","\201\98\105\199\54\221\132\119")]= #storageProfiles.fugaSpells + (2 -1) ,[v7("\170\28\134\45\14\22\173\170\24","\204\217\108\227\65\98\85")]=v239,[v7("\81\209\244\235\43\197\109\211\240\233\32","\160\62\163\149\133\76")]=v240,[v7("\217\174\62\44\209\211\165\3","\163\182\192\109\79")]=v241,[v7("\39\35\12\198\221\49\39\12\212\253","\149\84\70\96\160")]=v242,[v7("\59\9\2\225\60\9\26\227\25\5\25\228\46\3","\141\88\102\109")]=v244,[v7("\176\92\197\124\30\50\66\207\135\92\222\113\22","\161\211\51\170\16\122\93\53")]=v243,[v7("\254\160\179\42\247\171\134\33\246\171\129\56\254\162\190","\72\155\206\210")]=true,[v7("\67\116\85\12\63\67\126","\83\38\26\52\110")]=true};if fugaInterface.lifesOption:isChecked() then v245.lifes=1836 -(1045 + 791) ;v245.enableLifes=true;if (fugaInterface.lifesValue:getValue()==(0 -0)) then return warn(v7("\113\25\49\71\84\30\35\6\116\30\33\67\24\33\38\74\77\18\105","\38\56\119\71"));end v245.amountLifes=fugaInterface.lifesValue:getValue();end if fugaInterface.reviveOption:isChecked() then local v663=0 -0 ;while true do if (0==v663) then v245.enableRevive=true;v245.alreadyChecked=false;break;end end end v238=510 -(351 + 154) ;end if (v238==(1582 -(1281 + 293))) then fugaInterface.hppercent:setValue(266 -(28 + 238) );fugaInterface.reviveOption:setChecked(false);fugaInterface.lifesOption:setChecked(false);v238=9;end if (v238==(2 -1)) then v240=((v240:len()==(1559 -(1381 + 178))) and v239) or v240 ;v242=fugaInterface.hppercent:getValue();v243=fugaInterface.cooldownTotal:getValue();v238=2 + 0 ;end if (v238==(2 + 0)) then v244=fugaInterface.cooldownActive:getValue();if (v239:len()==(0 + 0)) then return warn(v7("\173\79\78\47\136\72\92\110\183\81\93\34\136\1\118\47\137\68\22","\78\228\33\56"));end if ( not fugaInterface.sameSpell:isChecked() and (v240:len()==0)) then return warn(v7("\231\112\164\2\137\199\122\242\44\151\207\112\181\6\197\253\110\183\15\137\128","\229\174\30\210\99"));end v238=3;end if (v238==(17 -12)) then if fugaInterface.multipleOption:isChecked() then v245.enableMultiple=true;v245.count=3;end table.insert(storageProfiles.fugaSpells,v245);refreshFugaList(fugaInterface,storageProfiles.fugaSpells);v238=4 + 2 ;end end end;refreshFugaList(fugaInterface,storageProfiles.fugaSpells);storage.widgetPos=storage.widgetPos or {} ;informationWidget={};local v50={v7("\224\231\87\193\17\83\235\251","\54\147\143\56\182\69")};for v246,v247 in ipairs(v50) do informationWidget[v247]=setupUI(v25,g_ui.getRootWidget());end local function v51(v249) informationWidget[v249].onDragEnter=function(v396,v397) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v396:breakAnchors();v396.movingReference={x=v397.x-v396:getX() ,y=v397.y-v396:getY() };return true;end;informationWidget[v249].onDragMove=function(v399,v400,v401) local v402=0;local v403;local v404;local v405;while true do if (v402==(471 -(381 + 89))) then v405=math.min(math.max(v403.y-v399:getParent():getMarginTop() ,v400.y-v399.movingReference.y ),(v403.y + v403.height) -v399:getHeight() );v399:move(v404,v405);v402=2 + 0 ;end if (2==v402) then return true;end if (v402==(0 + 0)) then v403=v399:getParent():getRect();v404=math.min(math.max(v403.x,v400.x-v399.movingReference.x ),(v403.x + v403.width) -v399:getWidth() );v402=1 -0 ;end end end;informationWidget[v249].onDragLeave=function(v406,v407) local v408=1156 -(1074 + 82) ;while true do if (v408==1) then storage.widgetPos[v249].y=v406:getY();return true;end if (v408==(0 -0)) then storage.widgetPos[v249]={};storage.widgetPos[v249].x=v406:getX();v408=1785 -(214 + 1570) ;end end end;end for v253,v254 in pairs(informationWidget) do local v255=0;while true do if (v255==(1455 -(990 + 465))) then v51(v253);informationWidget[v253]:setPosition(storage.widgetPos[v253] or {0,22 + 28 } );break;end end end local v52=informationWidget[v7("\197\137\240\94\235\211\153\235","\191\182\225\159\41")];macro(98 + 2 ,function() if v21.showInfos then for v522,v523 in ipairs(storageProfiles.fugaSpells) do if v523.selfHealth then local v666=0;while true do if (1==v666) then return;end if (v666==(0 -0)) then v52:show();v52:setText(v7("\2\60\1\120\162\160\237\24\72\104","\162\75\114\72\53\235\231")   .. getPlayersAttack(false)   .. v7("\204\32\4\210\118\48\175\25\106\214\9\66","\98\236\92\36\130\51")   .. calculatePercentage(v523.selfHealth)   .. "%" );v666=1;end end end end else v52:hide();end end);macro(1727 -(1668 + 58) ,function() if  not (fugaSpellsWidgets and storageProfiles.fugaSpells) then return;end for v409,v410 in ipairs(storageProfiles.fugaSpells) do local v411=fugaSpellsWidgets[v410.index];if v411 then local v524=firstLetterUpper(v410.onScreen);local v525=v7("\163\11\9\191\75","\80\196\121\108\218\37\200\213");if (v410.activeCooldown and (v410.activeCooldown>now)) then local v667=626 -(512 + 114) ;while true do if (v667==(0 -0)) then v524=v524   .. v7("\90\51","\234\96\19\98\31\43\110")   .. formatRemainingTime(v410.activeCooldown) ;v525=v7("\69\79\2\225\138\84\173","\235\102\127\50\167\204\18");v667=1;end if (v667==1) then if (v410.enableLifes and (v410.lifes==0)) then v410.activeCooldown=nil;end break;end end elseif (v410.totalCooldown and (v410.totalCooldown>now)) then v524=v524   .. v7("\10\225","\78\48\193\149\67\36")   .. formatRemainingTime(v410.totalCooldown) ;v525=v7("\115\56\166\76\17\100\78","\33\80\126\224\120");else local v717=0;while true do if (v717==(0 -0)) then v524=v524   .. v7("\182\232\83\215","\60\140\200\99\164") ;if (v410.enableMultiple and v410.canReset) then local v777=0 -0 ;while true do if (v777==(0 + 0)) then v410.count=1 + 2 ;v410.canReset=false;break;end end end v717=1 + 0 ;end if (v717==(3 -2)) then if v410.enableLifes then v410.lifes=0;end if v410.enableRevive then v410.alreadyChecked=false;end break;end end end if (v410.enableMultiple and (v410.count>(1994 -(109 + 1885)))) then v524=""   .. v410.count   .. v7("\199\232\68","\194\231\148\100\70")   .. v524 ;end if (v410.enableLifes and (v410.lifes>(1469 -(1269 + 200)))) then v524=""   .. v410.lifes   .. v7("\6\80\129","\168\38\44\161\195\150")   .. v524 ;end v411:setText(v524);v411:setColor(v525);end end end);keyIcon.title:setOn(v21.keyMacro);keyIcon.title.onClick=function(v256) local v257=0 -0 ;while true do if (v257==(816 -(98 + 717))) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end if (v257==(826 -(802 + 24))) then v21.keyMacro= not v21.keyMacro;v256:setOn(v21.keyMacro);v257=1;end end end;keyIcon.settings.onClick=function(v258) if  not keyInterface:isVisible() then keyInterface:show();keyInterface:raise();keyInterface:focus();else local v466=0 -0 ;while true do if (v466==(0 -0)) then keyInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);break;end end end end;keyInterface.closeButton.onClick=function(v259) keyInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;keyInterface.key.onHoverChange=function(v260,v261) if v261 then local v467=0;while true do if (v467==(0 + 0)) then x=true;onKeyPress(function(v686) local v687=0 + 0 ;while true do if (v687==0) then if  not x then return;end v260:setText(v686);break;end end end);break;end end else x=false;end end;function refreshKeyList(v262,v263) if v263 then for v527,v528 in pairs(v262.spellList:getChildren()) do v528:destroy();end for v529,v530 in ipairs(v263) do local v531=0 + 0 ;local v532;while true do if (v531==(0 + 0)) then v532=setupUI(v24,v262.spellList);v532.showTimespell:hide();v531=2 -1 ;end if (v531==3) then v532.remove.onClick=function(v718) for v743,v744 in ipairs(storageProfiles.keySpells) do if (v744==v530) then removeTable(storageProfiles.keySpells,v743);end end scriptFuncs.reindexTable(storageProfiles.keySpells);v532:destroy();end;v532.textToSet:setText(firstLetterUpper(v530.spellCast)   .. v7("\90\169\200\38\31\172\210\77","\109\122\213\232")   .. v530.keyPress );break;end if (v531==(6 -4)) then v532.enabled:setTooltip(( not v530.enabled and v7("\165\242\131\116\60\237\246\37\144\249\142\122","\118\224\156\226\22\80\136\214")) or v7("\102\231\74\129\64\226\92\192\113\254\92\140\78","\224\34\142\57") );v532.enabled.onClick=function(v719) v530.enabled= not v530.enabled;v532.enabled:setChecked(v530.enabled);v532.enabled:setTooltip(( not v530.enabled and v7("\251\169\196\223\127\244\29\61\206\162\201\209","\110\190\199\165\189\19\145\61")) or v7("\254\226\100\233\137\203\223\171\68\248\142\203\214","\167\186\139\23\136\235") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v531=2 + 1 ;end if (v531==1) then v532.onDoubleClick=function(v721) local v722=v530;v262.key:setText(v722.keyPress);v262.castSpell:setText(v722.spellCast);for v745,v746 in ipairs(storageProfiles.keySpells) do if (v746==v530) then removeTable(storageProfiles.keySpells,v745);end end scriptFuncs.reindexTable(v263);v532:destroy();end;v532.enabled:setChecked(v530.enabled);v531=2;end end end end end keyInterface.insertKey.onClick=function(v264) local v265=keyInterface.key:getText();local v266=keyInterface.castSpell:getText():lower():trim();if ( not v265 or (v265:len()==(0 + 0))) then return warn(v7("\199\249\180\49\226\254\166\112\197\242\187\126","\80\142\151\194"));end for v412,v413 in ipairs(storageProfiles.keySpells) do if (v413.keyPress==v265) then return warn(v7("\40\195\110\12\34\202\101\73\2\194\110\12\34\194\115\73\7\136","\44\99\166\23"));end end table.insert(storageProfiles.keySpells,{[v7("\117\249\45\51\43","\196\28\151\73\86\83")]= #storageProfiles.keySpells + 1 ,[v7("\224\19\44\28\142\123\25\101\231","\22\147\99\73\112\226\56\120")]=v266,[v7("\179\112\251\197\159\189\102\241","\237\216\21\130\149")]=v265,[v7("\135\64\94\93\188\204\90","\62\226\46\63\63\208\169")]=true});refreshKeyList(keyInterface,storageProfiles.keySpells);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);keyInterface.key:clearText();keyInterface.castSpell:clearText();end;refreshKeyList(keyInterface,storageProfiles.keySpells);macro(storage.scrollBars1.macroDelay,function() if  not v26.title:isOn() then return;end if (stopCombo and (stopCombo>=now)) then return;end if (stopToCast() or isAnySelectedKeyPressed() or  not g_game.isAttacking()) then return;end local v267=player:getPosition();local v268=g_game.getAttackingCreature();local v269=v268:getPosition();if  not v269 then return;end local v270=getDistanceBetween(v267,v269);for v414,v415 in ipairs(storageProfiles.comboSpells) do if (v415.enabled and (v270<=v415.distance)) then if ( not v415.cooldownSpells or (v415.cooldownSpells<=now)) then say(v415.spellCast);end end end end);local v58=g_game.getLocalPlayer();macro(1 + 0 ,function() local v271=0 + 0 ;local v272;while true do if ((0 + 0)==v271) then if  not fugaIcon.title:isOn() then return;end if isInPz() then return;end v271=1;end if (1==v271) then v272=v58:getHealthPercent();for v620,v621 in ipairs(storageProfiles.fugaSpells) do if (v621.enabled and (v272<=calculatePercentage(v621.selfHealth))) then if ( not v621.totalCooldown or (v621.totalCooldown<=now)) then if  not canCastFuga() then local v760=1433 -(797 + 636) ;while true do if (v760==(0 -0)) then stopCombo=now + (1869 -(1427 + 192)) ;forceSay(v621.spellCast);break;end end end end end end break;end end end);macro(1 + 0 ,function() local v273=0;while true do if (1==v273) then for v622,v623 in ipairs(storageProfiles.fugaSpells) do if (v623.enabled and (g_mouse.isPressed(16 -9 ))) then if ( not v623.totalCooldown or (v623.totalCooldown<=now)) then if  not canCastFuga() then local v761=0 + 0 ;while true do if (v761==(0 + 0)) then stopCombo=now + 250 ;return forceSay(v623.spellCast);end end end end end end break;end if (v273==(326 -(192 + 134))) then if  not g_mouse.isPressed(1283 -(316 + 960) ) then return;end if  not fugaIcon.title:isOn() then return;end v273=1 + 0 ;end end end);macro(storage.scrollBars1.macroDelay,function() local v274=0 + 0 ;while true do if (v274==(1 + 0)) then for v624,v625 in ipairs(storageProfiles.keySpells) do if (v625.enabled and (modules.corelib.g_keyboard.areKeysPressed(v625.keyPress))) then local v691=0 -0 ;while true do if (v691==0) then stopCombo=now + (801 -(83 + 468)) ;say(v625.spellCast);break;end end end end break;end if (v274==(1806 -(1202 + 604))) then if  not keyIcon.title:isOn() then return;end if modules.game_console:isChatEnabled() then return;end v274=1;end end end);onTalk(function(v275,v276,v277,v278,v279,v280) local v281=0 -0 ;while true do if (v281==(0 -0)) then v278=v278:lower();if (v275~=player:getName()) then return;end v281=1;end if (v281==(8 -5)) then for v626,v627 in ipairs(storageProfiles.fugaSpells) do if (v278==v627.orangeSpell) then if v627.enableLifes then local v747=0;while true do if (v747==(326 -(45 + 280))) then v627.lifes=v627.amountLifes;break;end if (v747==(0 + 0)) then v627.activeCooldown=(now + (v627.cooldownActive * 1000)) -250 ;v627.totalCooldown=(now + (v627.cooldownTotal * (874 + 126))) -(92 + 158) ;v747=1 + 0 ;end end end if (v627.enableRevive and  not v627.alreadyChecked) then v627.totalCooldown=(now + (v627.cooldownTotal * 1000)) -(44 + 206) ;v627.activeCooldown=(now + (v627.cooldownActive * (1851 -851))) -(2161 -(340 + 1571)) ;v627.alreadyChecked=true;end if v627.enableMultiple then if (v627.count>(0 + 0)) then v627.count=v627.count-(1773 -(1733 + 39)) ;v627.activeCooldown=(now + (v627.cooldownActive * 1000)) -(686 -436) ;if (v627.count==0) then v627.totalCooldown=(now + (v627.cooldownTotal * 1000)) -(1284 -(125 + 909)) ;v627.canReset=true;break;end end end if  not (v627.enableLifes or v627.enableRevive or v627.enableMultiple) then v627.activeCooldown=(now + (v627.cooldownActive * (2948 -(1096 + 852)))) -(113 + 137) ;v627.totalCooldown=(now + (v627.cooldownTotal * (1428 -428))) -(243 + 7) ;warn(v278);break;end end end break;end if (v281==(514 -(409 + 103))) then for v628,v629 in ipairs(CONFIG.pot2) do if (v278==v629.orangeText:lower()) then v629.exhaust=now + v629.cooldown ;end end for v630,v631 in ipairs(storageProfiles.comboSpells) do if (v278==v631.orangeSpell) then v631.cooldownSpells=now + v631.cooldown ;end end v281=3;end if (v281==(237 -(46 + 190))) then if (v278==v7("\199\16\95\150\10\77\22\95\236\27\84","\62\133\121\53\227\127\109\79")) then yaibaSlow=os.time() + (110 -(51 + 44)) ;end for v632,v633 in ipairs(CONFIG.pot) do if (v278==v633.orangeText:lower()) then v633.exhaust=now + v633.cooldown ;end end v281=1 + 1 ;end end end);onTextMessage(function(v282,v283) for v416,v417 in ipairs(storageProfiles.fugaSpells) do if v417.enableLifes then if (v283:lower():find(v7("\29\27\32\231\211\187\226\21\84\32\240\216\175\177\19\17\39","\194\112\116\82\149\182\206")) and v417.activeCooldown and (v417.activeCooldown>=now)) then v417.lifes=v417.lifes-1 ;end end end end);onPlayerPositionChange(function(v284,v285) local v286={x=2531 -(1114 + 203) ,y=686,z=6};for v418,v419 in ipairs(storageProfiles.fugaSpells) do if (v419.enableRevive and (v419.spellCast==v7("\48\178\77\22\193\229\7","\110\89\200\44\120\160\130"))) then if ((v284.x==v286.x) and (v284.y==v286.y) and (v284.z==v286.z)) then v419.activeCooldown=nil;v419.alreadyChecked=true;end end end end);UI.Separator();UI.Label(v7("\155\226\98\104\102\102\123\96\138\224\121\105\112","\45\203\163\43\38\35\42\91")):setFont(v7("\209\140\204\48\136\175\64\244\138\210\55","\52\178\229\188\67\231\201"));local v59=v7("\36\89\68\22\246\79","\67\65\33\48\100\151\60");local v60=setupUI([[
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


]]);v60:setId(PanelName);if  not storage[v59] then storage[v59]={};end local v61=storage[v59];PainelsWindow=UI.createWidget(v7("\239\230\167\214\246\211\208\167\214\247\208\240","\147\191\135\206\184"),rootWidget);PainelsWindow:hide();extrasWindow=UI.createWindow(v7("\161\48\178\211\217\64\133\141\38\162\206\207","\210\228\72\198\161\184\51"),rootWidget);extrasWindow:hide();extrasWindow.closeButton.onClick=function(v287) extrasWindow:hide();end;local v63=extrasWindow.content.right;local v64=extrasWindow.content.left;v60.editMusica.onClick=function(v288) extrasWindow:show();extrasWindow:raise();extrasWindow:focus();end;PainelsWindow.closeButton.onClick=function(v289) PainelsWindow:hide();end;v60.editPainel.onClick=function(v290) local v291=726 -(228 + 498) ;while true do if (v291==1) then PainelsWindow:focus();break;end if (v291==(0 + 0)) then PainelsWindow:show();PainelsWindow:raise();v291=1;end end end;local v68={[v7("\53\70\252\28\119\193\33\71\192\21\127\193\103","\174\86\41\147\112\19")]=2763 + 2237 ,[v7("\75\15\158\24\44\13\29\174\111\5\149\31\54","\203\59\96\237\107\69\111\113")]={v7("\46\3\184\242\36\176\209\43\31\236\242\52\252\214\32\25","\183\68\118\204\129\81\144")}};onTextMessage(function(v292,v293) local v294=0 -0 ;while true do if (v294==(1905 -(830 + 1075))) then v293=v293:lower();for v634,v635 in ipairs(v68.possibleTexts) do filterText=v635:trim():lower();if v293:find(filterText) then v68.cooldownUse=now + v68.cooldownSelo1 ;break;end end break;end end end);UI.Separator(v64);CONFIG={[v7("\28\168\119\225\5\160\4\184","\226\110\205\16\132\107")]={{[v7("\248\211\229\213\77","\33\139\163\128\185")]=v7("\85\81\14\203\66\24\22\219\80\93\10\219\69\89\16\215\88\86","\190\55\56\100"),[v7("\85\160\51\18\23\236\228\88","\147\54\207\92\126\115\131")]=100}},[v7("\29\62\33","\30\109\81\85\29\109")]={{[v7("\246\117","\156\159\17\52\214\86\190")]=90 + 17 ,[v7("\161\253\188\178\169\234\137\185\182\251","\220\206\143\221")]=v7("\143\61\43\18\221\192\146\132\120\57\3\221\222\147","\178\230\29\77\119\184\172"),[v7("\246\177\5\23\115\247\226\176","\152\149\222\106\123\23")]=1562 -(171 + 991) }},[v7("\196\39\255\65\180","\213\189\70\150\35")]={{[v7("\92\69\113\4\67","\104\47\53\20")]=v7("\161\69\139\9\169\79\186\77\136\30\189","\111\195\44\225\124\220"),[v7("\219\73\15\127\175\164\207\72","\203\184\38\96\19\203")]=37592 -23592 }},[v7("\41\124\109\19","\174\89\19\25\33")]={{[v7("\38\22","\107\79\114\50\46\151\231")]=9455 + 2358 ,[v7("\54\180\180\39\141\60\131\197\33\178","\160\89\198\213\73\234\89\215")]=v7("\65\49\178\251\192\68\49\182\251\209\92\116\166\191","\165\40\17\212\158"),[v7("\230\214\7\63\34\234\206\6","\70\133\185\104\83")]=1402 -1002 }}};macro(2 -1 ,function() local v295=0 -0 ;local v296;while true do if (v295==(3 -2)) then if ((player:getOutfit().type==storage.outfitBijuu) and (v296<=(1347 -(111 + 1137)))) then for v696,v697 in ipairs(CONFIG.regenBju) do if ( not v697.exhaust or (v697.exhaust<=now)) then say(v697.spell);end end end break;end if (v295==(158 -(91 + 67))) then v296=v296();if isInPz() then return;end v295=2 -1 ;end end end);os=os or modules.os ;local v69=player:getName();function OutfitCheck() return player:getOutfit().type==tonumber(OutfitBijuu) ;end onTalk(function(v297,v298,v298,v299) if (v297==player:getName()) then if (v299==v7("\38\76\78\63\220\68\124\69\35\203\5","\169\100\37\36\74")) then yaibaSlow=os.time() + 4 + 11 ;end end end);macro(1,function() local v300=0;while true do if (v300==(524 -(423 + 100))) then if (player:getOutfit().type==(3 + 299)) then say(v7("\2\142\168\69\21\199\187\81\9\133\163","\48\96\231\194"));end break;end if (v300==(0 -0)) then if isInPz() then return;end if (yaibaSlow and (yaibaSlow>=os.time())) then return;end v300=1 + 0 ;end end end);onTalk(function(v301,v302,v303,v304,v305,v306) local v307=771 -(326 + 445) ;while true do if (v307==(0 -0)) then if (v301~=player:getName()) then return;end if ((v304:lower()==id) and (storage.time.t<now)) then storage.time.t=now + tempo1 ;end break;end end end,v64);macro(222 -122 ,function() for v421,v422 in ipairs(getSpectators(posz())) do if v422:isPlayer() then if (v422==player) then player:setMarked(v7("\202\86\15\46\18","\227\168\58\110\77\121\184\207"));elseif v422:isPartyMember() then v422:setMarked(v7("\98\57\179\76\190\204","\197\27\92\223\32\209\187\17"));elseif (v422:getEmblem()~=1) then v422:setMarked(v7("\17\90\199","\155\99\63\163"));end end end end);UI.Separator();UI.Label(v7("\177\212\173\140\171\196\160\216\171\152\172\222","\228\226\177\193\237\217"),v64):setFont(v7("\55\185\51\245\59\182\55\192\59\190\55","\134\84\208\67"));local v59=v7("\32\169\138\93\1","\60\115\204\230");local v60=setupUI([[
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

]],v64);v60:setId(v59);if  not storage[v59] then storage[v59]={[v7("\238\62","\16\135\90\139")]=3155,[v7("\64\125\18\63\75","\24\52\20\102\83\46\52")]=enabled,[v7("\193\33\32\38\3\193\43","\111\164\79\65\68")]=false,[v7("\213\220\151\202\39\228\193","\138\166\185\227\190\78")]=true,[v7("\195\100","\121\171\20\165\87\50\67")]=46 -26 };end v60.title:setOn(storage[v59].enabled);v60.title.onClick=function(v308) local v309=711 -(530 + 181) ;while true do if (v309==0) then storage[v59].enabled= not storage[v59].enabled;v308:setOn(storage[v59].enabled);break;end end end;local v71=function() local v310;if storage[v59].setting then v310=v7("\242\57\171\49\188\22","\98\166\88\217\86\217");else v310=v7("\211\248\124\12\159","\188\150\150\25\97\230");end v60.help:setText(v7("\243\143\31","\141\186\233\63\98\108")   .. v310   .. v7("\177\194\28\234","\69\145\138\76\214")   .. storage[v59].hp   .. "%" );end;v71();v60.HP.onValueChange=function(v311,v312) local v313=881 -(614 + 267) ;while true do if (v313==(32 -(19 + 13))) then storage[v59].hp=v312;v71();break;end end end;v60.item:setItemId(storage[v59].id);v60.item.onItemChange=function(v314) storage[v59].id=v314:getItemId();end;v60.HP:setValue(storage[v59].hp);macro(1 -0 ,function() local v316=0;while true do if (v316==(0 -0)) then if  not storage[v59].enabled then return;end if storage[v59].setting then if (g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<storage[v59].hp)) then say(v7("\91\202\130\130\190\31\48\252\129\128\183\25\101\143\175\156\170\28\121\193","\118\16\175\233\233\223"));say(v7("\160\129\62\176\239\130\61\184\140\60\179\225\158\61\173\145\32\177\231\133","\29\235\228\85\219\142\235"));say(v7("\22\209\177\214\118\71\103\97\53\221\178\210\98\14\1\71\40\222\179\211","\50\93\180\218\189\23\46\71"));end end break;end end end);UI.Label(v7("\234\141\118\105\4\239\120\251\136\119\127\30","\40\190\196\59\44\36\188"),v63):setFont(v7("\63\76\204\167\245\123\25\26\74\210\160","\109\92\37\188\212\154\29"));setDefaultTab(v7("\41\238\173\205","\58\100\143\196\163\81"));timeSpellPanelName=v7("\14\75\46\166\44\89\224\2\22\64\44\183","\110\122\34\67\195\95\41\133");local v60=setupUI([[
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
      
]],g_ui.getRootWidget());v74:hide();local v8=modules.game_bot.contentsPanel.config:getCurrentOption().text;TimeSpellConfig={[v7("\102\161\94\70\218\102","\182\21\209\59\42")]={}};local v75={};local v76=v7("\248\85\202\9\110","\222\215\55\165\125\65")   .. v8   .. "/"   .. name()   .. v7("\19\229\207\23\247\242\253\79\32\221\136\16\225\206\227","\42\76\177\166\122\146\161\141") ;local v77=v74.MainPanel;local v78=nil;local v79=nil;if g_resources.fileExists(v76) then local v424=0 -0 ;local v425;local v426;while true do if ((0 + 0)==v424) then v425,v426=pcall(function() return json.decode(g_resources.readFileContents(v76));end);if  not v425 then return onError(v7("\128\152\23\193\107\54\169\133\4\202\112\120\162\202\3\199\117\115\229\194","\22\197\234\101\174\25")   .. v76   .. v7("\100\122\229\232\121\239\209\143\53\116\177\212\115\239\199\148\34\54\169\217\123\227\151\130\40\56\160\200\115\239\227\143\32\49\150\204\115\163\219\200\39\39\170\210\56\239\243\131\57\53\172\208\101\245","\230\77\84\197\188\22\207\183")   .. v426 );end v424=1;end if (v424==(3 -1)) then for v672,v673 in pairs(TimeSpellConfig.spells) do if ((v673.totalCd-now)>v673.totalTime) then local v723=0 -0 ;while true do if (v723==(1812 -(1293 + 519))) then TimeSpellConfig.spells[v672].totalCd=0;TimeSpellConfig.spells[v672].activeCd=0 -0 ;break;end end end end break;end if (v424==(2 -1)) then TimeSpellConfig=v426;if (type(TimeSpellConfig.spells)~=v7("\237\21\196\240\137","\85\153\116\166\156\236\193\144")) then TimeSpellConfig.spells={};end v424=2;end end end function timeSpellConfigSave() local v317=v76;local v318,v319=pcall(function() return json.encode(TimeSpellConfig,2);end);if  not v318 then return onError(v7("\129\242\95\188\246\64\183\225\91\186\234\7\228\227\66\189\226\9\163\245\95\178\240\9\171\238\3\243\192\5\176\225\68\191\247\90\228","\96\196\128\45\211\132")   .. v319 );end if (v319:len()>(100 * (1957 -933) * (4415 -3391))) then return onError(v7("\22\130\117\89\219\168\161\202\52\153\114\80\220\239\178\209\57\136\59\80\196\170\166\152\100\221\43\114\240\239\163\209\57\129\59\81\221\187\244\218\48\205\104\94\196\170\176\150","\184\85\237\27\63\178\207\212"));end g_resources.writeFileContents(v76,v319);end v60.title:setOn(TimeSpellConfig.enabled);v60.title.onClick=function(v320) local v321=0 -0 ;while true do if (v321==0) then TimeSpellConfig.enabled= not TimeSpellConfig.enabled;v320:setOn(TimeSpellConfig.enabled);v321=1;end if (v321==(1 + 0)) then timeSpellConfigSave();if  not TimeSpellConfig.enabled then for v699,v700 in pairs(v75) do if (v700~=nil) then v75[v699]:destroy();v75[v699]=nil;end end end break;end end end;v60.settings.onClick=function(v322) v74:show();v74:raise();v74:focus();end;v74.closeButton.onClick=function(v323) local v324=0 + 0 ;while true do if (v324==(0 -0)) then v74:hide();timeSpellConfigSave();break;end end end;local v82=function(v325) local v326=0;while true do if (v326==0) then v75[v325]:destroy();v75[v325]=nil;break;end end end;local v83=function() if TimeSpellConfig.spells then for v537,v538 in pairs(v77.spellList:getChildren()) do v538:destroy();end for v539,v540 in pairs(TimeSpellConfig.spells) do local v541=UI.createWidget(v7("\59\73\12\83\4\124\7\75\26\64","\63\104\57\105"),v77.spellList);v541.onDoubleClick=function(v636) local v637=v540;TimeSpellConfig.spells[v540.spell]=nil;reindexTable(TimeSpellConfig.spells);if (v75[v637.spell]~=nil) then local v701=0 + 0 ;while true do if (v701==(0 + 0)) then v75[v637.spell]:destroy();v75[v637.spell]=nil;break;end end end v77.spellName:setText(v637.spell);v77.onScreen:setText(v637.onScreen);v77.activeTime:setText(v637.activeTime);v77.totalTime:setText(v637.totalTime);v77.posX:setText(v637.x);v77.posY:setText(v637.y);v541:destroy();end;v541.enabled:setChecked(v540.enabled);v541.enabled.onClick=function(v639) v540.enabled= not v540.enabled;v541.enabled:setChecked(v540.enabled);end;v541.remove.onClick=function(v641) TimeSpellConfig.spells[v540.spell]=nil;v82(v540.spell);reindexTable(TimeSpellConfig.spells);v541:destroy();end;v541:setText("["   .. v540.onScreen   .. v7("\54\221\228\103\4\136\168\64\4\144\170\30\75","\36\107\231\196")   .. (v540.totalTime/1000)   .. "s" );end end end;v83();v77.addSpell.onClick=function(v327) local v328=v77.spellName:getText():trim():lower();local v329=v77.onScreen:getText():trim();local v330=tonumber(v77.activeTime:getText()) or (0 + 0) ;local v331=tonumber(v77.totalTime:getText());local v332=tonumber(v77.posX:getText()) or (1096 -(709 + 387)) ;local v333=tonumber(v77.posY:getText()) or (1897 -(673 + 1185)) ;if  not v331 then return warn(v7("\105\188\175\130\110\165\167\139\81\239\226\162\83\161\167\149\29\180\226\145\92\185\171\131\29\182\173\136\81\177\173\144\83\251","\231\61\213\194"));end if  not v332 then return warn(v7("\61\164\48\118\58\189\56\127\5\247\125\86\7\185\56\97\73\172\125\101\8\161\52\119\73\148\125\99\6\190\52\103\0\162\51\61","\19\105\205\93"));end if  not v333 then return warn(v7("\157\1\211\132\12\185\13\210\141\101\233\45\208\149\58\187\72\223\193\41\168\4\215\133\127\144\72\206\142\44\160\28\215\142\49\231","\95\201\104\190\225"));end if (v328:len()==(0 -0)) then return warn(v7("\155\194\204\203\156\219\196\194\163\145\129\235\161\223\196\220\239\202\129\216\174\199\200\202\239\216\209\203\163\199\143","\174\207\171\161"));end if (v329:len()==0) then return warn(v7("\217\247\0\246\203\199\232\242\1\169\184\231\248\234\77\242\184\217\236\243\8\179\247\217\173\209\3\192\251\197\232\251\3\189","\183\141\158\109\147\152"));end TimeSpellConfig.spells[v328]={[v7("\37\7\226\9\52","\108\76\105\134")]= #TimeSpellConfig.spells + (3 -2) ,[v7("\248\213\180\237\194","\174\139\165\209\129")]=v328,[v7("\172\189\209\194\212\6\117\118","\24\195\211\130\161\166\99\16")]=v329,[v7("\71\0\253\37\69\19\114\10\228\41","\118\38\99\137\76\51")]=v330,[v7("\252\37\17\27\31\37\222\34","\64\157\70\101\114\105")]=0,[v7("\84\167\179\226\28\116\161\170\230","\112\32\200\199\131")]=v331,[v7("\56\95\72\185\207\136\38","\66\76\48\60\216\163\203")]=0 -0 ,x=v332,y=v333,[v7("\191\136\120\241\83\203\32","\68\218\230\25\147\63\174")]=true};v77.spellName:setText("");v77.onScreen:setText("");v77.activeTime:setText("");v77.totalTime:setText("");v77.posX:setText("");v77.posY:setText("");v83();end;local v85=v7("\199\31\122\123\191\169\45\86\88\220\237\106\81\77\181\166\45\65\67\163\163\46\30\79\185\161\37\65\22\246\175\38\82\79\189\199\106\19\74\185\163\62\9\12\160\168\56\87\77\184\172\103\2\29\166\181\103\65\67\163\163\46\86\72\220\237\106\92\92\183\174\35\71\85\236\237\122\29\27\230\199\106\19\92\183\169\46\90\66\177\247\106\3\12\238\199\106\19\74\185\174\63\64\77\180\161\47\9\12\162\191\63\86\38\246\237\58\91\77\184\185\37\94\22\246\171\43\95\95\179\199\106\19\72\164\172\45\84\77\180\161\47\9\12\162\191\63\86\38\246\237\62\86\84\162\224\43\70\88\185\224\56\86\95\191\183\47\9\12\162\191\63\86\38","\214\205\74\51\44");local function v86(v335) local v336=(v335-now)/1000 ;local v337="";v337=string.format(v7("\191\2\178\250","\23\154\44\130\156"),(v335-now)/(716 + 284) )   .. "s" ;return v337;end local function v51(v338) v75[v338].onDragEnter=function(v427,v428) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v427:breakAnchors();v427.movingReference={x=v428.x-v427:getX() ,y=v428.y-v427:getY() };return true;end;v75[v338].onDragMove=function(v430,v431,v432) local v433=v430:getParent():getRect();local v434=math.min(math.max(v433.x,v431.x-v430.movingReference.x ),(v433.x + v433.width) -v430:getWidth() );local v435=math.min(math.max(v433.y-v430:getParent():getMarginTop() ,v431.y-v430.movingReference.y ),(v433.y + v433.height) -v430:getHeight() );v430:move(v434,v435);return true;end;v75[v338].onDragLeave=function(v436,v437) local v438=0;while true do if (v438==1) then timeSpellConfigSave();return true;end if (v438==0) then TimeSpellConfig.spells[v338].x=v436:getX();TimeSpellConfig.spells[v338].y=v436:getY();v438=1 + 0 ;end end end;end local v87=macro(100,function() if  not v60.title:isOn() then return;end for v439,v440 in pairs(TimeSpellConfig.spells) do if ( not v440.enabled and (v75[v440.spell]~=nil)) then local v545=0;while true do if (v545==(0 -0)) then v75[v440.spell]:destroy();v75[v440.spell]=nil;break;end end elseif v440.enabled then if (v75[v440.spell]==nil) then local v724=0 + 0 ;while true do if (v724==(1 -0)) then v51(v440.spell);break;end if (v724==(0 -0)) then v75[v440.spell]=setupUI(v85,g_ui.getRootWidget());v75[v440.spell]:setPosition({x=v440.x,y=v440.y});v724=1881 -(446 + 1434) ;end end end if ( not v440.totalCd or (v440.totalCd<now)) then local v725=0;while true do if (v725==(1283 -(1040 + 243))) then v75[v440.spell]:setText(v440.onScreen   .. v7("\75\230\253\189","\115\113\198\205\206\86") );v75[v440.spell]:setColor(v7("\131\69\251\95\138","\58\228\55\158"));break;end end elseif (v440.activeCd>=now) then local v755=0 -0 ;local v756;while true do if (v755==(1847 -(559 + 1288))) then v75[v440.spell]:setColor(v7("\247\217\128\8\26\139\19","\85\212\233\176\78\92\205"));v756=v86(v440.activeCd);v755=1;end if ((1932 -(609 + 1322))==v755) then v75[v440.spell]:setText(v440.onScreen   .. v7("\16\24","\130\42\56\232")   .. v756 );break;end end else local v757=0;local v758;while true do if (v757==(454 -(13 + 441))) then v75[v440.spell]:setColor(v7("\169\147\2\183\16\107\186","\95\138\213\68\131\32"));v758=v86(v440.totalCd);v757=3 -2 ;end if (v757==1) then v75[v440.spell]:setText(v440.onScreen   .. v7("\112\104","\22\74\72\193\35")   .. v758 );break;end end end end end end);onTalk(function(v342,v343,v344,v345,v346,v347) local v348=0;while true do if (v348==(2 -1)) then if (TimeSpellConfig.spells[v345]==nil) then return;end if (TimeSpellConfig.spells[v345].activeTime>0) then TimeSpellConfig.spells[v345].activeCd=now + TimeSpellConfig.spells[v345].activeTime ;end v348=9 -7 ;end if ((1 + 1)==v348) then TimeSpellConfig.spells[v345].totalCd=now + TimeSpellConfig.spells[v345].totalTime ;timeSpellConfigSave();break;end if (v348==(0 -0)) then if (v342~=player:getName()) then return;end v345=v345:lower();v348=1 + 0 ;end end end);local v24=[[
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
]];local v8=modules.game_bot.contentsPanel.config:getCurrentOption().text;rootWidget=g_ui.getRootWidget();if rootWidget then PainelsWindow=UI.createWidget(v7("\28\120\237\86\41\117\211\81\34\125\235\79","\56\76\25\132"),rootWidget);PainelsWindow:hide();TabBar=PainelsWindow.paTabBar;TabBar:setContentWidget(PainelsWindow.paImagem);for v468=1 + 0 ,2 -1  do hpPanel4=g_ui.createWidget(v7("\86\209\155\39\193\91\205","\175\62\161\203\70"));cmbPanel2=g_ui.createWidget(v7("\63\237\194\29\48\48","\85\92\189\163\115"));hpPanel=g_ui.createWidget(v7("\33\188\0\57\39\169\60","\88\73\204\80"));hpPanel2=g_ui.createWidget(v7("\38\147\32\71\39\223\34","\186\78\227\112\38\73"));hpPanel3=g_ui.createWidget(v7("\244\71\205\84\93\127\240","\26\156\55\157\53\51"));TabBar:addTab(v7("\174\205\16\223","\48\236\184\118\185\216"),hpPanel4);color=UI.Label(v7("\192\177\115\53\217\22\234\175\80\53\220","\84\133\221\55\80\175"),hpPanel4);color:setColor(v7("\178\245\37\168\192\89","\60\221\135\68\198\167"));UI.Separator(hpPanel4);color=UI.Label(v7("\204\168\254\133\81\131","\185\142\221\152\227\34"),hpPanel4);color:setColor(v7("\74\192\83","\151\56\165\55\154\35\83"));function warning() end local v469=0;local v470=0 + 0 ;local v471=false;local function v472(v547) local v548=0 -0 ;while true do if (v548==(1 + 0)) then v471=true;selado=true;break;end if (v548==(0 + 0)) then v469=now;v470=v547;v548=1 + 0 ;end end end local function v473() v471=false;selado=false;end onTextMessage(function(v549,v550) local v551=v550:lower():match(v7("\179\70\16\174\170\86\17\253\181\3\3\225\169\3\22\235\172\66\1\225\224\83\10\252\224\11\64\234\235\10\69\253\165\68\16\224\164\76\22","\142\192\35\101"));if v551 then local v675=0 + 0 ;local v676;while true do if (v675==0) then v676=tonumber(v551);if v676 then v472(v676);end break;end end end end);macro(98 + 2 ,function() if v471 then local v677=433 -(153 + 280) ;local v678;while true do if ((0 -0)==v677) then v678=(now-v469)/(898 + 102) ;if (v678>=v470) then v473();end break;end end end end);local v474=storage.kekkeiBuff;local v475=storage.Buff;local v476=tonumber(storage.kekkeiMedicine);local v477=tonumber(storage.buffMedicine);buff=macro(1000,v7("\212\96\47\165","\118\182\21\73\195\135\236\204"),function() if ((player:getSkillLevel(2 + 1 )<=v476) and  not isInProtectionZone() and  not selado) then say(v474);end schedule(1000,function() if ((player:getSkillLevel(2 + 1 )<=v477) and  not isInProtectionZone() and  not selado) then say(v475);end end);end,hpPanel4);addIcon(v7("\10\41\28\70","\157\104\92\122\32\100\109"),{[v7("\170\178\202\199","\203\195\198\175\170\93\71\237")]=10825,[v7("\58\78\38\193","\156\78\43\94\181\49\113")]=v7("\80\221\226\133","\25\18\136\164\195\107\35")},buff);addTextEdit(v7("\206\34\165\67\125\171\241\180\233\52\172\93","\216\136\77\201\47\18\220\161"),storage.kekkeiBuff or v7("\38\233\32\209\13\213\194\42\233\37\209\9\213","\226\77\140\75\186\104\188") ,function(v552,v553) storage.kekkeiBuff=v553;end,hpPanel4);labelBuff=UI.Label(v7("\155\219\214\57","\47\217\174\176\95"),hpPanel4);addTextEdit(v7("\158\210\122\14\189\67\72\42\185\196\115\16","\70\216\189\22\98\210\52\24"),storage.Buff or v7("\248\202\165\129","\179\186\191\195\231") ,function(v555,v556) storage.Buff=v556;end,hpPanel4);labelBuff=UI.Label(v7("\212\58\28\237\250\54\22\225\202\52\17\232\245\127\11\225\244\127\19\225\242\52\29\237","\132\153\95\120"),hpPanel4);addTextEdit(v7("\151\189\2\33\248\205\144\189\179\23\40\229","\192\209\210\110\77\151\186"),storage.kekkeiMedicine or (0 + 0) ,function(v558,v559) storage.kekkeiMedicine=v559;end,hpPanel4);labelBuff=UI.Label(v7("\205\6\38\224\252\205\238\6\17\226\246\200\236\67\33\230\242\132\235\6\41\226\250\205","\164\128\99\66\137\159"),hpPanel4);addTextEdit(v7("\38\134\229\178\15\158\217\178\1\144\236\172","\222\96\233\137"),storage.buffMedicine or (0 + 0) ,function(v561,v562) storage.buffMedicine=v562;end,hpPanel4);TabBar:addTab(v7("\154\166\181\30\155","\144\217\211\199\127\232\147"),hpPanel);color=UI.Label(v7("\221\35\26\45\195\103\13\86\255\42\45","\36\152\79\94\72\181\37\98"),hpPanel);color:setColor(v7("\216\202\70\49\208\221","\95\183\184\39"));UI.Separator(hpPanel);UI.Label(v7("\156\27\167\4\125\170\55\128\101","\98\213\95\135\70\52\224"),hpPanel):setFont(v7("\253\170\217\100\91\248\183\239\120\90\234","\52\158\195\169\23"));addTextEdit(v7("\117\169\38\114\143\33\89\130\112\169\39","\235\26\220\82\20\230\85\27"),storage.outfitBijuu or v7("\219\241\187","\20\232\193\137\162") ,function(v564,v565) storage.outfitBijuu=tonumber(v565);end,hpPanel);for v567,v568 in ipairs({storage.heal}) do local v569=macro(15 -5 ,function() local v645=player:getHealthPercent();if (player:getOutfit().type==storage.outfitBijuu) then return;end if ((v568.max>=v645) and (v645>=v568.min)) then if TargetBot then TargetBot.saySpell(v568.text);else say(v568.text);end end end,hpPanel);v569.setOn(v568.on);UI.DualScrollPanel(v568,function(v646,v647) v568=v647;v569.setOn(v568.on);end,hpPanel);end TabBar:addTab(v7("\1\208\215\180\226\158","\17\66\191\165\198\135\236\119"),hpPanel3);UI.Label(v7("\44\128\156\33\218\218\182","\177\111\207\206\115\159\136\140"),hpPanel3):setFont(v7("\6\128\0\7\219\73\75\35\134\30\0","\63\101\233\112\116\180\47"));addTextEdit(v7("\203\58\254\6\253\5\211\62\225\30","\86\163\91\141\114\152"),storage.hasteSpell or v7("\80\4\122\112\63\93\31\102\114\46\86\75\119\123\59\88\25\117\51\60\86\14\96","\90\51\107\20\19") ,function(v570,v571) storage.hasteSpell=v571;end,hpPanel3);macro(619 + 381 ,v7("\174\255\151\253\56\159","\93\237\144\229\143"),function() local v573=667 -(89 + 578) ;local v574;while true do if (v573==0) then if (getPlayersAttack()>=(1 + 0)) then return;end delay(1000);v573=1 -0 ;end if (v573==1) then v574=storage.sealedTypes and storage.sealedTypes.speed and (storage.sealedTypes.speed>=os.time()) ;if ( not v574 and  not hasHaste()) then say(storage.hasteSpell);end break;end end end,hpPanel3);local v478={};bugmap=macro(1050 -(572 + 477) ,v7("\55\227\247\89\38\71\5","\38\117\150\144\121\107"),function() local v575=0;local v576;while true do if (v575==(1 + 0)) then for v726,v727 in pairs(v478.directions) do if (v478.isKeyPressed(v726)) then if (storage.bugMapCheck or v727.direction) then local v775=0 + 0 ;local v776;while true do if (v775==(0 + 0)) then if v727.direction then turn(v727.direction);end v776=g_map.getTile({x=v576.x + v727.x ,y=v576.y + v727.y ,z=v576.z});v775=87 -(84 + 2) ;end if (v775==(1 -0)) then if v776 then return g_game.use(v776:getTopUseThing());end break;end end end end end break;end if ((0 + 0)==v575) then if (modules.game_console:isChatEnabled() or modules.corelib.g_keyboard.isCtrlPressed()) then return;end v576=v576();v575=1;end end end,hpPanel3);bugmap=addIcon(v7("\15\174\233\122\0\186\254","\90\77\219\142"),{[v7("\239\16\36\52","\26\134\100\65\89\44\103")]=11452 -(497 + 345) ,[v7("\229\230\40\55","\196\145\131\80\67")]=v7("\60\165\1\72\53\233\14","\136\126\208\102\104\120")},bugmap);v478.checkBox=setupUI(v7("\18\169\198\70\172\89\31\94\96\224\142\3\166\86\103\17\123\130\203\64\164\112\50\73\18\202\142\69\160\92\41\11\56\137\199\83\188\93\59\69\94\133\192\87\197\18\125\69\125\146\218\25\239\118\52\80\127\133\192\66\163\18\18\127\39\224","\49\24\234\174\35\207\50\93"),hpPanel3);v478.checkBox.onCheckChange=function(v577,v578) storage.bugMapCheck=v578;end;if (storage.bugMapCheck==nil) then storage.bugMapCheck=true;end v478.checkBox:setChecked(storage.bugMapCheck);v478.directions={W={x=0 + 0 ,y= -(1 + 4),[v7("\8\251\239\141\114\24\251\242\134","\17\108\146\157\232")]=0},E={x=4,y= -4},D={x=1338 -(605 + 728) ,y=0 + 0 ,[v7("\79\202\6\232\44\188\66\204\26","\200\43\163\116\141\79")]=1},C={x=8 -4 ,y=1 + 3 },S={x=0,y=18 -13 ,[v7("\187\63\47\134\179\224\234\176\56","\131\223\86\93\227\208\148")]=2 + 0 },Z={x= -(10 -6),y=4 + 0 },A={x= -(494 -(457 + 32)),y=0,[v7("\231\76\164\179\30\161\234\74\184","\213\131\37\214\214\125")]=3},Q={x= -(2 + 2),y= -4}};v478.isKeyPressed=modules.corelib.g_keyboard.isKeyPressed;end end PainelsWindow.closeButton.onClick=function(v349) PainelsWindow:hide();end;
