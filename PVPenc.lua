
bit32={};local v0=1583 -(226 + 1325) ;local v1=2^v0 ;bit32.bnot=function(v26) v26=v26%v1 ;return (v1-1) -v26 ;end;bit32.band=function(v27,v28) local v29=0 + 0 ;local v30;local v31;while true do if (v29==(3 + 0)) then for v260=1,v0 do local v261,v262=v27%(2 + 0) ,v28%(3 -1) ;v27,v28=math.floor(v27/(2 -0) ),math.floor(v28/2 );if ((v261 + v262)==2) then v30=v30 + v31 ;end v31=(1 + 1) * v31 ;end return v30;end if (v29==(1637 -(1373 + 263))) then if (v28==(4294968295 -(451 + 549))) then return v27%4294967296 ;end v27,v28=v27%v1 ,v28%v1 ;v29=1 + 1 ;end if ((2 -0)==v29) then v30=0 -0 ;v31=1;v29=3;end if (v29==0) then if (v28==(1639 -(746 + 638))) then return v27%256 ;end if (v28==(24664 + 40871)) then return v27%(99501 -33965) ;end v29=1;end end end;bit32.bor=function(v32,v33) local v34=341 -(218 + 123) ;local v35;local v36;while true do if (v34==(1582 -(1535 + 46))) then if (v33==(4294968505 -(1035 + 175))) then return 4294967855 -(306 + 254) ;end v32,v33=v32%v1 ,v33%v1 ;v34=2;end if (v34==0) then if (v33==(16 + 239)) then return (v32-(v32%(501 -245))) + (1722 -(899 + 568)) ;end if (v33==(43077 + 22458)) then return (v32-(v32%(158590 -93054))) + (66138 -(268 + 335)) ;end v34=291 -(60 + 230) ;end if (v34==(574 -(426 + 146))) then v35=0 + 0 ;v36=1457 -(282 + 1174) ;v34=814 -(569 + 242) ;end if ((8 -5)==v34) then for v263=1 + 0 ,v0 do local v264,v265=v32%(1026 -(706 + 318)) ,v33%(1253 -(721 + 530)) ;v32,v33=math.floor(v32/(1273 -(945 + 326)) ),math.floor(v33/(4 -2) );if ((v264 + v265)>=(1 + 0)) then v35=v35 + v36 ;end v36=(702 -(271 + 429)) * v36 ;end return v35;end end end;bit32.bxor=function(v37,v38) v37,v38=v37%v1 ,v38%v1 ;local v39=0;local v40=1 + 0 ;for v93=1501 -(1408 + 92) ,v0 do local v94=1086 -(461 + 625) ;local v95;local v96;while true do if (v94==0) then v95,v96=v37%(1290 -(993 + 295)) ,v38%(1 + 1) ;v37,v38=math.floor(v37/(1173 -(418 + 753)) ),math.floor(v38/2 );v94=1 + 0 ;end if (v94==1) then if ((v95 + v96)==1) then v39=v39 + v40 ;end v40=(1 + 1) * v40 ;break;end end end return v39;end;bit32.lshift=function(v41,v42) local v43=0 + 0 ;while true do if (v43==(0 + 0)) then if (math.abs(v42)>=v0) then return 0;end v41=v41%v1 ;v43=530 -(406 + 123) ;end if (1==v43) then if (v42<(1769 -(1749 + 20))) then return math.floor(v41 * (2^v42) );else return (v41 * ((1 + 1)^v42))%v1 ;end break;end end end;bit32.rshift=function(v44,v45) local v46=0;while true do if ((1323 -(1249 + 73))==v46) then if (v45>0) then return math.floor(v44 * ((1 + 1)^ -v45) );else return (v44 * (2^ -v45))%v1 ;end break;end if (v46==(1145 -(466 + 679))) then if (math.abs(v45)>=v0) then return 0 -0 ;end v44=v44%v1 ;v46=2 -1 ;end end end;bit32.arshift=function(v47,v48) local v49=1900 -(106 + 1794) ;while true do if (v49==1) then if (v48>(0 + 0)) then local v276=0;local v277;while true do if (v276==1) then return math.floor(v47 * ((1 + 1)^ -v48) ) + v277 ;end if (v276==(0 -0)) then v277=0 -0 ;if (v47>=(v1/(116 -(4 + 110)))) then v277=v1-(2^(v0-v48)) ;end v276=585 -(57 + 527) ;end end else return (v47 * ((1429 -(41 + 1386))^ -v48))%v1 ;end break;end if (v49==(103 -(17 + 86))) then if (math.abs(v48)>=v0) then return 0 + 0 ;end v47=v47%v1 ;v49=1;end end end;local v9=string.char;local v10=string.byte;local v11=string.sub;local v12=bit32 or bit ;local v13=v12.bxor;local v14=table.concat;local v15=table.insert;local function v16(v50,v51) local v52=0 -0 ;local v53;while true do if (v52==(0 -0)) then v53={};for v266=1, #v50 do v15(v53,v9(v13(v10(v11(v50,v266,v266 + 1 )),v10(v11(v51,(167 -(122 + 44)) + (v266% #v51) ,1 + (v266% #v51) + 1 )))%(441 -185) ));end v52=3 -2 ;end if (v52==(1 + 0)) then return v14(v53);end end end xtela10nui,ytela10nui=790,300;timemagianui="";tempoi1nui=17355 + 102645 ;tempoi2nui=0 -0 ;texto10nui=v16("\255\246\242\7\199\137\238","\126\177\163\187\69\134\219\167");local v17=setupUI(v16("\73\253\43\203\249\47\167\106\133\244\38\196\45\205\232\121\141\126\149\172\73\141\106\210\245\39\217\34\159\188\122\157\122\175","\156\67\173\74\165"),g_ui.getRootWidget());local v18=g_ui.loadUIFromString(v16("\94\155\72\20\185\42\44\116\247\74\25\176\41\84\110\247\94\30\181\50\67\94\247\9\20\189\37\77\51\165\70\3\178\34\11\55\184\69\25\174\124\6\54\187\72\21\183\76\6\116\184\89\23\191\47\82\45\237\9\70\242\126\19\94\247\9\2\185\62\82\121\191\70\4\181\60\73\58\163\72\26\241\39\83\32\184\4\4\185\53\79\46\178\19\86\168\52\83\49\221","\38\84\215\41\118\220\70"),v17);macro(1,function() if ( not storage.time.nui1 or (storage.time.nui1<now)) then local v194=0;while true do if (v194==0) then v18:setText(texto10nui);v18:setColor(v16("\87\4\39\23\240","\158\48\118\66\114"));break;end end elseif (storage.time.nu1>=now) then local v267=65 -(30 + 35) ;while true do if (v267==(0 + 0)) then v18:setColor(v16("\169\40\5\51","\155\203\68\112\86\19\197"));v18:setText(texto10nui   .. string.format(v16("\3\147\102\250","\152\38\189\86\156\32\24\133"),(storage.time.nu1-now)/(2257 -(1043 + 214)) )   .. v16("\239\23","\38\156\55\199") );break;end end else local v268=0;while true do if ((0 -0)==v268) then v18:setColor(v16("\186\120\120","\35\200\29\28\72\115\20\154"));v18:setText(texto10nui   .. string.format(v16("\92\241\129\217","\84\121\223\177\191\237\76"),(storage.time.nui1-now)/1000 )   .. v16("\168\22","\161\219\54\169\192\90\48\80") );break;end end end end);onTextMessage(function(v54,v55) if v55:find(v16("\89\67\18\36\9\87\19\36\91\2\1\101\76\81\16\36\77\67\64\43\70\84\1\40\76\76\20\32\7","\69\41\34\96")) then local v195=1212 -(323 + 889) ;while true do if (v195==0) then storage.time=storage.time or {} ;storage.time.nui1=now + tempoi1nui ;v195=2 -1 ;end if (v195==1) then storage.time.nu1=now + tempoi2nui ;break;end end end end);if ((type(storage.time)~=v16("\168\194\213\6\7","\75\220\163\183\106\98")) or  not storage.time.nu1 or ((storage.time.nui1-now)>60000) or  not storage.time.nu1 or ((storage.time.nu1-now)>(60580 -(361 + 219)))) then storage.time={[v16("\12\175\130\102","\185\98\218\235\87")]=320 -(53 + 267) ,[v16("\197\41\118","\202\171\92\71\134\190")]=0};end v18:setPosition({y=ytela10nui + 10 + 30 ,x=xtela10nui + (423 -(15 + 398)) });setDefaultTab(v16("\25\247\28","\232\73\161\76"));local v19=v16("\176\208\78\81\45\175\220\67\81","\126\219\185\34\61");local v20=setupUI([[
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

]],parent);v20:setId(v19);if  not storage[v19] then storage[v19]={[v16("\5\202","\135\108\174\62\18\30\23\147")]=4054 -(18 + 964) ,[v16("\162\224\62\199\29","\167\214\137\74\171\120\206\83")]=enabled,[v16("\142\254\51\95\244\162\143","\199\235\144\82\61\152")]=false,[v16("\20\19\173\63\14\24\190","\75\103\118\217")]=true,[v16("\207\68","\126\167\52\16\116\217")]=75 -55 };end v20.title:setOn(storage[v19].enabled);v20.title.onClick=function(v56) local v57=0 + 0 ;while true do if ((0 + 0)==v57) then storage[v19].enabled= not storage[v19].enabled;v56:setOn(storage[v19].enabled);break;end end end;local v22=function() local v58=850 -(20 + 830) ;local v59;while true do if (v58==1) then v20.help:setText(v16("\127\46\31","\152\54\72\63\88\69\62")   .. v59   .. v16("\148\236\222\0\137","\60\180\164\142")   .. storage[v19].hp   .. "%" );break;end if (v58==(0 + 0)) then v59=nil;if storage[v19].setting then v59=v16("\252\47\50\135\177\13","\156\168\78\64\224\212\121");else v59=v16("\34\224\160\195\30","\174\103\142\197");end v58=127 -(116 + 10) ;end end end;v22();v20.HP.onValueChange=function(v60,v61) local v62=0;while true do if (v62==(0 + 0)) then storage[v19].hp=v61;v22();break;end end end;v20.item:setItemId(storage[v19].id);v20.item.onItemChange=function(v63) storage[v19].id=v63:getItemId();end;v20.HP:setValue(storage[v19].hp);macro(838 -(542 + 196) ,function() local v65=0 -0 ;local v66;while true do if (v65==(1 + 0)) then if storage[v19].setting then if (g_game.isAttacking() and g_game.getAttackingCreature():isPlayer() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v19].hp)) then if ( not storage.time.nui1 or (storage.time.nui1<now)) then local v338=0;local v339;local v340;local v341;local v342;local v343;while true do if (v338==(1 + 0)) then v341=v339:getPosition();v342=math.abs(v340.x-v341.x );v338=2;end if (v338==2) then v343=math.abs(v340.y-v341.y );if (((v342==(1 + 0)) and (v343==(0 -0))) or ((v342==(0 -0)) and (v343==(1552 -(1126 + 425)))) or ((v342==1) and (v343==1))) then useWith(storage[v19].id,v339);end break;end if (v338==0) then v339=g_game.getAttackingCreature();v340=v66:getPosition();v338=406 -(118 + 287) ;end end end end else for v297,v298 in pairs(getSpectators()) do if (g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v19].hp)) then local v320=0 -0 ;local v321;local v322;local v323;local v324;while true do if (v320==(1122 -(118 + 1003))) then v323=math.abs(v322.x-v321.x );v324=math.abs(v322.y-v321.y );v320=2;end if ((5 -3)==v320) then if (((v323==(378 -(142 + 235))) and (v324==(0 -0))) or ((v323==(0 + 0)) and (v324==1)) or ((v323==1) and (v324==1))) then useWith(storage[v19].id,v298);end break;end if (v320==0) then v321=v298:getPosition();v322=v66:getPosition();v320=978 -(553 + 424) ;end end end end end break;end if ((0 -0)==v65) then if  not storage[v19].enabled then return;end v66=g_game.getLocalPlayer();v65=1 + 0 ;end end end);UI.Separator();function traps() local v67=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v67=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v68=g_resources.listDirectoryFiles(v16("\23\92\10\61\104","\114\56\62\101\73\71\141")   .. v67   .. v16("\247\255\249\203\172","\164\216\137\187") ,true,false);for v99,v100 in ipairs(v68) do local v101=0 + 0 ;local v102;while true do if (v101==(0 + 0)) then v102=v100:split(".");if ((v102[ #v102]:lower()==v16("\199\239","\107\178\134\81\210\198\158")) or (v102[ #v102]:lower()==v16("\55\26\151\207","\202\88\110\226\166"))) then g_ui.importStyle(v100);end break;end end end scriptFuncs={};trapspellsWidgets={};scriptFuncs.readProfile=function(v103,v104) if g_resources.fileExists(v103) then local v243=0 + 0 ;local v244;local v245;while true do if (v243==(0 + 0)) then v244,v245=pcall(function() return json.decode(g_resources.readFileContents(v103));end);if  not v244 then return onError(v16("\230\29\144\248\138\192\14\144\229\207\196\14\140\243\197\131\14\144\230\223\202\25\141\183\130","\170\163\111\226\151")   .. v103   .. v16("\88\126\242\8\79\37\40\81\51\189\54\93\50\59\5\49\160\120\65\119\57\3\63\176\52\75\58\40\93\112\183\32\77\59\60\16\112\189\120\79\37\56\4\57\164\55\0\119\13\20\36\179\52\70\50\58\75\112","\73\113\80\210\88\46\87")   .. v245 );end v243=2 -1 ;end if (v243==(2 -1)) then v104(v245);break;end end end end;scriptFuncs.saveProfile=function(v105,v106) local v107=0 -0 ;local v108;local v109;while true do if (v107==0) then v108,v109=pcall(function() return json.encode(v106,1 + 1 );end);if  not v108 then return onError("Erro salvando configuração. Detalhes: "   .. v109 );end v107=4 -3 ;end if (v107==(754 -(239 + 514))) then if (v109:len()>(100 * (360 + 664) * (2353 -(797 + 532)))) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v105,v109);break;end end end;storageProfilesTraps={[v16("\149\62\204\2\244\145\41\193\30\244","\135\225\76\173\114")]={}};MAIN_DIRECTORY=v16("\85\239\183\164\227","\199\122\141\216\208\204\221")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v16("\226\206\4\255\106\247\170\216\95","\150\205\189\112\144\24") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v16("\107\142\172\67\10","\112\69\228\223\44\100\232\113") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v110) local v111=0 + 0 ;while true do if (v111==0) then storageProfilesTraps=v110;if (type(storageProfilesTraps.trapspells)~=v16("\192\30\5\223\179","\230\180\127\103\179\214\28")) then storageProfilesTraps.trapspells={};end break;end end end);scriptFuncs.reindexTable=function(v112) local v113=0 + 0 ;local v114;while true do if (v113==(0 -0)) then if ( not v112 or (type(v112)~=v16("\152\4\93\74\225","\128\236\101\63\38\132\33"))) then return;end v114=0;v113=1;end if (v113==(1203 -(373 + 829))) then for v281,v282 in pairs(v112) do local v283=731 -(476 + 255) ;while true do if (v283==0) then v114=v114 + (1131 -(369 + 761)) ;v282.index=v114;break;end end end break;end end end;function firstLetterUpper(v115) return (v115:gsub("(%a)([%w_']*)",function(v196,v197) return v196:upper()   .. v197:lower() ;end));end function formatTime(v116) if (v116<(35 + 25)) then return v116   .. "s" ;else local v246=0;local v247;local v248;while true do if (v246==(0 -0)) then v247=math.floor(v116/(113 -53) );v248=v116%60 ;v246=239 -(64 + 174) ;end if (v246==1) then return string.format(v16("\233\173\28\4\243\187\157\168\186","\175\204\201\113\36\214\139"),v247,v248);end end end end function formatRemainingTime(v117) local v118=0 + 0 ;local v119;local v120;while true do if (v118==(0 -0)) then v119=(v117-now)/1000 ;v120="";v118=1;end if (v118==(337 -(144 + 192))) then v120=string.format(v16("\2\130\101\218","\100\39\172\85\188"),(v117-now)/(1216 -(42 + 174)) )   .. "s" ;return v120;end end end function attachSpellWidgetCallbacks(v121,v122,v123) v121.onDragEnter=function(v198,v199) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v198:breakAnchors();v198.movingReference={x=v199.x-v198:getX() ,y=v199.y-v198:getY() };return true;end;v121.onDragMove=function(v201,v202,v203) local v204=0 + 0 ;local v205;local v206;local v207;while true do if (v204==(1 + 0)) then v207=math.min(math.max(v205.y-v201:getParent():getMarginTop() ,v202.y-v201.movingReference.y ),(v205.y + v205.height) -v201:getHeight() );v201:move(v206,v207);v204=1 + 1 ;end if (v204==2) then if v123[v122] then local v302=1504 -(363 + 1141) ;while true do if (v302==0) then v123[v122].widgetPos={x=v206,y=v207};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end return true;end if (v204==(1580 -(1183 + 397))) then v205=v201:getParent():getRect();v206=math.min(math.max(v205.x,v202.x-v201.movingReference.x ),(v205.x + v205.width) -v201:getWidth() );v204=1;end end end;v121.onDragLeave=function(v208,v209) return true;end;end function isAnySelectedKeyPressed() local v127=0 -0 ;while true do if (v127==(0 + 0)) then for v284,v285 in ipairs(storageProfilesTraps.keySpells) do if (v285.enabled and (modules.corelib.g_keyboard.isKeyPressed(v285.keyPress))) then return true;end end return false;end end end scriptFuncs={};trapspellsWidgets={};scriptFuncs.readProfile=function(v128,v129) if g_resources.fileExists(v128) then local v249=0 + 0 ;local v250;local v251;while true do if (v249==(1975 -(1913 + 62))) then v250,v251=pcall(function() return json.decode(g_resources.readFileContents(v128));end);if  not v250 then return onError(v16("\136\106\171\143\115\174\121\171\146\54\170\121\183\132\60\237\121\171\145\38\164\110\182\192\123","\83\205\24\217\224")   .. v128   .. v16("\175\139\141\13\231\215\204\125\229\202\195\46\227\215\217\60\244\133\194\125\246\215\194\63\234\192\192\60\170\133\200\37\229\201\216\60\166\202\141\60\244\212\216\52\240\202\131\125\194\192\217\60\234\205\200\46\188\133","\93\134\165\173")   .. v251 );end v249=1;end if (v249==1) then v129(v251);break;end end end end;scriptFuncs.saveProfile=function(v130,v131) local v132,v133=pcall(function() return json.encode(v131,2);end);if  not v132 then return onError("Erro salvando configuração. Detalhes: "   .. v133 );end if (v133:len()>((63 + 37) * 1024 * (2710 -1686))) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v130,v133);end;storageProfilesTraps={[v16("\170\224\192\210\41\222\183\114\178\225","\30\222\146\161\162\90\174\210")]={}};MAIN_DIRECTORY=v16("\170\76\127\30\170","\106\133\46\16")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v16("\23\51\103\243\72\65\95\37\60","\32\56\64\19\156\58") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v16("\20\194\246\89\84","\224\58\168\133\54\58\146") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end function resetCooldowns() if storageProfilesTraps then local v252=0;while true do if (v252==(1933 -(565 + 1368))) then if storageProfilesTraps.comboSpells then for v344,v345 in ipairs(storageProfilesTraps.comboSpells) do v345.cooldownSpells=nil;end end if storageProfilesTraps.trapspells then for v347,v348 in ipairs(storageProfilesTraps.trapspells) do v348.totalCooldown=nil;v348.activeCooldown=nil;end end break;end end end end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v134) local v135=0;while true do if (v135==1) then resetCooldowns();break;end if (v135==(0 -0)) then storageProfilesTraps=v134;if (type(storageProfilesTraps.trapspells)~=v16("\77\87\73\241\112","\107\57\54\43\157\21\230\231")) then storageProfilesTraps.trapspells={};end v135=1662 -(1477 + 184) ;end end end);scriptFuncs.reindexTable=function(v136) local v137=0 -0 ;local v138;while true do if ((0 + 0)==v137) then if ( not v136 or (type(v136)~=v16("\207\138\19\249\188","\175\187\235\113\149\217\188"))) then return;end v138=856 -(564 + 292) ;v137=1 -0 ;end if ((2 -1)==v137) then for v286,v287 in pairs(v136) do local v288=304 -(244 + 60) ;while true do if (v288==0) then v138=v138 + 1 + 0 ;v287.index=v138;break;end end end break;end end end;function firstLetterUpper(v139) return (v139:gsub("(%a)([%w_']*)",function(v210,v211) return v210:upper()   .. v211:lower() ;end));end storage[v16("\53\172\142\66\208\122\106\53\191\149\95","\24\92\207\225\44\131\25")]=storage[v16("\66\208\183\66\40\126\89\218\168\88\8","\29\43\179\216\44\123")] or {[v16("\169\203\33\92\144\216\35\94\178","\44\221\185\64")]=false} ;local v73=storage[v16("\8\228\71\81\64\2\245\65\79\103\18","\19\97\135\40\63")];function removeTable(v140,v141) table.remove(v140,v141);end function canCasttrap() for v212,v213 in ipairs(storageProfilesTraps.trapspells) do local v214=476 -(41 + 435) ;local v215;local v216;local v217;while true do if ((1001 -(938 + 63))==v214) then v215=v213.activeCooldown and (v213.activeCooldown>=now) and v213.enableLifes and (v213.lifes>(0 + 0)) ;v216=v213.enableMultiple and (v213.count>(1125 -(936 + 189))) ;v214=1;end if (v214==(1 + 0)) then v217=v213.activeCooldown and (v213.activeCooldown>=now) ;if (v215 or v217) then return true;end break;end end end return false;end function stopToCast() if  not trapIcon.title:isOn() then return false;end for v218,v219 in ipairs(storageProfilesTraps.trapspells) do local v220=1613 -(1565 + 48) ;while true do if (v220==0) then if (v219.enabled and v219.activeCooldown and (v219.activeCooldown>=now)) then return false;end if (g_game.getAttackingCreature() and (g_game.getAttackingCreature():getHealthPercent()<=(calculatePercentage(v219.selfHealth) + 2 + 1)) and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer()) then if ( not v219.totalCooldown or (v219.totalCooldown<=now)) then return true;end end break;end end end return false;end function isAnySelectedKeyPressed() for v221,v222 in ipairs(storageProfilesTraps.keySpells) do if (v222.enabled and (modules.corelib.g_keyboard.isKeyPressed(v222.keyPress))) then return true;end end return false;end function formatTime(v142) if (v142<60) then return v142   .. "s" ;else local v253=0;local v254;local v255;while true do if ((1139 -(782 + 356))==v253) then return string.format(v16("\235\88\62\123\106\97\252\88\32","\81\206\60\83\91\79"),v254,v255);end if (v253==(267 -(176 + 91))) then v254=math.floor(v142/(156 -96) );v255=v142%(88 -28) ;v253=1093 -(975 + 117) ;end end end end function formatRemainingTime(v143) local v144=(v143-now)/1000 ;local v145="";v145=string.format(v16("\11\229\128\116","\196\46\203\176\18\79\163\45"),(v143-now)/(2875 -(157 + 1718)) )   .. "s" ;return v145;end function attachSpellWidgetCallbacks(v146,v147,v148) v146.onDragEnter=function(v223,v224) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v223:breakAnchors();v223.movingReference={x=v224.x-v223:getX() ,y=v224.y-v223:getY() };return true;end;v146.onDragMove=function(v226,v227,v228) local v229=0 + 0 ;local v230;local v231;local v232;while true do if ((3 -2)==v229) then v232=math.min(math.max(v230.y-v226:getParent():getMarginTop() ,v227.y-v226.movingReference.y ),(v230.y + v230.height) -v226:getHeight() );v226:move(v231,v232);v229=6 -4 ;end if (v229==(1018 -(697 + 321))) then v230=v226:getParent():getRect();v231=math.min(math.max(v230.x,v227.x-v226.movingReference.x ),(v230.x + v230.width) -v226:getWidth() );v229=2 -1 ;end if (v229==2) then if v148[v147] then local v303=0;while true do if (v303==0) then v148[v147].widgetPos={x=v231,y=v232};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end return true;end end end;v146.onDragLeave=function(v233,v234) return true;end;end function forceSay(v152) local v153=0 -0 ;while true do if ((0 -0)==v153) then if (type(v152)~=v16("\172\35\124\18\33","\143\216\66\30\126\68\155")) then for v304=0 + 0 ,10 do local v305=0 -0 ;while true do if (v305==0) then stopCombo=now + (670 -420) ;return say(v152);end end end end for v289=1227 -(322 + 905) ,621 -(602 + 9)  do local v290=1189 -(449 + 740) ;while true do if ((872 -(826 + 46))==v290) then stopCombo=now + (1197 -(245 + 702)) ;return say(v152.toSay or v152.text );end end end break;end end end local v74=[[
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
]];local v75=v16("\192\253\36\252\204\167\208\228\190\162\77\139\199\162\212\234\173\218\2\222\203\167\154\226\165\196\2\217\159\227\213\237\171\203\6\161\133\227\209\238\164\220\87\139\211\166\197\229\171\198\12\134\148\242\199\249\231\218\2\222\203\167\210\229\192\136\77\196\213\162\212\232\190\209\87\139\149\237\128\177\192\136\77\219\196\167\211\232\164\207\87\139\149\227\143\139\234\136\11\196\198\182\196\224\168\196\8\145\133\183\197\244\175\162\77\139\213\171\214\239\190\199\0\145\133\165\214\237\185\205\103\139\133\167\197\224\173\207\12\201\201\166\141\161\190\218\24\206\175\227\151\245\175\208\25\134\196\182\195\238\231\218\8\216\204\185\210\187\234\220\31\222\192\201","\129\202\168\109\171\165\195\183");trapIcon=setupUI(v16("\72\104\54\214\219\24\140\98\24\63\221\215\19\238\54\2\119\138\139\126\166\98\122\56\204\237\3\239\54\91\63\178\158\84\166\98\81\51\130\158\0\239\54\84\50\178\158\84\166\98\89\57\219\214\27\244\49\22\35\215\206\78\166\50\89\37\221\208\0\168\54\87\39\178\158\84\166\98\89\57\219\214\27\244\49\22\59\221\216\0\188\98\72\54\202\219\26\242\108\84\50\222\202\126\166\98\24\119\204\219\12\242\111\89\59\209\217\26\188\98\91\50\214\202\17\244\72\24\119\152\158\3\239\38\76\63\130\158\69\181\114\50\119\152\158\84\238\39\81\48\208\202\78\166\112\8\93\152\158\84\166\54\93\47\204\132\84\242\48\89\39\203\180\84\166\98\24\49\215\208\0\188\98\91\62\200\205\27\224\54\126\56\214\202\126\140\98\24\21\205\202\0\233\44\50\119\152\158\84\239\38\2\119\203\219\0\242\43\86\48\203\180\84\166\98\24\54\214\221\28\233\48\75\121\204\209\4\188\98\72\37\221\200\90\242\45\72\93\152\158\84\166\35\86\52\208\209\6\245\108\84\50\222\202\78\166\50\74\50\206\144\6\239\37\80\35\178\158\84\166\98\89\57\219\214\27\244\49\22\37\209\217\28\242\120\24\39\217\204\17\232\54\22\37\209\217\28\242\72\24\119\152\158\25\231\48\95\62\214\147\24\227\36\76\109\152\141\126\166\98\24\119\208\219\29\225\42\76\109\152\140\65\140\98\24\119\152\202\17\254\54\2\119\251\241\58\192\11\127\93\152\158\84\166\36\87\57\204\132\84\229\43\72\36\215\216\0\192\45\86\35\178\180","\134\66\56\87\184\190\116"));trapInterface=setupUI([[
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

      
]],g_ui.getRootWidget());trapInterface:hide();trapIcon.title:setOn(v73.trapMacro);trapIcon.title.onClick=function(v154) local v155=0;while true do if (v155==(3 -2)) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end if (v155==(0 + 0)) then v73.trapMacro= not v73.trapMacro;v154:setOn(v73.trapMacro);v155=1;end end end;trapIcon.settings.onClick=function(v156) if  not trapInterface:isVisible() then local v256=1898 -(260 + 1638) ;while true do if (v256==0) then trapInterface:show();trapInterface:raise();v256=441 -(382 + 58) ;end if (v256==(3 -2)) then trapInterface:focus();break;end end else local v257=0 + 0 ;while true do if (v257==0) then trapInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end end;trapInterface.closeButton.onClick=function(v157) trapInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;trapInterface.hppercent:setText(v16("\108\116","\85\92\81\105\219\121\139\65"));trapInterface.hppercent.onValueChange=function(v158,v159) v158:setText(v159   .. "%" );end;trapInterface.cooldownTotal:setText(v16("\173\160","\191\157\211\48\37\28"));trapInterface.cooldownTotal.onValueChange=function(v160,v161) local v162=formatTime(v161);v160:setText(v161   .. "s" );end;trapInterface.cooldownActive:setText(v16("\143\12","\90\191\127\148\124"));trapInterface.cooldownActive.onValueChange=function(v163,v164) local v165=formatTime(v164);v163:setText(v164   .. "s" );end;trapInterface.sameSpell:setChecked(true);trapInterface.orangeSpell:setEnabled(false);trapInterface.sameSpell.onCheckChange=function(v166,v167) if v167 then trapInterface.orangeSpell:setEnabled(false);else local v258=0;while true do if (v258==0) then trapInterface.orangeSpell:setEnabled(true);trapInterface.orangeSpell:setText(trapInterface.castSpell:getText());break;end end end end;trapInterface.lifesValue:hide();if checked then trapInterface.multipleOption:hide();trapInterface.lifesValue:show();else trapInterface.lifesValue:hide();end function refreshtrapList(v168,v169) if v169 then local v259=0 -0 ;while true do if (v259==(2 -1)) then for v306,v307 in ipairs(v169) do local v308=setupUI(v74,v168.spellList);local v309=setupUI(v75,g_ui.getRootWidget());v309:setText(firstLetterUpper(v307.spellCast));attachSpellWidgetCallbacks(v309,v307.index,storageProfilesTraps.trapspells);if  not v307.widgetPos then v307.widgetPos={x=1205 -(902 + 303) ,y=109 -59 };end if v307.enableTimeSpell then v309:show();else v309:hide();end v309:setPosition(v307.widgetPos);trapspellsWidgets[v307.index]=v309;v308.onDoubleClick=function(v327) local v328=v307;v168.castSpell:setText(v328.spellCast);v168.orangeSpell:setText(v328.orangeSpell);v168.onScreen:setText(v328.onScreen);v168.hppercent:setValue(v328.selfHealth);v168.cooldownTotal:setValue(v328.cooldownTotal);v168.cooldownActive:setValue(v328.cooldownActive);for v352,v353 in ipairs(storageProfilesTraps.trapspells) do if (v353==v307) then removeTable(storageProfilesTraps.trapspells,v352);end end scriptFuncs.reindexTable(v169);v309:destroy();v308:destroy();end;v308.enabled:setChecked(v307.enabled);v308.enabled:setTooltip(( not v307.enabled and v16("\93\137\47\21\116\130\110\36\104\130\34\27","\119\24\231\78")) or v16("\166\36\182\75\222\76\20\194\30\181\79\208\76","\113\226\77\197\42\188\32") );v308.enabled.onClick=function(v329) local v330=0 -0 ;while true do if (v330==1) then v308.enabled:setTooltip(( not v307.enabled and v16("\31\24\245\183\54\19\180\134\42\19\248\185","\213\90\118\148")) or v16("\127\39\167\87\79\87\43\244\101\93\94\34\184","\45\59\78\212\54") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end if (v330==0) then v307.enabled= not v307.enabled;v308.enabled:setChecked(v307.enabled);v330=1 + 0 ;end end end;v308.showTimespell:setChecked(v307.enableTimeSpell);v308.showTimespell:setTooltip(( not v307.enableTimeSpell and v16("\53\88\130\137\138\43\237\196\25\91\134\203\181\62\168\252\28","\144\112\54\227\235\230\78\205")) or v16("\151\33\28\253\210\87\182\104\59\245\221\94\243\27\31\249\220\87","\59\211\72\111\156\176") );v308.showTimespell.onClick=function(v331) v307.enableTimeSpell= not v307.enableTimeSpell;v308.showTimespell:setChecked(v307.enableTimeSpell);v308.showTimespell:setTooltip(( not v307.enableTimeSpell and v16("\107\137\226\47\66\130\163\25\71\138\230\109\125\151\230\33\66","\77\46\231\131")) or v16("\158\93\165\65\184\88\179\0\142\93\187\69\250\103\166\69\182\88","\32\218\52\214") );if v307.enableTimeSpell then v309:show();else v309:hide();end scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;v308.remove.onClick=function(v333) local v334=0;while true do if (v334==(1690 -(1121 + 569))) then for v369,v370 in ipairs(storageProfilesTraps.trapspells) do if (v370==v307) then removeTable(storageProfilesTraps.trapspells,v369);end end scriptFuncs.reindexTable(v169);v334=215 -(22 + 192) ;end if (v334==1) then v309:destroy();v308:destroy();break;end end end;v308.onClick=function(v335) local v336=0;while true do if (v336==(683 -(483 + 200))) then trapInterface.moveDown:show();trapInterface.moveUp:show();break;end end end;v308.textToSet:setText(firstLetterUpper(v307.spellCast));v308.textToSet:setColor(v16("\89\31\56\188\244","\58\46\119\81\200\145\208\37"));v308.textToSet:setFont(v16("\61\137\34\168\168\179\55\102\221\97\188\177\240\36\36\153\62\168\172\185","\86\75\236\80\204\201\221"));v308:setTooltip(v16("\93\83\118\139\249\142\50\108\114\150\237\138\117\68\45\197","\235\18\33\23\229\158")   .. v307.orangeSpell   .. v16("\16\166\129\148\94\250\242\184\66\191\196\181\10\250","\219\48\218\161")   .. v307.onScreen   .. v16("\164\109\60\125\212\91\225\232\49\95\70\212\67\228\235\102\114\19\155","\128\132\17\28\41\187\47")   .. v307.cooldownTotal   .. v16("\18\114\26\122\124\2\38\15\44\88\65\17\9\53\81\5\61\17\52\7\65","\61\97\82\102\90")   .. v307.cooldownActive   .. v16("\191\110\183\11\239\71\14\12\190\45\174\69\211\13\94","\105\204\78\203\43\167\55\126")   .. v307.selfHealth );end break;end if (v259==(1463 -(1404 + 59))) then for v316,v317 in pairs(v168.spellList:getChildren()) do v317:destroy();end for v318,v319 in pairs(trapspellsWidgets) do v319:destroy();end v259=2 -1 ;end end end end trapInterface.moveUp.onClick=function() local v170=0 -0 ;local v171;local v172;while true do if (v170==3) then storageProfilesTraps.trapspells[v172].index=v172-(766 -(468 + 297)) ;storageProfilesTraps.trapspells[v172-(563 -(334 + 228)) ].index=v172;v170=4;end if ((0 -0)==v170) then v171=trapInterface.spellList:getFocusedChild();if  not v171 then return;end v170=2 -1 ;end if (v170==(6 -2)) then table.sort(storageProfilesTraps.trapspells,function(v291,v292) return v291.index<v292.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end if ((1 + 1)==v170) then trapInterface.spellList:moveChildToIndex(v171,v172-(237 -(141 + 95)) );trapInterface.spellList:ensureChildVisible(v171);v170=3 + 0 ;end if (v170==1) then v172=trapInterface.spellList:getChildIndex(v171);if (v172<(4 -2)) then return;end v170=4 -2 ;end end end;trapInterface.moveDown.onClick=function() local v173=trapInterface.spellList:getFocusedChild();if  not v173 then return;end local v174=trapInterface.spellList:getChildIndex(v173);if (v174>=trapInterface.spellList:getChildCount()) then return;end trapInterface.spellList:moveChildToIndex(v173,v174 + 1 + 0 );trapInterface.spellList:ensureChildVisible(v173);storageProfilesTraps.trapspells[v174].index=v174 + (2 -1) ;storageProfilesTraps.trapspells[v174 + 1 ].index=v174;table.sort(storageProfilesTraps.trapspells,function(v235,v236) return v235.index<v236.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;trapInterface.insertSpell.onClick=function(v177) local v178=trapInterface.castSpell:getText():trim();local v179=trapInterface.orangeSpell:getText():trim();local v180=trapInterface.onScreen:getText();v179=((v179:len()==(0 + 0)) and v178) or v179 ;local v181=trapInterface.hppercent:getValue();local v182=trapInterface.cooldownTotal:getValue();local v183=trapInterface.cooldownActive:getValue();if (v178:len()==0) then return warn(v16("\140\164\53\31\31\13\195\17\150\186\38\18\31\68\233\80\168\175\109","\49\197\202\67\126\115\100\167"));end if ( not trapInterface.sameSpell:isChecked() and (v179:len()==(0 + 0))) then return warn(v16("\30\85\201\40\140\95\90\119\116\205\40\142\81\91\119\104\207\44\140\90\16","\62\87\59\191\73\224\54"));end if (v180:len()==(0 -0)) then return warn(v16("\206\12\236\200\235\11\254\137\211\7\226\221\167\45\244\137\212\1\232\204\226\12","\169\135\98\154"));end if (v181==0) then return warn(v16("\226\121\50\85\241\58\204\139\95\52\68\248\33\203\206\121\48\26","\168\171\23\68\52\157\83"));end if (v182==0) then return warn(v16("\221\127\227\172\41\36\131\180\82\250\162\41\41\136\227\127\181\153\42\57\134\248\63","\231\148\17\149\205\69\77"));end local v184={[v16("\137\169\195\254\79","\159\224\199\167\155\55")]= #storageProfilesTraps.trapspells + 1 + 0 ,[v16("\228\227\57\222\251\208\61\193\227","\178\151\147\92")]=v178,[v16("\131\239\77\60\21\73\73\156\248\64\62","\26\236\157\44\82\114\44")]=v179,[v16("\37\32\230\88\56\43\208\85","\59\74\78\181")]=v180,[v16("\54\212\86\92\155\32\208\86\78\187","\211\69\177\58\58")]=v181,[v16("\180\234\118\249\237\196\160\235\88\246\253\194\161\224","\171\215\133\25\149\137")]=v183,[v16("\226\199\61\246\235\63\235\76\213\199\38\251\227","\34\129\168\82\154\143\80\156")]=v182,[v16("\128\188\50\9\68\75\189\140\191\54\56\88\75\133\137","\233\229\210\83\107\40\46")]=true,[v16("\196\76\51\212\9\196\70","\101\161\34\82\182")]=true};table.insert(storageProfilesTraps.trapspells,v184);refreshtrapList(trapInterface,storageProfilesTraps.trapspells);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);trapInterface.castSpell:clearText();trapInterface.orangeSpell:clearText();trapInterface.onScreen:clearText();trapInterface.cooldownTotal:setValue(163 -(92 + 71) );trapInterface.cooldownActive:setValue(0 + 0 );trapInterface.hppercent:setValue(0 -0 );trapInterface.reviveOption:setChecked(false);trapInterface.lifesOption:setChecked(false);trapInterface.multipleOption:setChecked(false);trapInterface.multipleOption:show();trapInterface.lifesValue:hide();end;refreshtrapList(trapInterface,storageProfilesTraps.trapspells);macro(1,function() if  not (trapspellsWidgets and storageProfilesTraps.trapspells) then return;end for v237,v238 in ipairs(storageProfilesTraps.trapspells) do local v239=trapspellsWidgets[v238.index];if v239 then local v272=0;local v273;local v274;while true do if (v272==(765 -(574 + 191))) then v273=firstLetterUpper(v238.onScreen);v274=v16("\239\31\92\251\213","\78\136\109\57\158\187\130\226");v272=1 + 0 ;end if (v272==(4 -2)) then if (v238.enableLifes and (v238.lifes>0)) then v273=""   .. v238.lifes   .. v16("\83\201\194","\167\115\181\226\155\138")   .. v273 ;end v239:setText(v273);v272=2 + 1 ;end if (v272==(852 -(254 + 595))) then v239:setColor(v274);break;end if (v272==(127 -(55 + 71))) then if (v238.activeCooldown and (v238.activeCooldown>now)) then local v354=0 -0 ;while true do if (v354==(1790 -(573 + 1217))) then v273=v273   .. v16("\100\127","\145\94\95\153")   .. formatRemainingTime(v238.activeCooldown) ;v274=v16("\190\157\68\243\104\145\219","\215\157\173\116\181\46");v354=2 -1 ;end if (v354==(1 + 0)) then if (v238.enableLifes and (v238.lifes==(0 -0))) then v238.activeCooldown=nil;end break;end end elseif (v238.totalCooldown and (v238.totalCooldown>now)) then local v365=939 -(714 + 225) ;while true do if (v365==(0 -0)) then v273=v273   .. v16("\111\244","\186\85\212\235\146")   .. formatRemainingTime(v238.totalCooldown) ;v274=v16("\129\167\48\170\105\186\8","\56\162\225\118\158\89\142");break;end end else local v366=0 -0 ;while true do if ((0 + 0)==v366) then v273=v273   .. v16("\6\69\144\188","\184\60\101\160\207\66") ;if (v238.enableMultiple and v238.canReset) then local v377=0;while true do if (v377==(0 -0)) then v238.count=809 -(118 + 688) ;v238.canReset=false;break;end end end v366=49 -(25 + 23) ;end if (v366==(1 + 0)) then if v238.enableLifes then v238.lifes=1886 -(927 + 959) ;end if v238.enableRevive then v238.alreadyChecked=false;end break;end end end if (v238.enableMultiple and (v238.count>(0 -0))) then v273=""   .. v238.count   .. v16("\113\158\60","\220\81\226\28")   .. v273 ;end v272=734 -(16 + 716) ;end end end end end);local v86=g_game.getLocalPlayer();macro(1 -0 ,function() local v185=97 -(11 + 86) ;local v186;while true do if (0==v185) then if  not trapIcon.title:isOn() then return;end if isInPz() then return;end v185=1;end if (v185==(2 -1)) then v186=v86:getHealthPercent();for v293,v294 in ipairs(storageProfilesTraps.trapspells) do if (v294.enabled and g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=calculatePercentage(v294.selfHealth))) then if ( not v294.totalCooldown or (v294.totalCooldown<=now)) then if ( not canCasttrap() and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer()) then stopCombo=now + (335 -(175 + 110)) ;forceSay(v294.spellCast);end end end end break;end end end);onTalk(function(v187,v188,v189,v190,v191,v192) local v193=0 -0 ;while true do if (v193==(0 -0)) then v190=v190:lower();for v295,v296 in ipairs(storageProfilesTraps.trapspells) do if (v190==v296.orangeSpell) then if v296.enableLifes then v296.activeCooldown=(now + (v296.cooldownActive * (2796 -(503 + 1293)))) -250 ;v296.totalCooldown=(now + (v296.cooldownTotal * (2792 -1792))) -(181 + 69) ;v296.lifes=v296.amountLifes;end if (v296.enableRevive and  not v296.alreadyChecked) then local v359=1061 -(810 + 251) ;while true do if (v359==(0 + 0)) then v296.totalCooldown=(now + (v296.cooldownTotal * (307 + 693))) -(226 + 24) ;v296.activeCooldown=(now + (v296.cooldownActive * (1533 -(43 + 490)))) -(983 -(711 + 22)) ;v359=3 -2 ;end if (v359==1) then v296.alreadyChecked=true;break;end end end if v296.enableMultiple then if (v296.count>(859 -(240 + 619))) then v296.count=v296.count-1 ;v296.activeCooldown=(now + (v296.cooldownActive * (242 + 758))) -(397 -147) ;if (v296.count==(0 + 0)) then v296.totalCooldown=(now + (v296.cooldownTotal * (2744 -(1344 + 400)))) -(655 -(255 + 150)) ;v296.canReset=true;break;end end end if  not (v296.enableLifes or v296.enableRevive or v296.enableMultiple) then v296.activeCooldown=(now + (v296.cooldownActive * (788 + 212))) -250 ;v296.totalCooldown=(now + (v296.cooldownTotal * 1000)) -(134 + 116) ;warn(v190);break;end end end break;end end end);end traps();UI.Separator();Panels.HealthItem();Panels.HealthItem();UI.Separator();Panels.ManaItem();Panels.ManaItem();UI.Separator();local v25=macro(854 -654 ,v16("\201\35\229\73\111\126\209\227\48\238\28\64\59\251","\166\130\66\135\60\27\17"),function() local v87=g_game.getLocalPlayer();local v88=v87:getPosition();local v89=v87:getDirection();local v90={x=v88.x,y=v88.y,z=v88.z};if (v89==(0 -0)) then v90.y=v90.y-(1740 -(404 + 1335)) ;elseif (v89==1) then v90.x=v90.x + (407 -(183 + 223)) ;elseif (v89==(2 -0)) then v90.y=v90.y + 1 ;elseif (v89==(2 + 1)) then v90.x=v90.x-1 ;end local v91=g_map.getTile(v90);if  not v91 then return;end local v92=10675;g_game.useInventoryItemWith(v92,v91:getTopUseThing());end);function ativarquebrarTrap() v25.setOn();end function desativarquebrarTrap() v25.setOff();end g_keyboard.bindKeyDown("*",ativarquebrarTrap);g_keyboard.bindKeyUp("*",desativarquebrarTrap);
