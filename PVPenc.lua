

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v17,v18) local v19=0;local v20;while true do if (v19==1) then return v5(v20);end if (v19==0) then v20={};for v214=1582 -(1535 + 46) , #v17 do v6(v20,v0(v4(v1(v2(v17,v214,v214 + 1 + 0 )),v1(v2(v18,1 + (v214% #v18) ,1 + 0 + (v214% #v18) + 1 )))%(816 -(306 + 254)) ));end v19=1 + 0 ;end end end xtela10nui,ytela10nui=790,588 -288 ;timemagianui="";tempoi1nui=120000;tempoi2nui=1467 -(899 + 568) ;texto10nui=v7("\255\246\242\7\199\137\238","\126\177\163\187\69\134\219\167");local v8=setupUI(v7("\73\253\43\203\249\47\167\106\133\244\38\196\45\205\232\121\141\126\149\172\73\141\106\210\245\39\217\34\159\188\122\157\122\175","\156\67\173\74\165"),g_ui.getRootWidget());local v9=g_ui.loadUIFromString(v7("\94\155\72\20\185\42\44\116\247\74\25\176\41\84\110\247\94\30\181\50\67\94\247\9\20\189\37\77\51\165\70\3\178\34\11\55\184\69\25\174\124\6\54\187\72\21\183\76\6\116\184\89\23\191\47\82\45\237\9\70\242\126\19\94\247\9\2\185\62\82\121\191\70\4\181\60\73\58\163\72\26\241\39\83\32\184\4\4\185\53\79\46\178\19\86\168\52\83\49\221","\38\84\215\41\118\220\70"),v8);macro(1 + 0 ,function() if ( not storage.time.nui1 or (storage.time.nui1<now)) then local v159=0 -0 ;while true do if (v159==(603 -(268 + 335))) then v9:setText(texto10nui);v9:setColor(v7("\87\4\39\23\240","\158\48\118\66\114"));break;end end elseif (storage.time.nu1>=now) then local v215=290 -(60 + 230) ;while true do if (v215==(572 -(426 + 146))) then v9:setColor(v7("\169\40\5\51","\155\203\68\112\86\19\197"));v9:setText(texto10nui   .. string.format(v7("\3\147\102\250","\152\38\189\86\156\32\24\133"),(storage.time.nu1-now)/(120 + 880) )   .. v7("\239\23","\38\156\55\199") );break;end end else local v216=1456 -(282 + 1174) ;while true do if (v216==0) then v9:setColor(v7("\186\120\120","\35\200\29\28\72\115\20\154"));v9:setText(texto10nui   .. string.format(v7("\92\241\129\217","\84\121\223\177\191\237\76"),(storage.time.nui1-now)/1000 )   .. v7("\168\22","\161\219\54\169\192\90\48\80") );break;end end end end);onTextMessage(function(v21,v22) if v22:find(v7("\89\67\18\36\9\87\19\36\91\2\1\101\76\81\16\36\77\67\64\43\70\84\1\40\76\76\20\32\7","\69\41\34\96")) then local v160=811 -(569 + 242) ;while true do if ((0 -0)==v160) then storage.time=storage.time or {} ;storage.time.nui1=now + tempoi1nui ;v160=1;end if (v160==1) then storage.time.nu1=now + tempoi2nui ;break;end end end end);if ((type(storage.time)~=v7("\168\194\213\6\7","\75\220\163\183\106\98")) or  not storage.time.nu1 or ((storage.time.nui1-now)>(3432 + 56568)) or  not storage.time.nu1 or ((storage.time.nu1-now)>(61024 -(706 + 318)))) then storage.time={[v7("\12\175\130\102","\185\98\218\235\87")]=1251 -(721 + 530) ,[v7("\197\41\118","\202\171\92\71\134\190")]=0};end v9:setPosition({y=ytela10nui + 40 ,x=xtela10nui + (1281 -(945 + 326)) });setDefaultTab(v7("\25\247\28","\232\73\161\76"));local v10=v7("\176\208\78\81\45\175\220\67\81","\126\219\185\34\61");local v11=setupUI([[
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

]],parent);v11:setId(v10);if  not storage[v10] then storage[v10]={[v7("\5\202","\135\108\174\62\18\30\23\147")]=7674 -4602 ,[v7("\162\224\62\199\29","\167\214\137\74\171\120\206\83")]=enabled,[v7("\142\254\51\95\244\162\143","\199\235\144\82\61\152")]=false,[v7("\20\19\173\63\14\24\190","\75\103\118\217")]=true,[v7("\207\68","\126\167\52\16\116\217")]=18 + 2 };end v11.title:setOn(storage[v10].enabled);v11.title.onClick=function(v23) local v24=700 -(271 + 429) ;while true do if (v24==(0 + 0)) then storage[v10].enabled= not storage[v10].enabled;v23:setOn(storage[v10].enabled);break;end end end;local v13=function() local v25;if storage[v10].setting then v25=v7("\252\47\50\135\177\13","\156\168\78\64\224\212\121");else v25=v7("\34\224\160\195\30","\174\103\142\197");end v11.help:setText(v7("\127\46\31","\152\54\72\63\88\69\62")   .. v25   .. v7("\148\236\222\0\137","\60\180\164\142")   .. storage[v10].hp   .. "%" );end;v13();v11.HP.onValueChange=function(v26,v27) local v28=0;while true do if (v28==0) then storage[v10].hp=v27;v13();break;end end end;v11.item:setItemId(storage[v10].id);v11.item.onItemChange=function(v29) storage[v10].id=v29:getItemId();end;v11.HP:setValue(storage[v10].hp);macro(1600 -(1408 + 92) ,function() local v31=1086 -(461 + 625) ;local v32;while true do if (v31==0) then if  not storage[v10].enabled then return;end v32=g_game.getLocalPlayer();v31=1;end if (v31==1) then if storage[v10].setting then if (g_game.isAttacking() and g_game.getAttackingCreature():isPlayer() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v10].hp)) then if ( not storage.time.nui1 or (storage.time.nui1<now)) then local v286=1288 -(993 + 295) ;local v287;local v288;local v289;local v290;local v291;while true do if (v286==(1 + 0)) then v289=v287:getPosition();v290=math.abs(v288.x-v289.x );v286=1173 -(418 + 753) ;end if (v286==(0 + 0)) then v287=g_game.getAttackingCreature();v288=v32:getPosition();v286=1;end if (v286==2) then v291=math.abs(v288.y-v289.y );if (((v290==(1 + 0)) and (v291==0)) or ((v290==0) and (v291==(1 + 0))) or ((v290==1) and (v291==(1 + 0)))) then useWith(storage[v10].id,v287);end break;end end end end else for v256,v257 in pairs(getSpectators()) do if (g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v10].hp)) then local v270=0;local v271;local v272;local v273;local v274;while true do if (v270==2) then if (((v273==(530 -(406 + 123))) and (v274==(1769 -(1749 + 20)))) or ((v273==(0 + 0)) and (v274==(1323 -(1249 + 73)))) or ((v273==(1 + 0)) and (v274==(1146 -(466 + 679))))) then useWith(storage[v10].id,v257);end break;end if (v270==0) then v271=v257:getPosition();v272=v32:getPosition();v270=2 -1 ;end if (v270==(2 -1)) then v273=math.abs(v272.x-v271.x );v274=math.abs(v272.y-v271.y );v270=1902 -(106 + 1794) ;end end end end end break;end end end);UI.Separator();function traps() local v33=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v33=modules.game_bot.contentsPanel.config:getCurrentOption().text;local v34=g_resources.listDirectoryFiles(v7("\23\92\10\61\104","\114\56\62\101\73\71\141")   .. v33   .. v7("\247\255\249\203\172","\164\216\137\187") ,true,false);for v62,v63 in ipairs(v34) do local v64=0 + 0 ;local v65;while true do if (v64==(0 + 0)) then v65=v63:split(".");if ((v65[ #v65]:lower()==v7("\199\239","\107\178\134\81\210\198\158")) or (v65[ #v65]:lower()==v7("\55\26\151\207","\202\88\110\226\166"))) then g_ui.importStyle(v63);end break;end end end scriptFuncs={};trapspellsWidgets={};scriptFuncs.readProfile=function(v66,v67) if g_resources.fileExists(v66) then local v199=0 -0 ;local v200;local v201;while true do if (v199==(0 -0)) then v200,v201=pcall(function() return json.decode(g_resources.readFileContents(v66));end);if  not v200 then return onError(v7("\230\29\144\248\138\192\14\144\229\207\196\14\140\243\197\131\14\144\230\223\202\25\141\183\130","\170\163\111\226\151")   .. v66   .. v7("\88\126\242\8\79\37\40\81\51\189\54\93\50\59\5\49\160\120\65\119\57\3\63\176\52\75\58\40\93\112\183\32\77\59\60\16\112\189\120\79\37\56\4\57\164\55\0\119\13\20\36\179\52\70\50\58\75\112","\73\113\80\210\88\46\87")   .. v201 );end v199=1;end if (v199==1) then v67(v201);break;end end end end;scriptFuncs.saveProfile=function(v68,v69) local v70=114 -(4 + 110) ;local v71;local v72;while true do if (v70==0) then v71,v72=pcall(function() return json.encode(v69,586 -(57 + 527) );end);if  not v71 then return onError("Erro salvando configuração. Detalhes: "   .. v72 );end v70=1428 -(41 + 1386) ;end if ((104 -(17 + 86))==v70) then if (v72:len()>(100 * 1024 * (695 + 329))) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v68,v72);break;end end end;storageProfilesTraps={[v7("\149\62\204\2\244\145\41\193\30\244","\135\225\76\173\114")]={}};MAIN_DIRECTORY=v7("\85\239\183\164\227","\199\122\141\216\208\204\221")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v7("\226\206\4\255\106\247\170\216\95","\150\205\189\112\144\24") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v7("\107\142\172\67\10","\112\69\228\223\44\100\232\113") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v73) local v74=0;while true do if ((0 -0)==v74) then storageProfilesTraps=v73;if (type(storageProfilesTraps.trapspells)~=v7("\192\30\5\223\179","\230\180\127\103\179\214\28")) then storageProfilesTraps.trapspells={};end break;end end end);scriptFuncs.reindexTable=function(v75) local v76=0;local v77;while true do if (v76==(0 -0)) then if ( not v75 or (type(v75)~=v7("\152\4\93\74\225","\128\236\101\63\38\132\33"))) then return;end v77=166 -(122 + 44) ;v76=1 -0 ;end if (v76==(3 -2)) then for v235,v236 in pairs(v75) do v77=v77 + 1 ;v236.index=v77;end break;end end end;function firstLetterUpper(v78) return (v78:gsub("(%a)([%w_']*)",function(v161,v162) return v161:upper()   .. v162:lower() ;end));end function formatTime(v79) if (v79<60) then return v79   .. "s" ;else local v202=0;local v203;local v204;while true do if (v202==0) then v203=math.floor(v79/(49 + 11) );v204=v79%(9 + 51) ;v202=1 -0 ;end if (v202==(66 -(30 + 35))) then return string.format(v7("\233\173\28\4\243\187\157\168\186","\175\204\201\113\36\214\139"),v203,v204);end end end end function formatRemainingTime(v80) local v81=(v80-now)/1000 ;local v82="";v82=string.format(v7("\2\130\101\218","\100\39\172\85\188"),(v80-now)/(688 + 312) )   .. "s" ;return v82;end function attachSpellWidgetCallbacks(v83,v84,v85) v83.onDragEnter=function(v163,v164) local v165=1257 -(1043 + 214) ;while true do if (1==v165) then v163.movingReference={x=v164.x-v163:getX() ,y=v164.y-v163:getY() };return true;end if (v165==0) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v163:breakAnchors();v165=3 -2 ;end end end;v83.onDragMove=function(v166,v167,v168) local v169=0;local v170;local v171;local v172;while true do if (v169==0) then v170=v166:getParent():getRect();v171=math.min(math.max(v170.x,v167.x-v166.movingReference.x ),(v170.x + v170.width) -v166:getWidth() );v169=1213 -(323 + 889) ;end if (v169==(2 -1)) then v172=math.min(math.max(v170.y-v166:getParent():getMarginTop() ,v167.y-v166.movingReference.y ),(v170.y + v170.height) -v166:getHeight() );v166:move(v171,v172);v169=582 -(361 + 219) ;end if (v169==(322 -(53 + 267))) then if v85[v84] then local v260=0 + 0 ;while true do if (v260==(413 -(15 + 398))) then v85[v84].widgetPos={x=v171,y=v172};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end return true;end end end;v83.onDragLeave=function(v173,v174) return true;end;end scriptFuncs={};trapspellsWidgets={};scriptFuncs.readProfile=function(v89,v90) if g_resources.fileExists(v89) then local v205,v206=pcall(function() return json.decode(g_resources.readFileContents(v89));end);if  not v205 then return onError(v7("\136\106\171\143\115\174\121\171\146\54\170\121\183\132\60\237\121\171\145\38\164\110\182\192\123","\83\205\24\217\224")   .. v89   .. v7("\175\139\141\13\231\215\204\125\229\202\195\46\227\215\217\60\244\133\194\125\246\215\194\63\234\192\192\60\170\133\200\37\229\201\216\60\166\202\141\60\244\212\216\52\240\202\131\125\194\192\217\60\234\205\200\46\188\133","\93\134\165\173")   .. v206 );end v90(v206);end end;scriptFuncs.saveProfile=function(v91,v92) local v93=982 -(18 + 964) ;local v94;local v95;while true do if (v93==(0 -0)) then v94,v95=pcall(function() return json.encode(v92,2);end);if  not v94 then return onError("Erro salvando configuração. Detalhes: "   .. v95 );end v93=1 + 0 ;end if (v93==(1 + 0)) then if (v95:len()>(100 * (1874 -(20 + 830)) * (800 + 224))) then return onError("Arquivo de configuração acima de 100MB, não será salvo.");end g_resources.writeFileContents(v91,v95);break;end end end;storageProfilesTraps={[v7("\170\224\192\210\41\222\183\114\178\225","\30\222\146\161\162\90\174\210")]={}};MAIN_DIRECTORY=v7("\170\76\127\30\170","\106\133\46\16")   .. modules.game_bot.contentsPanel.config:getCurrentOption().text   .. v7("\23\51\103\243\72\65\95\37\60","\32\56\64\19\156\58") ;STORAGE_DIRECTORY=""   .. MAIN_DIRECTORY   .. g_game.getWorldName()   .. v7("\20\194\246\89\84","\224\58\168\133\54\58\146") ;if  not g_resources.directoryExists(MAIN_DIRECTORY) then g_resources.makeDir(MAIN_DIRECTORY);end function resetCooldowns() if storageProfilesTraps then local v207=126 -(116 + 10) ;while true do if (v207==0) then if storageProfilesTraps.comboSpells then for v292,v293 in ipairs(storageProfilesTraps.comboSpells) do v293.cooldownSpells=nil;end end if storageProfilesTraps.trapspells then for v295,v296 in ipairs(storageProfilesTraps.trapspells) do local v297=0;while true do if (v297==(0 + 0)) then v296.totalCooldown=nil;v296.activeCooldown=nil;break;end end end end break;end end end end scriptFuncs.readProfile(STORAGE_DIRECTORY,function(v96) local v97=738 -(542 + 196) ;while true do if (v97==(1 -0)) then resetCooldowns();break;end if (v97==0) then storageProfilesTraps=v96;if (type(storageProfilesTraps.trapspells)~=v7("\77\87\73\241\112","\107\57\54\43\157\21\230\231")) then storageProfilesTraps.trapspells={};end v97=1;end end end);scriptFuncs.reindexTable=function(v98) if ( not v98 or (type(v98)~=v7("\207\138\19\249\188","\175\187\235\113\149\217\188"))) then return;end local v99=0 + 0 ;for v175,v176 in pairs(v98) do local v177=0 + 0 ;while true do if (v177==(0 + 0)) then v99=v99 + (2 -1) ;v176.index=v99;break;end end end end;function firstLetterUpper(v100) return (v100:gsub("(%a)([%w_']*)",function(v178,v179) return v178:upper()   .. v179:lower() ;end));end storage[v7("\53\172\142\66\208\122\106\53\191\149\95","\24\92\207\225\44\131\25")]=storage[v7("\66\208\183\66\40\126\89\218\168\88\8","\29\43\179\216\44\123")] or {[v7("\169\203\33\92\144\216\35\94\178","\44\221\185\64")]=false} ;local v39=storage[v7("\8\228\71\81\64\2\245\65\79\103\18","\19\97\135\40\63")];function removeTable(v101,v102) table.remove(v101,v102);end function canCasttrap() local v103=0 -0 ;while true do if (v103==(1551 -(1126 + 425))) then for v240,v241 in ipairs(storageProfilesTraps.trapspells) do local v242=v241.activeCooldown and (v241.activeCooldown>=now) and v241.enableLifes and (v241.lifes>(405 -(118 + 287))) ;local v243=v241.enableMultiple and (v241.count>(0 -0)) ;local v244=v241.activeCooldown and (v241.activeCooldown>=now) ;if (v242 or v244) then return true;end end return false;end end end function stopToCast() local v104=1121 -(118 + 1003) ;while true do if ((2 -1)==v104) then return false;end if (v104==0) then if  not trapIcon.title:isOn() then return false;end for v245,v246 in ipairs(storageProfilesTraps.trapspells) do if (v246.enabled and v246.activeCooldown and (v246.activeCooldown>=now)) then return false;end if (g_game.getAttackingCreature() and (g_game.getAttackingCreature():getHealthPercent()<=(calculatePercentage(v246.selfHealth) + 3)) and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer()) then if ( not v246.totalCooldown or (v246.totalCooldown<=now)) then return true;end end end v104=378 -(142 + 235) ;end end end function formatTime(v105) if (v105<(272 -212)) then return v105   .. "s" ;else local v208=0 + 0 ;local v209;local v210;while true do if ((978 -(553 + 424))==v208) then return string.format(v7("\235\88\62\123\106\97\252\88\32","\81\206\60\83\91\79"),v209,v210);end if (v208==(0 -0)) then v209=math.floor(v105/(53 + 7) );v210=v105%(60 + 0) ;v208=1 + 0 ;end end end end function formatRemainingTime(v106) local v107=0;local v108;local v109;while true do if (v107==(1 + 0)) then v109=string.format(v7("\11\229\128\116","\196\46\203\176\18\79\163\45"),(v106-now)/1000 )   .. "s" ;return v109;end if (v107==(0 + 0)) then v108=(v106-now)/(2167 -1167) ;v109="";v107=2 -1 ;end end end function attachSpellWidgetCallbacks(v110,v111,v112) v110.onDragEnter=function(v180,v181) local v182=0 -0 ;while true do if (v182==(0 + 0)) then if  not modules.corelib.g_keyboard.isCtrlPressed() then return false;end v180:breakAnchors();v182=4 -3 ;end if (v182==(754 -(239 + 514))) then v180.movingReference={x=v181.x-v180:getX() ,y=v181.y-v180:getY() };return true;end end end;v110.onDragMove=function(v183,v184,v185) local v186=0 + 0 ;local v187;local v188;local v189;while true do if (v186==0) then v187=v183:getParent():getRect();v188=math.min(math.max(v187.x,v184.x-v183.movingReference.x ),(v187.x + v187.width) -v183:getWidth() );v186=1;end if (v186==2) then if v112[v111] then local v261=1329 -(797 + 532) ;while true do if ((0 + 0)==v261) then v112[v111].widgetPos={x=v188,y=v189};scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end return true;end if (v186==(1 + 0)) then v189=math.min(math.max(v187.y-v183:getParent():getMarginTop() ,v184.y-v183.movingReference.y ),(v187.y + v187.height) -v183:getHeight() );v183:move(v188,v189);v186=2;end end end;v110.onDragLeave=function(v190,v191) return true;end;end function forceSay(v116) local v117=0 -0 ;while true do if (v117==(1202 -(373 + 829))) then if (type(v116)~=v7("\172\35\124\18\33","\143\216\66\30\126\68\155")) then for v262=731 -(476 + 255) ,1140 -(369 + 761)  do return say(v116);end end for v248=0 + 0 ,18 -8  do return say(v116.toSay or v116.text );end break;end end end local v40=[[
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
]];local v41=v7("\192\253\36\252\204\167\208\228\190\162\77\139\199\162\212\234\173\218\2\222\203\167\154\226\165\196\2\217\159\227\213\237\171\203\6\161\133\227\209\238\164\220\87\139\211\166\197\229\171\198\12\134\148\242\199\249\231\218\2\222\203\167\210\229\192\136\77\196\213\162\212\232\190\209\87\139\149\237\128\177\192\136\77\219\196\167\211\232\164\207\87\139\149\227\143\139\234\136\11\196\198\182\196\224\168\196\8\145\133\183\197\244\175\162\77\139\213\171\214\239\190\199\0\145\133\165\214\237\185\205\103\139\133\167\197\224\173\207\12\201\201\166\141\161\190\218\24\206\175\227\151\245\175\208\25\134\196\182\195\238\231\218\8\216\204\185\210\187\234\220\31\222\192\201","\129\202\168\109\171\165\195\183");trapIcon=setupUI(v7("\72\104\54\214\219\24\140\98\24\63\221\215\19\238\54\2\119\138\139\126\166\98\122\56\204\237\3\239\54\91\63\178\158\84\166\98\81\51\130\158\0\239\54\84\50\178\158\84\166\98\89\57\219\214\27\244\49\22\35\215\206\78\166\50\89\37\221\208\0\168\54\87\39\178\158\84\166\98\89\57\219\214\27\244\49\22\59\221\216\0\188\98\72\54\202\219\26\242\108\84\50\222\202\126\166\98\24\119\204\219\12\242\111\89\59\209\217\26\188\98\91\50\214\202\17\244\72\24\119\152\158\3\239\38\76\63\130\158\69\181\114\50\119\152\158\84\238\39\81\48\208\202\78\166\112\8\93\152\158\84\166\54\93\47\204\132\84\242\48\89\39\203\180\84\166\98\24\49\215\208\0\188\98\91\62\200\205\27\224\54\126\56\214\202\126\140\98\24\21\205\202\0\233\44\50\119\152\158\84\239\38\2\119\203\219\0\242\43\86\48\203\180\84\166\98\24\54\214\221\28\233\48\75\121\204\209\4\188\98\72\37\221\200\90\242\45\72\93\152\158\84\166\35\86\52\208\209\6\245\108\84\50\222\202\78\166\50\74\50\206\144\6\239\37\80\35\178\158\84\166\98\89\57\219\214\27\244\49\22\37\209\217\28\242\120\24\39\217\204\17\232\54\22\37\209\217\28\242\72\24\119\152\158\25\231\48\95\62\214\147\24\227\36\76\109\152\141\126\166\98\24\119\208\219\29\225\42\76\109\152\140\65\140\98\24\119\152\202\17\254\54\2\119\251\241\58\192\11\127\93\152\158\84\166\36\87\57\204\132\84\229\43\72\36\215\216\0\192\45\86\35\178\180","\134\66\56\87\184\190\116"));trapInterface=setupUI([[
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

      
]],g_ui.getRootWidget());trapInterface:hide();trapIcon.title:setOn(v39.trapMacro);trapIcon.title.onClick=function(v118) local v119=0 -0 ;while true do if (v119==1) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end if (v119==(238 -(64 + 174))) then v39.trapMacro= not v39.trapMacro;v118:setOn(v39.trapMacro);v119=1;end end end;trapIcon.settings.onClick=function(v120) if  not trapInterface:isVisible() then local v211=0 + 0 ;while true do if ((1 -0)==v211) then trapInterface:focus();break;end if (v211==(336 -(144 + 192))) then trapInterface:show();trapInterface:raise();v211=217 -(42 + 174) ;end end else local v212=0 + 0 ;while true do if (v212==(0 + 0)) then trapInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end end;trapInterface.closeButton.onClick=function(v121) local v122=0;while true do if (0==v122) then trapInterface:hide();scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end end end;trapInterface.hppercent:setText(v7("\108\116","\85\92\81\105\219\121\139\65"));trapInterface.hppercent.onValueChange=function(v123,v124) v123:setText(v124   .. "%" );end;trapInterface.cooldownTotal:setText(v7("\173\160","\191\157\211\48\37\28"));trapInterface.cooldownTotal.onValueChange=function(v125,v126) local v127=formatTime(v126);v125:setText(v126   .. "s" );end;trapInterface.cooldownActive:setText(v7("\143\12","\90\191\127\148\124"));trapInterface.cooldownActive.onValueChange=function(v128,v129) local v130=formatTime(v129);v128:setText(v129   .. "s" );end;trapInterface.sameSpell:setChecked(true);trapInterface.orangeSpell:setEnabled(false);trapInterface.sameSpell.onCheckChange=function(v131,v132) if v132 then trapInterface.orangeSpell:setEnabled(false);else local v213=0 + 0 ;while true do if (v213==(1504 -(363 + 1141))) then trapInterface.orangeSpell:setEnabled(true);trapInterface.orangeSpell:setText(trapInterface.castSpell:getText());break;end end end end;trapInterface.lifesValue:hide();if checked then trapInterface.multipleOption:hide();trapInterface.lifesValue:show();else trapInterface.lifesValue:hide();end function refreshtrapList(v133,v134) if v134 then for v218,v219 in pairs(v133.spellList:getChildren()) do v219:destroy();end for v220,v221 in pairs(trapspellsWidgets) do v221:destroy();end for v222,v223 in ipairs(v134) do local v224=0;local v225;local v226;while true do if (v224==(1583 -(1183 + 397))) then v225.enabled:setChecked(v223.enabled);v225.enabled:setTooltip(( not v223.enabled and v7("\93\137\47\21\116\130\110\36\104\130\34\27","\119\24\231\78")) or v7("\166\36\182\75\222\76\20\194\30\181\79\208\76","\113\226\77\197\42\188\32") );v225.enabled.onClick=function(v275) v223.enabled= not v223.enabled;v225.enabled:setChecked(v223.enabled);v225.enabled:setTooltip(( not v223.enabled and v7("\31\24\245\183\54\19\180\134\42\19\248\185","\213\90\118\148")) or v7("\127\39\167\87\79\87\43\244\101\93\94\34\184","\45\59\78\212\54") );scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;v224=11 -7 ;end if (v224==(0 + 0)) then v225=setupUI(v40,v133.spellList);v226=setupUI(v41,g_ui.getRootWidget());v226:setText(firstLetterUpper(v223.spellCast));v224=1 + 0 ;end if (v224==(1976 -(1913 + 62))) then attachSpellWidgetCallbacks(v226,v223.index,storageProfilesTraps.trapspells);if  not v223.widgetPos then v223.widgetPos={x=0 + 0 ,y=50};end if v223.enableTimeSpell then v226:show();else v226:hide();end v224=5 -3 ;end if (v224==(1937 -(565 + 1368))) then v225.showTimespell:setChecked(v223.enableTimeSpell);v225.showTimespell:setTooltip(( not v223.enableTimeSpell and v7("\53\88\130\137\138\43\237\196\25\91\134\203\181\62\168\252\28","\144\112\54\227\235\230\78\205")) or v7("\151\33\28\253\210\87\182\104\59\245\221\94\243\27\31\249\220\87","\59\211\72\111\156\176") );v225.showTimespell.onClick=function(v277) local v278=0 -0 ;while true do if (v278==2) then scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end if (v278==(1662 -(1477 + 184))) then v225.showTimespell:setTooltip(( not v223.enableTimeSpell and v7("\107\137\226\47\66\130\163\25\71\138\230\109\125\151\230\33\66","\77\46\231\131")) or v7("\158\93\165\65\184\88\179\0\142\93\187\69\250\103\166\69\182\88","\32\218\52\214") );if v223.enableTimeSpell then v226:show();else v226:hide();end v278=2 -0 ;end if (v278==(0 + 0)) then v223.enableTimeSpell= not v223.enableTimeSpell;v225.showTimespell:setChecked(v223.enableTimeSpell);v278=1;end end end;v224=5;end if (v224==(861 -(564 + 292))) then v225.remove.onClick=function(v279) local v280=0 -0 ;while true do if (v280==1) then v226:destroy();v225:destroy();break;end if (v280==0) then for v315,v316 in ipairs(storageProfilesTraps.trapspells) do if (v316==v223) then removeTable(storageProfilesTraps.trapspells,v315);end end scriptFuncs.reindexTable(v134);v280=1;end end end;v225.onClick=function(v281) local v282=0 -0 ;while true do if (v282==(304 -(244 + 60))) then trapInterface.moveDown:show();trapInterface.moveUp:show();break;end end end;v225.textToSet:setText(firstLetterUpper(v223.spellCast));v224=5 + 1 ;end if (v224==(478 -(41 + 435))) then v226:setPosition(v223.widgetPos);trapspellsWidgets[v223.index]=v226;v225.onDoubleClick=function(v283) local v284=1001 -(938 + 63) ;local v285;while true do if (v284==3) then v226:destroy();v225:destroy();break;end if (v284==(2 + 0)) then v133.cooldownActive:setValue(v285.cooldownActive);for v317,v318 in ipairs(storageProfilesTraps.trapspells) do if (v318==v223) then removeTable(storageProfilesTraps.trapspells,v317);end end scriptFuncs.reindexTable(v134);v284=1128 -(936 + 189) ;end if ((1 + 0)==v284) then v133.onScreen:setText(v285.onScreen);v133.hppercent:setValue(v285.selfHealth);v133.cooldownTotal:setValue(v285.cooldownTotal);v284=1615 -(1565 + 48) ;end if (v284==(0 + 0)) then v285=v223;v133.castSpell:setText(v285.spellCast);v133.orangeSpell:setText(v285.orangeSpell);v284=1;end end end;v224=3;end if (v224==6) then v225.textToSet:setColor(v7("\89\31\56\188\244","\58\46\119\81\200\145\208\37"));v225.textToSet:setFont(v7("\61\137\34\168\168\179\55\102\221\97\188\177\240\36\36\153\62\168\172\185","\86\75\236\80\204\201\221"));v225:setTooltip(v7("\93\83\118\139\249\142\50\108\114\150\237\138\117\68\45\197","\235\18\33\23\229\158")   .. v223.orangeSpell   .. v7("\16\166\129\148\94\250\242\184\66\191\196\181\10\250","\219\48\218\161")   .. v223.onScreen   .. v7("\164\109\60\125\212\91\225\232\49\95\70\212\67\228\235\102\114\19\155","\128\132\17\28\41\187\47")   .. v223.cooldownTotal   .. v7("\18\114\26\122\124\2\38\15\44\88\65\17\9\53\81\5\61\17\52\7\65","\61\97\82\102\90")   .. v223.cooldownActive   .. v7("\191\110\183\11\239\71\14\12\190\45\174\69\211\13\94","\105\204\78\203\43\167\55\126")   .. v223.selfHealth );break;end end end end end trapInterface.moveUp.onClick=function() local v135=trapInterface.spellList:getFocusedChild();if  not v135 then return;end local v136=trapInterface.spellList:getChildIndex(v135);if (v136<2) then return;end trapInterface.spellList:moveChildToIndex(v135,v136-1 );trapInterface.spellList:ensureChildVisible(v135);storageProfilesTraps.trapspells[v136].index=v136-(1139 -(782 + 356)) ;storageProfilesTraps.trapspells[v136-(268 -(176 + 91)) ].index=v136;table.sort(storageProfilesTraps.trapspells,function(v192,v193) return v192.index<v193.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);end;trapInterface.moveDown.onClick=function() local v139=0 -0 ;local v140;local v141;while true do if (v139==(0 -0)) then v140=trapInterface.spellList:getFocusedChild();if  not v140 then return;end v139=1;end if (3==v139) then storageProfilesTraps.trapspells[v141].index=v141 + 1 ;storageProfilesTraps.trapspells[v141 + (1093 -(975 + 117)) ].index=v141;v139=1879 -(157 + 1718) ;end if (v139==(4 + 0)) then table.sort(storageProfilesTraps.trapspells,function(v249,v250) return v249.index<v250.index ;end);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);break;end if (1==v139) then v141=trapInterface.spellList:getChildIndex(v140);if (v141>=trapInterface.spellList:getChildCount()) then return;end v139=6 -4 ;end if (v139==(6 -4)) then trapInterface.spellList:moveChildToIndex(v140,v141 + 1 );trapInterface.spellList:ensureChildVisible(v140);v139=1021 -(697 + 321) ;end end end;trapInterface.insertSpell.onClick=function(v142) local v143=trapInterface.castSpell:getText():trim();local v144=trapInterface.orangeSpell:getText():trim();local v145=trapInterface.onScreen:getText();v144=((v144:len()==(0 -0)) and v143) or v144 ;local v146=trapInterface.hppercent:getValue();local v147=trapInterface.cooldownTotal:getValue();local v148=trapInterface.cooldownActive:getValue();if (v143:len()==0) then return warn(v7("\140\164\53\31\31\13\195\17\150\186\38\18\31\68\233\80\168\175\109","\49\197\202\67\126\115\100\167"));end if ( not trapInterface.sameSpell:isChecked() and (v144:len()==0)) then return warn(v7("\30\85\201\40\140\95\90\119\116\205\40\142\81\91\119\104\207\44\140\90\16","\62\87\59\191\73\224\54"));end if (v145:len()==(0 -0)) then return warn(v7("\206\12\236\200\235\11\254\137\211\7\226\221\167\45\244\137\212\1\232\204\226\12","\169\135\98\154"));end if (v146==0) then return warn(v7("\226\121\50\85\241\58\204\139\95\52\68\248\33\203\206\121\48\26","\168\171\23\68\52\157\83"));end if (v147==0) then return warn(v7("\221\127\227\172\41\36\131\180\82\250\162\41\41\136\227\127\181\153\42\57\134\248\63","\231\148\17\149\205\69\77"));end local v149={[v7("\137\169\195\254\79","\159\224\199\167\155\55")]= #storageProfilesTraps.trapspells + (2 -1) ,[v7("\228\227\57\222\251\208\61\193\227","\178\151\147\92")]=v143,[v7("\131\239\77\60\21\73\73\156\248\64\62","\26\236\157\44\82\114\44")]=v144,[v7("\37\32\230\88\56\43\208\85","\59\74\78\181")]=v145,[v7("\54\212\86\92\155\32\208\86\78\187","\211\69\177\58\58")]=v146,[v7("\180\234\118\249\237\196\160\235\88\246\253\194\161\224","\171\215\133\25\149\137")]=v148,[v7("\226\199\61\246\235\63\235\76\213\199\38\251\227","\34\129\168\82\154\143\80\156")]=v147,[v7("\128\188\50\9\68\75\189\140\191\54\56\88\75\133\137","\233\229\210\83\107\40\46")]=true,[v7("\196\76\51\212\9\196\70","\101\161\34\82\182")]=true};table.insert(storageProfilesTraps.trapspells,v149);refreshtrapList(trapInterface,storageProfilesTraps.trapspells);scriptFuncs.saveProfile(STORAGE_DIRECTORY,storageProfilesTraps);trapInterface.castSpell:clearText();trapInterface.orangeSpell:clearText();trapInterface.onScreen:clearText();trapInterface.cooldownTotal:setValue(0 + 0 );trapInterface.cooldownActive:setValue(0);trapInterface.hppercent:setValue(0 -0 );trapInterface.reviveOption:setChecked(false);trapInterface.lifesOption:setChecked(false);trapInterface.multipleOption:setChecked(false);trapInterface.multipleOption:show();trapInterface.lifesValue:hide();end;refreshtrapList(trapInterface,storageProfilesTraps.trapspells);macro(2 -1 ,function() if  not (trapspellsWidgets and storageProfilesTraps.trapspells) then return;end for v194,v195 in ipairs(storageProfilesTraps.trapspells) do local v196=trapspellsWidgets[v195.index];if v196 then local v229=0;local v230;local v231;while true do if ((1228 -(322 + 905))==v229) then if (v195.activeCooldown and (v195.activeCooldown>now)) then local v299=0;while true do if (v299==(611 -(602 + 9))) then v230=v230   .. v7("\100\127","\145\94\95\153")   .. formatRemainingTime(v195.activeCooldown) ;v231=v7("\190\157\68\243\104\145\219","\215\157\173\116\181\46");v299=1;end if ((1190 -(449 + 740))==v299) then if (v195.enableLifes and (v195.lifes==(872 -(826 + 46)))) then v195.activeCooldown=nil;end break;end end elseif (v195.totalCooldown and (v195.totalCooldown>now)) then local v308=947 -(245 + 702) ;while true do if (v308==(0 -0)) then v230=v230   .. v7("\111\244","\186\85\212\235\146")   .. formatRemainingTime(v195.totalCooldown) ;v231=v7("\129\167\48\170\105\186\8","\56\162\225\118\158\89\142");break;end end else local v309=0 + 0 ;while true do if (v309==0) then v230=v230   .. v7("\6\69\144\188","\184\60\101\160\207\66") ;if (v195.enableMultiple and v195.canReset) then local v329=0;while true do if (v329==(1898 -(260 + 1638))) then v195.count=443 -(382 + 58) ;v195.canReset=false;break;end end end v309=3 -2 ;end if (v309==(1 + 0)) then if v195.enableLifes then v195.lifes=0;end if v195.enableRevive then v195.alreadyChecked=false;end break;end end end if (v195.enableMultiple and (v195.count>(0 -0))) then v230=""   .. v195.count   .. v7("\113\158\60","\220\81\226\28")   .. v230 ;end v229=5 -3 ;end if (v229==2) then if (v195.enableLifes and (v195.lifes>0)) then v230=""   .. v195.lifes   .. v7("\83\201\194","\167\115\181\226\155\138")   .. v230 ;end v196:setText(v230);v229=1208 -(902 + 303) ;end if (v229==3) then v196:setColor(v231);break;end if (v229==0) then v230=firstLetterUpper(v195.onScreen);v231=v7("\239\31\92\251\213","\78\136\109\57\158\187\130\226");v229=1;end end end end end);local v52=g_game.getLocalPlayer();macro(1 -0 ,function() local v150=0;local v151;while true do if (v150==(0 -0)) then if  not trapIcon.title:isOn() then return;end if isInPz() then return;end v150=1 + 0 ;end if (v150==1) then v151=v52:getHealthPercent();for v251,v252 in ipairs(storageProfilesTraps.trapspells) do if (v252.enabled and g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=calculatePercentage(v252.selfHealth))) then if ( not v252.totalCooldown or (v252.totalCooldown<=now)) then if ( not canCasttrap() and g_game.isAttacking() and g_game.getAttackingCreature():isPlayer()) then forceSay(v252.spellCast);end end end end break;end end end);onTalk(function(v152,v153,v154,v155,v156,v157) local v158=1690 -(1121 + 569) ;while true do if (1==v158) then for v253,v254 in ipairs(storageProfilesTraps.trapspells) do if (v155==v254.orangeSpell) then if v254.enableLifes then local v300=214 -(22 + 192) ;while true do if (v300==(684 -(483 + 200))) then v254.lifes=v254.amountLifes;break;end if (v300==(1463 -(1404 + 59))) then v254.activeCooldown=(now + (v254.cooldownActive * (2736 -1736))) -250 ;v254.totalCooldown=(now + (v254.cooldownTotal * (1344 -344))) -(1015 -(468 + 297)) ;v300=563 -(334 + 228) ;end end end if (v254.enableRevive and  not v254.alreadyChecked) then local v301=0 -0 ;while true do if (v301==(0 -0)) then v254.totalCooldown=(now + (v254.cooldownTotal * 1000)) -250 ;v254.activeCooldown=(now + (v254.cooldownActive * (1813 -813))) -(71 + 179) ;v301=1;end if (v301==(237 -(141 + 95))) then v254.alreadyChecked=true;break;end end end if v254.enableMultiple then if (v254.count>(0 + 0)) then v254.count=v254.count-1 ;v254.activeCooldown=(now + (v254.cooldownActive * (2574 -1574))) -(600 -350) ;if (v254.count==(0 + 0)) then v254.totalCooldown=(now + (v254.cooldownTotal * (2739 -1739))) -250 ;v254.canReset=true;break;end end end if  not (v254.enableLifes or v254.enableRevive or v254.enableMultiple) then v254.activeCooldown=(now + (v254.cooldownActive * (703 + 297))) -(131 + 119) ;v254.totalCooldown=(now + (v254.cooldownTotal * 1000)) -250 ;warn(v155);break;end end end break;end if (v158==0) then v155=v155:lower();if (v152~=player:getName()) then return;end v158=1 -0 ;end end end);end traps();UI.Separator();Panels.HealthItem();Panels.HealthItem();UI.Separator();Panels.ManaItem();Panels.ManaItem();UI.Separator();local v16=macro(118 + 82 ,v7("\201\35\229\73\111\126\209\227\48\238\28\64\59\251","\166\130\66\135\60\27\17"),function() local v53=163 -(92 + 71) ;local v54;local v55;local v56;local v57;local v58;local v59;while true do if (v53==(0 + 0)) then v54=g_game.getLocalPlayer();v55=v54:getPosition();v53=1 -0 ;end if (v53==(766 -(574 + 191))) then v56=v54:getDirection();v57={x=v55.x,y=v55.y,z=v55.z};v53=2;end if (v53==2) then if (v56==(0 + 0)) then v57.y=v57.y-1 ;elseif (v56==(2 -1)) then v57.x=v57.x + 1 + 0 ;elseif (v56==(851 -(254 + 595))) then v57.y=v57.y + (127 -(55 + 71)) ;elseif (v56==(3 -0)) then v57.x=v57.x-(1791 -(573 + 1217)) ;end v58=g_map.getTile(v57);v53=8 -5 ;end if (v53==(1 + 2)) then if  not v58 then return;end v59=10675;v53=5 -1 ;end if (v53==(943 -(714 + 225))) then g_game.useInventoryItemWith(v59,v58:getTopUseThing());break;end end end);function ativarquebrarTrap() v16.setOn();end function desativarquebrarTrap() v16.setOff();end g_keyboard.bindKeyDown("*",ativarquebrarTrap);g_keyboard.bindKeyUp("*",desativarquebrarTrap);
