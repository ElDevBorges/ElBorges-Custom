

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v26,v27) local v28=0 + 0 ;local v29;while true do if (v28==(15 -(9 + 5))) then return v5(v29);end if (v28==(376 -(85 + 291))) then v29={};for v256=1266 -(243 + 1022) , #v26 do v6(v29,v0(v4(v1(v2(v26,v256,v256 + 1 )),v1(v2(v27,(3 -2) + (v256% #v27) ,1 + (v256% #v27) + 1 )))%256 ));end v28=1 + 0 ;end end end bit32={};local v8=1212 -(1123 + 57) ;local v9=(2 + 0)^v8 ;bit32.bnot=function(v30) v30=v30%v9 ;return (v9-1) -v30 ;end;bit32.band=function(v31,v32) local v33=0;local v34;local v35;while true do if (v33==(256 -(163 + 91))) then v34=0;v35=1;v33=3;end if (v33==1) then if (v32==(4294969225 -(1869 + 61))) then return v31%4294967296 ;end v31,v32=v31%v9 ,v32%v9 ;v33=1 + 1 ;end if (v33==3) then for v257=3 -2 ,v8 do local v258=0 -0 ;local v259;local v260;while true do if (v258==(1 + 0)) then if ((v259 + v260)==(2 -0)) then v34=v34 + v35 ;end v35=(2 + 0) * v35 ;break;end if (v258==0) then v259,v260=v31%(1476 -(1329 + 145)) ,v32%(973 -(140 + 831)) ;v31,v32=math.floor(v31/(1852 -(1409 + 441)) ),math.floor(v32/2 );v258=719 -(15 + 703) ;end end end return v34;end if (v33==(0 + 0)) then if (v32==(693 -(262 + 176))) then return v31%(1977 -(345 + 1376)) ;end if (v32==(66223 -(198 + 490))) then return v31%(289535 -223999) ;end v33=2 -1 ;end end end;bit32.bor=function(v36,v37) if (v37==(1461 -(696 + 510))) then return (v36-(v36%(536 -280))) + (1517 -(1091 + 171)) ;end if (v37==(10546 + 54989)) then return (v36-(v36%65536)) + (206326 -140791) ;end if (v37==4294967295) then return 4294967295;end v36,v37=v36%v9 ,v37%v9 ;local v38=0 -0 ;local v39=1;for v89=375 -(123 + 251) ,v8 do local v90,v91=v36%(9 -7) ,v37%(700 -(208 + 490)) ;v36,v37=math.floor(v36/(1 + 1) ),math.floor(v37/(1 + 1) );if ((v90 + v91)>=(837 -(660 + 176))) then v38=v38 + v39 ;end v39=(1 + 1) * v39 ;end return v38;end;bit32.bxor=function(v40,v41) v40,v41=v40%v9 ,v41%v9 ;local v42=202 -(14 + 188) ;local v43=676 -(534 + 141) ;for v92=1,v8 do local v93=0 + 0 ;local v94;local v95;while true do if ((1 + 0)==v93) then if ((v94 + v95)==(1 + 0)) then v42=v42 + v43 ;end v43=(3 -1) * v43 ;break;end if (v93==0) then v94,v95=v40%(2 -0) ,v41%(5 -3) ;v40,v41=math.floor(v40/2 ),math.floor(v41/2 );v93=1;end end end return v42;end;bit32.lshift=function(v44,v45) if (math.abs(v45)>=v8) then return 0 + 0 ;end v44=v44%v9 ;if (v45<0) then return math.floor(v44 * (2^v45) );else return (v44 * ((2 + 0)^v45))%v9 ;end end;bit32.rshift=function(v46,v47) local v48=0;while true do if (v48==1) then if (v47>0) then return math.floor(v46 * ((398 -(115 + 281))^ -v47) );else return (v46 * (2^ -v47))%v9 ;end break;end if (v48==0) then if (math.abs(v47)>=v8) then return 0 -0 ;end v46=v46%v9 ;v48=1;end end end;bit32.arshift=function(v49,v50) if (math.abs(v50)>=v8) then return 0 + 0 ;end v49=v49%v9 ;if (v50>(0 -0)) then local v190=0 -0 ;local v191;while true do if (v190==1) then return math.floor(v49 * ((869 -(550 + 317))^ -v50) ) + v191 ;end if ((0 -0)==v190) then v191=0 -0 ;if (v49>=(v9/(5 -3))) then v191=v9-(2^(v8-v50)) ;end v190=286 -(134 + 151) ;end end else return (v49 * (2^ -v50))%v9 ;end end;xtela10nui,ytela10nui=2455 -(970 + 695) ,572 -272 ;timemagianui="";tempoi1nui=121990 -(582 + 1408) ;tempoi2nui=0;texto10nui=v7("\255\246\242\7\199\137\238","\126\177\163\187\69\134\219\167");local v17=setupUI(v7("\73\253\43\203\249\47\167\106\133\244\38\196\45\205\232\121\141\126\149\172\73\141\106\210\245\39\217\34\159\188\122\157\122\175","\156\67\173\74\165"),g_ui.getRootWidget());local v18=g_ui.loadUIFromString(v7("\94\155\72\20\185\42\44\116\247\74\25\176\41\84\110\247\94\30\181\50\67\94\247\9\20\189\37\77\51\165\70\3\178\34\11\55\184\69\25\174\124\6\54\187\72\21\183\76\6\116\184\89\23\191\47\82\45\237\9\70\242\126\19\94\247\9\2\185\62\82\121\191\70\4\181\60\73\58\163\72\26\241\39\83\32\184\4\4\185\53\79\46\178\19\86\168\52\83\49\221","\38\84\215\41\118\220\70"),v17);macro(1,function() if ( not storage.time.nui1 or (storage.time.nui1<now)) then v18:setText(texto10nui);v18:setColor(v7("\87\4\39\23\240","\158\48\118\66\114"));elseif (storage.time.nu1>=now) then local v261=0 -0 ;while true do if (v261==0) then v18:setColor(v7("\169\40\5\51","\155\203\68\112\86\19\197"));v18:setText(texto10nui   .. string.format(v7("\3\147\102\250","\152\38\189\86\156\32\24\133"),(storage.time.nu1-now)/(1258 -258) )   .. v7("\239\23","\38\156\55\199") );break;end end else v18:setColor(v7("\186\120\120","\35\200\29\28\72\115\20\154"));v18:setText(texto10nui   .. string.format(v7("\92\241\129\217","\84\121\223\177\191\237\76"),(storage.time.nui1-now)/(3768 -2768) )   .. v7("\168\22","\161\219\54\169\192\90\48\80") );end end);onTextMessage(function(v51,v52) if v52:find(v7("\89\67\18\36\9\87\19\36\91\2\1\101\76\81\16\36\77\67\64\43\70\84\1\40\76\76\20\32\7","\69\41\34\96")) then local v192=1824 -(1195 + 629) ;while true do if (v192==(1 -0)) then storage.time.nu1=now + tempoi2nui ;break;end if ((241 -(187 + 54))==v192) then storage.time=storage.time or {} ;storage.time.nui1=now + tempoi1nui ;v192=1;end end end end);if ((type(storage.time)~=v7("\168\194\213\6\7","\75\220\163\183\106\98")) or  not storage.time.nu1 or ((storage.time.nui1-now)>(60780 -(162 + 618))) or  not storage.time.nu1 or ((storage.time.nu1-now)>(42042 + 17958))) then storage.time={[v7("\12\175\130\102","\185\98\218\235\87")]=0,[v7("\197\41\118","\202\171\92\71\134\190")]=0 + 0 };end v18:setPosition({y=ytela10nui + (85 -45) ,x=xtela10nui + (16 -6) });setDefaultTab(v7("\25\247\28","\232\73\161\76"));local v19=v7("\176\208\78\81\45\175\220\67\81","\126\219\185\34\61");local v20=setupUI([[
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

]],parent);v20:setId(v19);if  not storage[v19] then storage[v19]={[v7("\5\202","\135\108\174\62\18\30\23\147")]=241 + 2831 ,[v7("\162\224\62\199\29","\167\214\137\74\171\120\206\83")]=enabled,[v7("\142\254\51\95\244\162\143","\199\235\144\82\61\152")]=false,[v7("\20\19\173\63\14\24\190","\75\103\118\217")]=true,[v7("\207\68","\126\167\52\16\116\217")]=1656 -(1373 + 263) };end v20.title:setOn(storage[v19].enabled);v20.title.onClick=function(v53) local v54=1000 -(451 + 549) ;while true do if (v54==0) then storage[v19].enabled= not storage[v19].enabled;v53:setOn(storage[v19].enabled);break;end end end;local v22=function() local v55;if storage[v19].setting then v55=v7("\252\47\50\135\177\13","\156\168\78\64\224\212\121");else v55=v7("\34\224\160\195\30","\174\103\142\197");end v20.help:setText(v7("\127\46\31","\152\54\72\63\88\69\62")   .. v55   .. v7("\148\236\222\0\137","\60\180\164\142")   .. storage[v19].hp   .. "%" );end;v22();v20.HP.onValueChange=function(v56,v57) local v58=0 + 0 ;while true do if (v58==(0 -0)) then storage[v19].hp=v57;v22();break;end end end;v20.item:setItemId(storage[v19].id);v20.item.onItemChange=function(v59) storage[v19].id=v59:getItemId();end;v20.HP:setValue(storage[v19].hp);macro(168 -68 ,function() if  not storage[v19].enabled then return;end local v61=g_game.getLocalPlayer();if storage[v19].setting then if (g_game.isAttacking() and g_game.getAttackingCreature():isPlayer() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v19].hp)) then if ( not storage.time.nui1 or (storage.time.nui1<now)) then local v287=g_game.getAttackingCreature();local v288=v61:getPosition();local v289=v287:getPosition();local v290=math.abs(v288.x-v289.x );local v291=math.abs(v288.y-v289.y );if (((v290==(1385 -(746 + 638))) and (v291==(0 + 0))) or ((v290==(0 -0)) and (v291==(342 -(218 + 123)))) or ((v290==1) and (v291==1))) then useWith(storage[v19].id,v287);end end end else for v240,v241 in pairs(getSpectators()) do if (g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v19].hp)) then local v270=0;local v271;local v272;local v273;local v274;while true do if (v270==2) then if (((v273==1) and (v274==0)) or ((v273==(1581 -(1535 + 46))) and (v274==(1 + 0))) or ((v273==(1 + 0)) and (v274==(561 -(306 + 254))))) then useWith(storage[v19].id,v241);end break;end if (v270==(0 + 0)) then v271=v241:getPosition();v272=v61:getPosition();v270=1 -0 ;end if (v270==(1468 -(899 + 568))) then v273=math.abs(v272.x-v271.x );v274=math.abs(v272.y-v271.y );v270=2;end end end end end end);UI.Separator();function traps() local v62=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v62=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v63=g_resources.listDirectoryFiles(v7("\23\92\10\61\104","\114\56\62\101\73\71\141")   .. v62   .. v7("\247\255\249\203\172","\164\216\137\187") ,true,false);for v98,v99 in ipairs(v63) do local v100=0;local v101;while true do if (v100==0) then v101=v99:split(".");if ((v101[ #v101]:lower()==v7("\199\239","\107\178\134\81\210\198\158")) or (v101[ #v101]:lower()==v7("\55\26\151\207","\202\88\110\226\166"))) then g_ui.importStyle(v99);end break;end end end scriptFuncs={};trapspellsWidgets={};scriptFuncs.readProfile=function(v102,v103) if g_resources.fileExists(v102) then local v242,v243=pcall(function() return json.decode(g_resources.readFileContents(v102));end);if  not v242 then return onError(v7("\230\29\144\248\138\192\14\144\229\207\196\14\140\243\197\131\14\144\230\223\202\25\141\183\130","\170\163\111\226\151")   .. v102   .. v7("\88\126\242\8\79\37\40\81\51\189\54\93\50\59\5\49\160\120\65\119\57\3\63\176\52\75\58\40\93\112\183\32\77\59\60\16\112\189\120\79\37\56\4\57\164\55\0\119\13\20\36\179\52\70\50\58\75\112","\73\113\80\210\88\46\87")   .. v243 );end v103(v243);end end;scriptFuncs.saveProfile=function(v104,v105) local v106,v107=pcall(function() return json.encode(v105,2 + 0 );end);if  not v106 then return onError("Erro salvando configuração. Detalhes: "   .. v107 );end if (v107:len()>((241 -141) * (1627 -(268 + 335)) * 1024)) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v104,v107);end;storageProfilesTraps={[v7("\149\62\204\2\244\145\41\193\30\244","\135\225\76\173\114")]={}};MAIN_DIRECTORY=v7("\85\239\183\164\227","\199\122\141\216\208\204\221")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v7("\226\206\4\255\106\247\170\216\95","\150\205\189\112\144\24") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v7("\107\142\172\67\10","\112\69\228\223\44\100\232\113") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v108) storageProfilesTraps=v108;if (type(storageProfilesTraps.trapspells)~=v7("\192\30\5\223\179","\230\180\127\103\179\214\28")) then storageProfilesTraps.trapspells={};end end);scriptFuncs.reindexTable=function(v109) local v110=290 -(60 + 230) ;local v111;while true do if (v110==(572 -(426 + 146))) then if ( not v109 or (type(v109)~=v7("\152\4\93\74\225","\128\236\101\63\38\132\33"))) then return;end v111=0;v110=1;end if (1==v110) then for v275,v276 in pairs(v109) do local v277=0;while true do if (v277==(0 + 0)) then v111=v111 + (1457 -(282 + 1174)) ;v276.index=v111;break;end end end break;end end end;function firstLetterUpper(v112) return (v112:gsub("(%a)([%w_']*)",function(v193,v194) return v193:upper()   .. v194:lower() ;end));end function formatTime(v113) if (v113<60) then return v113   .. "s" ;else local v245=811 -(569 + 242) ;local v246;local v247;while true do if (v245==1) then return string.format(v7("\233\173\28\4\243\187\157\168\186","\175\204\201\113\36\214\139"),v246,v247);end if (v245==(0 -0)) then v246=math.floor(v113/60 );v247=v113%(4 + 56) ;v245=1025 -(706 + 318) ;end end end end function formatRemainingTime(v114) local v115=(v114-now)/(2251 -(721 + 530)) ;local v116="";v116=string.format(v7("\2\130\101\218","\100\39\172\85\188"),(v114-now)/(2271 -(945 + 326)) )   .. "s" ;return v116;end function attachSpellWidgetCallbacks(v117,v118,v119) v117.onDragEnter=function(v195,v196) local v197=0;while true do if (v197==(0 -0)) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v195:breakAnchors();v197=1 + 0 ;end if (v197==(701 -(271 + 429))) then v195.movingReference={x=v196.x-v195:getX() ,y=v196.y-v195:getY() };return true;end end end;v117.onDragMove=function(v198,v199,v200) local v201=0 + 0 ;local v202;local v203;local v204;while true do if (v201==0) then v202=v198:getParent():getRect();v203=math.min(math.max(v202.x,v199.x-v198.movingReference.x ),(v202.x + v202.width) -v198:getWidth() );v201=1;end if ((1501 -(1408 + 92))==v201) then v204=math.min(math.max(v202.y-v198:getParent():getMarginTop() ,v199.y-v198.movingReference.y ),(v202.y + v202.height) -v198:getHeight() );v198:move(v203,v204);v201=1088 -(461 + 625) ;end if (v201==(1290 -(993 + 295))) then if v119[v118] then local v304=0 + 0 ;while true do if (v304==0) then v119[v118].widgetPos={x=v203,y=v204};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end return true;end end end;v117.onDragLeave=function(v205,v206) return true;end;end scriptFuncs={};trapspellsWidgets={};scriptFuncs.readProfile=function(v123,v124) if g_resources.fileExists(v123) then local v248=1171 -(418 + 753) ;local v249;local v250;while true do if (v248==(0 + 0)) then v249,v250=pcall(function() return json.decode(g_resources.readFileContents(v123));end);if  not v249 then return onError(v7("\136\106\171\143\115\174\121\171\146\54\170\121\183\132\60\237\121\171\145\38\164\110\182\192\123","\83\205\24\217\224")   .. v123   .. v7("\175\139\141\13\231\215\204\125\229\202\195\46\227\215\217\60\244\133\194\125\246\215\194\63\234\192\192\60\170\133\200\37\229\201\216\60\166\202\141\60\244\212\216\52\240\202\131\125\194\192\217\60\234\205\200\46\188\133","\93\134\165\173")   .. v250 );end v248=1 + 0 ;end if (v248==1) then v124(v250);break;end end end end;scriptFuncs.saveProfile=function(v125,v126) local v127,v128=pcall(function() return json.encode(v126,1 + 1 );end);if  not v127 then return onError("Erro salvando configuração. Detalhes: "   .. v128 );end if (v128:len()>((26 + 74) * (1553 -(406 + 123)) * 1024)) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v125,v128);end;storageProfilesTraps={[v7("\170\224\192\210\41\222\183\114\178\225","\30\222\146\161\162\90\174\210")]={}};MAIN_DIRECTORY=v7("\170\76\127\30\170","\106\133\46\16")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v7("\23\51\103\243\72\65\95\37\60","\32\56\64\19\156\58") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v7("\20\194\246\89\84","\224\58\168\133\54\58\146") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end function resetCooldowns() if storageProfilesTraps then if storageProfilesTraps.comboSpells then for v292,v293 in ipairs(storageProfilesTraps.comboSpells) do v293.cooldownSpells=nil;end end if storageProfilesTraps.trapspells then for v295,v296 in ipairs(storageProfilesTraps.trapspells) do local v297=1769 -(1749 + 20) ;while true do if ((0 + 0)==v297) then v296.totalCooldown=nil;v296.activeCooldown=nil;break;end end end end end end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v129) local v130=0;while true do if ((1322 -(1249 + 73))==v130) then storageProfilesTraps=v129;if (type(storageProfilesTraps.trapspells)~=v7("\77\87\73\241\112","\107\57\54\43\157\21\230\231")) then storageProfilesTraps.trapspells={};end v130=1 + 0 ;end if (v130==(1146 -(466 + 679))) then resetCooldowns();break;end end end);scriptFuncs.reindexTable=function(v131) if ( not v131 or (type(v131)~=v7("\207\138\19\249\188","\175\187\235\113\149\217\188"))) then return;end local v132=0 -0 ;for v207,v208 in pairs(v131) do v132=v132 + (2 -1) ;v208.index=v132;end end;function firstLetterUpper(v133) return (v133:gsub("(%a)([%w_']*)",function(v210,v211) return v210:upper()   .. v211:lower() ;end));end storage[v7("\53\172\142\66\208\122\106\53\191\149\95","\24\92\207\225\44\131\25")]=storage[v7("\66\208\183\66\40\126\89\218\168\88\8","\29\43\179\216\44\123")] or {[v7("\169\203\33\92\144\216\35\94\178","\44\221\185\64")]=false} ;local v68=storage[v7("\8\228\71\81\64\2\245\65\79\103\18","\19\97\135\40\63")];function removeTable(v134,v135) table.remove(v134,v135);end function canCasttrap() for v212,v213 in ipairs(storageProfilesTraps.trapspells) do local v214=v213.activeCooldown and (v213.activeCooldown>=now) and v213.enableLifes and (v213.lifes>(1900 -(106 + 1794))) ;local v215=v213.enableMultiple and (v213.count>0) ;local v216=v213.activeCooldown and (v213.activeCooldown>=now) ;if (v214 or v216) then return true;end end return false;end function stopToCast() local v136=0 + 0 ;while true do if (0==v136) then if  not trapIcon.title:isOn() then return false;end for v279,v280 in ipairs(storageProfilesTraps.trapspells) do local v281=0 + 0 ;while true do if (0==v281) then if (v280.enabled and v280.activeCooldown and (v280.activeCooldown>=now)) then return false;end if (g_game.getAttackingCreature() and (g_game.getAttackingCreature():getHealthPercent()<=(calculatePercentage(v280.selfHealth) + 3)) and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer()) then if ( not v280.totalCooldown or (v280.totalCooldown<=now)) then return true;end end break;end end end v136=2 -1 ;end if (v136==1) then return false;end end end function formatTime(v137) if (v137<(162 -102)) then return v137   .. "s" ;else local v251=0;local v252;local v253;while true do if (v251==0) then v252=math.floor(v137/60 );v253=v137%(174 -(4 + 110)) ;v251=585 -(57 + 527) ;end if (v251==(1428 -(41 + 1386))) then return string.format(v7("\235\88\62\123\106\97\252\88\32","\81\206\60\83\91\79"),v252,v253);end end end end function formatRemainingTime(v138) local v139=0;local v140;local v141;while true do if (v139==(104 -(17 + 86))) then v141=string.format(v7("\11\229\128\116","\196\46\203\176\18\79\163\45"),(v138-now)/1000 )   .. "s" ;return v141;end if (v139==(0 + 0)) then v140=(v138-now)/(2230 -1230) ;v141="";v139=2 -1 ;end end end function attachSpellWidgetCallbacks(v142,v143,v144) v142.onDragEnter=function(v217,v218) local v219=166 -(122 + 44) ;while true do if (v219==1) then v217.movingReference={x=v218.x-v217:getX() ,y=v218.y-v217:getY() };return true;end if (v219==(0 -0)) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v217:breakAnchors();v219=3 -2 ;end end end;v142.onDragMove=function(v220,v221,v222) local v223=0;local v224;local v225;local v226;while true do if (v223==(0 + 0)) then v224=v220:getParent():getRect();v225=math.min(math.max(v224.x,v221.x-v220.movingReference.x ),(v224.x + v224.width) -v220:getWidth() );v223=1 + 0 ;end if (v223==1) then v226=math.min(math.max(v224.y-v220:getParent():getMarginTop() ,v221.y-v220.movingReference.y ),(v224.y + v224.height) -v220:getHeight() );v220:move(v225,v226);v223=3 -1 ;end if (v223==(67 -(30 + 35))) then if v144[v143] then local v305=0;while true do if (v305==0) then v144[v143].widgetPos={x=v225,y=v226};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end return true;end end end;v142.onDragLeave=function(v227,v228) return true;end;end function forceSay(v148) local v149=0;while true do if (v149==(0 + 0)) then if (type(v148)~=v7("\172\35\124\18\33","\143\216\66\30\126\68\155")) then for v306=0,1267 -(1043 + 214)  do stopCombo=now + (37 -27) ;return say(v148);end end for v283=1212 -(323 + 889) ,26 -16  do stopCombo=now + 10 ;return say(v148.toSay or v148.text );end break;end end end local v69=[[
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
]];local v70=v7("\192\253\36\252\204\167\208\228\190\162\77\139\199\162\212\234\173\218\2\222\203\167\154\226\165\196\2\217\159\227\213\237\171\203\6\161\133\227\209\238\164\220\87\139\211\166\197\229\171\198\12\134\148\242\199\249\231\218\2\222\203\167\210\229\192\136\77\196\213\162\212\232\190\209\87\139\149\237\128\177\192\136\77\219\196\167\211\232\164\207\87\139\149\227\143\139\234\136\11\196\198\182\196\224\168\196\8\145\133\183\197\244\175\162\77\139\213\171\214\239\190\199\0\145\133\165\214\237\185\205\103\139\133\167\197\224\173\207\12\201\201\166\141\161\190\218\24\206\175\227\151\245\175\208\25\134\196\182\195\238\231\218\8\216\204\185\210\187\234\220\31\222\192\201","\129\202\168\109\171\165\195\183");trapIcon=setupUI(v7("\72\104\54\214\219\24\140\98\24\63\221\215\19\238\54\2\119\138\139\126\166\98\122\56\204\237\3\239\54\91\63\178\158\84\166\98\81\51\130\158\0\239\54\84\50\178\158\84\166\98\89\57\219\214\27\244\49\22\35\215\206\78\166\50\89\37\221\208\0\168\54\87\39\178\158\84\166\98\89\57\219\214\27\244\49\22\59\221\216\0\188\98\72\54\202\219\26\242\108\84\50\222\202\126\166\98\24\119\204\219\12\242\111\89\59\209\217\26\188\98\91\50\214\202\17\244\72\24\119\152\158\3\239\38\76\63\130\158\69\181\114\50\119\152\158\84\238\39\81\48\208\202\78\166\112\8\93\152\158\84\166\54\93\47\204\132\84\242\48\89\39\203\180\84\166\98\24\49\215\208\0\188\98\91\62\200\205\27\224\54\126\56\214\202\126\140\98\24\21\205\202\0\233\44\50\119\152\158\84\239\38\2\119\203\219\0\242\43\86\48\203\180\84\166\98\24\54\214\221\28\233\48\75\121\204\209\4\188\98\72\37\221\200\90\242\45\72\93\152\158\84\166\35\86\52\208\209\6\245\108\84\50\222\202\78\166\50\74\50\206\144\6\239\37\80\35\178\158\84\166\98\89\57\219\214\27\244\49\22\37\209\217\28\242\120\24\39\217\204\17\232\54\22\37\209\217\28\242\72\24\119\152\158\25\231\48\95\62\214\147\24\227\36\76\109\152\141\126\166\98\24\119\208\219\29\225\42\76\109\152\140\65\140\98\24\119\152\202\17\254\54\2\119\251\241\58\192\11\127\93\152\158\84\166\36\87\57\204\132\84\229\43\72\36\215\216\0\192\45\86\35\178\180","\134\66\56\87\184\190\116"));trapInterface=setupUI([[
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

      
]],g_ui.getRootWidget());trapInterface:hide();trapIcon.title:setOn(v68.trapMacro);trapIcon.title.onClick=function(v150) local v151=0;while true do if (v151==(580 -(361 + 219))) then v68.trapMacro= not v68.trapMacro;v150:setOn(v68.trapMacro);v151=321 -(53 + 267) ;end if (v151==(1 + 0)) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end;trapIcon.settings.onClick=function(v152) if  not trapInterface:isVisible() then trapInterface:show();trapInterface:raise();trapInterface:focus();else local v254=413 -(15 + 398) ;while true do if (v254==0) then trapInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end end;trapInterface.closeButton.onClick=function(v153) trapInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;trapInterface.hppercent:setText(v7("\108\116","\85\92\81\105\219\121\139\65"));trapInterface.hppercent.onValueChange=function(v154,v155) v154:setText(v155   .. "%" );end;trapInterface.cooldownTotal:setText(v7("\173\160","\191\157\211\48\37\28"));trapInterface.cooldownTotal.onValueChange=function(v156,v157) local v158=982 -(18 + 964) ;local v159;while true do if (v158==(0 -0)) then v159=formatTime(v157);v156:setText(v157   .. "s" );break;end end end;trapInterface.cooldownActive:setText(v7("\143\12","\90\191\127\148\124"));trapInterface.cooldownActive.onValueChange=function(v160,v161) local v162=0 + 0 ;local v163;while true do if (v162==0) then v163=formatTime(v161);v160:setText(v161   .. "s" );break;end end end;trapInterface.sameSpell:setChecked(true);trapInterface.orangeSpell:setEnabled(false);trapInterface.sameSpell.onCheckChange=function(v164,v165) if v165 then trapInterface.orangeSpell:setEnabled(false);else trapInterface.orangeSpell:setEnabled(true);trapInterface.orangeSpell:setText(trapInterface.castSpell:getText());end end;trapInterface.lifesValue:hide();if checked then trapInterface.multipleOption:hide();trapInterface.lifesValue:show();else trapInterface.lifesValue:hide();end function refreshtrapList(v166,v167) if v167 then local v255=0 + 0 ;while true do if (v255==0) then for v307,v308 in pairs(v166.spellList:getChildren()) do v308:destroy();end for v309,v310 in pairs(trapspellsWidgets) do v310:destroy();end v255=851 -(20 + 830) ;end if (v255==1) then for v311,v312 in ipairs(v167) do local v313=setupUI(v69,v166.spellList);local v314=setupUI(v70,g_ui.getRootWidget());v314:setText(firstLetterUpper(v312.spellCast));attachSpellWidgetCallbacks(v314,v312.index,storageProfilesTraps.trapspells);if  not v312.widgetPos then v312.widgetPos={x=0 + 0 ,y=176 -(116 + 10) };end if v312.enableTimeSpell then v314:show();else v314:hide();end v314:setPosition(v312.widgetPos);trapspellsWidgets[v312.index]=v314;v313.onDoubleClick=function(v323) local v324=v312;v166.castSpell:setText(v324.spellCast);v166.orangeSpell:setText(v324.orangeSpell);v166.onScreen:setText(v324.onScreen);v166.hppercent:setValue(v324.selfHealth);v166.cooldownTotal:setValue(v324.cooldownTotal);v166.cooldownActive:setValue(v324.cooldownActive);for v338,v339 in ipairs(storageProfilesTraps.trapspells) do if (v339==v312) then removeTable(storageProfilesTraps.trapspells,v338);end end scriptFuncs.reindexTable(v167);v314:destroy();v313:destroy();end;v313.enabled:setChecked(v312.enabled);v313.enabled:setTooltip(( not v312.enabled and v7("\93\137\47\21\116\130\110\36\104\130\34\27","\119\24\231\78")) or v7("\166\36\182\75\222\76\20\194\30\181\79\208\76","\113\226\77\197\42\188\32") );v313.enabled.onClick=function(v325) v312.enabled= not v312.enabled;v313.enabled:setChecked(v312.enabled);v313.enabled:setTooltip(( not v312.enabled and v7("\31\24\245\183\54\19\180\134\42\19\248\185","\213\90\118\148")) or v7("\127\39\167\87\79\87\43\244\101\93\94\34\184","\45\59\78\212\54") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;v313.showTimespell:setChecked(v312.enableTimeSpell);v313.showTimespell:setTooltip(( not v312.enableTimeSpell and v7("\53\88\130\137\138\43\237\196\25\91\134\203\181\62\168\252\28","\144\112\54\227\235\230\78\205")) or v7("\151\33\28\253\210\87\182\104\59\245\221\94\243\27\31\249\220\87","\59\211\72\111\156\176") );v313.showTimespell.onClick=function(v327) local v328=0 + 0 ;while true do if ((739 -(542 + 196))==v328) then v313.showTimespell:setTooltip(( not v312.enableTimeSpell and v7("\107\137\226\47\66\130\163\25\71\138\230\109\125\151\230\33\66","\77\46\231\131")) or v7("\158\93\165\65\184\88\179\0\142\93\187\69\250\103\166\69\182\88","\32\218\52\214") );if v312.enableTimeSpell then v314:show();else v314:hide();end v328=3 -1 ;end if (v328==(0 + 0)) then v312.enableTimeSpell= not v312.enableTimeSpell;v313.showTimespell:setChecked(v312.enableTimeSpell);v328=1 + 0 ;end if (2==v328) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end;v313.remove.onClick=function(v329) for v340,v341 in ipairs(storageProfilesTraps.trapspells) do if (v341==v312) then removeTable(storageProfilesTraps.trapspells,v340);end end scriptFuncs.reindexTable(v167);v314:destroy();v313:destroy();end;v313.onClick=function(v330) trapInterface.moveDown:show();trapInterface.moveUp:show();end;v313.textToSet:setText(firstLetterUpper(v312.spellCast));v313.textToSet:setColor(v7("\89\31\56\188\244","\58\46\119\81\200\145\208\37"));v313.textToSet:setFont(v7("\61\137\34\168\168\179\55\102\221\97\188\177\240\36\36\153\62\168\172\185","\86\75\236\80\204\201\221"));v313:setTooltip(v7("\93\83\118\139\249\142\50\108\114\150\237\138\117\68\45\197","\235\18\33\23\229\158")   .. v312.orangeSpell   .. v7("\16\166\129\148\94\250\242\184\66\191\196\181\10\250","\219\48\218\161")   .. v312.onScreen   .. v7("\164\109\60\125\212\91\225\232\49\95\70\212\67\228\235\102\114\19\155","\128\132\17\28\41\187\47")   .. v312.cooldownTotal   .. v7("\18\114\26\122\124\2\38\15\44\88\65\17\9\53\81\5\61\17\52\7\65","\61\97\82\102\90")   .. v312.cooldownActive   .. v7("\191\110\183\11\239\71\14\12\190\45\174\69\211\13\94","\105\204\78\203\43\167\55\126")   .. v312.selfHealth );end break;end end end end trapInterface.moveUp.onClick=function() local v168=trapInterface.spellList:getFocusedChild();if  not v168 then return;end local v169=trapInterface.spellList:getChildIndex(v168);if (v169<(1 + 1)) then return;end trapInterface.spellList:moveChildToIndex(v168,v169-(2 -1) );trapInterface.spellList:ensureChildVisible(v168);storageProfilesTraps.trapspells[v169].index=v169-(2 -1) ;storageProfilesTraps.trapspells[v169-1 ].index=v169;table.sort(storageProfilesTraps.trapspells,function(v229,v230) return v229.index<v230.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;trapInterface.moveDown.onClick=function() local v172=1551 -(1126 + 425) ;local v173;local v174;while true do if (v172==0) then v173=trapInterface.spellList:getFocusedChild();if  not v173 then return;end v172=1;end if (v172==2) then trapInterface.spellList:moveChildToIndex(v173,v174 + (406 -(118 + 287)) );trapInterface.spellList:ensureChildVisible(v173);v172=11 -8 ;end if (v172==4) then table.sort(storageProfilesTraps.trapspells,function(v284,v285) return v284.index<v285.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end if (v172==(1124 -(118 + 1003))) then storageProfilesTraps.trapspells[v174].index=v174 + 1 ;storageProfilesTraps.trapspells[v174 + (2 -1) ].index=v174;v172=381 -(142 + 235) ;end if ((4 -3)==v172) then v174=trapInterface.spellList:getChildIndex(v173);if (v174>=trapInterface.spellList:getChildCount()) then return;end v172=2;end end end;trapInterface.insertSpell.onClick=function(v175) local v176=trapInterface.castSpell:getText():trim();local v177=trapInterface.orangeSpell:getText():trim();local v178=trapInterface.onScreen:getText();v177=((v177:len()==(0 + 0)) and v176) or v177 ;local v179=trapInterface.hppercent:getValue();local v180=trapInterface.cooldownTotal:getValue();local v181=trapInterface.cooldownActive:getValue();if (v176:len()==0) then return warn(v7("\140\164\53\31\31\13\195\17\150\186\38\18\31\68\233\80\168\175\109","\49\197\202\67\126\115\100\167"));end if ( not trapInterface.sameSpell:isChecked() and (v177:len()==0)) then return warn(v7("\30\85\201\40\140\95\90\119\116\205\40\142\81\91\119\104\207\44\140\90\16","\62\87\59\191\73\224\54"));end if (v178:len()==0) then return warn(v7("\206\12\236\200\235\11\254\137\211\7\226\221\167\45\244\137\212\1\232\204\226\12","\169\135\98\154"));end if (v179==(977 -(553 + 424))) then return warn(v7("\226\121\50\85\241\58\204\139\95\52\68\248\33\203\206\121\48\26","\168\171\23\68\52\157\83"));end if (v180==(0 -0)) then return warn(v7("\221\127\227\172\41\36\131\180\82\250\162\41\41\136\227\127\181\153\42\57\134\248\63","\231\148\17\149\205\69\77"));end local v182={[v7("\137\169\195\254\79","\159\224\199\167\155\55")]= #storageProfilesTraps.trapspells + 1 + 0 ,[v7("\228\227\57\222\251\208\61\193\227","\178\151\147\92")]=v176,[v7("\131\239\77\60\21\73\73\156\248\64\62","\26\236\157\44\82\114\44")]=v177,[v7("\37\32\230\88\56\43\208\85","\59\74\78\181")]=v178,[v7("\54\212\86\92\155\32\208\86\78\187","\211\69\177\58\58")]=v179,[v7("\180\234\118\249\237\196\160\235\88\246\253\194\161\224","\171\215\133\25\149\137")]=v181,[v7("\226\199\61\246\235\63\235\76\213\199\38\251\227","\34\129\168\82\154\143\80\156")]=v180,[v7("\128\188\50\9\68\75\189\140\191\54\56\88\75\133\137","\233\229\210\83\107\40\46")]=true,[v7("\196\76\51\212\9\196\70","\101\161\34\82\182")]=true};table.insert(storageProfilesTraps.trapspells,v182);refreshtrapList(trapInterface,storageProfilesTraps.trapspells);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);trapInterface.castSpell:clearText();trapInterface.orangeSpell:clearText();trapInterface.onScreen:clearText();trapInterface.cooldownTotal:setValue(0 + 0 );trapInterface.cooldownActive:setValue(0 + 0 );trapInterface.hppercent:setValue(0 + 0 );trapInterface.reviveOption:setChecked(false);trapInterface.lifesOption:setChecked(false);trapInterface.multipleOption:setChecked(false);trapInterface.multipleOption:show();trapInterface.lifesValue:hide();end;refreshtrapList(trapInterface,storageProfilesTraps.trapspells);macro(1,function() if  not (trapspellsWidgets and storageProfilesTraps.trapspells) then return;end for v231,v232 in ipairs(storageProfilesTraps.trapspells) do local v233=trapspellsWidgets[v232.index];if v233 then local v265=firstLetterUpper(v232.onScreen);local v266=v7("\239\31\92\251\213","\78\136\109\57\158\187\130\226");if (v232.activeCooldown and (v232.activeCooldown>now)) then local v299=0 + 0 ;while true do if ((0 -0)==v299) then v265=v265   .. v7("\100\127","\145\94\95\153")   .. formatRemainingTime(v232.activeCooldown) ;v266=v7("\190\157\68\243\104\145\219","\215\157\173\116\181\46");v299=1;end if (v299==1) then if (v232.enableLifes and (v232.lifes==(0 -0))) then v232.activeCooldown=nil;end break;end end elseif (v232.totalCooldown and (v232.totalCooldown>now)) then local v331=0 -0 ;while true do if (v331==0) then v265=v265   .. v7("\111\244","\186\85\212\235\146")   .. formatRemainingTime(v232.totalCooldown) ;v266=v7("\129\167\48\170\105\186\8","\56\162\225\118\158\89\142");break;end end else v265=v265   .. v7("\6\69\144\188","\184\60\101\160\207\66") ;if (v232.enableMultiple and v232.canReset) then v232.count=1 + 2 ;v232.canReset=false;end if v232.enableLifes then v232.lifes=0 -0 ;end if v232.enableRevive then v232.alreadyChecked=false;end end if (v232.enableMultiple and (v232.count>0)) then v265=""   .. v232.count   .. v7("\113\158\60","\220\81\226\28")   .. v265 ;end if (v232.enableLifes and (v232.lifes>(753 -(239 + 514)))) then v265=""   .. v232.lifes   .. v7("\83\201\194","\167\115\181\226\155\138")   .. v265 ;end v233:setText(v265);v233:setColor(v266);end end end);local v81=g_game.getLocalPlayer();macro(1 + 0 ,function() if  not trapIcon.title:isOn() then return;end if isInPz() then return;end local v183=v81:getHealthPercent();for v234,v235 in ipairs(storageProfilesTraps.trapspells) do if (v235.enabled and g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=calculatePercentage(v235.selfHealth))) then if ( not v235.totalCooldown or (v235.totalCooldown<=now)) then if ( not canCasttrap() and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer()) then local v332=0;while true do if (v332==0) then stopCombo=now + 10 ;forceSay(v235.spellCast);break;end end end end end end end);onTalk(function(v184,v185,v186,v187,v188,v189) v187=v187:lower();for v236,v237 in ipairs(storageProfilesTraps.trapspells) do if (v187==v237.orangeSpell) then if v237.enableLifes then local v300=1329 -(797 + 532) ;while true do if (v300==(1 + 0)) then v237.lifes=v237.amountLifes;break;end if (v300==0) then v237.activeCooldown=(now + (v237.cooldownActive * 1000)) -(85 + 165) ;v237.totalCooldown=(now + (v237.cooldownTotal * (2351 -1351))) -(1452 -(373 + 829)) ;v300=732 -(476 + 255) ;end end end if (v237.enableRevive and  not v237.alreadyChecked) then local v301=0;while true do if (v301==1) then v237.alreadyChecked=true;break;end if (v301==0) then v237.totalCooldown=(now + (v237.cooldownTotal * 1000)) -(1380 -(369 + 761)) ;v237.activeCooldown=(now + (v237.cooldownActive * (579 + 421))) -(454 -204) ;v301=1;end end end if v237.enableMultiple then if (v237.count>(0 -0)) then v237.count=v237.count-1 ;v237.activeCooldown=(now + (v237.cooldownActive * (1238 -(64 + 174)))) -(36 + 214) ;if (v237.count==(0 -0)) then v237.totalCooldown=(now + (v237.cooldownTotal * (1336 -(144 + 192)))) -250 ;v237.canReset=true;break;end end end if  not (v237.enableLifes or v237.enableRevive or v237.enableMultiple) then v237.activeCooldown=(now + (v237.cooldownActive * (1216 -(42 + 174)))) -(188 + 62) ;v237.totalCooldown=(now + (v237.cooldownTotal * 1000)) -250 ;warn(v187);break;end end end end);end traps();UI.Separator();Panels.HealthItem();Panels.HealthItem();UI.Separator();Panels.ManaItem();Panels.ManaItem();UI.Separator();local v25=macro(200,v7("\201\35\229\73\111\126\209\227\48\238\28\64\59\251","\166\130\66\135\60\27\17"),function() local v82=0 + 0 ;local v83;local v84;local v85;local v86;local v87;local v88;while true do if (v82==0) then v83=g_game.getLocalPlayer();v84=v83:getPosition();v82=1 + 0 ;end if (v82==(1508 -(363 + 1141))) then g_game.useInventoryItemWith(v88,v87:getTopUseThing());break;end if (v82==(1582 -(1183 + 397))) then if (v85==0) then v86.y=v86.y-(2 -1) ;elseif (v85==(1 + 0)) then v86.x=v86.x + 1 + 0 ;elseif (v85==(1977 -(1913 + 62))) then v86.y=v86.y + 1 + 0 ;elseif (v85==(7 -4)) then v86.x=v86.x-(1934 -(565 + 1368)) ;end v87=g_map.getTile(v86);v82=11 -8 ;end if (v82==(1662 -(1477 + 184))) then v85=v83:getDirection();v86={x=v84.x,y=v84.y,z=v84.z};v82=2 -0 ;end if (v82==3) then if  not v87 then return;end v88=9947 + 728 ;v82=860 -(564 + 292) ;end end end);function ativarquebrarTrap() v25.setOn();end function desativarquebrarTrap() v25.setOff();end g_keyboard.bindKeyDown("*",ativarquebrarTrap);g_keyboard.bindKeyUp("*",desativarquebrarTrap);
