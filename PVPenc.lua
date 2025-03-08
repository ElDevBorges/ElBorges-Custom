
local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v17,v18) local v19={};for v38=4 -3 , #v17 do v6(v19,v0(v4(v1(v2(v17,v38,v38 + 1 )),v1(v2(v18,1 + 0 + (v38% #v18) ,1 + (v38% #v18) + (1386 -(1103 + 282)) )))%256 ));end return v5(v19);end xtela10nui,ytela10nui=676 + 114 ,650 -(87 + 263) ;timemagianui="";tempoi1nui=120180 -(67 + 113) ;tempoi2nui=0 + 0 ;texto10nui=v7("\255\246\242\7\199\137\238","\126\177\163\187\69\134\219\167");local v8=setupUI(v7("\73\253\43\203\249\47\167\106\133\244\38\196\45\205\232\121\141\126\149\172\73\141\106\210\245\39\217\34\159\188\122\157\122\175","\156\67\173\74\165"),g_ui.getRootWidget());local v9=g_ui.loadUIFromString(v7("\94\155\72\20\185\42\44\116\247\74\25\176\41\84\110\247\94\30\181\50\67\94\247\9\20\189\37\77\51\165\70\3\178\34\11\55\184\69\25\174\124\6\54\187\72\21\183\76\6\116\184\89\23\191\47\82\45\237\9\70\242\126\19\94\247\9\2\185\62\82\121\191\70\4\181\60\73\58\163\72\26\241\39\83\32\184\4\4\185\53\79\46\178\19\86\168\52\83\49\221","\38\84\215\41\118\220\70"),v8);macro(2 -1 ,function() if ( not storage.time.nui1 or (storage.time.nui1<now)) then local v41=0 + 0 ;while true do if (v41==(0 -0)) then v9:setText(texto10nui);v9:setColor(v7("\87\4\39\23\240","\158\48\118\66\114"));break;end end elseif (storage.time.nu1>=now) then local v45=952 -(802 + 150) ;while true do if (v45==(0 -0)) then v9:setColor(v7("\169\40\5\51","\155\203\68\112\86\19\197"));v9:setText(texto10nui   .. string.format(v7("\3\147\102\250","\152\38\189\86\156\32\24\133"),(storage.time.nu1-now)/(1813 -813) )   .. v7("\239\23","\38\156\55\199") );break;end end else local v46=0 + 0 ;while true do if ((997 -(915 + 82))==v46) then v9:setColor(v7("\186\120\120","\35\200\29\28\72\115\20\154"));v9:setText(texto10nui   .. string.format(v7("\92\241\129\217","\84\121\223\177\191\237\76"),(storage.time.nui1-now)/(2831 -1831) )   .. v7("\168\22","\161\219\54\169\192\90\48\80") );break;end end end end);onTextMessage(function(v20,v21) if v21:find(v7("\89\67\18\36\9\87\19\36\91\2\1\101\76\81\16\36\77\67\64\43\70\84\1\40\76\76\20\32\7","\69\41\34\96")) then local v42=0;while true do if (v42==(0 + 0)) then storage.time=storage.time or {} ;storage.time.nui1=now + tempoi1nui ;v42=1 -0 ;end if (v42==(1188 -(1069 + 118))) then storage.time.nu1=now + tempoi2nui ;break;end end end end);if ((type(storage.time)~=v7("\168\194\213\6\7","\75\220\163\183\106\98")) or  not storage.time.nu1 or ((storage.time.nui1-now)>60000) or  not storage.time.nu1 or ((storage.time.nu1-now)>(136122 -76122))) then storage.time={[v7("\12\175\130\102","\185\98\218\235\87")]=0 -0 ,[v7("\197\41\118","\202\171\92\71\134\190")]=0 + 0 };end v9:setPosition({y=ytela10nui + 40 ,x=xtela10nui + 10 });setDefaultTab(v7("\25\247\28","\232\73\161\76"));local v10=v7("\176\208\78\81\45\175\220\67\81","\126\219\185\34\61");local v11=setupUI([[
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

]],parent);v11:setId(v10);if  not storage[v10] then storage[v10]={[v7("\5\202","\135\108\174\62\18\30\23\147")]=5458 -2386 ,[v7("\162\224\62\199\29","\167\214\137\74\171\120\206\83")]=enabled,[v7("\142\254\51\95\244\162\143","\199\235\144\82\61\152")]=false,[v7("\20\19\173\63\14\24\190","\75\103\118\217")]=true,[v7("\207\68","\126\167\52\16\116\217")]=20 + 0 };end v11.title:setOn(storage[v10].enabled);v11.title.onClick=function(v22) storage[v10].enabled= not storage[v10].enabled;v22:setOn(storage[v10].enabled);end;local v13=function() local v24;if storage[v10].setting then v24=v7("\252\47\50\135\177\13","\156\168\78\64\224\212\121");else v24=v7("\34\224\160\195\30","\174\103\142\197");end v11.help:setText(v7("\127\46\31","\152\54\72\63\88\69\62")   .. v24   .. v7("\148\236\222\0\137","\60\180\164\142")   .. storage[v10].hp   .. "%" );end;v13();v11.HP.onValueChange=function(v25,v26) local v27=0;while true do if (0==v27) then storage[v10].hp=v26;v13();break;end end end;v11.item:setItemId(storage[v10].id);v11.item.onItemChange=function(v28) storage[v10].id=v28:getItemId();end;v11.HP:setValue(storage[v10].hp);macro(891 -(368 + 423) ,function() local v30=0;local v31;while true do if (v30==(3 -2)) then if storage[v10].setting then if (g_game.isAttacking() and g_game.getAttackingCreature():isPlayer() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v10].hp)) then if ( not storage.time.nui1 or (storage.time.nui1<now)) then local v60=0;local v61;local v62;local v63;local v64;local v65;while true do if (v60==(19 -(10 + 8))) then v63=v61:getPosition();v64=math.abs(v62.x-v63.x );v60=2;end if (v60==(0 -0)) then v61=g_game.getAttackingCreature();v62=v31:getPosition();v60=443 -(416 + 26) ;end if (v60==2) then v65=math.abs(v62.y-v63.y );if (((v64==(3 -2)) and (v65==0)) or ((v64==(0 + 0)) and (v65==(1 -0))) or ((v64==(439 -(145 + 293))) and (v65==(431 -(44 + 386))))) then useWith(storage[v10].id,v61);end break;end end end end else for v51,v52 in pairs(getSpectators()) do if (g_game.isAttacking() and (g_game.getAttackingCreature():getHealthPercent()<=storage[v10].hp)) then local v54=1486 -(998 + 488) ;local v55;local v56;local v57;local v58;while true do if (v54==(0 + 0)) then v55=v52:getPosition();v56=v31:getPosition();v54=1 + 0 ;end if (v54==(774 -(201 + 571))) then if (((v57==(1139 -(116 + 1022))) and (v58==0)) or ((v57==(0 -0)) and (v58==(1 + 0))) or ((v57==(3 -2)) and (v58==(3 -2)))) then useWith(storage[v10].id,v52);end break;end if (v54==(860 -(814 + 45))) then v57=math.abs(v56.x-v55.x );v58=math.abs(v56.y-v55.y );v54=2;end end end end end break;end if (v30==(0 -0)) then if  not storage[v10].enabled then return;end v31=g_game.getLocalPlayer();v30=1;end end end);addSeparator();UI.Separator();Panels.HealthItem();Panels.HealthItem();UI.Separator();Panels.ManaItem();Panels.ManaItem();UI.Separator();local v16=macro(11 + 189 ,v7("\115\95\7\60\51\226\5\89\76\12\105\28\167\47","\114\56\62\101\73\71\141"),function() local v32=g_game.getLocalPlayer();local v33=v32:getPosition();local v34=v32:getDirection();local v35={x=v33.x,y=v33.y,z=v33.z};if (v34==0) then v35.y=v35.y-(1 + 0) ;elseif (v34==1) then v35.x=v35.x + 1 ;elseif (v34==(887 -(261 + 624))) then v35.y=v35.y + 1 ;elseif (v34==3) then v35.x=v35.x-(1 -0) ;end local v36=g_map.getTile(v35);if  not v36 then return;end local v37=11755 -(1020 + 60) ;g_game.useInventoryItemWith(v37,v36:getTopUseThing());end);function ativarquebrarTrap() v16.setOn();end function desativarquebrarTrap() v16.setOff();end g_keyboard.bindKeyDown("*",ativarquebrarTrap);g_keyboard.bindKeyUp("*",desativarquebrarTrap);
