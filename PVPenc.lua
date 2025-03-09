

bit32={};local v0=32;local v1=2^v0 ;bit32.bnot=function(v26) local v27=0 -0 ;while true do if (v27==0) then v26=v26%v1 ;return (v1-(1 + 0)) -v26 ;end end end;bit32.band=function(v28,v29) local v30=1636 -(1373 + 263) ;local v31;local v32;while true do if (v30==3) then for v269=1001 -(451 + 549) ,v0 do local v270=0 + 0 ;local v271;local v272;while true do if (v270==1) then if ((v271 + v272)==(2 -0)) then v31=v31 + v32 ;end v32=2 * v32 ;break;end if (v270==(0 -0)) then v271,v272=v28%2 ,v29%(1386 -(746 + 638)) ;v28,v29=math.floor(v28/(1 + 1) ),math.floor(v29/2 );v270=1 -0 ;end end end return v31;end if (v30==(342 -(218 + 123))) then if (v29==(4294968876 -(1535 + 46))) then return v28%4294967296 ;end v28,v29=v28%v1 ,v29%v1 ;v30=2 + 0 ;end if ((1 + 1)==v30) then v31=560 -(306 + 254) ;v32=1;v30=1 + 2 ;end if (v30==(0 -0)) then if (v29==255) then return v28%(1723 -(899 + 568)) ;end if (v29==(43077 + 22458)) then return v28%(158590 -93054) ;end v30=604 -(268 + 335) ;end end end;bit32.bor=function(v33,v34) if (v34==(545 -(60 + 230))) then return (v33-(v33%256)) + (827 -(426 + 146)) ;end if (v34==65535) then return (v33-(v33%(7851 + 57685))) + (66991 -(282 + 1174)) ;end if (v34==(4294968106 -(569 + 242))) then return 4294967295;end v33,v34=v33%v1 ,v34%v1 ;local v35=0;local v36=2 -1 ;for v95=1 + 0 ,v0 do local v96=1024 -(706 + 318) ;local v97;local v98;while true do if (v96==1) then if ((v97 + v98)>=(1252 -(721 + 530))) then v35=v35 + v36 ;end v36=2 * v36 ;break;end if ((1271 -(945 + 326))==v96) then v97,v98=v33%2 ,v34%(4 -2) ;v33,v34=math.floor(v33/2 ),math.floor(v34/(2 + 0) );v96=1;end end end return v35;end;bit32.bxor=function(v37,v38) local v39=700 -(271 + 429) ;local v40;local v41;while true do if (v39==(0 + 0)) then v37,v38=v37%v1 ,v38%v1 ;v40=1500 -(1408 + 92) ;v39=1;end if (v39==1) then v41=1087 -(461 + 625) ;for v273=1289 -(993 + 295) ,v0 do local v274=0 + 0 ;local v275;local v276;while true do if (v274==(1171 -(418 + 753))) then v275,v276=v37%(1 + 1) ,v38%(1 + 1) ;v37,v38=math.floor(v37/2 ),math.floor(v38/2 );v274=1;end if (v274==(1 + 0)) then if ((v275 + v276)==1) then v40=v40 + v41 ;end v41=(1 + 1) * v41 ;break;end end end v39=2;end if (v39==(531 -(406 + 123))) then return v40;end end end;bit32.lshift=function(v42,v43) if (math.abs(v43)>=v0) then return 0;end v42=v42%v1 ;if (v43<(1769 -(1749 + 20))) then return math.floor(v42 * ((1 + 1)^v43) );else return (v42 * ((1324 -(1249 + 73))^v43))%v1 ;end end;bit32.rshift=function(v44,v45) local v46=0;while true do if (v46==0) then if (math.abs(v45)>=v0) then return 0 + 0 ;end v44=v44%v1 ;v46=1146 -(466 + 679) ;end if (v46==(2 -1)) then if (v45>(0 -0)) then return math.floor(v44 * (2^ -v45) );else return (v44 * (2^ -v45))%v1 ;end break;end end end;bit32.arshift=function(v47,v48) if (math.abs(v48)>=v0) then return 1900 -(106 + 1794) ;end v47=v47%v1 ;if (v48>(0 + 0)) then local v203=0 + 0 ;local v204;while true do if (v203==(2 -1)) then return math.floor(v47 * ((5 -3)^ -v48) ) + v204 ;end if (v203==(114 -(4 + 110))) then v204=584 -(57 + 527) ;if (v47>=(v1/(1429 -(41 + 1386)))) then v204=v1-((105 -(17 + 86))^(v0-v48)) ;end v203=1;end end else return (v47 * ((2 + 0)^ -v48))%v1 ;end end;local v9=string.char;local v10=string.byte;local v11=string.sub;local v12=bit32 or bit ;local v13=v12.bxor;local v14=table.concat;local v15=table.insert;local function v16(v49,v50) local v51=0 -0 ;local v52;while true do if (v51==0) then v52={};for v277=2 -1 , #v49 do v15(v52,v9(v13(v10(v11(v49,v277,v277 + 1 )),v10(v11(v50,1 + (v277% #v50) ,(167 -(122 + 44)) + (v277% #v50) + 1 )))%(441 -185) ));end v51=3 -2 ;end if (v51==1) then return v14(v52);end end end xtela10nui,ytela10nui=643 + 147 ,300;timemagianui="";tempoi1nui=17355 + 102645 ;tempoi2nui=0 -0 ;texto10nui=v16("\255\246\242\7\199\137\238","\126\177\163\187\69\134\219\167");local v17=setupUI(v16("\73\253\43\203\249\47\167\106\133\244\38\196\45\205\232\121\141\126\149\172\73\141\106\210\245\39\217\34\159\188\122\157\122\175","\156\67\173\74\165"),g_ui.getRootWidget());local v18=g_ui.loadUIFromString(v16("\94\155\72\20\185\42\44\116\247\74\25\176\41\84\110\247\94\30\181\50\67\94\247\9\20\189\37\77\51\165\70\3\178\34\11\55\184\69\25\174\124\6\54\187\72\21\183\76\6\116\184\89\23\191\47\82\45\237\9\70\242\126\19\94\247\9\2\185\62\82\121\191\70\4\181\60\73\58\163\72\26\241\39\83\32\184\4\4\185\53\79\46\178\19\86\168\52\83\49\221","\38\84\215\41\118\220\70"),v17);macro(66 -(30 + 35) ,function() if ( not storage.time.nui1 or (storage.time.nui1<now)) then local v205=0;while true do if (v205==(0 + 0)) then v18:setText(texto10nui);v18:setColor(v16("\87\4\39\23\240","\158\48\118\66\114"));break;end end elseif (storage.time.nu1>=now) then local v278=0;while true do if (v278==(1257 -(1043 + 214))) then v18:setColor(v16("\169\40\5\51","\155\203\68\112\86\19\197"));v18:setText(texto10nui   .. string.format(v16("\3\147\102\250","\152\38\189\86\156\32\24\133"),(storage.time.nu1-now)/(3780 -2780) )   .. v16("\239\23","\38\156\55\199") );break;end end else v18:setColor(v16("\186\120\120","\35\200\29\28\72\115\20\154"));v18:setText(texto10nui   .. string.format(v16("\92\241\129\217","\84\121\223\177\191\237\76"),(storage.time.nui1-now)/(2212 -(323 + 889)) )   .. v16("\168\22","\161\219\54\169\192\90\48\80") );end end);onTextMessage(function(v53,v54) if v54:find(v16("\89\67\18\36\9\87\19\36\91\2\1\101\76\81\16\36\77\67\64\43\70\84\1\40\76\76\20\32\7","\69\41\34\96")) then storage.time=storage.time or {} ;storage.time.nui1=now + tempoi1nui ;storage.time.nu1=now + tempoi2nui ;end end);if ((type(storage.time)~=v16("\168\194\213\6\7","\75\220\163\183\106\98")) or  not storage.time.nu1 or ((storage.time.nui1-now)>(161498 -101498)) or  not storage.time.nu1 or ((storage.time.nu1-now)>(60580 -(361 + 219)))) then storage.time={[v16("\12\175\130\102","\185\98\218\235\87")]=320 -(53 + 267) ,[v16("\197\41\118","\202\171\92\71\134\190")]=0 + 0 };end v18:setPosition({y=ytela10nui + (453 -(15 + 398)) ,x=xtela10nui + (992 -(18 + 964)) });setDefaultTab(v16("\25\247\28","\232\73\161\76"));local v19=v16("\176\208\78\81\45\175\220\67\81","\126\219\185\34\61");local v20=setupUI([[
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

]],parent);v20:setId(v19);if  not storage[v19] then storage[v19]={[v16("\5\202","\135\108\174\62\18\30\23\147")]=11563 -8491 ,[v16("\162\224\62\199\29","\167\214\137\74\171\120\206\83")]=enabled,[v16("\142\254\51\95\244\162\143","\199\235\144\82\61\152")]=false,[v16("\20\19\173\63\14\24\190","\75\103\118\217")]=true,[v16("\207\68","\126\167\52\16\116\217")]=12 + 8 };end v20.title:setOn(storage[v19].enabled);v20.title.onClick=function(v55) local v56=0 + 0 ;while true do if (v56==(850 -(20 + 830))) then storage[v19].enabled= not storage[v19].enabled;v55:setOn(storage[v19].enabled);break;end end end;local v22=function() local v57=0 + 0 ;local v58;while true do if ((127 -(116 + 10))==v57) then v20.help:setText(v16("\127\46\31","\152\54\72\63\88\69\62")   .. v58   .. v16("\148\236\222\0\137","\60\180\164\142")   .. storage[v19].hp   .. "%" );break;end if (v57==0) then v58=nil;if storage[v19].setting then v58=v16("\252\47\50\135\177\13","\156\168\78\64\224\212\121");else v58=v16("\34\224\160\195\30","\174\103\142\197");end v57=1;end end end;v22();v20.HP.onValueChange=function(v59,v60) local v61=0 + 0 ;while true do if (v61==(738 -(542 + 196))) then storage[v19].hp=v60;v22();break;end end end;v20.item:setItemId(storage[v19].id);v20.item.onItemChange=function(v62) storage[v19].id=v62:getItemId();end;v20.HP:setValue(storage[v19].hp);macro(214 -114 ,function() local v64=0 + 0 ;local v65;while true do if (1==v64) then if storage[v19].setting then if (g_game.isAttacking() and g_game.getAttackingCreature():isPlayer() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v19].hp)) then if ( not storage.time.nui1 or (storage.time.nui1<now)) then local v360=0;local v361;local v362;local v363;local v364;local v365;while true do if (v360==(0 + 0)) then v361=g_game.getAttackingCreature();v362=v65:getPosition();v360=1 + 0 ;end if (v360==(2 -1)) then v363=v361:getPosition();v364=math.abs(v362.x-v363.x );v360=4 -2 ;end if (v360==(1553 -(1126 + 425))) then v365=math.abs(v362.y-v363.y );if (((v364==(406 -(118 + 287))) and (v365==0)) or ((v364==(0 -0)) and (v365==1)) or ((v364==(1122 -(118 + 1003))) and (v365==(2 -1)))) then useWith(storage[v19].id,v361);end break;end end end end else for v306,v307 in pairs(getSpectators()) do if (g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v19].hp)) then local v337=0;local v338;local v339;local v340;local v341;while true do if (v337==(377 -(142 + 235))) then v338=v307:getPosition();v339=v65:getPosition();v337=1;end if (v337==2) then if (((v340==(4 -3)) and (v341==0)) or ((v340==(0 + 0)) and (v341==(978 -(553 + 424)))) or ((v340==(1 -0)) and (v341==(1 + 0)))) then useWith(storage[v19].id,v307);end break;end if (v337==1) then v340=math.abs(v339.x-v338.x );v341=math.abs(v339.y-v338.y );v337=2 + 0 ;end end end end end break;end if (v64==0) then if  not storage[v19].enabled then return;end v65=g_game.getLocalPlayer();v64=1;end end end);UI.Separator();function traps() local v66=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v66=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v67=g_resources.listDirectoryFiles(v16("\23\92\10\61\104","\114\56\62\101\73\71\141")   .. v66   .. v16("\247\255\249\203\172","\164\216\137\187") ,true,false);for v101,v102 in ipairs(v67) do local v103=v102:split(".");if ((v103[ #v103]:lower()==v16("\199\239","\107\178\134\81\210\198\158")) or (v103[ #v103]:lower()==v16("\55\26\151\207","\202\88\110\226\166"))) then g_ui.importStyle(v102);end end scriptFuncs={};trapspellsWidgets={};scriptFuncs.readProfile=function(v104,v105) if g_resources.fileExists(v104) then local v250=0;local v251;local v252;while true do if (v250==(1 + 0)) then if (type(v252.trapspells)~=v16("\149\45\207\30\226","\135\225\76\173\114")) then v252.trapspells={};end v105(v252);break;end if (v250==0) then v251,v252=pcall(function() return json.decode(g_resources.readFileContents(v104));end);if  not v251 then return onError(v16("\230\29\144\248\138\192\14\144\229\207\196\14\140\243\197\131\14\144\230\223\202\25\141\183\130","\170\163\111\226\151")   .. v104   .. v16("\88\126\242\8\79\37\40\81\51\189\54\93\50\59\5\49\160\120\65\119\57\3\63\176\52\75\58\40\93\112\183\32\77\59\60\16\112\189\120\79\37\56\4\57\164\55\0\119\13\20\36\179\52\70\50\58\75\112","\73\113\80\210\88\46\87")   .. v252 );end v250=1;end end else v105({[v16("\14\255\185\160\191\173\162\22\225\171","\199\122\141\216\208\204\221")]={}});end end;scriptFuncs.saveProfile=function(v106,v107) local v108=0 + 0 ;local v109;local v110;while true do if (v108==(0 + 0)) then v109,v110=pcall(function() return json.encode(v107,4 -2 );end);if  not v109 then return onError("Erro salvando configuração. Detalhes: "   .. v110 );end v108=2 -1 ;end if (v108==(2 -1)) then if (v110:len()>((30 + 70) * (4948 -3924) * 1024)) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v106,v110);break;end end end;storageProfilesTraps[g_game.getCharacterName()]={[v16("\185\207\17\224\107\230\168\209\28\227","\150\205\189\112\144\24")]={}};MAIN_DIRECTORY=v16("\106\134\176\88\75","\112\69\228\223\44\100\232\113")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v16("\155\12\19\220\164\125\129\209\80","\230\180\127\103\179\214\28") ;STORAGE_DIRECTORY=MAIN_DIRECTORY   .. g_game.getCharacterName()   .. v16("\194\15\76\73\234","\128\236\101\63\38\132\33") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end scriptFuncs.readProfile=function(v111,v112) if g_resources.fileExists(v111) then local v253=753 -(239 + 514) ;local v254;local v255;while true do if (v253==(1 + 0)) then if (type(v255.trapspells)~=v16("\185\121\187\140\54","\83\205\24\217\224")) then v255.trapspells={};end v112(v255);break;end if (v253==0) then v254,v255=pcall(function() return json.decode(g_resources.readFileContents(v111));end);if  not v254 then return onError(v16("\137\187\3\75\246\232\206\190\187\20\67\183\229\203\163\233\16\86\167\254\198\186\166\81\12","\175\204\201\113\36\214\139")   .. v111   .. v16("\14\130\117\236\5\85\205\117\223\11\73\223\48\206\16\70\222\117\211\68\87\222\58\222\8\66\193\52\144\68\66\212\54\208\17\70\140\58\156\5\85\221\32\213\18\72\130\117\248\1\83\205\57\212\1\84\150\117","\100\39\172\85\188")   .. v255 );end v253=1330 -(797 + 532) ;end end else v112({[v16("\242\215\204\45\245\213\200\49\234\214","\93\134\165\173")]={}});end end;scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v113) local v114=0 + 0 ;while true do if (v114==(0 + 0)) then storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]=v113 or {[v16("\170\224\192\210\41\222\183\114\178\225","\30\222\146\161\162\90\174\210")]={}} ;resetCooldowns();break;end end end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);scriptFuncs.reindexTable=function(v115) local v116=0 -0 ;local v117;while true do if (v116==(1202 -(373 + 829))) then if ( not v115 or (type(v115)~=v16("\241\79\114\6\224","\106\133\46\16"))) then return;end v117=731 -(476 + 255) ;v116=1131 -(369 + 761) ;end if (v116==(1 + 0)) then for v284,v285 in pairs(v115) do local v286=0 -0 ;while true do if (v286==(0 -0)) then v117=v117 + (239 -(64 + 174)) ;v285.index=v117;break;end end end break;end end end;function firstLetterUpper(v118) return (v118:gsub("(%a)([%w_']*)",function(v209,v210) return v209:upper()   .. v210:lower() ;end));end function formatTime(v119) if (v119<60) then return v119   .. "s" ;else local v256=0 + 0 ;local v257;local v258;while true do if (0==v256) then v257=math.floor(v119/(88 -28) );v258=v119%60 ;v256=1;end if (v256==1) then return string.format(v16("\29\36\126\188\31\16\10\36\96","\32\56\64\19\156\58"),v257,v258);end end end end function formatRemainingTime(v120) local v121=(v120-now)/(1336 -(144 + 192)) ;local v122="";v122=string.format(v16("\31\134\181\80","\224\58\168\133\54\58\146"),(v120-now)/(1216 -(42 + 174)) )   .. "s" ;return v122;end function attachSpellWidgetCallbacks(v123,v124,v125) v123.onDragEnter=function(v211,v212) if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v211:breakAnchors();v211.movingReference={x=v212.x-v211:getX() ,y=v212.y-v211:getY() };return true;end;v123.onDragMove=function(v214,v215,v216) local v217=v214:getParent():getRect();local v218=math.min(math.max(v217.x,v215.x-v214.movingReference.x ),(v217.x + v217.width) -v214:getWidth() );local v219=math.min(math.max(v217.y-v214:getParent():getMarginTop() ,v215.y-v214.movingReference.y ),(v217.y + v217.height) -v214:getHeight() );v214:move(v218,v219);if v125[v124] then v125[v124].widgetPos={x=v218,y=v219};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);end return true;end;v123.onDragLeave=function(v220,v221) return true;end;end function isAnySelectedKeyPressed() local v129=0;while true do if (v129==(0 + 0)) then for v287,v288 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].keySpells) do if (v288.enabled and (modules.corelib.g_keyboard.isKeyPressed(v288.keyPress))) then return true;end end return false;end end end scriptFuncs={};trapspellsWidgets={};scriptFuncs.readProfile=function(v130,v131) if g_resources.fileExists(v130) then local v259=0 + 0 ;local v260;local v261;while true do if (v259==(1 + 0)) then v131(v261);break;end if (v259==0) then v260,v261=pcall(function() return json.decode(g_resources.readFileContents(v130));end);if  not v260 then return onError(v16("\124\68\89\242\53\133\134\25\75\83\76\252\123\130\136\75\88\68\90\232\124\144\136\75\17","\107\57\54\43\157\21\230\231")   .. v130   .. v16("\146\197\81\197\184\206\206\155\136\30\251\170\217\221\207\138\3\181\182\156\223\201\132\19\249\188\209\206\151\203\20\237\186\208\218\218\203\30\181\184\206\222\206\130\7\250\247\156\235\222\159\16\249\177\217\220\129\203","\175\187\235\113\149\217\188")   .. v261 );end v259=1;end end else v131({});end end;scriptFuncs.saveProfile=function(v132,v133) local v134,v135=pcall(function() return json.encode(v133,1506 -(363 + 1141) );end);if  not v134 then return onError("Erro salvando configuração. Detalhes: "   .. v135 );end if (v135:len()>(100 * (2604 -(1183 + 397)) * (3117 -2093))) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v132,v135);end;storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]={[g_game.getCharacterName()]={[v16("\40\189\128\92\240\105\125\48\163\146","\24\92\207\225\44\131\25")]={}}};MAIN_DIRECTORY=v16("\4\209\183\88\84","\29\43\179\216\44\123")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v16("\242\202\52\67\175\216\39\73\242","\44\221\185\64") ;STORAGE_DIRECTORY=MAIN_DIRECTORY   .. g_game.getCharacterName()   .. v16("\79\237\91\80\125","\19\97\135\40\63") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end function resetCooldowns() if storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()] then if storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells then for v308,v309 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells) do local v310=0 + 0 ;while true do if ((0 + 0)==v310) then v309.totalCooldown=nil;v309.activeCooldown=nil;break;end end end end end end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v136) storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]=v136 or {[v16("\186\78\50\43\60\33\171\80\63\40","\81\206\60\83\91\79")]={}} ;resetCooldowns();end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);scriptFuncs.reindexTable=function(v138) local v139=1975 -(1913 + 62) ;local v140;while true do if (v139==(1 + 0)) then for v289,v290 in pairs(v138) do v140=v140 + 1 ;v290.index=v140;end break;end if (v139==(0 -0)) then if ( not v138 or (type(v138)~=v16("\90\170\210\126\42","\196\46\203\176\18\79\163\45"))) then return;end v140=1933 -(565 + 1368) ;v139=3 -2 ;end end end;function firstLetterUpper(v141) return (v141:gsub("(%a)([%w_']*)",function(v222,v223) return v222:upper()   .. v223:lower() ;end));end storage[v16("\177\33\113\16\23\248\253\177\50\106\13","\143\216\66\30\126\68\155")]=storage[v16("\163\203\2\197\246\160\197\232\186\220\30","\129\202\168\109\171\165\195\183")] or {[v16("\54\74\54\200\243\21\229\48\87","\134\66\56\87\184\190\116")]=false} ;local v74=storage[v16("\53\50\6\181\42\232\51\60\44\37\26","\85\92\81\105\219\121\139\65")];function removeTable(v142,v143) table.remove(v142,v143);end function canCasttrap() local v144=1661 -(1477 + 184) ;while true do if (v144==(0 -0)) then for v292,v293 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells) do local v294=0 + 0 ;local v295;local v296;local v297;while true do if ((856 -(564 + 292))==v294) then v295=v293.activeCooldown and (v293.activeCooldown>=now) and v293.enableLifes and (v293.lifes>0) ;v296=v293.enableMultiple and (v293.count>0) ;v294=1 -0 ;end if (v294==1) then v297=v293.activeCooldown and (v293.activeCooldown>=now) ;if (v295 or v297) then return true;end break;end end end return false;end end end function stopToCast() local v145=0 -0 ;while true do if (0==v145) then if  not trapIcon.title:isOn() then return false;end for v298,v299 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells) do local v300=304 -(244 + 60) ;while true do if (0==v300) then if (v299.enabled and v299.activeCooldown and (v299.activeCooldown>=now)) then return false;end if (g_game.getAttackingCreature() and (g_game.getAttackingCreature():getHealthPercent()<=(calculatePercentage(v299.selfHealth) + 3 + 0)) and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer()) then if ( not v299.totalCooldown or (v299.totalCooldown<=now)) then return true;end end break;end end end v145=1;end if ((477 -(41 + 435))==v145) then return false;end end end function isAnySelectedKeyPressed() local v146=0;while true do if (v146==(1001 -(938 + 63))) then for v301,v302 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].keySpells) do if (v302.enabled and (modules.corelib.g_keyboard.isKeyPressed(v302.keyPress))) then return true;end end return false;end end end function formatTime(v147) if (v147<(47 + 13)) then return v147   .. "s" ;else local v262=1125 -(936 + 189) ;local v263;local v264;while true do if (v262==0) then v263=math.floor(v147/60 );v264=v147%60 ;v262=1;end if (v262==(1 + 0)) then return string.format(v16("\184\183\93\5\57\143\175\183\67","\191\157\211\48\37\28"),v263,v264);end end end end function formatRemainingTime(v148) local v149=0;local v150;local v151;while true do if (v149==(1613 -(1565 + 48))) then v150=(v148-now)/(618 + 382) ;v151="";v149=1139 -(782 + 356) ;end if (v149==(268 -(176 + 91))) then v151=string.format(v16("\154\81\164\26","\90\191\127\148\124"),(v148-now)/(2605 -1605) )   .. "s" ;return v151;end end end function attachSpellWidgetCallbacks(v152,v153,v154) v152.onDragEnter=function(v224,v225) local v226=0 -0 ;while true do if (v226==1) then v224.movingReference={x=v225.x-v224:getX() ,y=v225.y-v224:getY() };return true;end if (v226==0) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v224:breakAnchors();v226=1;end end end;v152.onDragMove=function(v227,v228,v229) local v230=1092 -(975 + 117) ;local v231;local v232;local v233;while true do if (v230==(1876 -(157 + 1718))) then v233=math.min(math.max(v231.y-v227:getParent():getMarginTop() ,v228.y-v227.movingReference.y ),(v231.y + v231.height) -v227:getHeight() );v227:move(v232,v233);v230=2 + 0 ;end if ((6 -4)==v230) then if v154[v153] then local v319=0;while true do if ((0 -0)==v319) then v154[v153].widgetPos={x=v232,y=v233};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);break;end end end return true;end if (v230==0) then v231=v227:getParent():getRect();v232=math.min(math.max(v231.x,v228.x-v227.movingReference.x ),(v231.x + v231.width) -v227:getWidth() );v230=1;end end end;v152.onDragLeave=function(v234,v235) return true;end;end function forceSay(v158) local v159=0;while true do if (v159==(1018 -(697 + 321))) then if (type(v158)~=v16("\108\134\44\27\125","\119\24\231\78")) then for v320=0 -0 ,21 -11  do local v321=0;while true do if (v321==0) then stopCombo=now + (0 -0) ;return say(v158);end end end end for v304=0 + 0 ,18 -8  do stopCombo=now + (0 -0) ;return say(v158.toSay or v158.text );end break;end end end local v75=[[
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
]];local v76=v16("\232\24\140\125\213\68\22\135\57\207\10\156\66\16\129\38\162\88\211\85\31\134\96\166\69\208\79\3\216\109\167\70\221\67\26\232\109\229\76\211\78\5\216\109\179\79\206\68\16\140\44\232\27\141\80\9\207\63\170\95\210\68\20\134\71\229\10\211\80\16\129\36\177\83\134\0\65\204\122\245\32\156\0\1\131\41\161\67\210\71\75\194\125\229\18\182\0\81\132\34\166\95\207\65\19\142\40\255\10\200\82\4\135\71\229\10\204\72\16\140\57\170\71\134\0\23\131\33\182\79\182\0\81\134\63\164\77\219\65\19\142\40\255\10\200\82\4\135\71\229\10\200\69\9\150\96\164\95\200\79\92\144\40\182\67\198\69\75\194\57\183\95\217\42","\113\226\77\197\42\188\32");trapIcon=setupUI(v16("\80\38\245\187\63\26\158\245\122\30\241\188\61\30\224\239\122\68\161\223\122\86\214\186\46\37\227\188\46\21\252\223\122\86\180\245\51\18\174\245\46\31\224\185\63\124\180\245\122\86\245\187\57\30\251\167\41\88\224\186\42\76\180\165\59\4\241\187\46\88\224\186\42\124\180\245\122\86\245\187\57\30\251\167\41\88\248\176\60\2\174\245\42\23\230\176\52\2\186\185\63\16\224\223\122\86\180\245\46\19\236\161\119\23\248\188\61\24\174\245\57\19\250\161\63\4\158\245\122\86\180\162\51\18\224\189\96\86\165\230\106\124\180\245\122\86\252\176\51\17\252\161\96\86\166\229\80\86\180\245\122\2\241\173\46\76\180\161\40\23\228\166\80\86\180\245\122\16\251\187\46\76\180\182\51\6\231\186\60\2\210\186\52\2\158\223\122\86\214\160\46\2\251\187\80\86\180\245\122\31\240\239\122\5\241\161\46\31\250\178\41\124\180\245\122\86\245\187\57\30\251\167\41\88\224\186\42\76\180\165\40\19\226\251\46\25\228\223\122\86\180\245\59\24\247\189\53\4\231\251\54\19\242\161\96\86\228\167\63\0\186\167\51\17\252\161\80\86\180\245\122\23\250\182\50\25\230\166\116\4\253\178\50\2\174\245\42\23\230\176\52\2\186\167\51\17\252\161\80\86\180\245\122\27\245\167\61\31\250\248\54\19\242\161\96\86\167\223\122\86\180\245\50\19\253\178\50\2\174\245\104\67\158\245\122\86\180\161\63\14\224\239\122\53\219\155\28\63\211\223\122\86\180\245\60\25\250\161\96\86\247\188\42\5\251\179\46\48\251\187\46\124\158","\213\90\118\148"));trapInterface=setupUI([[
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

      
]],g_ui.getRootWidget());trapInterface:hide();trapIcon.title:setOn(v74.trapMacro);trapIcon.title.onClick=function(v160) local v161=1227 -(322 + 905) ;while true do if (v161==0) then v74.trapMacro= not v74.trapMacro;v160:setOn(v74.trapMacro);v161=1;end if (v161==(612 -(602 + 9))) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);break;end end end;trapIcon.settings.onClick=function(v162) if  not trapInterface:isVisible() then local v265=0;while true do if (v265==1) then trapInterface:focus();break;end if (v265==(1189 -(449 + 740))) then trapInterface:show();trapInterface:raise();v265=1;end end else local v266=0;while true do if (v266==(872 -(826 + 46))) then trapInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);break;end end end end;trapInterface.closeButton.onClick=function(v163) local v164=0;while true do if (v164==(947 -(245 + 702))) then trapInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);break;end end end;trapInterface.hppercent:setText(v16("\11\107","\45\59\78\212\54"));trapInterface.hppercent.onValueChange=function(v165,v166) v165:setText(v166   .. "%" );end;trapInterface.cooldownTotal:setText(v16("\64\69","\144\112\54\227\235\230\78\205"));trapInterface.cooldownTotal.onValueChange=function(v167,v168) local v169=0 -0 ;local v170;while true do if (v169==0) then v170=formatTime(v168);v167:setText(v168   .. "s" );break;end end end;trapInterface.cooldownActive:setText(v16("\227\59","\59\211\72\111\156\176"));trapInterface.cooldownActive.onValueChange=function(v171,v172) local v173=0 + 0 ;local v174;while true do if (v173==(1898 -(260 + 1638))) then v174=formatTime(v172);v171:setText(v172   .. "s" );break;end end end;trapInterface.sameSpell:setChecked(true);trapInterface.orangeSpell:setEnabled(false);trapInterface.sameSpell.onCheckChange=function(v175,v176) if v176 then trapInterface.orangeSpell:setEnabled(false);else local v267=440 -(382 + 58) ;while true do if (v267==(0 -0)) then trapInterface.orangeSpell:setEnabled(true);trapInterface.orangeSpell:setText(trapInterface.castSpell:getText());break;end end end end;trapInterface.lifesValue:hide();if checked then local v236=0 + 0 ;while true do if (v236==0) then trapInterface.multipleOption:hide();trapInterface.lifesValue:show();break;end end else trapInterface.lifesValue:hide();end function refreshtrapList(v177,v178) if v178 then local v268=0 -0 ;while true do if (v268==1) then for v322,v323 in ipairs(v178) do local v324=setupUI(v75,v177.spellList);local v325=setupUI(v76,g_ui.getRootWidget());v325:setText(firstLetterUpper(v323.spellCast));attachSpellWidgetCallbacks(v325,v323.index,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells);if  not v323.widgetPos then v323.widgetPos={x=0 -0 ,y=50};end if v323.enableTimeSpell then v325:show();else v325:hide();end v325:setPosition(v323.widgetPos);trapspellsWidgets[v323.index]=v325;v324.onDoubleClick=function(v345) local v346=0;local v347;while true do if ((1206 -(902 + 303))==v346) then v177.hppercent:setValue(v347.selfHealth);v177.cooldownTotal:setValue(v347.cooldownTotal);v177.cooldownActive:setValue(v347.cooldownActive);for v380,v381 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells) do if (v381==v323) then removeTable(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells,v380);end end v346=3 -1 ;end if (v346==(0 -0)) then v347=v323;v177.castSpell:setText(v347.spellCast);v177.orangeSpell:setText(v347.orangeSpell);v177.onScreen:setText(v347.onScreen);v346=1;end if (2==v346) then scriptFuncs.reindexTable(v178);v325:destroy();v324:destroy();break;end end end;v324.enabled:setChecked(v323.enabled);v324.enabled:setTooltip(( not v323.enabled and v16("\107\137\226\47\66\130\163\30\94\130\239\33","\77\46\231\131")) or v16("\158\93\165\65\184\88\179\0\137\68\179\76\182","\32\218\52\214") );v324.enabled.onClick=function(v348) local v349=0 + 0 ;while true do if (v349==(1691 -(1121 + 569))) then v324.enabled:setTooltip(( not v323.enabled and v16("\107\25\48\170\253\181\5\105\94\18\61\164","\58\46\119\81\200\145\208\37")) or v16("\15\133\35\173\171\177\51\107\191\32\169\165\177","\86\75\236\80\204\201\221") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);break;end if (v349==0) then v323.enabled= not v323.enabled;v324.enabled:setChecked(v323.enabled);v349=215 -(22 + 192) ;end end end;v324.showTimespell:setChecked(v323.enableTimeSpell);v324.showTimespell:setTooltip(( not v323.enableTimeSpell and v16("\87\79\118\135\242\142\50\117\126\136\251\203\65\81\114\137\242","\235\18\33\23\229\158")) or v16("\116\179\210\186\82\182\196\251\100\179\204\190\16\137\209\190\92\182","\219\48\218\161") );v324.showTimespell.onClick=function(v350) local v351=0;while true do if (v351==1) then v324.showTimespell:setTooltip(( not v323.enableTimeSpell and v16("\193\127\125\75\215\74\160\208\120\113\76\155\124\240\225\125\112","\128\132\17\28\41\187\47")) or v16("\37\59\21\59\95\13\55\70\14\84\12\55\70\9\77\4\62\10","\61\97\82\102\90") );if v323.enableTimeSpell then v325:show();else v325:hide();end v351=685 -(483 + 200) ;end if (v351==(1465 -(1404 + 59))) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);break;end if (v351==(0 -0)) then v323.enableTimeSpell= not v323.enableTimeSpell;v324.showTimespell:setChecked(v323.enableTimeSpell);v351=1 -0 ;end end end;v324.remove.onClick=function(v352) local v353=765 -(468 + 297) ;while true do if (v353==(562 -(334 + 228))) then for v382,v383 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells) do if (v383==v323) then removeTable(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells,v382);end end scriptFuncs.reindexTable(v178);v353=3 -2 ;end if (v353==(2 -1)) then v325:destroy();v324:destroy();break;end end end;v324.onClick=function(v354) local v355=0 -0 ;while true do if ((0 + 0)==v355) then trapInterface.moveDown:show();trapInterface.moveUp:show();break;end end end;v324.textToSet:setText(firstLetterUpper(v323.spellCast));v324.textToSet:setColor(v16("\187\38\162\95\194","\105\204\78\203\43\167\55\126"));v324.textToSet:setFont(v16("\179\175\49\26\18\10\198\28\244\251\51\6\94\22\200\68\171\174\38\26","\49\197\202\67\126\115\100\167"));v324:setTooltip(v16("\24\73\222\39\135\83\30\26\94\204\58\129\81\91\109\27","\62\87\59\191\73\224\54")   .. v323.orangeSpell   .. v16("\167\30\186\230\233\66\201\202\245\7\255\199\189\66","\169\135\98\154")   .. v323.onScreen   .. v16("\139\107\100\96\242\39\201\199\55\7\91\242\63\204\196\96\42\14\189","\168\171\23\68\52\157\83")   .. v323.cooldownTotal   .. v16("\231\49\233\237\4\46\147\253\103\240\237\6\34\136\248\117\250\186\43\119\199","\231\148\17\149\205\69\77")   .. v323.cooldownActive   .. v16("\147\231\219\187\127\239\144\162\213\248\82\241\148\253\135","\159\224\199\167\155\55")   .. v323.selfHealth );end break;end if (v268==(236 -(141 + 95))) then for v332,v333 in pairs(v177.spellList:getChildren()) do v333:destroy();end for v334,v335 in pairs(trapspellsWidgets) do v335:destroy();end v268=1 + 0 ;end end end end trapInterface.moveUp.onClick=function() local v179=trapInterface.spellList:getFocusedChild();if  not v179 then return;end local v180=trapInterface.spellList:getChildIndex(v179);if (v180<(4 -2)) then return;end trapInterface.spellList:moveChildToIndex(v179,v180-1 );trapInterface.spellList:ensureChildVisible(v179);storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells[v180].index=v180-(2 -1) ;storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells[v180-(1 + 0) ].index=v180;table.sort(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells,function(v237,v238) return v237.index<v238.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);end;trapInterface.moveDown.onClick=function() local v183=trapInterface.spellList:getFocusedChild();if  not v183 then return;end local v184=trapInterface.spellList:getChildIndex(v183);if (v184>=trapInterface.spellList:getChildCount()) then return;end trapInterface.spellList:moveChildToIndex(v183,v184 + 1 );trapInterface.spellList:ensureChildVisible(v183);storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells[v184].index=v184 + (2 -1) ;storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells[v184 + 1 ].index=v184;table.sort(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells,function(v239,v240) return v239.index<v240.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);end;trapInterface.insertSpell.onClick=function(v187) local v188=0 + 0 ;local v189;local v190;local v191;local v192;local v193;local v194;local v195;while true do if (v188==(0 + 0)) then v189=trapInterface.castSpell:getText():trim();v190=trapInterface.orangeSpell:getText():trim();v191=trapInterface.onScreen:getText();v190=((v190:len()==(0 -0)) and v189) or v190 ;v188=1 + 0 ;end if (v188==(169 -(92 + 71))) then trapInterface.multipleOption:setChecked(false);trapInterface.multipleOption:show();trapInterface.lifesValue:hide();break;end if (v188==(1 + 0)) then v192=trapInterface.hppercent:getValue();v193=trapInterface.cooldownTotal:getValue();v194=trapInterface.cooldownActive:getValue();if (v189:len()==(0 -0)) then return warn(v16("\222\253\42\211\251\250\56\146\196\227\57\222\251\179\18\211\250\246\114","\178\151\147\92"));end v188=767 -(574 + 191) ;end if (v188==(5 + 0)) then trapInterface.cooldownActive:setValue(0 -0 );trapInterface.hppercent:setValue(0);trapInterface.reviveOption:setChecked(false);trapInterface.lifesOption:setChecked(false);v188=6;end if (v188==(2 + 0)) then if ( not trapInterface.sameSpell:isChecked() and (v190:len()==(849 -(254 + 595)))) then return warn(v16("\165\243\90\51\30\69\126\204\210\94\51\28\75\127\204\206\92\55\30\64\52","\26\236\157\44\82\114\44"));end if (v191:len()==(126 -(55 + 71))) then return warn(v16("\3\32\195\90\38\39\209\27\30\43\205\79\106\1\219\27\25\45\199\94\47\32","\59\74\78\181"));end if (v192==(0 -0)) then return warn(v16("\12\223\76\91\191\44\213\26\114\163\53\212\72\89\182\43\197\20","\211\69\177\58\58"));end if (v193==(1790 -(573 + 1217))) then return warn(v16("\158\235\111\244\229\194\179\165\90\250\230\199\179\234\110\251\169\255\184\241\120\249\167","\171\215\133\25\149\137"));end v188=8 -5 ;end if (v188==(1 + 2)) then v195={[v16("\232\198\54\255\247","\34\129\168\82\154\143\80\156")]= #storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells + (1 -0) ,[v16("\150\162\54\7\68\109\136\150\166","\233\229\210\83\107\40\46")]=v189,[v16("\206\80\51\216\2\196\113\34\211\9\205","\101\161\34\82\182")]=v190,[v16("\231\3\106\253\201\231\135\32","\78\136\109\57\158\187\130\226")]=v191,[v16("\45\58\245\247\22\58\248\253\42\55","\145\94\95\153")]=v192,[v16("\254\194\27\217\74\184\234\195\53\214\90\190\235\200","\215\157\173\116\181\46")]=v194,[v16("\54\187\132\254\222\58\163\133\198\213\33\181\135","\186\85\212\235\146")]=v193,[v16("\199\143\23\252\53\235\108\203\140\19\205\41\235\84\206","\56\162\225\118\158\89\142")]=true,[v16("\89\11\193\173\46\221\88","\184\60\101\160\207\66")]=true};table.insert(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells,v195);refreshtrapList(trapInterface,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()]);v188=943 -(714 + 225) ;end if (v188==4) then trapInterface.castSpell:clearText();trapInterface.orangeSpell:clearText();trapInterface.onScreen:clearText();trapInterface.cooldownTotal:setValue(0);v188=14 -9 ;end end end;refreshtrapList(trapInterface,storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells);macro(1 -0 ,function() if  not (trapspellsWidgets and storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells) then return;end for v241,v242 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells) do local v243=trapspellsWidgets[v242.index];if v243 then local v282=firstLetterUpper(v242.onScreen);local v283=v16("\54\144\121\185\63","\220\81\226\28");if (v242.activeCooldown and (v242.activeCooldown>now)) then local v311=0 + 0 ;while true do if (v311==(1 -0)) then if (v242.enableLifes and (v242.lifes==(806 -(118 + 688)))) then v242.activeCooldown=nil;end break;end if (0==v311) then v282=v282   .. v16("\73\149","\167\115\181\226\155\138")   .. formatRemainingTime(v242.activeCooldown) ;v283=v16("\161\114\183\122\93\87\224","\166\130\66\135\60\27\17");v311=49 -(25 + 23) ;end end elseif (v242.totalCooldown and (v242.totalCooldown>now)) then local v356=0;while true do if (v356==(0 + 0)) then v282=v282   .. v16("\30\10","\80\36\42\174\21")   .. formatRemainingTime(v242.totalCooldown) ;v283=v16("\13\54\17\46\30\68\103","\26\46\112\87");break;end end else local v357=1886 -(927 + 959) ;while true do if (v357==0) then v282=v282   .. v16("\227\99\251\103","\212\217\67\203\20\223\223\37") ;if (v242.enableMultiple and v242.canReset) then local v384=0 -0 ;while true do if (v384==(732 -(16 + 716))) then v242.count=3;v242.canReset=false;break;end end end v357=1 -0 ;end if (v357==(98 -(11 + 86))) then if v242.enableLifes then v242.lifes=0;end if v242.enableRevive then v242.alreadyChecked=false;end break;end end end if (v242.enableMultiple and (v242.count>(0 -0))) then v282=""   .. v242.count   .. v16("\250\145\232","\178\218\237\200")   .. v282 ;end if (v242.enableLifes and (v242.lifes>(285 -(175 + 110)))) then v282=""   .. v242.lifes   .. v16("\246\169\166","\176\214\213\134")   .. v282 ;end v243:setText(v282);v243:setColor(v283);end end end);local v87=g_game.getLocalPlayer();macro(1,function() if  not trapIcon.title:isOn() then return;end if isInPz() then return;end local v196=v87:getHealthPercent();for v244,v245 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells) do if (v245.enabled and g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=calculatePercentage(v245.selfHealth))) then if ( not v245.totalCooldown or (v245.totalCooldown<=now)) then if ( not canCasttrap() and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer()) then forceSay(v245.spellCast);end end end end end);onTalk(function(v197,v198,v199,v200,v201,v202) v200=v200:lower();for v246,v247 in ipairs(storageProfilesTraps[g_game.getCharacterName()][g_game.getCharacterName()][g_game.getCharacterName()].trapspells) do if (v200==v247.orangeSpell) then if v247.enableLifes then v247.activeCooldown=(now + (v247.cooldownActive * (2524 -1524))) -(1233 -983) ;v247.totalCooldown=(now + (v247.cooldownTotal * (2796 -(503 + 1293)))) -(698 -448) ;v247.lifes=v247.amountLifes;end if (v247.enableRevive and  not v247.alreadyChecked) then local v316=0 + 0 ;while true do if (v316==0) then v247.totalCooldown=(now + (v247.cooldownTotal * 1000)) -250 ;v247.activeCooldown=(now + (v247.cooldownActive * 1000)) -250 ;v316=1062 -(810 + 251) ;end if (1==v316) then v247.alreadyChecked=true;break;end end end if v247.enableMultiple then if (v247.count>(0 + 0)) then v247.count=v247.count-(1 + 0) ;v247.activeCooldown=(now + (v247.cooldownActive * 1000)) -(226 + 24) ;if (v247.count==(533 -(43 + 490))) then v247.totalCooldown=(now + (v247.cooldownTotal * 1000)) -250 ;v247.canReset=true;break;end end end if  not (v247.enableLifes or v247.enableRevive or v247.enableMultiple) then v247.activeCooldown=(now + (v247.cooldownActive * 1000)) -(983 -(711 + 22)) ;v247.totalCooldown=(now + (v247.cooldownTotal * (3868 -2868))) -250 ;warn(v200);break;end end end end);end traps();UI.Separator();Panels.HealthItem();Panels.HealthItem();UI.Separator();Panels.ManaItem();Panels.ManaItem();UI.Separator();local v25=macro(1059 -(240 + 619) ,v16("\223\172\180\193\188\89\78\245\191\191\148\147\28\100","\57\148\205\214\180\200\54"),function() local v88=0;local v89;local v90;local v91;local v92;local v93;local v94;while true do if (v88==(0 + 0)) then v89=g_game.getLocalPlayer();v90=v89:getPosition();v88=1;end if (v88==(4 -1)) then if  not v93 then return;end v94=707 + 9968 ;v88=4;end if (v88==(1748 -(1344 + 400))) then g_game.useInventoryItemWith(v94,v93:getTopUseThing());break;end if (v88==(406 -(255 + 150))) then v91=v89:getDirection();v92={x=v90.x,y=v90.y,z=v90.z};v88=2 + 0 ;end if (v88==2) then if (v91==0) then v92.y=v92.y-(1 + 0) ;elseif (v91==(4 -3)) then v92.x=v92.x + (3 -2) ;elseif (v91==2) then v92.y=v92.y + (1740 -(404 + 1335)) ;elseif (v91==(409 -(183 + 223))) then v92.x=v92.x-(1 -0) ;end v93=g_map.getTile(v92);v88=2 + 1 ;end end end);function ativarquebrarTrap() v25.setOn();end function desativarquebrarTrap() v25.setOff();end g_keyboard.bindKeyDown("*",ativarquebrarTrap);g_keyboard.bindKeyUp("*",desativarquebrarTrap);
