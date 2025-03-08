

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26=0 + 0 ;local v27;while true do if ((1270 -(226 + 1044))==v26) then v27={};for v45=1, #v24 do v6(v27,v0(v4(v1(v2(v24,v45,v45 + 1 )),v1(v2(v25,(4 -3) + (v45% #v25) ,1 + (v45% #v25) + (118 -(32 + 85)) )))%(251 + 5) ));end v26=1 + 0 ;end if (v26==(958 -(892 + 65))) then return v5(v27);end end end local v3=bit32 or bit ;local v4=v3.bxor;local v8=v3.bor;local v9=v3.band;local v10={};setDefaultTab(v7("\252\194\210\43","\126\177\163\187\69\134\219\167"));v10[v7("\19\204\35\203\249\47\227\43\200\249\102\157","\156\67\173\74\165")]=v7("\18\190\69\2\174\41\100\53\163\93\26\185\53","\38\84\215\41\118\220\70");FiltroIcon=setupUI([[
Panel
  height: 20
  margin-top: 3
  
  Panel
    id: inicio
    anchors.top: parent.top
    anchors.left: parent.left
    margin-left: 0
    margin-top:
    image-border: 2
    text-align: center
    text-align: left
    width: 200
    height: 20
    image-source: 
    font: verdana-11px-rounded
    opacity: 0.80

  Panel
    id: buttons
    anchors.top: parent.top
    anchors.horizontalCenter: parent.horizontalCenter
    height: 20
    width: 15 0
    layout:
      type: horizontalBox
      spacing: 20

  BattlePlayers
    id: players
    border: 1 #778899
    image-color: white
    anchors.top: parent.top
    anchors.left: parent.left
    margin-left: 23
    image-source: /images/game/battle/battle_players
    !tooltip: tr('Filtrar players.')

  BattleNPCs
    id: npcs
    border: 1 #778899
    anchors.top: parent.top
    anchors.left: parent.left
    margin-left: 54
    text-align: center
    image-source: /images/game/battle/battle_npcs
    !tooltip: tr('Filtrar Npcs.')
    @onCheckChange: modules.game_battle.checkCreatures()

  BattleMonsters
    id: mobs
    border: 1 #778899
    anchors.top: parent.top
    anchors.left: parent.left
    margin-left: 86
    text-align: center
    image-source: /images/game/battle/battle_monsters
    !tooltip: tr('Filtrar mobs.')
    opacity: 0.85
    @onCheckChange: modules.game_battle.checkCreatures()

  BattleSkulls
    id: sempk
    border: 1 #778899
    anchors.top: parent.top
    anchors.left: parent.left
    margin-left: 118
    text-align: center
    image-source: /images/game/battle/battle_skulls
    !tooltip: tr('Filtrar Player sem PK.')
    opacity: 0.85
    @onCheckChange: modules.game_battle.checkCreatures()

  BattleParty
    id: party
    border: 1 #778899
    anchors.top: parent.top
    anchors.left: parent.left
    margin-left: 150
    text-align: center
    image-source: /images/game/battle/battle_party
    !tooltip: tr('Filtrar Membros do Grupo.')
    opacity: 0.85
    @onCheckChange: modules.game_battle.checkCreatures()
]],parent);v10[v7("\118\31\46\6\236\95\38\46\19\231\85\4\49\87\174","\158\48\118\66\114")]=false;v10[v7("\141\45\28\34\97\170\213\187\39\3\115\35","\155\203\68\112\86\19\197")]=false;v10[v7("\96\212\58\232\82\119\200\247\68\206\115\172","\152\38\189\86\156\32\24\133")]=false;v10[v7("\218\94\171\82\238\88\148\77\233\91\171\3\172","\38\156\55\199")]=false;v10[v7("\142\116\112\60\1\123\202\66\186\105\101\109\67","\35\200\29\28\72\115\20\154")]=false;local function v17() FiltroIcon.players:setImageColor((v10[v7("\63\182\221\203\159\35\4\21\190\200\218\159\63\113\73","\84\121\223\177\191\237\76")] and v7("\248\0\144\246\99\6\105","\161\219\54\169\192\90\48\80")) or v7("\10\100\38\3\111\100\38","\69\41\34\96") );FiltroIcon.npcs:setImageColor((v10[v7("\154\202\219\30\16\36\146\211\212\25\71\123","\75\220\163\183\106\98")] and v7("\65\236\210\97\128\84\227","\185\98\218\235\87")) or v7("\136\26\1\192\248\140\237","\202\171\92\71\134\190") );FiltroIcon.mobs:setImageColor((v10[v7("\15\200\32\156\59\206\1\135\43\210\105\216","\232\73\161\76")] and v7("\248\143\27\11\71\237\128","\126\219\185\34\61")) or v7("\79\232\120\84\88\81\213","\135\108\174\62\18\30\23\147") );FiltroIcon.sempk:setImageColor((v10[v7("\144\224\38\223\10\161\0\204\163\229\38\142\72","\167\214\137\74\171\120\206\83")] and v7("\200\166\107\11\161\241\210","\199\235\144\82\61\152")) or v7("\68\48\159\13\33\48\159","\75\103\118\217") );FiltroIcon.party:setImageColor((v10[v7("\225\93\124\0\171\17\247\85\98\0\160\91\151","\126\167\52\16\116\217")] and v7("\139\120\121\214\237\79\165","\156\168\78\64\224\212\121")) or v7("\68\200\131\232\33\200\131","\174\103\142\197") );end FiltroIcon.players.onClick=function(v28) local v29=0 -0 ;while true do if (v29==0) then v10[v7("\112\33\83\44\55\81\200\90\41\70\61\55\77\189\6","\152\54\72\63\88\69\62")]= not v10[v7("\242\205\226\72\198\203\222\80\213\221\235\78\199\129\190","\60\180\164\142")];v17();break;end end end;FiltroIcon.npcs.onClick=function(v30) local v31=0;while true do if (v31==(0 -0)) then v10[v7("\126\87\9\61\53\226\60\72\93\22\108\119","\114\56\62\101\73\71\141")]= not v10[v7("\158\224\215\208\170\230\245\212\187\250\158\148","\164\216\137\187")];v17();break;end end end;FiltroIcon.mobs.onClick=function(v32) v10[v7("\244\239\61\166\180\241\38\221\228\34\247\246","\107\178\134\81\210\198\158")]= not v10[v7("\30\7\142\210\184\55\35\141\196\185\125\94","\202\88\110\226\166")];v17();end;FiltroIcon.sempk.onClick=function(v34) local v35=0 -0 ;while true do if (v35==(350 -(87 + 263))) then v10[v7("\229\6\142\227\216\204\60\137\226\198\207\74\210","\170\163\111\226\151")]= not v10[v7("\55\57\190\44\92\56\26\26\37\190\52\11\103","\73\113\80\210\88\46\87")];v17();break;end end end;FiltroIcon.party.onClick=function(v36) local v37=180 -(67 + 113) ;while true do if (v37==0) then v10[v7("\167\37\193\6\245\142\28\204\0\243\152\105\157","\135\225\76\173\114")]= not v10[v7("\60\228\180\164\190\178\151\27\255\172\169\233\237","\199\122\141\216\208\204\221")];v17();break;end end end;FiltrarBattle=macro(1 + 0 ,function() end);modules.game_battle.doCreatureFitFilters=function(v38) local v39=0 -0 ;while true do if (v39==(2 + 0)) then return true;end if (v39==(0 -0)) then if (v38:isLocalPlayer() or (v38:getHealthPercent()<=(952 -(802 + 150)))) then return false;end v10[v7("\189\210\3\181\40","\150\205\189\112\144\24")]=v38:getPosition();v39=2 -1 ;end if (v39==(1 -0)) then if ( not v10[v7("\53\139\172\9\84","\112\69\228\223\44\100\232\113")] or (v10[v7("\196\16\20\150\230","\230\180\127\103\179\214\28")].z~=posz()) or  not v38:canBeSeen()) then return false;end if (v38:isMonster() and FiltrarBattle.isOn() and v10[v7("\170\12\83\82\246\78\205\131\7\76\3\180","\128\236\101\63\38\132\33")]) then return false;elseif (v38:isPlayer() and FiltrarBattle.isOn() and v10[v7("\138\160\29\80\164\228\255\160\168\8\65\164\248\138\252","\175\204\201\113\36\214\139")]) then return false;elseif (v38:isNpc() and FiltrarBattle.isOn() and v10[v7("\97\197\57\200\22\72\226\37\223\23\2\156","\100\39\172\85\188")]) then return false;elseif (v38:isPlayer() and ((v38:getEmblem()==1) or (v38:getShield()==(3 + 0)) or (v38:getShield()==(1001 -(915 + 82)))) and FiltrarBattle.isOn() and v10[v7("\139\113\181\148\33\162\72\184\146\39\180\61\233","\83\205\24\217\224")]) then return false;elseif (v38:isPlayer() and (v38:getSkull()==0) and v10[v7("\192\204\193\41\244\202\254\54\243\201\193\120\182","\93\134\165\173")]) then return false;end v39=2;end end end;
