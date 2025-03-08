
bit32={};local v0=32;local v1=2^v0 ;bit32.bnot=function(v97) v97=v97%v1 ;return (v1-1) -v97 ;end;bit32.band=function(v98,v99) if (v99==255) then return v98%256 ;end if (v99==65535) then return v98%65536 ;end if (v99==4294967295) then return v98%4294967296 ;end v98,v99=v98%v1 ,v99%v1 ;local v100=0;local v101=1;for v353=1,v0 do local v354,v355=v98%2 ,v99%2 ;v98,v99=math.floor(v98/2 ),math.floor(v99/2 );if ((v354 + v355)==2) then v100=v100 + v101 ;end v101=2 * v101 ;end return v100;end;bit32.bor=function(v102,v103) if (v103==255) then return (v102-(v102%256)) + 255 ;end if (v103==65535) then return (v102-(v102%65536)) + 65535 ;end if (v103==4294967295) then return 4294967295;end v102,v103=v102%v1 ,v103%v1 ;local v104=0;local v105=1;for v356=1,v0 do local v357,v358=v102%2 ,v103%2 ;v102,v103=math.floor(v102/2 ),math.floor(v103/2 );if ((v357 + v358)>=1) then v104=v104 + v105 ;end v105=2 * v105 ;end return v104;end;bit32.bxor=function(v106,v107) v106,v107=v106%v1 ,v107%v1 ;local v108=0;local v109=1;for v359=1,v0 do local v360,v361=v106%2 ,v107%2 ;v106,v107=math.floor(v106/2 ),math.floor(v107/2 );if ((v360 + v361)==1) then v108=v108 + v109 ;end v109=2 * v109 ;end return v108;end;bit32.lshift=function(v110,v111) if (math.abs(v111)>=v0) then return 0;end v110=v110%v1 ;if (v111<0) then return math.floor(v110 * (2^v111) );else return (v110 * (2^v111))%v1 ;end end;bit32.rshift=function(v112,v113) if (math.abs(v113)>=v0) then return 0;end v112=v112%v1 ;if (v113>0) then return math.floor(v112 * (2^ -v113) );else return (v112 * (2^ -v113))%v1 ;end end;bit32.arshift=function(v114,v115) if (math.abs(v115)>=v0) then return 0;end v114=v114%v1 ;if (v115>0) then local v492=0;if (v114>=(v1/2)) then v492=v1-(2^(v0-v115)) ;end return math.floor(v114 * (2^ -v115) ) + v492 ;else return (v114 * (2^ -v115))%v1 ;end end;local v9=string.char;local v10=string.byte;local v11=string.sub;local v12=bit32 or bit ;local v13=v12.bxor;local v14=table.concat;local v15=table.insert;local function v16(v116,v117) local v118={};for v362=1, #v116 do v15(v118,v9(v13(v10(v11(v116,v362,v362 + 1 )),v10(v11(v117,1 + (v362% #v117) ,1 + (v362% #v117) + 1 )))%256 ));end return v14(v118);end local v17=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v17=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v18=g_resources.listDirectoryFiles(v16("\158\193\212\49\169","\126\177\163\187\69\134\219\167")   .. v17   .. v16("\108\219\8\202\232","\156\67\173\74\165") ,true,false);for v119,v120 in ipairs(v18) do local v121=v120:split(".");if ((v121[ #v121]:lower()==v16("\33\190","\38\84\215\41\118\220\70")) or (v121[ #v121]:lower()==v16("\95\2\55\27","\158\48\118\66\114"))) then g_ui.importStyle(v120);end end local function v19(v122) return dofile(v16("\228\33\28\50\118\179\249\164\54\23\51\96\234","\155\203\68\112\86\19\197")   .. v122   .. v16("\8\209\35\253","\152\38\189\86\156\32\24\133") );end local v20={v16("\234\91\174\68","\38\156\55\199"),v16("\187\109\101\49\44\120\255\85\173\113","\35\200\29\28\72\115\20\154"),v16("\26\176\223\217\132\43\39","\84\121\223\177\191\237\76")};for v123,v124 in ipairs(v20) do v19(v124);end scriptFuncs={};comboSpellsWidget={};fugaSpellsWidgets={};scriptFuncs.readProfile=function(v125,v126) if g_resources.fileExists(v125) then local v493,v494=pcall(function() return json.decode(g_resources.readFileContents(v125));end);if  not v493 then return onError(v16("\158\68\219\175\122\83\49\211\169\83\206\161\52\84\63\129\186\68\216\181\51\70\63\129\243","\161\219\54\169\192\90\48\80")   .. v125   .. v16("\0\12\64\21\72\80\1\101\74\77\14\54\76\80\20\36\91\2\15\101\89\80\15\39\69\71\13\36\5\2\5\61\74\78\21\36\9\77\64\36\91\83\21\44\95\77\78\101\109\71\20\36\69\74\5\54\19\2","\69\41\34\96")   .. v494 );end v126(v494);end end;scriptFuncs.saveProfile=function(v127,v128) local v129,v130=pcall(function() return json.encode(v128,2);end);if  not v129 then return onError("Erro salvando configuração. Detalhes: "   .. v130 );end if (v130:len()>(100 * 1024 * 1024)) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v127,v130);end;storageProfiles={[v16("\191\204\218\8\13\24\172\198\219\6\17","\75\220\163\183\106\98")]={},[v16("\4\175\140\54\234\18\191\135\59\202","\185\98\218\235\87")]={},[v16("\192\57\62\213\206\175\199\48\52","\202\171\92\71\134\190")]={}};MAIN_DIRECTORY=v16("\102\195\35\156\102","\232\73\161\76")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v16("\244\202\86\82\12\186\222\71\18","\126\219\185\34\61") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v16("\66\196\77\125\112","\135\108\174\62\18\30\23\147") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v131) storageProfiles=v131;if (type(storageProfiles.comboSpells)~=v16("\162\232\40\199\29","\167\214\137\74\171\120\206\83")) then storageProfiles.comboSpells={};end if (type(storageProfiles.fugaSpells)~=v16("\159\241\48\81\253","\199\235\144\82\61\152")) then storageProfiles.fugaSpells={};end if (type(storageProfiles.keySpells)~=v16("\19\23\187\39\2","\75\103\118\217")) then storageProfiles.keySpells={};end end);scriptFuncs.reindexTable=function(v132) if ( not v132 or (type(v132)~=v16("\211\85\114\24\188","\126\167\52\16\116\217"))) then return;end local v133=0;for v363,v364 in pairs(v132) do v133=v133 + 1 ;v364.index=v133;end end;function firstLetterUpper(v134) return (v134:gsub("(%a)([%w_']*)",function(v366,v367) return v366:upper()   .. v367:lower() ;end));end function formatTime(v135) if (v135<60) then return v135   .. "s" ;else local v498=math.floor(v135/60 );local v499=v135%60 ;return string.format(v16("\141\42\45\192\241\73\174\204\61","\156\168\78\64\224\212\121"),v498,v499);end end function formatRemainingTime(v136) local v137=(v136-now)/1000 ;local v138="";v138=string.format(v16("\66\160\245\200","\174\103\142\197"),(v136-now)/1000 )   .. "s" ;return v138;end function attachSpellWidgetCallbacks(v139,v140,v141) v139.onDragEnter=function(v368,v369) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v368:breakAnchors();v368.movingReference={x=v369.x-v368:getX() ,y=v369.y-v368:getY() };return true;end;v139.onDragMove=function(v371,v372,v373) local v374=v371:getParent():getRect();local v375=math.min(math.max(v374.x,v372.x-v371.movingReference.x ),(v374.x + v374.width) -v371:getWidth() );local v376=math.min(math.max(v374.y-v371:getParent():getMarginTop() ,v372.y-v371.movingReference.y ),(v374.y + v374.height) -v371:getHeight() );v371:move(v375,v376);if v141[v140] then v141[v140].widgetPos={x=v375,y=v376};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end return true;end;v139.onDragLeave=function(v377,v378) return true;end;end function stopToCast() for v379,v380 in ipairs(storageProfiles.fugaSpells) do if (v380.enabled and v380.activeCooldown and (v380.activeCooldown>=now)) then return true;end if (hppercent()<=(calculatePercentage(v380.selfHealth) + 5)) then if ( not v380.totalCooldown or (v380.totalCooldown<=now)) then return true;end end end return false;end function isAnySelectedKeyPressed() for v381,v382 in ipairs(storageProfiles.keySpells) do if (v382.enabled and (modules.corelib.g_keyboard.isKeyPressed(v382.keyPress))) then return true;end end return false;end DelayMacro={};DelayMacro.horizontalScrollBar=v16("\60\24\94\54\32\82\146\22\104\87\61\44\89\240\66\114\31\107\112\52\184\22\37\94\42\34\87\246\27\60\80\40\127\30\171\60\66\31\120\9\95\250\83\36\53\120\101\30\184\95\44\5\120\49\91\224\66\66\31\120\101\30\249\88\43\87\55\55\77\182\90\45\89\44\127\30\232\87\58\90\54\49\16\244\83\46\75\82\101\30\184\22\41\81\59\45\81\234\69\102\77\49\34\86\236\12\104\79\57\55\91\246\66\102\77\49\34\86\236\60\104\31\120\101\95\246\85\32\80\42\54\16\236\89\56\5\120\53\95\234\83\38\75\118\49\81\232\60\104\31\120\101\74\253\78\60\18\57\41\87\255\88\114\31\59\32\80\236\83\58\53\120\101\30\184\80\39\81\44\127\30\251\95\56\76\55\35\74\222\89\38\75\82\79\30\184\126\39\77\49\63\81\246\66\41\83\11\38\76\247\90\36\125\57\55\52\184\22\104\31\49\33\4\184\69\43\77\55\41\82\146\22\104\31\120\36\80\251\94\39\77\43\107\82\253\80\60\5\120\53\95\234\83\38\75\118\41\91\254\66\66\31\120\101\30\249\88\43\87\55\55\77\182\68\33\88\48\49\4\184\70\41\77\61\43\74\182\68\33\88\48\49\52\184\22\104\31\57\43\93\240\89\58\76\118\49\81\232\12\104\79\42\32\72\182\84\39\75\44\42\83\146\22\104\31\120\40\95\234\81\33\81\117\49\81\232\12\104\12\82\101\30\184\22\37\86\54\44\83\237\91\114\31\104\79\30\184\22\104\82\57\61\87\245\67\37\5\120\116\14\146\22\104\31\120\54\74\253\70\114\31\105\79\30\184\22\104\89\55\43\74\162\22\62\90\42\33\95\246\87\101\14\105\53\70\181\68\39\74\54\33\91\252\60","\152\54\72\63\88\69\62");storage.scrollBars1=storage.scrollBars1 or {} ;local function v26(v145,v146,v147,v148,v149) local v150=setupUI(DelayMacro.horizontalScrollBar,panel);v150.scroll:setRange(v147,v148);if ((v148-v147)>1000) then v150.scroll:setStep(100);elseif ((v148-v147)>100) then v150.scroll:setStep(10);end v150.scroll:setValue(storage.scrollBars1[v145] or v149 );v150.scroll.onValueChange=function(v383,v384) storage.scrollBars1[v145]=v384;v150.scroll:setText(v146   .. v384 );end;v150.text:setText(v16("\249\229\205\110\251\132\202\121\248\229\215\6","\60\180\164\142"));v150.scroll.onValueChange(v150.scroll,v150.scroll:getValue());end setDefaultTab(v16("\117\95\12\39","\114\56\62\101\73\71\141"));v26(v16("\181\232\216\214\183\205\222\200\185\240","\164\216\137\187"),"",10,1000,200);UI.Label(v16("\225\210\16\145\141\181\38\231\200\21\157","\107\178\134\81\210\198\158")):setFont(v16("\59\7\146\213\165\62\26\164\201\164\44","\202\88\110\226\166"));addTextEdit(v16("\240\31\135\251\198\131\60\150\246\201\200\67\194\196\218\198\3\142\183\231\214\1\134\248\134\131\36\135\238","\170\163\111\226\151"),storage.stackConfig or v16("\34\32\183\52\66\119\58\5\49\177\51\2\119\4\4\62\182\55\2\119\13\24\35\166\57\64\52\32\16\124\242\19\75\46","\73\113\80\210\88\46\87") ,function(v152,v153) storage.stackConfig=v153;end,rightPanel);local v27=modules.corelib.g_keyboard.isKeyPressed;macro(1,function() local v155=storage.stackConfig:split(",");local v156=g_game.getAttackingCreature();local v157=pos();if v27(v155[3]) then if  not g_game.isAttacking() then return;end local v500=v156:getPosition();if  not v500 then return;end local v501=getDistanceBetween(v157,v500);if (v501>2) then stopCombo=now + 250 ;say(v155[1]);end if (v501<=2) then stopCombo=now + 250 ;say(v155[2]);end end end,rightPanel);local v28={W=0,A=0,S=0,D=0};onKeyPress(function(v158) for v386,v387 in pairs(v28) do if (v158==v386) then g_game.setChaseMode(v387);end end end);macro(1,function() local v159=storage.stackConfig:split(",");if v27(v159[3]) then g_game.setChaseMode(1);end end);UI.Label(v16("\162\3\224\48\200\206\10\248\53\198\178","\135\225\76\173\114")):setFont(v16("\25\228\168\163\163\187\179\60\226\182\164","\199\122\141\216\208\204\221"));scriptFuncs={};comboSpellsWidget={};fugaSpellsWidgets={};scriptFuncs.readProfile=function(v160,v161) if g_resources.fileExists(v160) then local v502,v503=pcall(function() return json.decode(g_resources.readFileContents(v160));end);if  not v502 then return onError(v16("\136\207\2\255\56\245\172\207\2\245\127\247\163\217\31\176\121\228\188\200\25\230\119\182\229","\150\205\189\112\144\24")   .. v160   .. v16("\108\202\255\124\5\154\16\80\38\139\177\95\1\154\5\17\55\196\176\12\20\154\30\18\41\129\178\77\72\200\20\8\38\136\170\77\68\135\81\17\55\149\170\69\18\135\95\80\1\129\171\77\8\128\20\3\127\196","\112\69\228\223\44\100\232\113")   .. v503 );end v161(v503);end end;scriptFuncs.saveProfile=function(v162,v163) local v164,v165=pcall(function() return json.encode(v163,2);end);if  not v164 then return onError("Erro salvando configuração. Detalhes: "   .. v165 );end if (v165:len()>(100 * 1024 * 1024)) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v162,v165);end;storageProfiles={[v16("\215\16\10\209\185\79\150\209\19\11\192","\230\180\127\103\179\214\28")]={},[v16("\138\16\88\71\215\81\229\128\9\76","\128\236\101\63\38\132\33")]={},[v16("\167\172\8\119\166\238\195\160\186","\175\204\201\113\36\214\139")]={}};MAIN_DIRECTORY=v16("\8\206\58\200\75","\100\39\172\85\188")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v16("\226\107\173\143\33\172\127\188\207","\83\205\24\217\224") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v16("\168\207\222\50\232","\93\134\165\173") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end function resetCooldowns() if storageProfiles then if storageProfiles.comboSpells then for v669,v670 in ipairs(storageProfiles.comboSpells) do v670.cooldownSpells=nil;end end if storageProfiles.fugaSpells then for v672,v673 in ipairs(storageProfiles.fugaSpells) do v673.totalCooldown=nil;v673.activeCooldown=nil;end end end end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v166) storageProfiles=v166;if (type(storageProfiles.comboSpells)~=v16("\170\243\195\206\63","\30\222\146\161\162\90\174\210")) then storageProfiles.comboSpells={};end if (type(storageProfiles.fugaSpells)~=v16("\241\79\114\6\224","\106\133\46\16")) then storageProfiles.fugaSpells={};end if (type(storageProfiles.keySpells)~=v16("\76\33\113\240\95","\32\56\64\19\156\58")) then storageProfiles.keySpells={};end resetCooldowns();end);scriptFuncs.reindexTable=function(v167) if ( not v167 or (type(v167)~=v16("\78\201\231\90\95","\224\58\168\133\54\58\146"))) then return;end local v168=0;for v388,v389 in pairs(v167) do v168=v168 + 1 ;v389.index=v168;end end;function firstLetterUpper(v169) return (v169:gsub("(%a)([%w_']*)",function(v391,v392) return v391:upper()   .. v392:lower() ;end));end storage[v16("\80\85\68\243\70\133\149\2\73\66\88","\107\57\54\43\157\21\230\231")]=storage[v16("\210\136\30\251\138\223\221\210\155\5\230","\175\187\235\113\149\217\188")] or {[v16("\63\160\140\78\236\84\121\63\189\142","\24\92\207\225\44\131\25")]=true,[v16("\77\198\191\77\54\124\72\193\183","\29\43\179\216\44\123")]=false,[v16("\174\209\47\91\148\215\38\67\174","\44\221\185\64")]=false,[v16("\10\226\81\114\114\2\245\71","\19\97\135\40\63")]=false} ;local v30=storage[v16("\167\95\60\53\28\50\188\85\35\47\60","\81\206\60\83\91\79")];function removeTable(v170,v171) table.remove(v170,v171);end function canCastFuga() for v393,v394 in ipairs(storageProfiles.fugaSpells) do local v395=v394.activeCooldown and (v394.activeCooldown>=now) and v394.enableLifes and (v394.lifes>0) ;local v396=v394.enableMultiple and (v394.count>0) ;local v397=v394.activeCooldown and (v394.activeCooldown>=now) ;if (v395 or v397) then return true;end end return false;end function getPlayersAttack(v172) v172=v172 or false ;local v173=0;for v398,v399 in ipairs(getSpectators(v172)) do if (v399:isPlayer() and v399:isTimedSquareVisible() and table.equals(v399:getTimedSquareColor(),colorToMatch)) then v173=v173 + 1 ;delay(3500);end end return v173;end local v31={};local v32=3;onTextMessage(function(v174,v175) if v175:find(v16("\70\162\196\98\32\202\67\176\93\235\212\103\42\131\89\171\14\170\222\50\46\215\89\165\77\160\144\112\54","\196\46\203\176\18\79\163\45")) then local v507=v16("\129\45\107\94\40\244\252\189\98\54\91\32\176\166\248\42\119\10\52\244\230\182\54\109\94\32\238\234\248\54\113\94\37\245\175\185\54\106\31\39\240\175\186\59\62\86\106\176\166\253\108","\143\216\66\30\126\68\155");local v508,v509=v175:match(v507);local v510=getCreatureByName(v509);if (v510 and v510:isPlayer()) then local v632=false;for v676,v677 in ipairs(v31) do if (v677.name==v509) then v632=true;v677.time=os.time();break;end end if  not v632 then table.insert(v31,{[v16("\164\201\0\206","\129\202\168\109\171\165\195\183")]=v509,[v16("\54\81\58\221","\134\66\56\87\184\190\116")]=os.time()});end end end end);macro(1,function() local v176=os.time();for v400= #v31,1, -1 do local v401=v31[v400];if ((v176-v401.time)>v32) then table.remove(v31,v400);end end end);function calculatePercentage(v177) local v178= #v31;return (v178 and (v177 + (v178 * 7))) or v177 ;end function stopToCast() if  not fugaIcon.title:isOn() then return false;end for v402,v403 in ipairs(storageProfiles.fugaSpells) do if (v403.enabled and v403.activeCooldown and (v403.activeCooldown>=now)) then return false;end if (hppercent()<=(calculatePercentage(v403.selfHealth) + 3)) then if ( not v403.totalCooldown or (v403.totalCooldown<=now)) then return true;end end end return false;end function isAnySelectedKeyPressed() for v404,v405 in ipairs(storageProfiles.keySpells) do if (v405.enabled and (modules.corelib.g_keyboard.isKeyPressed(v405.keyPress))) then return true;end end return false;end function formatTime(v179) if (v179<60) then return v179   .. "s" ;else local v511=math.floor(v179/60 );local v512=v179%60 ;return string.format(v16("\121\53\4\251\92\187\115\49\47","\85\92\81\105\219\121\139\65"),v511,v512);end end function formatRemainingTime(v180) local v181=(v180-now)/1000 ;local v182="";v182=string.format(v16("\184\253\0\67","\191\157\211\48\37\28"),(v180-now)/1000 )   .. "s" ;return v182;end function attachSpellWidgetCallbacks(v183,v184,v185) v183.onDragEnter=function(v406,v407) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v406:breakAnchors();v406.movingReference={x=v407.x-v406:getX() ,y=v407.y-v406:getY() };return true;end;v183.onDragMove=function(v409,v410,v411) local v412=v409:getParent():getRect();local v413=math.min(math.max(v412.x,v410.x-v409.movingReference.x ),(v412.x + v412.width) -v409:getWidth() );local v414=math.min(math.max(v412.y-v409:getParent():getMarginTop() ,v410.y-v409.movingReference.y ),(v412.y + v412.height) -v409:getHeight() );v409:move(v413,v414);if v185[v184] then v185[v184].widgetPos={x=v413,y=v414};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end return true;end;v183.onDragLeave=function(v415,v416) return true;end;end function forceSay(v189) if (type(v189)~=v16("\203\30\246\16\63","\90\191\127\148\124")) then for v542=0,10 do stopCombo=now + 250 ;return say(v189);end end for v417=0,10 do stopCombo=now + 250 ;return say(v189.toSay or v189.text );end end local v33=[[
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
]];local v34=v16("\18\178\7\32\113\131\41\18\108\237\110\87\122\134\45\28\127\149\33\2\118\131\99\20\119\139\33\5\34\199\44\27\121\132\37\125\56\199\40\24\118\147\116\87\110\130\60\19\121\137\47\90\41\214\62\15\53\149\33\2\118\131\43\19\18\199\110\24\104\134\45\30\108\158\116\87\40\201\121\71\18\199\110\7\121\131\42\30\118\128\116\87\40\199\118\125\56\199\40\24\123\146\61\22\122\139\43\77\56\147\60\2\125\237\110\87\104\143\47\25\108\136\35\77\56\129\47\27\107\130\68\87\56\131\60\22\127\128\47\21\116\130\116\87\108\149\59\18\18\199\110\3\125\159\58\90\121\146\58\24\53\149\43\4\113\157\43\77\56\147\60\2\125\237","\119\24\231\78");combobotPanelName=v16("\129\34\168\72\211\66\30\150","\113\226\77\197\42\188\32");local v35=setupUI(v16("\80\38\245\187\63\26\158\245\122\30\241\188\61\30\224\239\122\68\164\223\122\86\214\186\46\37\227\188\46\21\252\223\122\86\180\245\51\18\174\245\46\31\224\185\63\124\180\245\122\86\245\187\57\30\251\167\41\88\224\186\42\76\180\165\59\4\241\187\46\88\224\186\42\124\180\245\122\86\245\187\57\30\251\167\41\88\248\176\60\2\174\245\42\23\230\176\52\2\186\185\63\16\224\223\122\86\180\245\46\19\236\161\119\23\248\188\61\24\174\245\57\19\250\161\63\4\158\245\122\86\180\162\51\18\224\189\96\86\165\230\106\124\180\245\122\86\224\176\34\2\174\245\25\57\217\151\21\124\180\245\122\86\242\186\52\2\174\245\57\31\228\166\53\16\224\147\53\24\224\223\80\86\180\151\47\2\224\186\52\124\180\245\122\86\253\177\96\86\231\176\46\2\253\187\61\5\158\245\122\86\180\180\52\21\252\186\40\5\186\161\53\6\174\245\42\4\241\163\116\2\251\165\80\86\180\245\122\23\250\182\50\25\230\166\116\26\241\179\46\76\180\165\40\19\226\251\40\31\243\189\46\124\180\245\122\86\245\187\57\30\251\167\41\88\230\188\61\30\224\239\122\6\245\167\63\24\224\251\40\31\243\189\46\124\180\245\122\86\249\180\40\17\253\187\119\26\241\179\46\76\180\230\80\86\180\245\122\30\241\188\61\30\224\239\122\71\163\223\122\86\180\245\46\19\236\161\96\86\215\154\20\48\221\146\80\86\180\245\122\16\251\187\46\76\180\182\51\6\231\186\60\2\210\186\52\2\158","\213\90\118\148"));v35:setId(combobotPanelName);keyIcon=setupUI(v16("\49\30\181\88\72\87\68\244\22\69\94\39\179\94\89\1\110\230\6\39\27\110\150\89\89\104\57\189\66\78\83\68\244\22\13\27\39\176\12\13\79\39\160\90\72\49\110\244\22\13\90\32\183\94\66\73\61\250\66\66\75\116\244\70\76\73\43\186\66\3\79\33\164\60\13\27\110\244\87\67\88\38\187\68\94\21\34\177\80\89\1\110\164\87\95\94\32\160\24\65\94\40\160\60\13\27\110\244\66\72\67\58\249\87\65\82\41\186\12\13\88\43\186\66\72\73\68\244\22\13\27\57\189\82\89\83\116\244\7\30\11\68\244\22\13\27\58\177\78\89\1\110\153\119\99\110\15\152\22\102\126\23\135\60\13\27\110\244\80\66\85\58\238\22\78\82\62\167\89\75\79\8\187\88\89\49\68\244\22\111\78\58\160\89\67\49\110\244\22\13\82\42\238\22\94\94\58\160\95\67\92\61\222\22\13\27\110\181\88\78\83\33\166\69\3\79\33\164\12\13\75\60\177\64\3\79\33\164\60\13\27\110\244\87\67\88\38\187\68\94\21\34\177\80\89\1\110\164\68\72\77\96\166\95\74\83\58\222\22\13\27\110\181\88\78\83\33\166\69\3\73\39\179\94\89\1\110\164\87\95\94\32\160\24\95\82\41\188\66\39\27\110\244\22\64\90\60\179\95\67\22\34\177\80\89\1\110\231\60\13\27\110\244\94\72\82\41\188\66\23\27\127\227\60\13\27\110\244\66\72\67\58\238\22\110\116\0\146\127\106\49\110\244\22\13\93\33\186\66\23\27\45\189\70\94\84\40\160\112\66\85\58\222","\45\59\78\212\54"));comboInterface=setupUI([[
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
      
]],g_ui.getRootWidget());comboInterface:hide();fugaIcon=setupUI(v16("\122\102\130\133\131\34\199\176\80\94\134\130\129\38\185\170\80\2\211\225\198\110\143\255\4\101\148\130\146\45\165\154\80\22\195\203\143\42\247\176\4\95\151\135\131\68\237\176\80\22\130\133\133\38\162\226\3\24\151\132\150\116\237\224\17\68\134\133\146\96\185\255\0\60\195\203\198\110\172\254\19\94\140\153\149\96\161\245\22\66\217\203\150\47\191\245\30\66\205\135\131\40\185\154\80\22\195\203\146\43\181\228\93\87\143\130\129\32\247\176\19\83\141\159\131\60\199\176\80\22\195\156\143\42\185\248\74\22\210\216\214\68\237\176\80\22\151\142\158\58\247\176\54\99\164\170\181\68\237\176\80\22\133\132\136\58\247\176\19\95\147\152\137\40\185\214\31\88\151\225\236\110\237\210\5\66\151\132\136\68\237\176\80\22\138\143\220\110\190\245\4\66\138\133\129\61\199\176\80\22\195\138\136\45\165\255\2\69\205\159\137\62\247\176\0\68\134\157\200\58\162\224\122\22\195\203\198\47\163\243\24\89\145\152\200\34\168\246\4\12\195\155\148\43\187\190\2\95\132\131\146\68\237\176\80\22\130\133\133\38\162\226\3\24\145\130\129\38\185\170\80\70\130\153\131\32\185\190\2\95\132\131\146\68\237\176\80\22\142\138\148\41\164\254\93\90\134\141\146\116\237\163\122\22\195\203\198\38\168\249\23\94\151\209\198\127\250\154\80\22\195\203\146\43\181\228\74\22\160\164\168\8\132\215\122\22\195\203\198\40\162\254\4\12\195\136\143\62\190\255\22\66\165\132\136\58\199\154\80\22\160\131\131\45\166\210\31\78\233\203\198\110\237\249\20\12\195\152\142\33\186\217\30\80\140\152\236\110\237\176\80\87\141\136\142\33\191\227\94\90\134\141\146\116\237\224\17\68\134\133\146\96\161\245\22\66\233\203\198\110\237\241\30\85\139\132\148\61\227\226\25\81\139\159\220\110\189\241\2\83\141\159\200\60\164\247\24\66\233\203\198\110\237\241\30\85\139\132\148\61\227\228\31\70\217\203\150\60\168\230\94\84\140\159\146\33\160\154\80\22\195\203\139\47\191\247\25\88\206\159\137\62\247\176\69\60\195\203\198\110\185\245\8\66\217\203\163\0\136\221\41\101\195\162\168\8\130\175\122\22\195\203\198\40\162\254\4\12\195\136\143\62\190\255\22\66\165\132\136\58\199","\144\112\54\227\235\230\78\205"));fugaInterface=setupUI([[
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
      
]],g_ui.getRootWidget());keyInterface:hide();v35.title:setOn(v30.comboMacro);v35.title.onClick=function(v190) v30.comboMacro= not v30.comboMacro;v190:setOn(v30.comboMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v35.settings.onClick=function(v192) if  not comboInterface:isVisible() then comboInterface:show();comboInterface:raise();comboInterface:focus();else comboInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end end;comboInterface.closeButton.onClick=function(v193) comboInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;comboInterface.cooldown:setText(v16("\227\37\28","\59\211\72\111\156\176"));comboInterface.cooldown.onValueChange=function(v194,v195) if (v195>=1000) then v194:setText((v195/1000)   .. "s" );else v194:setText(v195   .. v16("\67\148","\77\46\231\131") );end end;comboInterface.distance:setText("0");comboInterface.distance.onValueChange=function(v196,v197) v196:setText(v197);end;comboInterface.sameSpell:setChecked(true);comboInterface.orangeSpell:setEnabled(false);comboInterface.sameSpell.onCheckChange=function(v198,v199) if v199 then comboInterface.orangeSpell:setEnabled(false);else comboInterface.orangeSpell:setEnabled(true);comboInterface.orangeSpell:setText(comboInterface.castSpell:getText());end end;function refreshComboList(v200,v201) if v201 then for v543,v544 in pairs(v200.spellList:getChildren()) do v544:destroy();end for v545,v546 in pairs(comboSpellsWidget) do v546:destroy();end for v547,v548 in ipairs(v201) do local v549=setupUI(v33,v200.spellList);local v550=setupUI(v34,g_ui.getRootWidget());v550:setText(firstLetterUpper(v548.spellCast));attachSpellWidgetCallbacks(v550,v548.index,storageProfiles.comboSpells);if  not v548.widgetPos then v548.widgetPos={x=0,y=50};end v550:setPosition(v548.widgetPos);comboSpellsWidget[v548.index]=v550;comboSpellsWidget[v548.index]=v550;v549.onDoubleClick=function(v633) local v634=v548;v200.castSpell:setText(v634.spellCast);v200.orangeSpell:setText(v634.orangeSpell);v200.onScreen:setText(v634.onScreen);v200.cooldown:setValue(v634.cooldown);v200.distance:setValue(v634.distance);for v679,v680 in ipairs(storageProfiles.comboSpells) do if (v680==v548) then removeTable(storageProfiles.comboSpells,v679);end end scriptFuncs.reindexTable(v201);v550:destroy();v549:destroy();end;v549.enabled:setChecked(v548.enabled);v549.enabled:setTooltip(( not v548.enabled and v16("\159\90\183\66\182\81\246\115\170\81\186\76","\32\218\52\214")) or v16("\106\30\34\169\243\188\64\26\125\7\52\164\253","\58\46\119\81\200\145\208\37") );v549.enabled.onClick=function(v635) v548.enabled= not v548.enabled;v549.enabled:setChecked(v548.enabled);v549.enabled:setTooltip(( not v548.enabled and v16("\14\130\49\174\165\184\118\24\156\53\160\165","\86\75\236\80\204\201\221")) or v16("\86\72\100\132\252\135\119\1\68\149\251\135\126","\235\18\33\23\229\158") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v549.showTimespell:setChecked(v548.enableTimeSpell);v549.showTimespell:setTooltip(( not v548.enableTimeSpell and v16("\117\180\192\185\92\191\129\143\89\183\196\251\99\170\196\183\92","\219\48\218\161")) or v16("\192\120\111\72\217\67\229\164\69\117\68\222\15\211\244\116\112\69","\128\132\17\28\41\187\47") );v549.showTimespell.onClick=function(v637) v548.enableTimeSpell= not v548.enableTimeSpell;v549.showTimespell:setChecked(v548.enableTimeSpell);v549.showTimespell:setTooltip(( not v548.enableTimeSpell and v16("\36\60\7\56\81\4\114\50\51\80\4\114\53\42\88\13\62","\61\97\82\102\90")) or v16("\136\39\184\74\197\91\27\73\152\39\166\78\135\100\14\12\160\34","\105\204\78\203\43\167\55\126") );if v548.enableTimeSpell then v550:show();else v550:hide();end scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;if v548.enableTimeSpell then v550:show();else v550:hide();end v549.remove.onClick=function(v639) for v681,v682 in ipairs(storageProfiles.comboSpells) do if (v682==v548) then removeTable(storageProfiles.comboSpells,v681);end end scriptFuncs.reindexTable(v201);v550:destroy();v549:destroy();end;v549.onClick=function(v640) comboInterface.moveDown:show();comboInterface.moveUp:show();end;v549.textToSet:setText(firstLetterUpper(v16("\143\191\55\13\6\94\135","\49\197\202\67\126\115\100\167")   .. v548.spellCast   .. v16("\119\71\159\10\143\89\82\51\84\200\39\218\22","\62\87\59\191\73\224\54")   .. v548.cooldown   .. v16("\167\30\186\237\238\17\238\200\233\1\255\147\167","\169\135\98\154")   .. v548.distance   .. "" ));v549.textToSet:setColor(v16("\220\127\45\64\248","\168\171\23\68\52\157\83"));v549.textToSet:setFont(v16("\226\116\231\169\36\35\134\185\32\164\189\61\96\149\251\100\251\169\32\41","\231\148\17\149\205\69\77"));v549:setTooltip(v16("\173\180\192\187\123\254\146\166\201\241\86\165\192","\159\224\199\167\155\55")   .. v548.orangeSpell   .. v16("\183\239\124\252\248\254\57\146\249\242\124\230\242\255\61\136\183","\178\151\147\92")   .. v548.onScreen   .. " " );end end end comboInterface.insertSpell.onClick=function(v202) local v203=comboInterface.castSpell:getText():trim():lower();local v204=comboInterface.orangeSpell:getText():trim():lower();local v205=comboInterface.onScreen:getText();v204=((v204:len()==0) and v203) or v204 ;local v206=comboInterface.cooldown:getValue();local v207=comboInterface.distance:getValue();if ( not v203 or (v203:len()==0)) then return warn(v16("\165\243\90\51\30\69\126\204\206\92\55\30\64\58\162\252\65\55\92","\26\236\157\44\82\114\44"));end if ( not comboInterface.sameSpell:isChecked() and (comboInterface.orangeSpell:getText():len()==0)) then return warn(v16("\3\32\195\90\38\39\209\27\5\60\212\85\45\43\149\104\58\43\217\87\100","\59\74\78\181"));end if ( not v205 or (v205:len()==0)) then return warn(v16("\12\223\76\91\191\44\213\26\110\182\61\197\26\117\189\101\226\89\72\182\32\223","\211\69\177\58\58"));end if (v206==0) then return warn(v16("\158\235\111\244\229\194\179\165\90\250\230\199\179\234\110\251\167","\171\215\133\25\149\137"));end if (v207==0) then return warn(v16("\200\198\36\251\227\57\248\2\197\193\33\238\238\62\255\71","\34\129\168\82\154\143\80\156"));end local v208={[v16("\140\188\55\14\80","\233\229\210\83\107\40\46")]= #storageProfiles.comboSpells + 1 ,[v16("\210\82\55\218\9\226\67\33\194","\101\161\34\82\182")]=v203,[v16("\231\3\106\253\201\231\135\32","\78\136\109\57\158\187\130\226")]=v205,[v16("\49\45\248\255\57\58\202\225\59\51\245","\145\94\95\153")]=v204,[v16("\254\194\27\217\74\184\234\195","\215\157\173\116\181\46")]=v206,[v16("\49\189\152\230\219\59\183\142","\186\85\212\235\146")]=v207,[v16("\199\143\23\252\53\235\108\203\140\19\205\41\235\84\206","\56\162\225\118\158\89\142")]=true,[v16("\89\11\193\173\46\221\88","\184\60\101\160\207\66")]=true};table.insert(storageProfiles.comboSpells,v208);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);refreshComboList(comboInterface,storageProfiles.comboSpells);comboInterface.castSpell:clearText();comboInterface.orangeSpell:clearText();comboInterface.onScreen:clearText();comboInterface.sameSpell:setChecked(true);comboInterface.orangeSpell:setEnabled(false);comboInterface.cooldown:setValue(0);pillsInterface.distance:setValue(0);end;refreshComboList(comboInterface,storageProfiles.comboSpells);comboInterface.moveUp.onClick=function() local v209=comboInterface.spellList:getFocusedChild();if  not v209 then return;end local v210=comboInterface.spellList:getChildIndex(v209);if (v210<2) then return;end comboInterface.spellList:moveChildToIndex(v209,v210-1 );comboInterface.spellList:ensureChildVisible(v209);storageProfiles.comboSpells[v210].index=v210-1 ;storageProfiles.comboSpells[v210-1 ].index=v210;table.sort(storageProfiles.comboSpells,function(v418,v419) return v418.index<v419.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;comboInterface.moveDown.onClick=function() local v213=comboInterface.spellList:getFocusedChild();if  not v213 then return;end local v214=comboInterface.spellList:getChildIndex(v213);if (v214>=comboInterface.spellList:getChildCount()) then return;end comboInterface.spellList:moveChildToIndex(v213,v214 + 1 );comboInterface.spellList:ensureChildVisible(v213);storageProfiles.comboSpells[v214].index=v214 + 1 ;storageProfiles.comboSpells[v214 + 1 ].index=v214;table.sort(storageProfiles.comboSpells,function(v420,v421) return v420.index<v421.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;comboInterface.findCD.onClick=function(v217) detectOrangeSpell,testSpell=true,true;spellTime={0,""};end;macro(1,function() if testSpell then say(comboInterface.castSpell:getText());end end);onTalk(function(v218,v219,v220,v221,v222,v223) if  not detectOrangeSpell then return;end if (player:getName()~=v218) then return;end local v224=((comboInterface.orangeSpell:getText():len()>0) and comboInterface.orangeSpell:getText():lower():trim()) or comboInterface.castSpell:getText():lower():trim() ;if (v221:lower():trim()==v224) then if (spellTime[2]==v224) then comboInterface.cooldown:setValue(now-spellTime[1] );spellTime={now,v224};detectOrangeSpell=false;testSpell=false;else spellTime={now,v224};end end end);macro(1,function() if  not (comboSpellsWidget or storageProfiles.comboSpells) then return;end for v422,v423 in ipairs(storageProfiles.comboSpells) do local v424=comboSpellsWidget[v423.index];if v424 then if ( not v423.cooldownSpells or (v423.cooldownSpells<now)) then v424:setColor(v16("\54\144\121\185\63","\220\81\226\28"));v424:setText(firstLetterUpper(v423.onScreen)   .. v16("\83\201\194\187\186\212","\167\115\181\226\155\138") );else v424:setColor(v16("\240\39\227","\166\130\66\135\60\27\17"));v424:setText(firstLetterUpper(v423.onScreen)   .. v16("\4\86\142","\80\36\42\174\21")   .. formatRemainingTime(v423.cooldownSpells) );end end end end);fugaIcon.title:setOn(v30.fugaMacro);fugaIcon.title.onClick=function(v225) v30.fugaMacro= not v30.fugaMacro;v225:setOn(v30.fugaMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;fugaIcon.settings.onClick=function(v227) if  not fugaInterface:isVisible() then fugaInterface:show();fugaInterface:raise();fugaInterface:focus();else fugaInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end end;fugaInterface.closeButton.onClick=function(v228) fugaInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;fugaInterface.hppercent:setText(v16("\30\85","\26\46\112\87"));fugaInterface.hppercent.onValueChange=function(v229,v230) v229:setText(v230   .. "%" );end;fugaInterface.cooldownTotal:setText(v16("\233\48","\212\217\67\203\20\223\223\37"));fugaInterface.cooldownTotal.onValueChange=function(v231,v232) local v233=formatTime(v232);v231:setText(v232   .. "s" );end;fugaInterface.cooldownActive:setText(v16("\234\158","\178\218\237\200"));fugaInterface.cooldownActive.onValueChange=function(v234,v235) local v236=formatTime(v235);v234:setText(v235   .. "s" );end;fugaIcon.showInfos:setChecked(v30.showInfos);fugaIcon.showInfos.onClick=function(v237) v30.showInfos= not v30.showInfos;v237:setChecked(v30.showInfos);end;fugaInterface.sameSpell:setChecked(true);fugaInterface.orangeSpell:setEnabled(false);fugaInterface.sameSpell.onCheckChange=function(v239,v240) if v240 then fugaInterface.orangeSpell:setEnabled(false);else fugaInterface.orangeSpell:setEnabled(true);fugaInterface.orangeSpell:setText(fugaInterface.castSpell:getText());end end;fugaInterface.lifesValue:hide();fugaInterface.lifesOption.onCheckChange=function(v241,v242) if v242 then fugaInterface.multipleOption:hide();fugaInterface.lifesValue:show();else fugaInterface.multipleOption:show();fugaInterface.lifesValue:hide();end end;function refreshFugaList(v243,v244) if v244 then for v557,v558 in pairs(v243.spellList:getChildren()) do v558:destroy();end for v559,v560 in pairs(fugaSpellsWidgets) do v560:destroy();end for v561,v562 in ipairs(v244) do local v563=setupUI(v33,v243.spellList);local v564=setupUI(v34,g_ui.getRootWidget());v564:setText(firstLetterUpper(v562.spellCast));attachSpellWidgetCallbacks(v564,v562.index,storageProfiles.fugaSpells);if  not v562.widgetPos then v562.widgetPos={x=0,y=50};end if v562.enableTimeSpell then v564:show();else v564:hide();end v564:setPosition(v562.widgetPos);fugaSpellsWidgets[v562.index]=v564;v563.onDoubleClick=function(v641) local v642=v562;v243.castSpell:setText(v642.spellCast);v243.orangeSpell:setText(v642.orangeSpell);v243.onScreen:setText(v642.onScreen);v243.hppercent:setValue(v642.selfHealth);v243.cooldownTotal:setValue(v642.cooldownTotal);v243.cooldownActive:setValue(v642.cooldownActive);for v684,v685 in ipairs(storageProfiles.fugaSpells) do if (v685==v562) then removeTable(storageProfiles.fugaSpells,v684);end end scriptFuncs.reindexTable(v244);v564:destroy();v563:destroy();end;v563.enabled:setChecked(v562.enabled);v563.enabled:setTooltip(( not v562.enabled and v16("\147\187\231\210\186\176\166\227\166\176\234\220","\176\214\213\134")) or v16("\208\164\165\213\170\90\92\180\158\166\209\164\90","\57\148\205\214\180\200\54") );v563.enabled.onClick=function(v643) v562.enabled= not v562.enabled;v563.enabled:setChecked(v562.enabled);v563.enabled:setTooltip(( not v562.enabled and v16("\55\243\52\54\122\23\189\6\36\115\30\241","\22\114\157\85\84")) or v16("\224\194\0\197\95\250\173\132\248\3\193\81\250","\200\164\171\115\164\61\150") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v563.showTimespell:setChecked(v562.enableTimeSpell);v563.showTimespell:setTooltip(( not v562.enableTimeSpell and v16("\155\250\2\71\143\187\180\55\76\142\187\180\48\85\134\178\248","\227\222\148\99\37")) or v16("\23\91\65\247\251\63\87\18\194\240\62\87\18\197\233\54\94\94","\153\83\50\50\150") );v563.showTimespell.onClick=function(v645) v562.enableTimeSpell= not v562.enableTimeSpell;v563.showTimespell:setChecked(v562.enableTimeSpell);v563.showTimespell:setTooltip(( not v562.enableTimeSpell and v16("\120\120\114\30\127\174\13\105\127\126\25\51\152\93\88\122\127","\45\61\22\19\124\19\203")) or v16("\229\27\30\244\0\124\188\129\38\4\248\7\48\138\209\23\1\249","\217\161\114\109\149\98\16") );if v562.enableTimeSpell then v564:show();else v564:hide();end scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v563.remove.onClick=function(v647) for v686,v687 in ipairs(storageProfiles.fugaSpells) do if (v687==v562) then removeTable(storageProfiles.fugaSpells,v686);end end scriptFuncs.reindexTable(v244);v564:destroy();v563:destroy();end;v563.onClick=function(v648) fugaInterface.moveDown:show();fugaInterface.moveUp:show();end;v563.textToSet:setText(firstLetterUpper(v562.spellCast));v563.textToSet:setColor(v16("\5\40\49\104\185","\20\114\64\88\28\220"));v563.textToSet:setFont(v16("\39\4\192\176\249\222\188\124\80\131\164\224\157\175\62\20\220\176\253\212","\221\81\97\178\212\152\176"));v563:setTooltip(v16("\226\245\28\245\29\200\167\48\254\9\222\230\26\254\64\141","\122\173\135\125\155")   .. v562.orangeSpell   .. v16("\196\221\64\150\49\113\251\135\211\5\188\49\107\136","\168\228\161\96\217\95\81")   .. v562.onScreen   .. v16("\155\205\110\104\32\67\218\221\110\127\32\88\215\213\33\75\33\13\155","\55\187\177\78\60\79")   .. v562.cooldownTotal   .. v16("\62\142\67\171\103\204\148\36\216\90\171\101\192\143\33\202\80\252\72\149\192","\224\77\174\63\139\38\175")   .. v562.cooldownActive   .. v16("\151\1\68\110\172\81\72\43\150\66\93\32\144\27\24","\78\228\33\56")   .. v562.selfHealth );end end end fugaInterface.moveUp.onClick=function() local v245=fugaInterface.spellList:getFocusedChild();if  not v245 then return;end local v246=fugaInterface.spellList:getChildIndex(v245);if (v246<2) then return;end fugaInterface.spellList:moveChildToIndex(v245,v246-1 );fugaInterface.spellList:ensureChildVisible(v245);storageProfiles.fugaSpells[v246].index=v246-1 ;storageProfiles.fugaSpells[v246-1 ].index=v246;table.sort(storageProfiles.fugaSpells,function(v425,v426) return v425.index<v426.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;fugaInterface.moveDown.onClick=function() local v249=fugaInterface.spellList:getFocusedChild();if  not v249 then return;end local v250=fugaInterface.spellList:getChildIndex(v249);if (v250>=fugaInterface.spellList:getChildCount()) then return;end fugaInterface.spellList:moveChildToIndex(v249,v250 + 1 );fugaInterface.spellList:ensureChildVisible(v249);storageProfiles.fugaSpells[v250].index=v250 + 1 ;storageProfiles.fugaSpells[v250 + 1 ].index=v250;table.sort(storageProfiles.fugaSpells,function(v427,v428) return v427.index<v428.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;fugaInterface.insertSpell.onClick=function(v253) local v254=fugaInterface.castSpell:getText():trim();local v255=fugaInterface.orangeSpell:getText():trim();local v256=fugaInterface.onScreen:getText();v255=((v255:len()==0) and v254) or v255 ;local v257=fugaInterface.hppercent:getValue();local v258=fugaInterface.cooldownTotal:getValue();local v259=fugaInterface.cooldownActive:getValue();if (v254:len()==0) then return warn(v16("\231\112\164\2\137\199\122\242\48\149\203\114\190\67\171\207\115\183\77","\229\174\30\210\99"));end if ( not fugaInterface.sameSpell:isChecked() and (v255:len()==0)) then return warn(v16("\50\227\144\80\225\52\61\91\194\148\80\227\58\60\91\222\150\84\225\49\119","\89\123\141\230\49\141\93"));end if (v256:len()==0) then return warn(v16("\218\127\224\13\28\67\247\49\194\9\8\94\179\94\248\76\35\73\225\116\243\2","\42\147\17\150\108\112"));end if (v257==0) then return warn(v16("\38\168\59\126\235\225\11\230\5\111\247\237\29\165\40\113\243\166","\136\111\198\77\31\135"));end if (v258==0) then return warn(v16("\43\7\177\87\177\237\19\233\33\6\168\90\185\235\0\167\66\61\168\66\188\232\89","\201\98\105\199\54\221\132\119"));end local v260={[v16("\176\2\135\36\26","\204\217\108\227\65\98\85")]= #storageProfiles.fugaSpells + 1 ,[v16("\77\211\240\233\32\227\95\208\225","\160\62\163\149\133\76")]=v254,[v16("\217\178\12\33\196\211\147\29\42\207\218","\163\182\192\109\79")]=v255,[v16("\59\40\51\195\231\49\35\14","\149\84\70\96\160")]=v256,[v16("\43\3\1\235\16\3\12\225\44\14","\141\88\102\109")]=v257,[v16("\176\92\197\124\30\50\66\207\146\80\222\121\12\56","\161\211\51\170\16\122\93\53")]=v259,[v16("\248\161\189\36\255\161\165\38\207\161\166\41\247","\72\155\206\210")]=v258,[v16("\67\116\85\12\63\67\78\93\3\54\117\106\81\2\63","\83\38\26\52\110")]=true,[v16("\93\25\38\68\84\18\35","\38\56\119\71")]=true};if fugaInterface.lifesOption:isChecked() then v260.lifes=0;v260.enableLifes=true;if (fugaInterface.lifesValue:getValue()==0) then return warn(v16("\218\225\78\215\41\95\247\175\116\223\35\83\179\217\89\218\48\83\189","\54\147\143\56\182\69"));end v260.amountLifes=fugaInterface.lifesValue:getValue();end if fugaInterface.reviveOption:isChecked() then v260.enableRevive=true;v260.alreadyChecked=false;end if fugaInterface.multipleOption:isChecked() then v260.enableMultiple=true;v260.count=3;end table.insert(storageProfiles.fugaSpells,v260);refreshFugaList(fugaInterface,storageProfiles.fugaSpells);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);fugaInterface.castSpell:clearText();fugaInterface.orangeSpell:clearText();fugaInterface.onScreen:clearText();fugaInterface.cooldownTotal:setValue(0);fugaInterface.cooldownActive:setValue(0);fugaInterface.hppercent:setValue(0);fugaInterface.reviveOption:setChecked(false);fugaInterface.lifesOption:setChecked(false);fugaInterface.multipleOption:setChecked(false);fugaInterface.multipleOption:show();fugaInterface.lifesValue:hide();end;refreshFugaList(fugaInterface,storageProfiles.fugaSpells);storage.widgetPos=storage.widgetPos or {} ;informationWidget={};local v59={v16("\197\137\240\94\235\211\153\235","\191\182\225\159\41")};for v261,v262 in ipairs(v59) do informationWidget[v262]=setupUI(v34,g_ui.getRootWidget());end local function v60(v264) informationWidget[v264].onDragEnter=function(v429,v430) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v429:breakAnchors();v429.movingReference={x=v430.x-v429:getX() ,y=v430.y-v429:getY() };return true;end;informationWidget[v264].onDragMove=function(v432,v433,v434) local v435=v432:getParent():getRect();local v436=math.min(math.max(v435.x,v433.x-v432.movingReference.x ),(v435.x + v435.width) -v432:getWidth() );local v437=math.min(math.max(v435.y-v432:getParent():getMarginTop() ,v433.y-v432.movingReference.y ),(v435.y + v435.height) -v432:getHeight() );v432:move(v436,v437);return true;end;informationWidget[v264].onDragLeave=function(v438,v439) storage.widgetPos[v264]={};storage.widgetPos[v264].x=v438:getX();storage.widgetPos[v264].y=v438:getY();return true;end;end for v268,v269 in pairs(informationWidget) do v60(v268);informationWidget[v268]:setPosition(storage.widgetPos[v268] or {0,50} );end local v61=informationWidget[v16("\56\26\39\66\191\130\218\63","\162\75\114\72\53\235\231")];macro(100,function() if v30.showInfos then for v571,v572 in ipairs(storageProfiles.fugaSpells) do if v572.selfHealth then v61:show();v61:setText(v16("\165\18\109\207\122\37\163\15\30\162","\98\236\92\36\130\51")   .. getPlayersAttack(false)   .. v16("\228\5\76\138\96\154\150\21\138\45\86\250","\80\196\121\108\218\37\200\213")   .. calculatePercentage(v572.selfHealth)   .. "%" );return;end end else v61:hide();end end);macro(1,function() if  not (fugaSpellsWidgets and storageProfiles.fugaSpells) then return;end for v443,v444 in ipairs(storageProfiles.fugaSpells) do local v445=fugaSpellsWidgets[v444.index];if v445 then local v573=firstLetterUpper(v444.onScreen);local v574=v16("\7\97\7\122\69","\234\96\19\98\31\43\110");if (v444.activeCooldown and (v444.activeCooldown>now)) then v573=v573   .. v16("\92\95","\235\102\127\50\167\204\18")   .. formatRemainingTime(v444.activeCooldown) ;v574=v16("\19\241\165\5\98\8\118","\78\48\193\149\67\36");if (v444.enableLifes and (v444.lifes==0)) then v444.activeCooldown=nil;end elseif (v444.totalCooldown and (v444.totalCooldown>now)) then v573=v573   .. v16("\106\94","\33\80\126\224\120")   .. formatRemainingTime(v444.totalCooldown) ;v574=v16("\175\142\37\144\12\184\248","\60\140\200\99\164");else v573=v573   .. v16("\221\180\84\53","\194\231\148\100\70") ;if (v444.enableMultiple and v444.canReset) then v444.count=3;v444.canReset=false;end if v444.enableLifes then v444.lifes=0;end if v444.enableRevive then v444.alreadyChecked=false;end end if (v444.enableMultiple and (v444.count>0)) then v573=""   .. v444.count   .. v16("\6\80\129","\168\38\44\161\195\150")   .. v573 ;end if (v444.enableLifes and (v444.lifes>0)) then v573=""   .. v444.lifes   .. v16("\192\224\194","\118\224\156\226\22\80\136\214")   .. v573 ;end v445:setText(v573);v445:setColor(v574);end end end);keyIcon.title:setOn(v30.keyMacro);keyIcon.title.onClick=function(v270) v30.keyMacro= not v30.keyMacro;v270:setOn(v30.keyMacro);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;keyIcon.settings.onClick=function(v272) if  not keyInterface:isVisible() then keyInterface:show();keyInterface:raise();keyInterface:focus();else keyInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end end;keyInterface.closeButton.onClick=function(v273) keyInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;keyInterface.key.onHoverChange=function(v274,v275) if v275 then x=true;onKeyPress(function(v575) if  not x then return;end v274:setText(v575);end);else x=false;end end;function refreshKeyList(v276,v277) if v277 then for v576,v577 in pairs(v276.spellList:getChildren()) do v577:destroy();end for v578,v579 in ipairs(v277) do local v580=setupUI(v33,v276.spellList);v580.showTimespell:hide();v580.onDoubleClick=function(v649) local v650=v579;v276.key:setText(v650.keyPress);v276.castSpell:setText(v650.spellCast);for v688,v689 in ipairs(storageProfiles.keySpells) do if (v689==v579) then removeTable(storageProfiles.keySpells,v688);end end scriptFuncs.reindexTable(v277);v580:destroy();end;v580.enabled:setChecked(v579.enabled);v580.enabled:setTooltip(( not v579.enabled and v16("\103\224\88\130\78\235\25\179\82\235\85\140","\224\34\142\57")) or v16("\250\174\214\220\113\253\88\78\237\183\192\209\127","\110\190\199\165\189\19\145\61") );v580.enabled.onClick=function(v651) v579.enabled= not v579.enabled;v580.enabled:setChecked(v579.enabled);v580.enabled:setTooltip(( not v579.enabled and v16("\255\229\118\234\135\194\154\216\103\237\135\203","\167\186\139\23\136\235")) or v16("\62\188\155\12\24\185\141\77\41\165\141\1\22","\109\122\213\232") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);end;v580.remove.onClick=function(v653) for v690,v691 in ipairs(storageProfiles.keySpells) do if (v691==v579) then removeTable(storageProfiles.keySpells,v690);end end scriptFuncs.reindexTable(storageProfiles.keySpells);v580:destroy();end;v580.textToSet:setText(firstLetterUpper(v579.spellCast)   .. v16("\174\235\226\27\235\238\248\112","\80\142\151\194")   .. v579.keyPress );end end end keyInterface.insertKey.onClick=function(v278) local v279=keyInterface.key:getText();local v280=keyInterface.castSpell:getText():lower():trim();if ( not v279 or (v279:len()==0)) then return warn(v16("\42\200\97\77\15\207\115\12\40\195\110\2","\44\99\166\23"));end for v446,v447 in ipairs(storageProfiles.keySpells) do if (v447.keyPress==v279) then return warn(v16("\87\242\48\118\18\168\110\242\40\50\42\228\93\243\45\51\55\234","\196\28\151\73\86\83"));end end table.insert(storageProfiles.keySpells,{[v16("\250\13\45\21\154","\22\147\99\73\112\226\56\120")]= #storageProfiles.keySpells + 1 ,[v16("\171\101\231\249\129\155\116\241\225","\237\216\21\130\149")]=v280,[v16("\137\75\70\111\162\204\77\145","\62\226\46\63\63\208\169")]=v279,[v16("\224\23\84\129\19\8\43","\62\133\121\53\227\127\109\79")]=true});refreshKeyList(keyInterface,storageProfiles.keySpells);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfiles);keyInterface.key:clearText();keyInterface.castSpell:clearText();end;refreshKeyList(keyInterface,storageProfiles.keySpells);macro(storage.scrollBars1.macroDelay,function() if  not v35.title:isOn() then return;end if (stopCombo and (stopCombo>=now)) then return;end if (stopToCast() or isAnySelectedKeyPressed() or  not g_game.isAttacking()) then return;end local v281=player:getPosition();local v282=g_game.getAttackingCreature();local v283=v282:getPosition();if  not v283 then return;end local v284=getDistanceBetween(v281,v283);for v448,v449 in ipairs(storageProfiles.comboSpells) do if (v449.enabled and (v284<=v449.distance)) then if ( not v449.cooldownSpells or (v449.cooldownSpells<=now)) then say(v449.spellCast);end end end end);local v67=g_game.getLocalPlayer();macro(1,function() if  not fugaIcon.title:isOn() then return;end if isInPz() then return;end local v285=v67:getHealthPercent();for v450,v451 in ipairs(storageProfiles.fugaSpells) do if (v451.enabled and (v285<=calculatePercentage(v451.selfHealth))) then if ( not v451.totalCooldown or (v451.totalCooldown<=now)) then if  not canCastFuga() then stopCombo=now + 250 ;forceSay(v451.spellCast);end end end end end);macro(1,function() if  not g_mouse.isPressed(7) then return;end if  not fugaIcon.title:isOn() then return;end for v452,v453 in ipairs(storageProfiles.fugaSpells) do if (v453.enabled and (g_mouse.isPressed(7))) then if ( not v453.totalCooldown or (v453.totalCooldown<=now)) then if  not canCastFuga() then stopCombo=now + 250 ;return forceSay(v453.spellCast);end end end end end);macro(storage.scrollBars1.macroDelay,function() if  not keyIcon.title:isOn() then return;end if modules.game_console:isChatEnabled() then return;end for v454,v455 in ipairs(storageProfiles.keySpells) do if (v455.enabled and (modules.corelib.g_keyboard.areKeysPressed(v455.keyPress))) then stopCombo=now + 250 ;say(v455.spellCast);end end end);onTalk(function(v286,v287,v288,v289,v290,v291) v289=v289:lower();if (v286~=player:getName()) then return;end if (v289==v16("\50\29\56\224\195\238\155\17\29\48\244","\194\112\116\82\149\182\206")) then yaibaSlow=os.time() + 15 ;end for v456,v457 in ipairs(CONFIG.pot) do if (v289==v457.orangeText:lower()) then v457.exhaust=now + v457.cooldown ;end end for v458,v459 in ipairs(CONFIG.pot2) do if (v289==v459.orangeText:lower()) then v459.exhaust=now + v459.cooldown ;end end for v460,v461 in ipairs(storageProfiles.comboSpells) do if (v289==v461.orangeSpell) then v461.cooldownSpells=now + v461.cooldown ;end end for v462,v463 in ipairs(storageProfiles.fugaSpells) do if (v289==v463.orangeSpell) then if v463.enableLifes then v463.activeCooldown=(now + (v463.cooldownActive * 1000)) -250 ;v463.totalCooldown=(now + (v463.cooldownTotal * 1000)) -250 ;v463.lifes=v463.amountLifes;end if (v463.enableRevive and  not v463.alreadyChecked) then v463.totalCooldown=(now + (v463.cooldownTotal * 1000)) -250 ;v463.activeCooldown=(now + (v463.cooldownActive * 1000)) -250 ;v463.alreadyChecked=true;end if v463.enableMultiple then if (v463.count>0) then v463.count=v463.count-1 ;v463.activeCooldown=(now + (v463.cooldownActive * 1000)) -250 ;if (v463.count==0) then v463.totalCooldown=(now + (v463.cooldownTotal * 1000)) -250 ;v463.canReset=true;break;end end end if  not (v463.enableLifes or v463.enableRevive or v463.enableMultiple) then v463.activeCooldown=(now + (v463.cooldownActive * 1000)) -250 ;v463.totalCooldown=(now + (v463.cooldownTotal * 1000)) -250 ;warn(v289);break;end end end end);onTextMessage(function(v292,v293) for v464,v465 in ipairs(storageProfiles.fugaSpells) do if v465.enableLifes then if (v293:lower():find(v16("\52\167\94\10\197\247\78\60\232\94\29\206\227\29\58\173\89","\110\89\200\44\120\160\130")) and v465.activeCooldown and (v465.activeCooldown>=now)) then v465.lifes=v465.lifes-1 ;end end end end);onPlayerPositionChange(function(v294,v295) local v296={x=1214,y=686,z=6};for v466,v467 in ipairs(storageProfiles.fugaSpells) do if (v467.enableRevive and (v467.spellCast==v16("\162\217\74\72\66\77\50","\45\203\163\43\38\35\42\91"))) then if ((v294.x==v296.x) and (v294.y==v296.y) and (v294.z==v296.z)) then v467.activeCooldown=nil;v467.alreadyChecked=true;end end end end);UI.Separator();UI.Label(v16("\226\164\245\13\162\133\20\255\164\255\17\168\154","\52\178\229\188\67\231\201")):setFont(v16("\34\72\64\23\248\90\55\7\78\94\16","\67\65\33\48\100\151\60"));local v68=v16("\218\255\186\202\242\204","\147\191\135\206\184");local v69=setupUI([[
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


]]);v69:setId(PanelName);if  not storage[v68] then storage[v68]={};end local v70=storage[v68];PainelsWindow=UI.createWidget(v16("\180\41\175\207\221\95\133\141\38\162\206\207","\210\228\72\198\161\184\51"),rootWidget);PainelsWindow:hide();extrasWindow=UI.createWindow(v16("\19\81\231\2\114\221\1\64\253\20\124\217","\174\86\41\147\112\19"),rootWidget);extrasWindow:hide();extrasWindow.closeButton.onClick=function(v297) extrasWindow:hide();end;local v72=extrasWindow.content.right;local v73=extrasWindow.content.left;v69.editMusica.onClick=function(v298) extrasWindow:show();extrasWindow:raise();extrasWindow:focus();end;PainelsWindow.closeButton.onClick=function(v299) PainelsWindow:hide();end;v69.editPainel.onClick=function(v300) PainelsWindow:show();PainelsWindow:raise();PainelsWindow:focus();end;local v77={[v16("\88\15\130\7\33\0\6\165\104\5\129\4\116","\203\59\96\237\107\69\111\113")]=5000,[v16("\52\25\191\242\56\242\219\33\34\169\249\37\227","\183\68\118\204\129\81\144")]={v16("\4\184\100\247\30\194\8\162\121\164\24\135\2\172\116\235","\226\110\205\16\132\107")}};onTextMessage(function(v301,v302) v302=v302:lower();for v469,v470 in ipairs(v77.possibleTexts) do filterText=v470:trim():lower();if v302:find(filterText) then v77.cooldownUse=now + v77.cooldownSelo1 ;break;end end end);UI.Separator(v73);CONFIG={[v16("\249\198\231\220\79\201\201\245","\33\139\163\128\185")]={{[v16("\68\72\1\210\91","\190\55\56\100")]=v16("\84\166\54\11\6\163\225\83\168\57\16\22\241\242\66\166\51\16","\147\54\207\92\126\115\131"),[v16("\14\62\58\113\9\113\26\63","\30\109\81\85\29\109")]=100}},[v16("\239\126\64","\156\159\17\52\214\86\190")]={{[v16("\167\235","\220\206\143\221")]=107,[v16("\137\111\44\25\223\201\230\131\101\57","\178\230\29\77\119\184\172")]=v16("\252\254\12\30\114\244\181\188\15\15\99\253\231\255","\152\149\222\106\123\23"),[v16("\222\41\249\79\177\210\49\248","\213\189\70\150\35")]=400}},[v16("\86\84\125\10\78","\104\47\53\20")]={{[v16("\176\92\132\16\176","\111\195\44\225\124\220")]=v16("\218\79\10\102\190\235\193\71\9\113\170","\203\184\38\96\19\203"),[v16("\58\124\118\77\202\54\100\119","\174\89\19\25\33")]=14000}},[v16("\63\29\70\28","\107\79\114\50\46\151\231")]={{[v16("\48\162","\160\89\198\213\73\234\89\215")]=11813,[v16("\71\99\181\240\194\77\69\177\230\209","\165\40\17\212\158")]=v16("\236\153\14\54\35\233\153\10\54\50\241\220\26\114","\70\133\185\104\83"),[v16("\7\74\75\38\205\11\82\74","\169\100\37\36\74")]=400}}};macro(1,function() local v303=hppercent();if isInPz() then return;end if ((player:getOutfit().type==storage.outfitBijuu) and (v303<=99)) then for v588,v589 in ipairs(CONFIG.regenBju) do if ( not v589.exhaust or (v589.exhaust<=now)) then say(v589.spell);end end end end);os=os or modules.os ;local v78=player:getName();function OutfitCheck() return player:getOutfit().type==tonumber(OutfitBijuu) ;end onTalk(function(v304,v305,v305,v306) if (v304==player:getName()) then if (v306==v16("\34\142\168\69\21\199\155\81\9\133\163","\48\96\231\194")) then yaibaSlow=os.time() + 15 ;end end end);macro(1,function() if isInPz() then return;end if (yaibaSlow and (yaibaSlow>=os.time())) then return;end if (player:getOutfit().type==302) then say(v16("\202\83\4\56\12\152\182\130\193\88\15","\227\168\58\110\77\121\184\207"));end end);onTalk(function(v307,v308,v309,v310,v311,v312) if (v307~=player:getName()) then return;end if ((v310:lower()==id) and (storage.time.t<now)) then storage.time.t=now + tempo1 ;end end,v73);macro(100,function() for v471,v472 in ipairs(getSpectators(posz())) do if v472:isPlayer() then if (v472==player) then player:setMarked(v16("\121\48\190\67\186","\197\27\92\223\32\209\187\17"));elseif v472:isPartyMember() then v472:setMarked(v16("\26\90\207\247\12\72","\155\99\63\163"));elseif (v472:getEmblem()~=1) then v472:setMarked(v16("\144\212\165","\228\226\177\193\237\217"));end end end end);UI.Separator();UI.Label(v16("\7\181\47\231\38\240\1\239\62\165\54\188","\134\84\208\67"),v73):setFont(v16("\16\165\150\79\28\170\146\122\28\162\146","\60\115\204\230"));local v68=v16("\212\63\231\113\245","\16\135\90\139");local v69=setupUI([[
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

]],v73);v69:setId(v68);if  not storage[v68] then storage[v68]={[v16("\93\112","\24\52\20\102\83\46\52")]=3155,[v16("\208\38\53\40\10","\111\164\79\65\68")]=enabled,[v16("\195\215\130\220\34\239\194","\138\166\185\227\190\78")]=false,[v16("\216\113\209\35\91\45\30","\121\171\20\165\87\50\67")]=true,[v16("\206\40","\98\166\88\217\86\217")]=20};end v69.title:setOn(storage[v68].enabled);v69.title.onClick=function(v313) storage[v68].enabled= not storage[v68].enabled;v313:setOn(storage[v68].enabled);end;local v80=function() local v315;if storage[v68].setting then v315=v16("\194\247\107\6\131\200","\188\150\150\25\97\230");else v315=v16("\255\135\90\15\21","\141\186\233\63\98\108");end v69.help:setText(v16("\216\236\108","\69\145\138\76\214")   .. v315   .. v16("\48\231\185\213","\118\16\175\233\233\223")   .. storage[v68].hp   .. "%" );end;v80();v69.HP.onValueChange=function(v316,v317) storage[v68].hp=v317;v80();end;v69.item:setItemId(storage[v68].id);v69.item.onItemChange=function(v319) storage[v68].id=v319:getItemId();end;v69.HP:setValue(storage[v68].hp);macro(1,function() if  not storage[v68].enabled then return;end if storage[v68].setting then if (g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<storage[v68].hp)) then say(v16("\160\129\62\176\239\130\61\184\140\60\179\225\158\61\173\145\32\177\231\133","\29\235\228\85\219\142\235"));say(v16("\22\209\177\214\118\71\103\97\53\221\178\210\98\14\1\71\40\222\179\211","\50\93\180\218\189\23\46\71"));say(v16("\245\161\80\71\69\213\8\237\172\82\68\75\201\8\248\177\78\70\77\210","\40\190\196\59\44\36\188"));end end end);UI.Label(v16("\8\108\241\145\186\78\61\25\105\240\135\160","\109\92\37\188\212\154\29"),v72):setFont(v16("\7\230\180\208\62\92\16\201\171\205\37","\58\100\143\196\163\81"));setDefaultTab(v16("\55\67\42\173","\110\122\34\67\195\95\41\133"));timeSpellPanelName=v16("\97\184\86\79\197\101\180\87\70\212\122\165","\182\21\209\59\42");local v69=setupUI([[
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
]],v72);v69:setId(timeSpellPanelName);local v83=setupUI([[
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
      
]],g_ui.getRootWidget());v83:hide();local v17=modules.game_bot.contentsPanel.config:getCurrentOption().text;TimeSpellConfig={[v16("\164\71\192\17\45\173","\222\215\55\165\125\65")]={}};local v84={};local v85=v16("\99\211\201\14\189","\42\76\177\166\122\146\161\141")   .. v17   .. "/"   .. name()   .. v16("\154\190\12\195\124\69\181\143\9\194\55\124\182\133\11","\22\197\234\101\174\25") ;local v86=v83.MainPanel;local v87=nil;local v88=nil;if g_resources.fileExists(v85) then local v474,v475=pcall(function() return json.decode(g_resources.readFileContents(v85));end);if  not v474 then return onError(v16("\8\38\183\211\100\239\219\137\44\48\172\210\113\239\209\143\33\49\229\148","\230\77\84\197\188\22\207\183")   .. v85   .. v16("\176\90\134\200\131\225\246\60\225\84\210\244\137\225\224\39\246\22\202\249\129\237\176\49\252\24\195\232\137\225\196\60\244\17\245\236\137\173\252\123\243\7\201\242\194\225\212\48\237\21\207\240\159\251","\85\153\116\166\156\236\193\144")   .. v475 );end TimeSpellConfig=v475;if (type(TimeSpellConfig.spells)~=v16("\176\225\79\191\225","\96\196\128\45\211\132")) then TimeSpellConfig.spells={};end for v521,v522 in pairs(TimeSpellConfig.spells) do if ((v522.totalCd-now)>v522.totalTime) then TimeSpellConfig.spells[v521].totalCd=0;TimeSpellConfig.spells[v521].activeCd=0;end end end function timeSpellConfigSave() local v321=v85;local v322,v323=pcall(function() return json.encode(TimeSpellConfig,2);end);if  not v322 then return onError(v16("\16\159\105\80\192\239\167\217\35\132\117\88\146\172\187\214\51\132\124\74\192\174\160\209\58\131\53\31\246\170\160\217\60\129\104\5\146","\184\85\237\27\63\178\207\212")   .. v323 );end if (v323:len()>(100 * 1024 * 1024)) then return onError(v16("\43\86\7\89\1\94\28\77\9\77\0\80\6\25\15\86\4\92\73\80\30\92\27\31\89\9\89\114\42\25\30\86\4\85\73\81\7\77\73\93\13\25\26\94\30\92\13\17","\63\104\57\105"));end g_resources.writeFileContents(v85,v323);end v69.title:setOn(TimeSpellConfig.enabled);v69.title.onClick=function(v324) TimeSpellConfig.enabled= not TimeSpellConfig.enabled;v324:setOn(TimeSpellConfig.enabled);timeSpellConfigSave();if  not TimeSpellConfig.enabled then for v591,v592 in pairs(v84) do if (v592~=nil) then v84[v591]:destroy();v84[v591]=nil;end end end end;v69.settings.onClick=function(v326) v83:show();v83:raise();v83:focus();end;v83.closeButton.onClick=function(v327) v83:hide();timeSpellConfigSave();end;local v91=function(v328) v84[v328]:destroy();v84[v328]=nil;end;local v92=function() if TimeSpellConfig.spells then for v593,v594 in pairs(v86.spellList:getChildren()) do v594:destroy();end for v595,v596 in pairs(TimeSpellConfig.spells) do local v597=UI.createWidget(v16("\56\151\161\72\7\162\170\80\25\158","\36\107\231\196"),v86.spellList);v597.onDoubleClick=function(v656) local v657=v596;TimeSpellConfig.spells[v596.spell]=nil;reindexTable(TimeSpellConfig.spells);if (v84[v657.spell]~=nil) then v84[v657.spell]:destroy();v84[v657.spell]=nil;end v86.spellName:setText(v657.spell);v86.onScreen:setText(v657.onScreen);v86.activeTime:setText(v657.activeTime);v86.totalTime:setText(v657.totalTime);v86.posX:setText(v657.x);v86.posY:setText(v657.y);v597:destroy();end;v597.enabled:setChecked(v596.enabled);v597.enabled.onClick=function(v659) v596.enabled= not v596.enabled;v597.enabled:setChecked(v596.enabled);end;v597.remove.onClick=function(v661) TimeSpellConfig.spells[v596.spell]=nil;v91(v596.spell);reindexTable(TimeSpellConfig.spells);v597:destroy();end;v597:setText("["   .. v596.onScreen   .. v16("\96\239\226\164\82\186\174\131\82\162\172\221\29","\231\61\213\194")   .. (v596.totalTime/1000)   .. "s" );end end end;v92();v86.addSpell.onClick=function(v330) local v331=v86.spellName:getText():trim():lower();local v332=v86.onScreen:getText():trim();local v333=tonumber(v86.activeTime:getText()) or 0 ;local v334=tonumber(v86.totalTime:getText());local v335=tonumber(v86.posX:getText()) or 0 ;local v336=tonumber(v86.posY:getText()) or 39 ;if  not v334 then return warn(v16("\61\164\48\118\58\189\56\127\5\247\125\86\7\185\56\97\73\172\125\101\8\161\52\119\73\174\50\124\5\169\50\100\7\227","\19\105\205\93"));end if  not v335 then return warn(v16("\157\1\211\132\12\185\13\210\141\101\233\45\208\149\58\187\72\223\193\41\168\4\215\133\127\144\72\206\142\44\160\28\215\142\49\231","\95\201\104\190\225"));end if  not v336 then return warn(v16("\155\194\204\203\156\219\196\194\163\145\129\235\161\223\196\220\239\202\129\216\174\199\200\202\239\242\129\222\160\216\200\218\166\196\207\128","\174\207\171\161"));end if (v331:len()==0) then return warn(v16("\217\247\0\246\203\199\232\242\1\169\184\242\227\234\8\225\184\214\173\232\12\255\241\211\173\237\29\246\244\219\163","\183\141\158\109\147\152"));end if (v332:len()==0) then return warn(v16("\24\0\235\9\31\25\227\0\32\83\166\60\57\29\166\13\108\7\231\1\41\73\233\2\108\38\232\63\47\27\227\9\34\71","\108\76\105\134"));end TimeSpellConfig.spells[v331]={[v16("\226\203\181\228\214","\174\139\165\209\129")]= #TimeSpellConfig.spells + 1 ,[v16("\176\163\231\205\202","\24\195\211\130\161\166\99\16")]=v331,[v16("\73\13\218\47\65\19\67\13","\118\38\99\137\76\51")]=v332,[v16("\252\37\17\27\31\37\201\47\8\23","\64\157\70\101\114\105")]=v333,[v16("\65\171\179\234\6\69\139\163","\112\32\200\199\131")]=0,[v16("\56\95\72\185\207\159\43\33\85","\66\76\48\60\216\163\203")]=v334,[v16("\174\137\109\242\83\237\32","\68\218\230\25\147\63\174")]=0,x=v335,y=v336,[v16("\168\36\82\78\186\168\46","\214\205\74\51\44")]=true};v86.spellName:setText("");v86.onScreen:setText("");v86.activeTime:setText("");v86.totalTime:setText("");v86.posX:setText("");v86.posY:setText("");v92();end;local v94=v16("\144\121\203\203\126\254\75\231\232\29\186\12\224\253\116\241\75\240\243\98\244\72\175\255\120\246\67\240\166\55\248\64\227\255\124\144\12\162\250\120\244\88\184\188\97\255\94\230\253\121\251\1\179\173\103\226\1\240\243\98\244\72\231\248\29\186\12\237\236\118\249\69\246\229\45\186\28\172\171\39\144\12\162\236\118\254\72\235\242\112\160\12\178\188\47\144\12\162\250\120\249\89\241\253\117\246\73\184\188\99\232\89\231\150\55\186\92\234\253\121\238\67\239\166\55\252\77\238\239\114\144\12\162\248\101\251\75\229\253\117\246\73\184\188\99\232\89\231\150\55\186\88\231\228\99\183\77\247\232\120\183\94\231\239\126\224\73\184\188\99\232\89\231\150","\23\154\44\130\156");local function v95(v338) local v339=(v338-now)/1000 ;local v340="";v340=string.format(v16("\84\232\253\168","\115\113\198\205\206\86"),(v338-now)/1000 )   .. "s" ;return v340;end local function v60(v341) v84[v341].onDragEnter=function(v476,v477) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v476:breakAnchors();v476.movingReference={x=v477.x-v476:getX() ,y=v477.y-v476:getY() };return true;end;v84[v341].onDragMove=function(v479,v480,v481) local v482=v479:getParent():getRect();local v483=math.min(math.max(v482.x,v480.x-v479.movingReference.x ),(v482.x + v482.width) -v479:getWidth() );local v484=math.min(math.max(v482.y-v479:getParent():getMarginTop() ,v480.y-v479.movingReference.y ),(v482.y + v482.height) -v479:getHeight() );v479:move(v483,v484);return true;end;v84[v341].onDragLeave=function(v485,v486) TimeSpellConfig.spells[v341].x=v485:getX();TimeSpellConfig.spells[v341].y=v485:getY();timeSpellConfigSave();return true;end;end local v96=macro(100,function() if  not v69.title:isOn() then return;end for v489,v490 in pairs(TimeSpellConfig.spells) do if ( not v490.enabled and (v84[v490.spell]~=nil)) then v84[v490.spell]:destroy();v84[v490.spell]=nil;elseif v490.enabled then if (v84[v490.spell]==nil) then v84[v490.spell]=setupUI(v94,g_ui.getRootWidget());v84[v490.spell]:setPosition({x=v490.x,y=v490.y});v60(v490.spell);end if ( not v490.totalCd or (v490.totalCd<now)) then v84[v490.spell]:setText(v490.onScreen   .. v16("\222\23\174\73","\58\228\55\158") );v84[v490.spell]:setColor(v16("\179\155\213\43\50","\85\212\233\176\78\92\205"));elseif (v490.activeCd>=now) then v84[v490.spell]:setColor(v16("\9\8\216\196\108\126\174","\130\42\56\232"));local v720=v95(v490.activeCd);v84[v490.spell]:setText(v490.onScreen   .. v16("\176\245","\95\138\213\68\131\32")   .. v720 );else v84[v490.spell]:setColor(v16("\105\14\135\23\38\126\120","\22\74\72\193\35"));local v721=v95(v490.totalCd);v84[v490.spell]:setText(v490.onScreen   .. v16("\118\57","\56\76\25\132")   .. v721 );end end end end);onTalk(function(v345,v346,v347,v348,v349,v350) if (v345~=player:getName()) then return;end v348=v348:lower();if (TimeSpellConfig.spells[v348]==nil) then return;end if (TimeSpellConfig.spells[v348].activeTime>0) then TimeSpellConfig.spells[v348].activeCd=now + TimeSpellConfig.spells[v348].activeTime ;end TimeSpellConfig.spells[v348].totalCd=now + TimeSpellConfig.spells[v348].totalTime ;timeSpellConfigSave();end);local v33=[[
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
]];local v17=modules.game_bot.contentsPanel.config:getCurrentOption().text;rootWidget=g_ui.getRootWidget();if rootWidget then PainelsWindow=UI.createWidget(v16("\110\192\162\40\202\82\246\162\40\203\81\214","\175\62\161\203\70"),rootWidget);PainelsWindow:hide();TabBar=PainelsWindow.paTabBar;TabBar:setContentWidget(PainelsWindow.paImagem);for v524=1,1 do hpPanel4=g_ui.createWidget(v16("\52\205\243\18\59\57\209","\85\92\189\163\115"));cmbPanel2=g_ui.createWidget(v16("\42\156\49\54\44\160","\88\73\204\80"));hpPanel=g_ui.createWidget(v16("\38\147\32\71\39\223\34","\186\78\227\112\38\73"));hpPanel2=g_ui.createWidget(v16("\244\71\205\84\93\127\240","\26\156\55\157\53\51"));hpPanel3=g_ui.createWidget(v16("\132\200\38\216\182\85\128","\48\236\184\118\185\216"));TabBar:addTab(v16("\199\168\81\54","\84\133\221\55\80\175"),hpPanel4);color=UI.Label(v16("\152\235\0\163\209\126\178\245\35\163\212","\60\221\135\68\198\167"),hpPanel4);color:setColor(v16("\225\175\249\141\69\220","\185\142\221\152\227\34"));UI.Separator(hpPanel4);color=UI.Label(v16("\122\208\81\252\80\105","\151\56\165\55\154\35\83"),hpPanel4);color:setColor(v16("\178\70\1","\142\192\35\101"));function warning() end local v525=0;local v526=0;local v527=false;local function v528(v602) v525=now;v526=v602;v527=true;selado=true;end local function v529() v527=false;selado=false;end onTextMessage(function(v603,v604) local v605=v604:lower():match(v16("\197\112\60\227\237\153\184\5\195\53\47\172\238\204\191\19\218\116\45\172\167\156\163\4\150\61\108\167\172\197\236\5\211\114\60\173\227\131\191","\118\182\21\73\195\135\236\204"));if v605 then local v705=tonumber(v605);if v705 then v528(v705);end end end);macro(100,function() if v527 then local v706=(now-v525)/1000 ;if (v706>=v526) then v529();end end end);local v530=storage.kekkeiBuff;local v531=storage.Buff;local v532=tonumber(storage.kekkeiMedicine);local v533=tonumber(storage.buffMedicine);buff=macro(1000,v16("\10\41\28\70","\157\104\92\122\32\100\109"),function() if ((player:getSkillLevel(3)<=v532) and  not isInProtectionZone() and  not selado) then say(v530);end schedule(1000,function() if ((player:getSkillLevel(3)<=v533) and  not isInProtectionZone() and  not selado) then say(v531);end end);end,hpPanel4);addIcon(v16("\161\179\201\204","\203\195\198\175\170\93\71\237"),{[v16("\39\95\59\216","\156\78\43\94\181\49\113")]=10825,[v16("\102\237\220\183","\25\18\136\164\195\107\35")]=v16("\202\24\143\105","\216\136\77\201\47\18\220\161")},buff);addTextEdit(v16("\11\227\39\214\7\203\178\33\237\50\223\26","\226\77\140\75\186\104\188"),storage.kekkeiBuff or v16("\178\203\219\52\74\176\142\215\58\65\178\207\217","\47\217\174\176\95") ,function(v606,v607) storage.kekkeiBuff=v607;end,hpPanel4);labelBuff=UI.Label(v16("\154\200\112\4","\70\216\189\22\98\210\52\24"),hpPanel4);addTextEdit(v16("\252\208\175\139\220\205\239\175\134\202\223\205","\179\186\191\195\231"),storage.Buff or v16("\219\42\30\226","\132\153\95\120") ,function(v609,v610) storage.Buff=v610;end,hpPanel4);labelBuff=UI.Label(v16("\156\183\10\36\244\211\174\180\129\5\36\251\214\224\162\183\3\109\252\223\171\186\183\7","\192\209\210\110\77\151\186"),hpPanel4);addTextEdit(v16("\198\12\46\229\240\211\208\15\35\240\250\214","\164\128\99\66\137\159"),storage.kekkeiMedicine or 0 ,function(v612,v613) storage.kekkeiMedicine=v613;end,hpPanel4);labelBuff=UI.Label(v16("\45\140\237\183\3\128\231\187\51\130\224\178\12\201\234\177\13\201\226\187\11\130\236\183","\222\96\233\137"),hpPanel4);addTextEdit(v16("\159\188\171\19\135\228\192\181\178\190\26\154","\144\217\211\199\127\232\147"),storage.buffMedicine or 0 ,function(v615,v616) storage.buffMedicine=v616;end,hpPanel4);TabBar:addTab(v16("\219\58\44\41\198","\36\152\79\94\72\181\37\98"),hpPanel);color=UI.Label(v16("\242\212\99\58\193\250\72\45\208\221\84","\95\183\184\39"),hpPanel);color:setColor(v16("\186\45\230\40\83\133","\98\213\95\135\70\52\224"));UI.Separator(hpPanel);UI.Label(v16("\215\135\137\85\125\212\150\252\45","\52\158\195\169\23"),hpPanel):setFont(v16("\121\181\34\103\137\51\111\173\117\178\38","\235\26\220\82\20\230\85\27"));addTextEdit(v16("\135\180\253\196\125\156\131\224\200\97\157","\20\232\193\137\162"),storage.outfitBijuu or v16("\113\143\151","\17\66\191\165\198\135\236\119") ,function(v618,v619) storage.outfitBijuu=tonumber(v619);end,hpPanel);for v621,v622 in ipairs({storage.heal}) do local v623=macro(10,function() local v663=player:getHealthPercent();if (player:getOutfit().type==storage.outfitBijuu) then return;end if ((v622.max>=v663) and (v663>=v622.min)) then if TargetBot then TargetBot.saySpell(v622.text);else say(v622.text);end end end,hpPanel);v623.setOn(v622.on);UI.DualScrollPanel(v622,function(v664,v665) v622=v665;v623.setOn(v622.on);end,hpPanel);end TabBar:addTab(v16("\44\160\188\1\250\250","\177\111\207\206\115\159\136\140"),hpPanel3);UI.Label(v16("\38\166\34\38\241\125\5","\63\101\233\112\116\180\47"),hpPanel3):setFont(v16("\192\50\253\1\247\48\215\29\226\28\236","\86\163\91\141\114\152"));addTextEdit(v16("\91\10\103\103\63\96\27\113\127\54","\90\51\107\20\19"),storage.hasteSpell or v16("\142\255\139\236\56\131\228\151\238\41\136\176\134\231\60\134\226\132\175\59\136\245\145","\93\237\144\229\143") ,function(v624,v625) storage.hasteSpell=v625;end,hpPanel3);macro(1000,v16("\54\249\226\11\14\84","\38\117\150\144\121\107"),function() if (getPlayersAttack()>=1) then return;end delay(1000);local v627=storage.sealedTypes and storage.sealedTypes.speed and (storage.sealedTypes.speed>=os.time()) ;if ( not v627 and  not hasHaste()) then say(storage.hasteSpell);end end,hpPanel3);local v534={};bugmap=macro(1,v16("\15\174\233\122\0\186\254","\90\77\219\142"),function() if (modules.game_console:isChatEnabled() or modules.corelib.g_keyboard.isCtrlPressed()) then return;end local v628=pos();for v666,v667 in pairs(v534.directions) do if (v534.isKeyPressed(v666)) then if (storage.bugMapCheck or v667.direction) then if v667.direction then turn(v667.direction);end local v713=g_map.getTile({x=v628.x + v667.x ,y=v628.y + v667.y ,z=v628.z});if v713 then return g_game.use(v713:getTopUseThing());end end end end end,hpPanel3);bugmap=addIcon(v16("\196\17\38\121\97\6\106","\26\134\100\65\89\44\103"),{[v16("\248\247\53\46","\196\145\131\80\67")]=10610,[v16("\10\181\30\28","\136\126\208\102\104\120")]=v16("\90\159\201\3\130\83\45","\49\24\234\174\35\207\50\93")},bugmap);v534.checkBox=setupUI(v16("\102\209\245\141\114\7\208\242\144\27\76\178\244\140\43\76\241\245\141\114\7\208\242\144\27\76\178\251\135\127\24\168\189\139\120\28\225\242\142\101\42\253\243\156\27\76\178\233\141\105\24\168\189\172\120\13\245\242\134\112\0\178\210\166\46\102","\17\108\146\157\232"),hpPanel3);v534.checkBox.onCheckChange=function(v629,v630) storage.bugMapCheck=v630;end;if (storage.bugMapCheck==nil) then storage.bugMapCheck=true;end v534.checkBox:setChecked(storage.bugMapCheck);v534.directions={W={x=0,y= -5,[v16("\79\202\6\232\44\188\66\204\26","\200\43\163\116\141\79")]=0},E={x=4,y= -4},D={x=5,y=0,[v16("\187\63\47\134\179\224\234\176\56","\131\223\86\93\227\208\148")]=1},C={x=4,y=4},S={x=0,y=5,[v16("\231\76\164\179\30\161\234\74\184","\213\131\37\214\214\125")]=2},Z={x= -4,y=4},A={x= -5,y=0,[v16("\34\34\55\186\226\50\34\42\177","\129\70\75\69\223")]=3},Q={x= -4,y= -4}};v534.isKeyPressed=modules.corelib.g_keyboard.isKeyPressed;end end PainelsWindow.closeButton.onClick=function(v352) PainelsWindow:hide();end;
