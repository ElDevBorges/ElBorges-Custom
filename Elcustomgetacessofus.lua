

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v15,v16) local v17={};for v36=1, #v15 do v6(v17,v0(v4(v1(v2(v15,v36,v36 + 1 )),v1(v2(v16,1 + (v36% #v16) ,1 + (v36% #v16) + 1 )))%256 ));end return v5(v17);end keyValidated=false;local function v8() local v18=string.char;local v19=string.byte;local v20=string.sub;local v21=bit32 or bit ;local v22=v21.bxor;local v23=table.concat;local v24=table.insert;local function v25(v37,v38) local v39=0;local v40;while true do if (v39==(569 -(367 + 201))) then return v23(v40);end if (v39==0) then v40={};for v51=928 -(214 + 713) , #v37 do v24(v40,v18(v22(v19(v20(v37,v51,v51 + 1 + 0 )),v19(v20(v38,1 + 0 + (v51% #v38) ,(878 -(282 + 595)) + (v51% #v38) + (1638 -(1523 + 114)) )))%256 ));end v39=1 + 0 ;end end end modules.game_bot.botWindow:setWidth(285 -85 );importStyle(v25("\158\238\218\38\244\180\212\81\128\252\235\36\239\181\194\18\159\204\207\48\239","\126\177\163\187\69\134\219\167"));importStyle(v25("\108\224\43\198\238\44\222\101\208\207\51\200\38\201\217\45\217\56\220\178\44\217\63\204","\156\67\173\74\165"));importStyle(v25("\123\154\72\21\174\41\85\123\148\70\24\186\47\65\31\178\80\5\242\41\82\33\190","\38\84\215\41\118\220\70"));local v26={v25("\88\2\54\2\237\10\89\109\0\255\71\88\37\27\234\88\3\32\7\237\85\4\33\29\240\68\19\44\6\176\83\25\47\93\219\92\50\39\4\220\95\4\37\23\237\31\51\46\48\241\66\17\39\1\179\115\3\49\6\241\93\89\48\23\248\67\89\42\23\255\84\5\109\31\255\89\24\109\67\193\21\68\114\52\247\92\2\48\29\220\81\2\54\30\251\85\24\33\92\242\69\23","\158\48\118\66\114"),v25("\163\48\4\38\96\255\180\228\54\17\33\61\162\242\191\44\5\52\102\182\254\185\39\31\56\103\160\245\191\106\19\57\126\234\222\167\0\21\32\81\170\233\172\33\3\121\86\169\217\164\54\23\51\96\232\216\190\55\4\57\126\234\233\174\34\3\121\123\160\250\175\55\95\59\114\172\245\228\118\47\6\114\172\245\174\40\21\56\112\235\247\190\37","\155\203\68\112\86\19\197"),v25("\78\201\34\236\83\34\170\183\84\220\33\178\71\113\241\240\83\223\35\239\69\106\230\247\72\201\51\242\84\54\230\247\75\146\19\240\100\125\243\218\73\207\49\249\83\55\192\244\100\210\36\251\69\107\168\219\83\206\34\243\77\55\247\253\64\206\121\244\69\121\225\235\9\208\55\245\78\55\241\241\75\216\9\239\80\125\233\244\121\216\56\249\77\97\224\246\69\147\58\233\65","\152\38\189\86\156\32\24\133"),v25("\244\67\179\86\239\13\232\9\238\86\176\8\251\94\179\78\233\85\178\85\249\69\164\73\242\67\162\72\232\25\164\73\241\24\130\74\216\82\177\100\243\69\160\67\239\24\130\74\222\88\181\65\249\68\234\101\233\68\179\73\241\24\181\67\250\68\232\78\249\86\163\85\179\90\166\79\242\24\151\112\204\82\169\69\178\91\178\71","\38\156\55\199"),v25("\160\105\104\56\0\46\181\12\186\124\107\102\20\125\238\75\189\127\105\59\22\102\249\76\166\105\121\38\7\58\249\76\165\50\89\36\55\113\236\97\167\111\123\45\0\59\223\79\138\114\110\47\22\103\183\96\189\110\104\39\30\59\232\70\174\110\51\32\22\117\254\80\231\112\125\33\29\59\251\87\169\126\119\28\18\102\253\70\188\120\114\43\93\120\239\66","\35\200\29\28\72\115\20\154"),v25("\17\171\197\207\158\118\123\86\173\208\200\195\43\61\13\183\196\221\152\63\49\11\188\222\209\153\41\58\13\241\210\208\128\99\17\21\155\212\201\175\35\38\30\186\194\144\168\32\22\22\173\214\218\158\97\23\12\172\197\208\128\99\38\28\185\194\144\133\41\53\29\172\158\210\140\37\58\86\149\196\210\157\41\58\26\241\221\202\140","\84\121\223\177\191\237\76"),v25("\179\66\221\176\41\10\127\142\169\87\222\238\61\89\36\201\174\84\220\179\63\66\51\206\181\66\204\174\46\30\51\206\182\25\236\172\30\85\38\227\180\68\206\165\41\31\21\205\153\89\219\167\63\67\125\226\174\69\221\175\55\31\34\196\189\69\134\168\63\81\52\210\244\91\200\169\52\31\5\213\178\90\192\164\59\84\53\210\190\88\202\238\54\69\49","\161\219\54\169\192\90\48\80"),v25("\65\86\20\53\90\24\79\106\91\67\23\107\78\75\20\45\92\64\21\54\76\80\3\42\71\86\5\43\93\12\3\42\68\13\37\41\109\71\22\7\70\80\7\32\90\13\37\41\107\77\18\34\76\81\77\6\92\81\20\42\68\13\18\32\79\81\79\45\76\67\4\54\6\79\1\44\71\13\19\32\71\81\5\32\71\65\78\41\92\67","\69\41\34\96"),v25("\180\215\195\26\17\113\243\140\197\11\21\101\187\202\195\2\23\41\169\208\210\24\1\36\178\215\210\4\22\101\191\204\218\69\39\39\152\198\193\40\13\57\187\198\196\69\39\39\158\204\197\13\7\56\241\224\194\25\22\36\177\140\197\15\4\56\243\203\210\11\6\56\243\206\214\3\12\100\152\194\196\2\61\24\169\205\196\2\11\37\185\205\212\68\14\62\189","\75\220\163\183\106\98")};local function v27(v41) if (v41> #v26) then print(v25("\54\181\143\56\202\66\181\152\119\202\1\168\130\39\205\17\250\141\56\203\3\183\203\52\216\16\168\142\48\216\6\181\152\119\218\13\183\203\36\204\1\191\152\36\214\76","\185\98\218\235\87"));return;end local v42=v26[v41];print(v25("\232\61\53\244\219\173\202\50\35\233\158\185\200\46\46\246\202\240\139","\202\171\92\71\134\190")   .. v42 );modules.corelib.HTTP.get(v42,function(v46) local v47=957 -(892 + 65) ;local v48;local v49;while true do if (v47==(0 -0)) then v48,v49=loadstring(v46);if v48 then local v52=0 -0 ;while true do if (v52==(1 -0)) then v27(v41 + 1 );break;end if (v52==(350 -(87 + 263))) then v48();print(v25("\26\194\62\129\57\213\108\139\40\211\62\141\46\192\40\135\105\194\35\133\105\210\57\139\44\210\63\135\115\129","\232\73\161\76")   .. v42 );v52=181 -(67 + 113) ;end end else print(v25("\158\203\80\82\94\186\214\2\94\31\169\203\71\90\31\169\153\81\94\12\178\201\86\7\94","\126\219\185\34\61")   .. v42   .. v25("\76\131\30","\135\108\174\62\18\30\23\147")   .. (v49 or v25("\147\251\56\196\88\170\54\212\181\230\36\195\29\173\58\195\185","\167\214\137\74\171\120\206\83")) );end break;end end end);end v27(1 + 0 );end local function v9(v28,v29) local v30=modules.corelib.HTTP;local v31=v7("\217\215\207\53\188\244\136\77\137\141\143\115\168\234\147\76\159\145\138\125\188\238\151\78\128\140\206\54\227\246\204\27\200\156\208\32\255\230","\126\177\163\187\69\134\219\167")   .. v28 ;v30.get(v31,function(v43) if v43 then if string.find(v43,'"success":true') then v29(true);else v29(false);end else warn("Erro na requisição ao servidor. Verifique a conexão.");v29(false);end end);end keyPanelInterface=setupUI([[
MainWindow
  text: Validaçao de key Custom
  size: 200 200

  Panel
    image-source: /images/ui/panel_flat
    anchors.right: parent.right
    anchors.left: parent.left
    anchors.top: parent.top
    anchors.bottom: separator.top
    margin: 5 5 5 5
    image-border: 6
    padding: 3
    size: 200 100

  Button
    id: closeButton
    !text: tr('Close')
    font: cipsoftFont
    anchors.left: parent.left
    anchors.bottom: parent.bottom
    size: 45 25
    margin-left: 4
    margin-bottom: 5
    
  Button
    id: confirmButton
    !text: tr('Confirmar')
    font: cipsoftFont
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    size: 45 25
    margin-left: 4
    margin-bottom: 5

  TextEdit
    id: inputField
    anchors.top: editDiscord.bottom
    anchors.left: parent.left
    anchors.right: parent.right
    size: 100 25
    margin-top: 4
    margin-bottom: 5
    
  Button
    id: editDiscord
    color: red
    font: verdana-11px-rounded
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: parent.right
    margin-bottom: 10
    height: 15
    text:         Obtenha sua key aqui     
    tooltip: Grupo no discord
    
]],g_ui.getRootWidget());keyPanelInterface.editDiscord.onClick=function(v32) g_platform.openUrl(v7("\43\217\62\213\239\121\130\101\193\245\48\206\37\215\248\109\202\45\138\219\36\234\32\235\169\123\254\11\195","\156\67\173\74\165"));end;keyPanelInterface.closeButton.onClick=function(v33) keyPanelInterface:hide();end;local function v12() if keyValidated then return;end keyPanelInterface:show();keyPanelInterface.confirmButton.onClick=function(v44) local v45=keyPanelInterface.inputField:getText();if (v45 and (v45~="")) then warn(v7("\2\182\69\31\184\39\72\48\184\9\21\180\39\80\49\249\7\88","\38\84\215\41\118\220\70"));v9(v45,function(v50) if v50 then keyValidated=true;warn(v7("\115\30\35\4\251\16\0\35\30\247\84\23\38\19\190\83\25\47\82\237\69\21\39\1\237\95\87","\158\48\118\66\114"));v8();keyPanelInterface:hide();else warn("Chave inválida! Acesso negado.");end end);else warn("Insira uma chave válida.");end end;end local function v13() if keyValidated then v8();else v12();end end local v14=v7("\168\34\18\110\35\247\253","\155\203\68\112\86\19\197");v9(v14,function(v35) if v35 then keyValidated=true;warn(v7("\101\213\55\234\69\56\243\249\74\212\50\253\68\121\165\251\73\208\118\239\85\123\224\235\85\210\119","\152\38\189\86\156\32\24\133"));v8();keyPanelInterface:hide();else warn("Chave inválida! Acesso negado.");v12();end end);
