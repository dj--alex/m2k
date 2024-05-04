if not love then error('This plugin for LOVE2D framework, and not works with other lua-builds'..
                'Also it requires love.filesystem and love.thread modules', 2)
end  -- И дал он ему патроны.  Бесконечные патроны.  
-- Sublime editor :: CTRL-SHIFT-P набрать menu. и оно вернётся и горячие кнопки на русском заработают! Пока сам не решишь не решится. 
i=1; -- Проект M2K является по сути своеобразным конструктором с тайловым генератором  и редактором. 
-- все выпущенные на нём игры базируются на какой то определенной версии M2K Engine (условно так) 
-- и могут сильно отличатся как по тайлам, логике и используемым обьектам и сценарияем реализовыемым ими.
-- грубо говоря одна игра использует один набор для организации загадок, вторая второй набор - для стрелялок, третья- набор для песочницы и т.п.
-- Однако поведение обьектов меняется только через objects.ini или код, а smsg.ini содержит перевод (локализацию)
screens_used=0;
itemcooldown_PL1=0;
prokrutka=0 ;
disablechangemenuoptions=0; 
pietro=1; -- default pietro but this must be saved in map or savegame!
mapsize_bytes_max=355924;
selectplayermode="";
steampak_PC1=0;
menulockpage=0; 
modtextures=0;
mass_explode_damage=380; 
lasthopeadded=0;
wsego_jezykow=0;
pajaks=0; 
freadbin_used=0; 
ed_data_gui_do=0; 
clearammo=350; 
scanobject_used=0; 
pajaktimerPL1=0;
smsg5=""; 
consolelogg="";
smsg6=""; 
generator_tanks_called=0;
wsego_pajak_spawn_jednorazowy=0;
wsego_enemydroid_spawn_jednorazowy=0;
wsego_miner_spawn_jednorazowy=0;
wsego_gwozd_spawn_jednorazowy=0;
wsego_anomaly_spawn_jednorazowy=0;
spawn_jednorazowy=0; 
pajakilosc=0; 
fix_love_11_3_bug_atlas_android=0;
 drawmenuicons=0;
 itemLONGpressedPC1=0;
 zabicie_ilosc=0
 item_PC1_timer=0;
 zabicie=0; 
 fasttimer=0; 
 wsego_boxes_spawn_jednorazowy=0;
 mimics=0;
require "lib/GestureLib/Swipe"
require "lib/GestureLib/LongPress"
require "lib/GestureLib/Tap"
keyCC="";
disable_android_touchscreen=0; 
firstload_complete=0; 
       controlcenteritems={};
        kontrolny_centrum_SC_CC={};
        counttablekontrolny_centrum_SC_CC=0; 
creditCCmaximum=2500; -- 2500 для продажи в минус разрешено временно
 kamerasrc="" ;kamerapad=0;
 imagePL1joystick="";
imagePL2joystick="";
imagePL3joystick="";
migxmap=0;
migymap=0;
lastmovePL1="down";
animacja="idle";
ObjectSIZEchangeallow=0; 
loading_lock_message=0; 
smsg_menu=""; 
latarnia=0; 
joystick_placeitem=0;
steam_state=1; 
rzad="kb";
rzad_old="kb";
fpslock=0; 
saved_maximum=0; 
object_to_rendering_gui=0; 
TGD_CALLS=0; TAE_CALLS=0; ME_CALLS=0; TGD_PR=0;
wszystkopostaciej=0; 
sledzione_hp_tankid=0; 
delayed_power=0; 
frozenscientists=0; 
savedscientists=0;
missionfailed=0; 
delayed_src="None"; 
emulatedjoystick1as2=0; 
gracz2hp=0;gracz2idpostaci=0; 
gracz3hp=0;gracz3idpostaci=0;
forcereselecttank=0; 
RolePL2=""; RolePL3=""; 
moveE=""; movePL3="";
ammoKEYE=""; ammoKEYPL3="";
delayed_id=0; 
local binser = require "binser"
keyboardmenu_maximum_keys=17; 
pomoc_punktow=0;
input_keyboard_enable=0; Ukeycode="";Utext="";
hplasttank=0; 
local utf8 = require'utf8';
boostPL1=0; decreasecooldownPL1=0; slot1=0; slot2=0;slot3=0;slot4=0;slot5=0;slot6=0;
 glowtimer=0;onlyICEPL1=0; 
 retry=0; 
 cooldownPL1ammo=0;
uammokey="lshift";uicekey="capslock";ubombkey="z";udropkey="x";uleftkey="left";urightkey="right";uupkey="up";udownkey="down";uunpackkey="u";
uuammokey="lshift";uuicekey="capslock";uubombkey="z";uudropkey="x";uuleftkey="left";uurightkey="right";uuupkey="up";uudownkey="down";uuunpackkey="u";
uhealkey="h"; urestkey="r";uzbrojakey="c"; ustatkey="f4"; utostartkey="l";
uuhealkey="h"; uurestkey="r";uuzbrojakey="c"; uustatkey="f4";uutostartkey="l";
uuxcamleftkey="["; uuxcamrightkey="]"; uuxcamupkey="p"; uuxcamdownkey=";";
uxcamleftkey="["; uxcamrightkey="]"; uxcamupkey="p"; uxcamdownkey=";";

 weaponselected=3;
      cooldownPL1ice=0;
  glowlock=0; 
  anitimer=0;
system_saveversion=4;
system_mapversion=4;
saveversion=1;
mapversion=1;
map_builded_with_version=1; 
ostatni_obiekt=0; 
autosave_present=0; 
disableleftstick=0;
disablerightstick=0;
printobjectinfo=""; 
cachecleartime=0; 
selectedtankid_fortanks=0; 
maximummelodis=0;
disable_quickload_at_start=0; 
 auras={}; auranum=0;
 upspaceonscreen=0; 
par04=0; 
addaura=0; 
src_tankid=0; 
haveaura=0; 
painreflectionPL2=0; 
resurrecttimer=300;
painreflecttanks=0;
painreflectionPL1=0;
nietykalnyPL1=0; 
cursedtimerPL1=0; 
painreflectionPL2=0; 
getstandartdamage=0;
invertaxes=0; 
ustawenia2=0;
ustawenia3=0; 
invertaxesleft=0;
invertaxesright=0;
oldstyle_camera_move=0;
 try_to_fix__tanks=0; 
system_all_data="";
trc=0; 
 deadsoundplayed=0; 
reskuegameoverstep=0; 
joystickPL1_ID="";
prestartlevelselect=1; --prelevelselect 
krysztalow=0; 
vibration=0; 
timenadpisej=0; 
s={};
s.y=0;
s.x=0;
ss= {}; 
leftfirejs,ss.ax,ss.ay,rightfirejs=0,0,0,0;
changemovetank=1;
player_touch_cannon_switch=0;
bombtimercompare=0; 
NO_SCORE_MINES_MODE=0;
titlegame="UNTITLED";  
kolorowanie=0; 
wsego_miner_spawn_jednorazowy=0;
wsego_anomaly_spawn_jednorazowy=0;
miners=0;
postCANVASobjectX=0;
postCANVASobjectY=0;
damagetimerPL2=0; 
local anim8 = require 'anim8';
local moonshine = require 'moonshine';
local image, animation,hero_anim_left,hero_anim_right,hero_anim_up,hero_anim_down,hero_fire_left,hero_fire_right,hero_fire_up,hero_fire_down;
local tank_anim_left,tank_anim_right,tank_anim_down,tank_anim_up; 
--success = love.window.setMode( 0,0)  ; --width height

spacepressed=0; 
escapepressed=0;
stfullscreen=0;
statusfullscreen=false; 
joystickKEYPL1="";
joystickPL1name=""; 
joystickPL2name=""; 
joystickPL3name=""; 
resolutionPC=0 ; -- LOVE 11.3 ANDROID FUCK CHANGED FROM 0 
addspeed=0;
addprotect=0;
addfear=0;
addslowdown=0;
addkulemet=0;
ObjectSIZE=0;
sourceammo="";
editorloadlevel=0; 
standartdamage=0;
ddlugosc=0; 
kulemet_PC1_timer=0;
writeactualsettings=0;
 major, minor, revision, codename = love.getVersion()
 lovever_full = string.format("v %d.%d.%d - %s", major, minor, revision, codename)
 lovever=major; 
text="";
kulemet_PC1=0;
lg=love.graphics; 
KEYPRESSED = false; 
try_to_fix_tankPC2=0; 
deadzone=3;
score3=0;
extradroids=0; 
     backgroundcolorlevel=0;
     colorizepole=0;
     colorizeboulder=0;
     multikills=0;
     ultrakills=0;
     parameter66=0;
     parameter67=0;
     parameter68=0;
     enableredtank=0;
     enableauratank=0;
     enablewtank=0;
     parameter73=0;
     parameter74=0;
     parameter75=0;
     parameter76=0;
     parameter77=0;
     parameter78=0;
     parameter79=0;
destroy_inventory_after_dead=1;
object_to_rendering_game=0; 
android_ui_changed_state=1;
inventoryvisualcode=0; 
android_ui_firstload=0; 
inventory_changed=1; 
enabletitlemusic=0;
mastervolume=10;
musicvolume=10;
effectvolume=10;
setspeedgame=8;
savparam1=0;
savparam2=0;
savparam4=0;
signal_x=0;
signal_y=0;
jezykow=0;
plusyz=0;
vsyncc=1;
map_changed=0;
gameover=0; 

tanksdestroyed=0;
object_to_rendering=0;
SYSname, SYSversion, SYSvendor, SYSdevice = lg.getRendererInfo( );
GLinfo=SYSname.." "..SYSversion.." "..SYSvendor.." "..SYSdevice; 
realrikoszet=0; 
spriteBatch=0; 
randommove_word="";
new_x_block_fix="";
hardened_ammo_get="";
local music = {};
music.tracks = {};
music.current = nil;
music.state = 'no';
startscreenmode=0;
damagetimertanks=0;
huded=-1;
rotate_tt=0;
selectedtankid=0;
tanks_speed_am=800;
base_tanks_speed_am=800; 
restoreoldcontrol=0;
lastmove=1;
ammoX={};
totalammo=0;
ammonum=0;
x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_am=0,0,0,0,0;
start_x=0;
start_y=0; 
language=0;
timerline=0; 
reto_kod=0; 
wsego_scientist_spawn_jednorazowy=0;
textures3={};
damagetimerPL1=0;
scientists=0; 
firstload=0;
classic_zx_spectrum_sprite_move=0;
fuel=0;
xpla1fix=0;
ypla1fix=0;
execute="";
ossys=love.system.getOS();
loadexternallevel=0;
ta=0;
feartanks=0;
renderammoshot_tanks=1;
 shippingzone_y,shippingzone_x=0,0;
countinventory_s,countinventory_i=0,0;
shippingcenteritems={};
 itemshippinglist={};
 maximumshipcapacity=20;
tanks_am=0;
slowPL1PL2=0;
feartimerPL2=0; 
solarpower=0;
powersetupbysolarenergy=0; 
rman_x2=0; rman_y2=0; rx2=0; ry2=0; rplusx=0;
-- SYS Запланировано: нет сохраняемых настроек локально. - f = io.open(getScriptPath().."\\param.ini", "w")  
standartdamage=50; 
editor_dont_show_broken_items=1;
protecttank=0;
timerx=0; 
enemies={};
smsg4="";
freezetanks=0;
speedtanks=0;
playericon="";
player1tank="";
rotateplayer=0;
totalenemies=0;
nomusic=1; --музыка выключена заранее  0 gjcnfdbnm перед релизом
smsg2=""; --print ("bldżad");
smsg3="";
camera_time_move=0;
editorcallselectobject=0;
editorvisualcode=0;
textureseditor={};
editorrenderedcodecreated=0;
skan_y_max=0;
skan_x_max=0;
ammoKEYPL1=0;
movePL1=0;  
counteditoritems=0;
xeditordata={}; 
cannondrawx=0;
cannondrawy=0;
cannondrawstartshot=0;
cannondrawx2=0;
cannondrawy2=0;
cannondrawstartshot2=0;
editorprepared=0;
nowait=0;
playsound=0;
enemytank=0;
slotlimit=4;-- число виртуальных слотов инвентаря, системный максимум.  Не ячейки инвентаря.
dasglukenfild=0;
getkeyforpause=0;
inventoryitem1=0;inventoryitem2=0;inventoryitem3=0;inventoryitem4=0;
countinventory=0;
maximuminventorysize=5;
inventoryitemtable={}; -- создание инвентаря из 4 или более слотов опционально.
kufrcountinventory=0;
kufrmaximuminventorysize=25;
kufrinventoryitemtable={}; -- создание инвентаря из 4 или более слотов опционально.
allowpowerrescan=0;
gamescreenfixhorizontal=0;
gamescreenfixvertical=0;
minimumtanks=0;
solarenergy=0;
darkzone=1;
totalsolarenergy=0;
greenshitactivity=0;
cameraleftpos_x_hor=0;
camerauppos_y_vert=0;
greenshitdelay=80;
greenshithastetime=0;
seed=0;
mushroom=0;
UNUSED1=0;
inventorybelt=0;
allowedaidspersonal=0;
battery=0; 
starttanks=0;
speedtimer=0
speedtimerPL2=0;
loadsavegame=0;
saveslot=0;
selectmusic=0;
zero=0;
selectedoptionmenu=1;
wsego=0;
acidprotect=0;
slowPL1tanks=0;
slowPL1=0;
  local textinput = {keys = {default = ''}, current = 'default'}
coop_join_disable=0; --   1 перед релизом.
startshootcoordinatex=-1;
startshootcoordinatey=-1;
hpdetect=0;
skany=-1;
skanx=-1;
hpdetech=1;
add="";
t="";
ax=0;
menu=-1;
poziom=0;
colorshift=1;
ay=0;
adx=0;
ady=0;
t_id=0;
id=0;
pathtosavemap=0;
resize = {w=0,h=0};
screen = {w=0,h=0};
touch = {ax=0,ay=0};
defacescreen=0;
xdataarchived=0;
menuoption=0;
renderammoshot=0;
freezetimerPL1=0;freezetimerPL2=0;freezetimerPL3=0;
invisibletimerPL1=0;
invisibletimerPL2=0;
rendericeshot=0;
maximumvertical=9;
levelnumber=1; --startowyj uroweń
cannleftx=0;
cannrightx=0;
canny=0;
timerz=0;
zzxammo=0;
zzzammo=0;
pause=1;
anikadr=0;
anicycles=0;
otladka=0;
showandroidbar=0;
passthrurock=0;
selectedobject=56;
selectedobject2=56;
renderer=0;
tank=0;
hp=10;
hpmax=10;
reservedaids=1;
ammo=10;
ice=10;
lives=10;
bombs=10;
keys=10;
water=10;
semode=10;
protect=0;
ey=10;sy=10;sx=10;exp=10;
zx=10;
zy=10;
tx=10;ty=10;wt=10;
p1=0;dr=0;p2=0;p3=0;p4=0;
savegamecounter=0;
parameter80=0;
parameter81=0;
parameter82=0;
parameter83=0;  
targetremains=10;
   powerstate=10;
   puszkistate=1;
paralysatorrifle=0;
slot0=0; 
paralysatorammo=1;
--задаются переменные, да таким вот тупым методом, иначе сыпется
--Все эти переменные задаются только один раз , некоторые потом будут в сохранёнке.
score=0;
drawonce=0; 
maxwidth=lg.getWidth();
maxheight=lg.getHeight();
basetexturesize=64; -- базовый размер для всех текстур, никогда не меняется ни при каких условиях, кроме замены всех текстур на новые
teskt_wiadomosci_smsg=""; 
czas_wyswietlania=0;
--if (GAMEWINDOWCANVAS~=nil) then  OBJECTPRINTNOW_IMAGESX=IMAGESX[object_to_rendering_game];
--[[
function love.mouse.xsetCursor(imgname, x, y)
  if not сcache[imgname] then 
    cсache[imgname] = love.mouse.newCursor(imgname,x, y )
  end
  love.mouse.setCursor(сcache[imgname])
end

love.mouse.xsetCursor("textures/mousecursor.png", x, y);
-- а откуда берутся эти x и y ?  -- сами поставятся. 
-- мне должно быть до лампочки на координаты курсора. 
]]


function string:split( inSplitPattern, outResults )
   if not outResults then
      outResults = { }
   end
   local theStart = 1
   local theSplitStart, theSplitEnd = string.find( self, inSplitPattern, theStart )
   while theSplitStart do
      table.insert( outResults, string.sub( self, theStart, theSplitStart-1 ) )
      theStart = theSplitEnd + 1
      theSplitStart, theSplitEnd = string.find( self, inSplitPattern, theStart )
   end
   table.insert( outResults, string.sub( self, theStart ) )
   return outResults
end

 ndata={};
   for nline in love.filesystem.lines ("nazwa.ini") do
      table.insert (ndata, nline:split("!"));
    end
if (ndata) then titlegame=ndata[1][1]; end  -- nazwa projektu


  image = love.graphics.newImage('Textures/m/animset1.png')
  local g = anim8.newGrid(64,64, image:getWidth(), image:getHeight())

  --image2 = love.graphics.newImage('Textures/m/animset2.png')
  image2 = image
  local g2 = anim8.newGrid(80,80, image2:getWidth(), image2:getHeight())
  

  tank_anim_left = anim8.newAnimation(g('1-8',7), 0.1);
  tank_anim_right = anim8.newAnimation(g('1-8',8), 0.1);
  tank_anim_down = anim8.newAnimation(g('1-10',9), 0.1);
  tank_anim_up = anim8.newAnimation(g('1-8',5), 0.1);

  sci_anim_idle = anim8.newAnimation(g('1-8',14), 0.1);
  sci_anim_left = anim8.newAnimation(g('1-8',17), 0.1);
  sci_anim_right = anim8.newAnimation(g('1-8',18), 0.1);
  sci_anim_down = anim8.newAnimation(g('1-8',16), 0.1);
  sci_anim_up = anim8.newAnimation(g('1-8',15), 0.1);
-- dro_anim_idle = anim8.newAnimation(g('1-8',14), 0.1);
  dro_anim_left = anim8.newAnimation(g('1-10',28), 0.1); --right -- для Colony это и hero
  dro_anim_right = anim8.newAnimation(g('1-10',30), 0.1);--left
  dro_anim_down = anim8.newAnimation(g('1-10',27), 0.1); --up
  dro_anim_up = anim8.newAnimation(g('1-10',29), 0.1);  --down
  dro_fire_left = anim8.newAnimation(g('1-10',40), 0.1); --right -- для Colony это и hero
  dro_fire_right = anim8.newAnimation(g('1-10',42), 0.1);--left
  dro_fire_down = anim8.newAnimation(g('1-10',39), 0.1); --up
  dro_fire_up = anim8.newAnimation(g('1-10',41), 0.1);  --down
  dro_act_left = anim8.newAnimation(g('1-10',44), 0.1); --right -- для Colony это и hero
  dro_act_right = anim8.newAnimation(g('1-10',46), 0.1);--left
  dro_act_down = anim8.newAnimation(g('1-10',43), 0.1); --up
  dro_act_up = anim8.newAnimation(g('1-10',45), 0.1);  --down
  dro_idle_left = anim8.newAnimation(g('1-1',44), 0.1); --right -- для Colony это и hero
  dro_idle_right = anim8.newAnimation(g('1-1',46), 0.1);--left
  dro_idle_down = anim8.newAnimation(g('1-1',43), 0.1); --up
  dro_idle_up = anim8.newAnimation(g('1-1',45), 0.1);  --down

if (titlegame=="Kolonista") then 
  hero_anim_right = dro_anim_left; --right -- для Colony это и hero
  hero_anim_left = dro_anim_right;--left
  hero_anim_up = dro_anim_down; --up
  hero_anim_down = dro_anim_up;  --down
  hero_fire_right = dro_fire_left;
  hero_fire_left = dro_fire_right;
  hero_fire_up = dro_fire_down;
  hero_fire_down = dro_fire_up;
  hero_act_right = dro_act_left;
  hero_act_left = dro_act_right;
  hero_act_up = dro_act_down;
  hero_act_down = dro_act_up;
   hero_idle_right = dro_idle_left;
  hero_idle_left = dro_idle_right;
  hero_idle_up = dro_idle_down;
  hero_idle_down = dro_idle_up;
end

enablefix_PC1_80px=0;

     
if (titlegame=="Reskue") then 
  hero_anim_left = anim8.newAnimation(g('1-10',34), 0.1); --right -- для Colony это и hero
  hero_anim_right = anim8.newAnimation(g('1-10',32), 0.1);--left
  hero_anim_down = anim8.newAnimation(g('1-10',33), 0.1); --up
  hero_anim_up = anim8.newAnimation(g('1-10',31), 0.1);  --down
  hero_fire_left = anim8.newAnimation(g('1-10',38), 0.1);
  hero_fire_right = anim8.newAnimation(g('1-10',36) , 0.1);
  hero_fire_down = anim8.newAnimation(g('1-10',37), 0.1);
  hero_fire_up = anim8.newAnimation(g('1-10',35), 0.1);
  hero_act_left = anim8.newAnimation(g('1-10',50), 0.1);
  hero_act_right = anim8.newAnimation(g('1-10',48), 0.1);
  hero_act_down = anim8.newAnimation(g('1-10',49), 0.1);
  hero_act_up = anim8.newAnimation(g('1-10',47), 0.1);
  hero_idle_left = anim8.newAnimation(g('1-1',34), 0.1);
  hero_idle_right = anim8.newAnimation(g('1-1',32), 0.1);
  hero_idle_down = anim8.newAnimation(g('1-1',33), 0.1);
  hero_idle_up = anim8.newAnimation(g('1-1',31), 0.1);
end

  if (titlegame=="M2K")or(titlegame=="Perestroika") then 
  hero_anim_left = anim8.newAnimation(g('1-8',6), 0.1);
  hero_anim_right = anim8.newAnimation(g('1-8',1), 0.1);
  hero_anim_down = anim8.newAnimation(g('1-8',13), 0.1);
  hero_anim_up = anim8.newAnimation(g('1-8',12), 0.1);
  hero_fire_left = hero_anim_left;
  hero_fire_right = hero_anim_right ;
  hero_fire_down = hero_anim_down ;
  hero_fire_up = hero_anim_up;
  hero_act_left = anim8.newAnimation(g('1-8',2), 0.1);
  hero_act_right = hero_act_left;
  hero_act_down = hero_act_left;
  hero_act_up = hero_act_left;
  hero_idle_left = anim8.newAnimation(g('1-1',6), 0.1);
  hero_idle_right = anim8.newAnimation(g('1-1',1), 0.1);
  hero_idle_down = anim8.newAnimation(g('1-1',13), 0.1);
  hero_idle_up = anim8.newAnimation(g('1-1',12), 0.1);
end
  --реaльно в файле видно что анимация инвертированная т.е. left это всегда right
  firstanim=19; 
  tank2_anim_left = anim8.newAnimation(g('1-8',firstanim+1), 0.1);  --+1 w prawo (animpic)
  tank2_anim_right = anim8.newAnimation(g('1-8',firstanim+3), 0.1); --+3 w lewo 
  tank2_anim_down = anim8.newAnimation(g('1-8',firstanim+0), 0.1); --0ST w góre ,up(animpic)
  tank2_anim_up = anim8.newAnimation(g('1-8',firstanim+2), 0.1); --+2 w dól down 

  firstanim=23;
  tank3_anim_left = anim8.newAnimation(g('1-8',firstanim+1), 0.1); -- right
  tank3_anim_right = anim8.newAnimation(g('1-8',firstanim+3), 0.1); --left
  tank3_anim_down = anim8.newAnimation(g('1-8',firstanim), 0.1); --up 
  tank3_anim_up = anim8.newAnimation(g('1-8',firstanim+2), 0.1);  --down

  firstanim=51; --+3 kak!?
  pajak_left = anim8.newAnimation(g('1-12',firstanim+1), 0.1); -- right
  pajak_right = anim8.newAnimation(g('1-12',firstanim+3), 0.1); --left
  pajak_down = anim8.newAnimation(g('1-12',firstanim), 0.1); --up 
  pajak_up = anim8.newAnimation(g('1-12',firstanim+2), 0.1);  --down

firstanim=55;
  mim_nowy_left = anim8.newAnimation(g('1-12',firstanim+1), 0.1); -- right
  mim_nowy_right = anim8.newAnimation(g('1-12',firstanim+3), 0.1); --left
  mim_nowy_down = anim8.newAnimation(g('1-12',firstanim), 0.1); --up 
  mim_nowy_up = anim8.newAnimation(g('1-12',firstanim+2), 0.1);  --down

firstanim=59;
  mim_fire_left = anim8.newAnimation(g('1-12',firstanim+1), 1,"pauseAtEnd"); -- right
  mim_fire_right = anim8.newAnimation(g('1-12',firstanim+3), 0.1); --left
  mim_fire_down = anim8.newAnimation(g('1-12',firstanim), 0.1); --up 
  mim_fire_up = anim8.newAnimation(g('1-12',firstanim+2), 0.1);  --down

firstanim=1;
  mim_anim_left = anim8.newAnimation(g('13-24',firstanim+2), 0.1); -- right
  mim_anim_right = anim8.newAnimation(g('13-24',firstanim+3), 0.1); --left
  mim_anim_down = anim8.newAnimation(g('13-24',firstanim), 0.1); --up 
  mim_anim_up = anim8.newAnimation(g('13-24',firstanim+2), 0.1);  --down


  --==========PRELOAD_INIT_SKIP_PLEASE===========
renderer=0;-- именно здесь если поставить renderer=1 тогда на Android + Love 11.3 будет всё нормально.
--lock_render_on_last_image=1;
--rozmiarznak=64 ; -- контролирует размер знакоместа в игре. размер по умолчанию.  height - wysota  width - szirina.
-- TEMPORARY REMOVE  LOVE 11.3 ANDROID FUCK -- NO CANVAS CONTENT
function music:play(n)
  self:stop()
  n = n or math.random(#self.tracks)
  self.current = assert(self.tracks[n], "No track #"..i)
  self.current:play()
  self.state = 'play'
end

function music:stop()
  if self.current then
    self.state = 'stop'
    self.current:stop()
  end
end

function music:pause()
  if self.current then
    self.state = 'pause'
    self.current:pause()
  end
end

-- запуск других треков по окончанию
function music:update()
  if ((nomusic==0)) then musicvolume=0; end; 
    self.current:setVolume(musicvolume/10);
  if self.state ~= 'play' then
    return
  end

  local track = self.current
  if track and not track:isPlaying() then
    self:play()
  end
end


function setresolution (maxwidth,option) 
  pc_gui_draw_create_status=0; 
          gamescreenfixvertical=0;          gamescreenfixhorizontal=-1;  
          recommended_rozmiarznak=math.floor (maxheight/16);  --adaptive recommended rozmiarznak
          if (ObjectSIZE>0) then -- windowsczujnosc - чувствительность к краю экрана
           recommended_rozmiarznak=math.floor (maxheight/(12*(ObjectSIZE))) ;
            end; 
          rozmiarznak=recommended_rozmiarznak+ (4-(recommended_rozmiarznak%4)) ;  -- 15%8  7    33%8  1
          if (rozmiarznak<16) then rozmiarznak=16 end;
        if (option==7)and (ossys=="Android") then   gamescreenfixhorizontal=1;   end;--build10000 added i think it fix lost 2 spaces l
          basetexturesize=64; -- realny postawowy rozmiar dla textur
         scaling=rozmiarznak/basetexturesize;  --scaling == NIL BLDŻAD TUTAJ -- здесь указывается на какое число ориентируется вся игра (40обычно)
        startpositionuserPCmenuX=8;        startpositionuserPCmenuY=8*rozmiarznak;
        wyczet=0; 
      if (ObjectSIZE==1) then wyczet=0.3; end; --MAIN MENU 
--      standartwysotatextmenu=rozmiarznak*(0.65-wyczet); -- для обычных менюшек (settings, pause , f10 , shipping center)
      standartwysotatextmenu=maxheight/22; -- SETTINGS MENU HEIGHT 
      wysotamenu=standartwysotatextmenu; -- эта переменная часто меняется в процессе игры. 
      mainmenusize=maxheight/10;  -- MAIN MENU 
      standartwysotagraphicmenu=maxheight/15
      standartsizeusermenu=maxheight/15;
      scalingmenu=standartwysotagraphicmenu/50; --ПЕРЕМЕЩЕНО --MAINMENU
      --scalingmenu=1;  -- что с этим делать? как его вычислять?  смена размера идёт за счет rozmiarznak
      
      MapRenderingCoordPostobjectX=gamescreenfixhorizontal*rozmiarznak+0*rozmiarznak; --по именно этой координате будет отрисовыватся карта
        -- во первых перемещение почему то не на 1 rozmiarznak а на БОЛЬШЕЕ число.  во вторых  где то ещё этот параметр надо менять иначе ломается вся игра.
        -- вместо нее для позиционирования надо менять gamescreenfixhorizontal  - он всё учитывает.
      visual_mapsize_horizontal=math.ceil ((maxwidth-MapRenderingCoordPostobjectX)/rozmiarznak)-1;-- -1
      visual_mapsize_vertical=math.ceil (maxheight/rozmiarznak)-1; -- -2  добавлять высоту по вертикали тут (-5)
      rightspaceonscreen=gamescreenfixhorizontal*rozmiarznak+visual_mapsize_horizontal*rozmiarznak; -- первое свободное место права от поля игры.
      leftspaceonscreen=gamescreenfixhorizontal*rozmiarznak+1.5*rozmiarznak; 
      downspaceonscreen=visual_mapsize_vertical*rozmiarznak-rozmiarznak+gamescreenfixvertical*rozmiarznak; -- понадобится для обновленного модуля editor
         wysotastroki=rozmiarznak-2; -- что то не учтено --ПЕРЕМЕЩЕНО
      wysotastroki=rozmiarznak;  -- NEW BUILD 4300  NE PROWEREN 
      scalingandroidcursor=scaling+0.3;
      androidcursorrightposition=60+maxwidth-((100*scalingandroidcursor)*4);
      cursormaxwidth=androidcursorrightposition; cursormaxheight=maxheight/2-(rozmiarznak*2); 
      cursorsizeuserandroid=100*scalingandroidcursor; -- для элементов меню реакция на тачпаде.
      standartsizeusermenu_android_0_cc=standartwysotagraphicmenu+10;
      scalingleftgui=standartsizeusermenu_android_0_cc/80;
         

        if (titlegame~="Kolonista") then 
        font= lg.newFont("YanoneKaffeesatz-Bold.ttf", rozmiarznak*0.9) -- 
        fontBIG= lg.newFont("YanoneKaffeesatz-Bold.ttf", rozmiarznak*1.1) -- 
        fontVERYBIG= lg.newFont("YanoneKaffeesatz-Bold.ttf", rozmiarznak*1.2) -- 
        fontSMALL= lg.newFont("YanoneKaffeesatz-Bold.ttf", rozmiarznak/1.6) -- 
        fontVERYSMALL= lg.newFont("YanoneKaffeesatz-Bold.ttf", rozmiarznak/2) -- 
        fontVERYSMALLX= lg.newFont("YanoneKaffeesatz-Bold.ttf", rozmiarznak/2.5) -- 
      end

      if (titlegame=="Kolonista") then 
        a="CustomFontTtf12H20.ttf";
        b=rozmiarznak;
        --b=rozmiarznak/2;
        font= lg.newFont(a, b*0.9) -- 
        fontBIG= lg.newFont(a, b*1.1) -- 
        fontVERYBIG= lg.newFont(a, b*1.2) -- 
        fontSMALL= lg.newFont(a, b/1.6) -- 
        fontVERYSMALL= lg.newFont(a, b/2) -- 
        fontVERYSMALLX= lg.newFont(a, b/2.5) -- 
      end

        return 1;
end
if (drawonce==0) then setresolution (maxwidth,option);  end; -- Загрузка игры для Androidfuck 

-- важно - эти же параметры должны быть в ТОЧНОСТИ такие же при смене разрешения. решено. knlk
mapsize_horizontal=250;
mapsize_vertical=201;
lg.setDefaultFilter('nearest', 'nearest'); -- улучшает SCALING

function changemusic (mtrack) 
  music:stop(mtrack);
        mtrack=math.ceil(math.random(maximummelodis));
      music:play(mtrack); 
end

IMAGES = {}; 
    firstscreen = lg.newImage("Textures/m/loadingscreen.png");
    titlemenuscreen = lg.newImage("Textures/m/titlescreen.jpg");
    titlewidth, titleheight = titlemenuscreen:getDimensions( );
    inventoryscreen = lg.newImage("Textures/m/inventoryscreen.png");
    iwidth, iheight = inventoryscreen:getDimensions( );
    firstwidth, firstheight = firstscreen:getDimensions( );
    dlanubow = lg.newImage("Textures/m/space.png");
    PS3joystick = lg.newImage("Textures/m/joystickps3-map.png");
    XONEjoystick = lg.newImage("Textures/m/joyxbox.png");
    gametitle_logo = lg.newImage("Textures/m/reklama1.png");
    EN_FLAG = lg.newImage("Textures/m/EN_US.png");
    RU_FLAG = lg.newImage("Textures/m/RU_RU.png");
    MATE_LOGO = lg.newImage("Textures/m/mate_logo.png");
    RESURRECT_ANDROID_ICO = lg.newImage("Textures/a/androidUI6.png");
    empty = lg.newImage("Textures/1empty.png");
    ammoproj = lg.newImage("Textures/ammoprojectile.png");
    ammoslowproj = lg.newImage("Textures/ammolight.png");
    ammobombproj = lg.newImage("Textures/bomb.png");
    ammofearproj = lg.newImage("Textures/ammofear.png");
    ammoiceproj = lg.newImage("Textures/ammoice.png");
    ammohealproj = lg.newImage("Textures/ammodispel.png");
    ammoinvisible = lg.newImage("Textures/ammopustko.png");
    
    ammodispelproj = lg.newImage("Textures/destr4.png");
    dymokproj = lg.newImage("Textures/dymok1.png");
    androidguicursor = lg.newImage("Textures/a/androidcursor.png");
    player = lg.newImage("Textures/player.png");
    ja = lg.newImage("Textures/m/ja.jpg");
    authors1 = lg.newImage("Textures/m/authors-cover-nami-sei.resized.png");
    authors2 = lg.newImage("Textures/m/authors-cover-whitetigerforge.resized.png");
    playertank = lg.newImage("Textures/tank0.png");
    repairdroid = lg.newImage("Textures/droid.png");
    tankleft = lg.newImage("Textures/tank1.png");
    minerleft = lg.newImage("Textures/biurokrat.png");
     tankplayerleft = lg.newImage("Textures/tank.png");
    gwozdleft = lg.newImage("Textures/gwozd.png");
    humanleft = lg.newImage("Textures/human.png");
    tankright=tankleft;
    editor0 = lg.newImage("Textures/editor.png");
    express0 = lg.newImage("Textures/express.png");
     menu_exit = lg.newImage("Textures/m/mmenu_8.png");
    menuicon = lg.newImage("Textures/m/10-menu.png");
    settings_switch_on =  lg.newImage("Textures/m/On.png");
    settings_switch_off =  lg.newImage("Textures/m/Off.png");
    player2tank=0; 

--загрузка звуков игры.  пробелы убраны потому что при поиске я пишу всегда qwerty=1  и т.п. и никогда с пробелом. 
  appearssnd=love.audio.newSource("Sounds/appears.mp3","stream"); 
   expresssnd=love.audio.newSource("Sounds/express.mp3","stream"); 
    wystrelsnd=love.audio.newSource("Sounds/tankwystrel.mp3","stream");
    wystrelshocksnd=love.audio.newSource("Sounds/shockshard1.mp3","stream");
    wystrelwzmocsnd=love.audio.newSource("Sounds/wzmocnienie_wystrzal.mp3","stream");
    wystrelkersnd=love.audio.newSource("Sounds/kierowca_wystrzal.mp3","stream");
    wystreldispelsnd=love.audio.newSource("Sounds/dispel_wystrzal.mp3","stream");
    wystreldisarmsnd=love.audio.newSource("Sounds/disarm_wystrzal.mp3","stream");
    wystrelfearsnd=love.audio.newSource("Sounds/fear_wystrzal.mp3","stream");
    wystrelfrzsnd=love.audio.newSource("Sounds/ice_wystrzal.mp3","stream");
    wystrelbombplacesnd=love.audio.newSource("Sounds/bombplace_wystrzal.mp3","stream");
    wystrelstunsnd=love.audio.newSource("Sounds/stun_wystrzal.mp3","stream"); 
    patronysnd=love.audio.newSource("Sounds/patrony.mp3","stream");
    levelnextsnd=love.audio.newSource("Sounds/lift.mp3","stream");
    teleport3snd=love.audio.newSource("Sounds/teleport3.mp3","stream"); -- UNUSED
    stena2snd=love.audio.newSource("Sounds/mur.mp3","stream"); -- UNUSED 
    ammotobadtargetsnd=love.audio.newSource("Sounds/ammotobadtarget.mp3","stream");
    ammobrokeitemortargetsnd=love.audio.newSource("Sounds/ammobrokeitemortarget.mp3","stream");
        firesnd=love.audio.newSource("Sounds/fire.mp3","stream");
    movableblocksnd=love.audio.newSource("Sounds/blockmove.mp3","stream");
    movableblockdestrsnd=love.audio.newSource("Sounds/destrblock1.mp3","stream");
    destrblock1snd=movableblockdestrsnd;
    destrblock2snd=love.audio.newSource("Sounds/destrblock2.mp3","stream"); --UNUSED?
    destrblock3snd=love.audio.newSource("Sounds/destrblock3.mp3","stream");--UNUSED?
    destrblock4snd=love.audio.newSource("Sounds/destrblock4.mp3","stream");--UNUSED?
  aptekasnd=love.audio.newSource("Sounds/apteczka.ogg","stream");
  deadsnd=love.audio.newSource("Sounds/dead.ogg","stream");
  tankzsnd=love.audio.newSource("Sounds/tankzdobyl.ogg","stream");
  iceeffectsnd=love.audio.newSource("Sounds/iceeffect.ogg","stream");
  deadminesnd=love.audio.newSource("Sounds/deadmine.ogg","stream");
      powerstaticon= love.audio.newSource("Sounds/powerstaticon.mp3","stream");
   livessnd=love.audio.newSource("Sounds/lives.mp3","stream");
      wallsnd=love.audio.newSource("Sounds/wall.mp3","stream");
    icetakesnd=love.audio.newSource("Sounds/icetake.mp3","stream");
    keysnd=love.audio.newSource("Sounds/key.mp3","stream");
    bombsnd=love.audio.newSource("Sounds/bomb.mp3","stream");
        targsnd=love.audio.newSource("Sounds/targetdestrojed.mp3","stream");
        cannondestrsnd=love.audio.newSource("Sounds/cannondestr.mp3","stream");
    protectsnd=love.audio.newSource("Sounds/protect.mp3","stream");
    xsnd=love.audio.newSource("Sounds/x.mp3","stream");
    strelkasnd=love.audio.newSource("Sounds/strelka.mp3","stream");
    noammosnd=love.audio.newSource("Sounds/noammo.mp3","stream");
    badsnd=love.audio.newSource("Sounds/bad.mp3","stream");
    swapitem=love.audio.newSource("Sounds/swapitem.mp3","stream");
    doorsnd=love.audio.newSource("Sounds/dooropened.mp3","stream");
    switchpwsnd=love.audio.newSource("Sounds/switch.mp3","stream");
    switchpwsnd2=love.audio.newSource("Sounds/switchon.mp3","stream");
    switchmsnd=love.audio.newSource("Sounds/alarm.mp3","stream");
    telesnd=love.audio.newSource("Sounds/teleport.mp3","stream");
    teleport2snd=love.audio.newSource("Sounds/teleport2.mp3","stream");
    NOTUSEDsnd=love.audio.newSource("Sounds/ammodestrbombprojectile.mp3","stream");   --bd only
    mimicnearsnd=love.audio.newSource("Sounds/paralysatorrifle.mp3","stream");   --bd only
    
    brokensnd={};
    brokensnd[1]=love.audio.newSource("Sounds/broke1.mp3","stream");
    brokensnd[2]=love.audio.newSource("Sounds/broke2.mp3","stream");
    brokensnd[3]=love.audio.newSource("Sounds/broke3.mp3","stream");
    brokensnd[4]=love.audio.newSource("Sounds/broke4.mp3","stream");
    brokensnd[5]=love.audio.newSource("Sounds/broke5.mp3","stream");
    brokensnd[6]=love.audio.newSource("Sounds/broke6.mp3","stream");
    brokensnd[7]=love.audio.newSource("Sounds/broke7.mp3","stream");
    brokensnd[8]=love.audio.newSource("Sounds/broke8.mp3","stream");
    brokensnd[9]=love.audio.newSource("Sounds/broke9.mp3","stream");
    brokensnd[10]=love.audio.newSource("Sounds/broke10.mp3","stream");

    brokendoorsnd=love.audio.newSource("Sounds/brokendoor.mp3","stream");
    jedzeniesnd=love.audio.newSource("Sounds/jedzenie.mp3","stream");
    mur=love.audio.newSource("Sounds/mur.mp3","stream");
    tankdeadsnd=love.audio.newSource("Sounds/tankdead.mp3","stream");
    tanknewsnd=love.audio.newSource("Sounds/tanknew.mp3","stream");
    shippingsnd=love.audio.newSource("Sounds/snd3.mp3","stream");
    snd1=love.audio.newSource("Sounds/snd1.mp3","stream");  -- appears , for tests
  szpricsnd=love.audio.newSource("Sounds/szpric.mp3","stream");
  explodeicesnd=love.audio.newSource("Sounds/explodeice-silence.mp3","stream");
  newarsenalsnd=love.audio.newSource("Sounds/newarsenal.mp3","stream");
  uskoritelsnd=love.audio.newSource("Sounds/uskoritel.mp3","stream");
  batterysnd=love.audio.newSource("Sounds/battery.mp3","stream");
    computersnd=love.audio.newSource("Sounds/computer.mp3","stream");
  stunhitsnd=love.audio.newSource("Sounds/stun_hit.mp3","stream");
  icehitsnd=love.audio.newSource("Sounds/ice_blast_hit2.mp3","stream");
  psyhitsnd=love.audio.newSource("Sounds/psyshock_hit.mp3","stream");
  signalsnd=love.audio.newSource("Sounds/signal.mp3","stream");
  reflectsnd=love.audio.newSource("Sounds/ammo_shot_reskue.mp3","stream");
  order1snd=love.audio.newSource("Sounds/order1.mp3","stream");
  order2snd=love.audio.newSource("Sounds/order2.mp3","stream");
  zwuk2snd=love.audio.newSource("Sounds/zwuk2.mp3","stream"); 
  
  dwigacsnd=love.audio.newSource("Sounds/dwigac.mp3","stream");  
  pisk2snd=love.audio.newSource("Sounds/railroaddestr.mp3","stream");  --UNUSED!!!!!!
  pisk1snd=love.audio.newSource("Sounds/pisk.mp3","stream");  --perestroika only
  bouldersnd=love.audio.newSource("Sounds/boulder.mp3","stream");  --bd only
  krysztalsnd=love.audio.newSource("Sounds/krysztal.mp3","stream");    --bd only
  bdashwalksnd=love.audio.newSource("Sounds/walk.mp3","stream");   --bd only

appearssnd=love.audio.newSource("Sounds/appears.mp3","stream");
dynamitesnd=love.audio.newSource("Sounds/dynamite.mp3","stream");
invisiblesnd=love.audio.newSource("Sounds/invisible.mp3","stream");
menu_select_original_snd=love.audio.newSource("Sounds/menu_select_original.mp3","stream");
superbombsnd=love.audio.newSource("Sounds/superbomb.mp3","stream");
superbombsnd=love.audio.newSource("Sounds/superbomb.mp3","stream");
superbombsnd=love.audio.newSource("Sounds/superbomb.mp3","stream");

function love.load ()  -- love.load  gra zaczyna się tutaj
  menulockpage=0; 
  disablechangemenuoptions=0; 
  lasthopeadded=0; 
  pietro=1; -- default pietro but this must be saved in map or savegame!
  savegamecounter=0; 
  Gesture_SwipeN = Swipe('[TP,N,TR]', -1, 500);
  Gesture_SwipeS = Swipe('[TP,S,TR]', -1, 0);
  Gesture_SwipeLDC = Swipe('[TP,S,E,TR]', -1, 800);
  Gesture_LongPressGesture = LongPress(1000, false);
  Gesture_DoubleTap = Tap(2,600);

  if Gesture_DoubleTap:Check() == true then
      print("Gesture_DoubleTap");
      ammoKEYPL1="ammo"; firekeyPL1="fire";
      smsg1="touchpad fire"; 
  end
  selectedtankid_fortanks=0; 
  timenadpisej=0;
  auras={}; auramax=0; auranum=0; 

  reskuegameoverstep=0; gameover=0; 
  missionfailed=0; 
  dead_x={};dead_y={};dead_clr={};
   effect = moonshine(moonshine.effects.filmgrain)
            .chain(moonshine.effects.vignette)
            .chain(moonshine.effects.godsray)
            .chain(moonshine.effects.pixelate)
            .chain(moonshine.effects.glow)
            effect.filmgrain.size = 4
---=========FIXING BUG LOVE 11.3+ANDROID COMBINATION-====================   
   if (loading_process_flag==1)and(fix_love_11_3_bug_atlas_android==0) then fix_love_11_3_bug_atlas_android=1; 
    loading_process_flag=0; 
   create_atlas (); if (ossys=="Android") then 
         android_ui_changed_state=1; create_atlas_mobile () ; oldstyle_camera_move=1; 
        end; 
 end

NO_SCORE_MINES_MODE=0;


function GET_ACHIVEMENT(name) return end -- заглушки
function SET_ACHIVEMENT(name) return end

function init_steam()
  Steam = require'luasteam'

  STEAM_FUKKEN_STATE = Steam.init()

  if not STEAM_FUKKEN_STATE then return end

  function Steam.friends.onGameOverlayActivated(data)
    lg.print("Overlay status: ", data.active,0,0)
  end

  
  GET_ACHIVEMENT = Steam.userStats.getAchievement
  SET_ACHIVEMENT = Steam.userStats.setAchievement

  return true
end

if (titlegame=="M2Kч") then
  init_steam() -- тут инициализация стим.  
end


maximumlevels_ingame=128;
if (titlegame=="M2K") then maximumlevels_ingame=136; end ;  --134--
if (titlegame=="Reskue") then maximumlevels_ingame=14;prestartlevelselect=1; NO_SCORE_MINES_MODE=1;end ; 
if (titlegame=="Kolonista") then maximumlevels_ingame=1;NO_SCORE_MINES_MODE=1; end ; 
if (titlegame=="Perestroika") then maximumlevels_ingame=10; end ; 

    if (titlegame~="Perestroika")and(firstload==0) then 
    dymok1snd=love.audio.newSource("Sounds/dymok_1.mp3","stream");
    dymok2snd=love.audio.newSource("Sounds/dymok_2_final.mp3","stream");
    dymok3snd=love.audio.newSource("Sounds/dymok_3_final.mp3","stream");
    dymok4snd=love.audio.newSource("Sounds/dymok_4_final.mp3","stream");
  end

if (levelnumber>maximumlevels_ingame) then finaltitle=1; end; 
local new_source=love.audio.newSource
function music:load(list)
  for i = 1, #list do
    local file = list[i]
    self.tracks[i] = new_source(file, 'stream')
  end
  maximummelodis=#list; smsg4="mm"..maximummelodis; 
end

if (titlegame=="M2K")or(titlegame=="Mozaic") then 
music:load{
  'Sounds/muzyka-mrgsadM2K.xm',
  'Sounds/muzyka-the_return_of_the_madness.it',
  'Sounds/muzyka-universal_dreams-644.mod',
  'Sounds/muzyka-independant_state.it',
  'Sounds/muzyka-1-A-twinkle.it',
  'Sounds/muzyka - VIBE - Adventurer.it',
  'Sounds/muzyka-3-gnom7.it',
  'Sounds/muzyka-5-beyond_-_industrial.it',
  'Sounds/muzyka-e-mass.xm',
  'Sounds/muzyka-c-cultur-UE-like.it',
  'Sounds/muzyka-new-xmex.mod',
  'Sounds/muzyka-4-#haz - BitChip.XM'
}
end

if (titlegame=="Reskue") then 
music:load{
  'Sounds/muzyka-melcom-tis.it',
  'Sounds/peaceful (ut_style).s3m',
  'Sounds/muzyka-d-zone.xm',
  'Sounds/muzyka-e-12242.s3m',
  'Sounds/muzyka-satelliteRESK.mod',
  'Sounds/muzyka-universal_dreams-644.mod',
  'Sounds/muzyka-satellitesRSK.xm',
  'Sounds/muzyka-satellitesRSK.xm',
  'Sounds/muzyka-satelliteRESK.mod',
  'Sounds/muzyka-satelliteRESK.mod',
  'Sounds/muzyka-satellitesRSK.xm',
  'Sounds/muzyka-satellitesRSK.xm'
}
end

if (titlegame=="Kolonista") then 
music:load{
  'Sounds/muzyka-colony-mb-e-trip_on_chip.mod',
  'Sounds/muzyka-the_return_of_the_madness.it',
  'Sounds/muzyka-universal_dreams-644.mod',
  'Sounds/muzyka-independant_state.it',
  'Sounds/muzyka-1-A-twinkle.it',
  'Sounds/muzyka - VIBE - Adventurer.it',
  'Sounds/muzyka-3-gnom7.it',
  'Sounds/muzyka-5-beyond_-_industrial.it',
  'Sounds/muzyka-e-mass.xm',
  'Sounds/muzyka-c-cultur-UE-like.it',
  'Sounds/muzyka-4-#haz - BitChip.XM'
}
end

if (titlegame=="Perestroika") then 
music:load{
  'Sounds/muzyka-colony-mb-e-trip_on_chip.mod',
  'Sounds/muzyka-intro-564.xm',
  'Sounds/muzyka-colony-mb-e-trip_on_chip.mod',
  'Sounds/muzyka-colony-mb-e-trip_on_chip.mod',
  'Sounds/muzyka-colony-mb-e-trip_on_chip.mod',
  'Sounds/muzyka-colony-mb-e-trip_on_chip.mod',
  'Sounds/muzyka-colony-mb-e-trip_on_chip.mod',
  'Sounds/muzyka-colony-mb-e-trip_on_chip.mod',
  'Sounds/muzyka-colony-mb-e-trip_on_chip.mod',
  'Sounds/muzyka-colony-mb-e-trip_on_chip.mod',
  'Sounds/muzyka-colony-mb-e-trip_on_chip.mod'
}
end

  if (editorloadlevel==1) then editor=1; end; 
  if (editorloadlevel==0) then editor=0; end; 
  benchmark_stage=0; 
  extradroids=0; 
  gr = love.graphics;
  if(map_changed==0) then map_changed=1;   end;  
   if (firstload==0)and(enabletitlemusic==1) then music:play(1); end   --FOR TITLE MUSIC IF EXIST
slowPL1PL2=0;
signaltraptimer=0; 
  totalammo=0; -- Загрузка уровня , нужно сбросить все параметры которые отстутвуют в этом уровне.
  ammoX={};
  
 if (ammokeyPL1=="loadexternallevel") then loadexternallevel=1; editor=1; menu=0; else loadexternallevel=0; end; 
-- тут задаются переменные которые должны обнулятся до каждой загрузки уровня.
damagetimerPL1=0;
pietro=1;
feartimerPL1=0;
dasglukenfild=0;
ammokeyPL1="";
express=0;
repairroad=0;
fuel=0;
x2pla2am=0;
y2pla2am=0;
hptank=3000;--maximumvertical=0; -- add
converted=0;
drawonceZZOLDLEVEL=0;
timer=0;
xch=0;
bdata={};
   for line in love.filesystem.lines ("build.ini") do
      table.insert (bdata, line:split("!"))
    end

if (bdata) then build=bdata[1][1];
  build_numeric=tonumber (build);  if (build_numeric==nil) then build_numeric=0; end; 
 end  --загружем версию билда.

 



smsg1=""..titlegame.." b"..build;-- сообщение пользователю по умолчанию. 
incontrolcentre=0;
p1p2=0;  --  при scanobject эти переменные могут задаватся поиском.
p1x2=0;
p4x2=0;
tempshutdownpowerstate=0;
antitankm=0;
removeteleportmarker=0;
a=0; --Для тестирования Windows игр на линуксе используйте "Linux для дома"
x=0;y=0;
pri=0;
zzx=0;

-- .$C classic Mission2000 level from Zx-spectrum (Hobeta format) --parsing data .$C
textures = {};
loadedfirst=0;
moving_timeout = 0;

man_x = 0;  -- целевое положение чувака
man_y = 0;  -- целевое положение чувака
man_speed = 210; -- скорость движения чувака в пикселях в секунду
man_is_moving = false; -- проигрывается ли анимация движения

-- это коэффициент для работы с основными иконками и знакоместами 20х20
x=0;
y=0;
x2=0;
y2=0;


function setspeed (setspeedgame)
  if (setspeedgame>9) then  speedchange=((setspeedgame-10)*200); end;
  if (setspeedgame<10) then  speedchange=((setspeedgame-10)*70); end; 
  default_man_speed= 260+275*scaling+speedchange;
  default_ammo_speed= 550+275*scaling+speedchange; 
  if (ossys=="Android") then default_ammo_speed = 500+280*scaling+speedchange; end; 
  man_speed= default_man_speed;
  ammo_speed = default_ammo_speed; -- скорость движения пули в пикселях в секунду
  ammo_spd_wrog = default_ammo_speed; -- скорость движения player2 пуля в пикселях в секунду
  wrog_speed = man_speed; -- скорость движения player2 в пикселях в секунду

end

setspeed (setspeedgame);

man_x2 = 0;  -- целевое положение пули
man_y2 = 0;  -- целевое положение пули

man_is_moving2 = false; -- проигрывается ли анимация движения

man_xpla2 = 0;  -- целевое положение player2
man_ypla2 = 0;  -- целевое положение player2
man_is_movingpla2 = false; -- проигрывается ли анимация движения

man_x2pla2am = 0;  -- целевое положение player2 пуля
man_y2pla2am = 0;  -- целевое положение player2 пуля

man_is_movingpla2am = false; -- проигрывается ли анимация движения
man_step=rozmiarznak;

x3pla2am=0;
y3pla2am=0;
cannon_shoot3 = false; -- ne isp

smsglist = {} ;-- Список системных и игровых сообщений на разных языках.
    for line in love.filesystem.lines ("smsg.ini") do
      table.insert (smsglist, line:split("!"))
    end


   objs={} ;-- тут загружается массив обьектов.
    for line in love.filesystem.lines ("objects.ini") do
      table.insert (objs, line:split("!"))
    end
--8192 тоже можно. только 1% пользователей видеокарт будут иметь проблемы с этим.
 function create_atlas ()
if (modtextures==nil) then modtextures=0; end; 
ATLAS = lg.newCanvas(8192, basetexturesize*8,{} ) -- это создание пустой картинки для наполнения ее картой спрайтов.
nonetexture="1empty.png"; 
IMAGES = {};
IMAGES[0]=objs[0+1][3];
for a0=1,350,1 do  -- максимум временно 170 (6800 пикс), для 1 байтового режима - 256.   310  maximumitemsID 
if (objs[a0]~=nil) then IMAGES[a0]=objs[a0][3]; end;  -- загружаем список имён из таблицы обьектов. 
end

  lg.setCanvas(ATLAS)
  for i = 0, #IMAGES - 1 do
  tor_texturowy="Textures/";
  if (modtextures==1) then tor_texturowy_need_check="Textures/pack"..modtextures.."/";
  exists = love.filesystem.exists( tor_texturowy_need_check..IMAGES[i + 1] )
  if (exists) then tor_texturowy=tor_texturowy_need_check;  end;    end
    local img = lg.newImage(tor_texturowy..IMAGES[i + 1]);
      widthimg = img:getWidth();
    if (img==nil) then lg.newImage("Textures/"..nonetexture); end; 
    local x = i % 64;
  local y = math.floor(i / 64);
  scalefactor=1;  if (widthimg>basetexturesize) then scalefactor=basetexturesize/widthimg; end; 
   lg.draw(img, x*basetexturesize, y*basetexturesize,0,scalefactor,scalefactor)
    -- а вот именно здесь в атлас и записывается графическое изображение.
    local quad = lg.newQuad(x*basetexturesize, y*basetexturesize, basetexturesize, basetexturesize, 8192, basetexturesize*8)
    --квад это всего лишь координата, это не сама картинка на данный момент
    IMAGES[i + 1]= quad; 
  end
  lg.setCanvas()
end
  
  anim = {};
  for a=1,#objs-1,1 do 
    if (objs[((a))][12]~=nil)and(objs[((a))][12]=="animset") then 
       animset_detect=objs[((a))][12]; --identifier animset
       animset_id_objs=objs[((a))][1]; --number object in object.ini (objs)
       animset_id=objs[((a))][2];  -- number animation in animset1.png
       --error ("a"..a.." animset="..animset_detect.." animset_id=|"..animset_id.." animset_id_objs="..animset_id_objs.." ");
       maxanim=8;
       if (animset_id_objs==235) then maxanim=12; end;
        if (maxanim==8) then anim[animset_id_objs]= anim8.newAnimation(g('1-8',animset_id+1), 0.05); end; 
        if (maxanim==12) then anim[animset_id_objs]= anim8.newAnimation(g('1-12',animset_id+1), 0.05); end; 
        -- hero_anim:draw(image, x, y,0,scaling,scaling);
    end
  end

 if (GAMEITEMATLAS==nil) then create_atlas ();  GAMEITEMATLAS=1; end; 

function reschange (resolutionPC) 
          timerz=0;
          totalammo=0; -- нужно сбросить все параметры чтобы патроны не вызвали сбой
          ammoX={};
                  xsave=gamex(x); --  x=3 (168), но x у нас широта тут, 
                  ysave=1+gamey(y); --  а Y - 7 (336) , no это теперь высота (!) 
                  xpla2save=gamex(xpla2); -- x2=29 (312) координаты игрока 2 НЕ сохраняются совсем. добавить обработку старт позиции.
                  ypla2save=1+gamey(ypla2); -- y2=13 (960)
    if (totalenemies>0) then for enemynum=1,totalenemies,1 do 
         typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
          xpla3save=math.ceil (gamex(xt));
          ypla3save=math.ceil (1+gamey(yt));
         enemies[enemynum]:set(typt, xpla3save,ypla3save,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,0,speedtanks,protecttanks,0,0,0,0,0,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8); 
       end; end; 
                  
                  if (resolutionPC==6) then setresolution (maxwidth,0) ; end; --RESKUE 
                  if (resolutionPC~=6) then setresolution (maxwidth,7) ; end;
                      scaling=rozmiarznak/basetexturesize;
                      man_step=rozmiarznak;  -- шаг движения чувака (равен размеру клетки)  всегда и во всех случаях. Для всех переменных. 
                      default_man_speed= 270+280*scaling
                      man_speed=default_man_speed;
                      setspeed (setspeedgame); 
              
                      --тут нужно перевычислить координаты X Y  для обоих игроков   
                      x,y=xgametorealpositionbezbyte (ysave,xsave);  --(xgame - первая координата реальная ВЫСОТА. потом ШИРОТА)
                      xpla2,ypla2=xgametorealpositionbezbyte (ypla2save,xpla2save);
          rightspaceonscreen=gamescreenfixhorizontal*rozmiarznak+33*rozmiarznak; -- первое свободное место права от поля игры.
      if (totalenemies>0) then for enemynum=1,totalenemies,1 do 
         typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
          xpla3,ypla3=xgametorealpositionbezbyte (yt,xt);
          man_xpla3=xpla3; 
          man_ypla3=ypla3;
         enemies[enemynum]:set(typt, xpla3,ypla3,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,0,speedtanks,protecttanks,0,0,0,0,0); 
      end; end; 
      -- идеально реализован перенос танков с разных разрешений на другое
      if(map_changed==0) then map_changed=1;   end; 
    end


function gamex (x)
  --if (x==nil) then x=0;smsg1="833 NIL ERROR X"; end;  -- ЗАТЫЧКА ОТ ВЫЛЕТОВ задолбал со своим NIL любимым.
     x=(x-0)-gamescreenfixhorizontal*rozmiarznak+cameraleftpos_x_hor*rozmiarznak;
     x=(x/rozmiarznak)-1; --  это поправка для любого размера
 return (math.ceil (x)),x; 
end

function gamey (y)
    y=(y/rozmiarznak)-gamescreenfixvertical+camerauppos_y_vert;
 return (math.ceil (y)),y;
end;
--gamex i gamey делят реальные координаты для получения простых координат совместимых с уровнем.
--обычно используются для печати обьекта в поле игры через printatы
--они не подходят для перемещения человечка, там нужно умножение.

function coord (x,y)-- x это вертикаль 0-18 y - gorizontałs  1,1 lw ugol
   write=(x)*mapsize_horizontal+(y)-mapsize_horizontal+18; --write=x*32+y-14; м  visual_mapsize_horizontal
   return write;
end;

--функция считывает код обьекта из карты и возвращает его, работает по знакоместам.
--что и обеспечивает использование gamey и gamex в вызове. возможно они будут вынесены в нее
--screens (gamey (y),gamex (x)-1));  обычно вызывается так.
-- string.byte 

function screens (x,y)
  if (love.keyboard.isDown("kp3"))and(otladka==1) then  freezetimerPL1=3; return 0 ; end;  
  screens_used=screens_used+1;
   --callingFuncName = debug.getinfo(2, "n").name;
   --if (x~=PC1_x)and(y~=PC1_y) then  smsg1="screens "..x..","..y..") FROM "..callingFuncName;--.."timerz="..timerz.."timerx=="..timerx; 
  --end
   koord=coord (x,y);
   if (xdata[koord]==nil) then return 0 ; end;  --убираем вонючий nil
   getscreens=string.byte (xdata[koord]);
   if (getscreens==nil) then  return 0 ; end;  --убираем вонючий nil
   coord2=xdata[60000+koord];
   if (coord2~=nil)  then
          byte2=string.byte (coord2) ;
          if (byte2==nil) then byte2=0; end; 
          if (byte2~=nil) then 
          getscreens=getscreens+256*byte2;
          end
          end
   
    return getscreens;
end;


function screensq (x,y)  -- 1 wyzow 
  koord=coord (x,y)
   getscreens=string.byte (xdata_copy[koord]);
   coord2=xdata_copy[60000+koord];
   if (coord2~=nil)  then
          byte2=string.byte (coord2) ;
          if (byte2==nil) then byte2=0; end; 
          if (byte2~=nil) then 
          getscreens=getscreens+256*byte2;
          end
          end
   if (getscreens==nil) then getscreens=0;end;  --убираем вонючий nil

    return getscreens;
end;

    function Spektrum_Kolorowanie (numbercolor)
       if (numbercolor==1) then blue () ; end;     if (numbercolor==2) then red () ; end; 
    if (numbercolor==3) then magenta () ; end;     if (numbercolor==4) then green () ; end;     if (numbercolor==5) then cyan () ; end;     if (numbercolor==6) then yellow () ; end;     if (numbercolor==7) then white () ; end; 
    end


 function not_numeric (a)  --TOGGLE
  if (a>0) then a=0;timerz=0; end
  if (a<0) then a=0;timerz=0; end
  if (a==0)and(timerz>0) then a=1;timerz=0; end
    return a
end

--реально printat ничего не печататет, а лишь записывает в загруженный уровень новый обьект
--а рендерер уже занимается его выводом.   
--Таким образом при желании можно передавать координаты одной цифрой. 
--x и y - это координаты в спектрумовской системе координат, для удобства (по знакоместам)
--в реальный уровень на диске - ничего не пишется, только в массив xdata.
--типичное обращение для печати на экране (gamey(y)координата+plusy смещение ,gamex(x)координата+plusx,56 код обьекта);
--Данный массив может быть записан вместе с текущими параметрами уровня через редактор или сохранение игры.

function printat (x,y,content)
  -- PRINTAT всегда путает X i Y .
  -- if (string.len (content)>1) then  -- временно убрано т.к. вызывало ошибки в работе функции если будет глючить - удалить.
  arrived_item_code=content; 
   byte2,byte1=split2bytes (content);
   coord_parameter_map3=coord (x,y);
    byte1c=string.char (byte1); -- end;
    byte2c=string.char (byte2); -- end;
    xdata[coord_parameter_map3]=byte1c;
    xdata[60000+coord_parameter_map3]=byte2c;
--    smsg1=" cpm"..coord_parameter_map3.."  byte1="..byte1.."byte2="..byte2; 
   if(map_changed==0) then map_changed=1;   end;  
end;

function powerclean ()
  for b=1,mapsize_horizontal-1,1 do 
         for a=0,mapsize_vertical,1 do 
              c=(screens (b,a));
              if ((c==45)or(c==46)) then printat (b,a,56); end
           end
       end
     end

function xgametorealpositionbezbyte (X0,Y0)
    x0=0+(Y0)*rozmiarznak+rozmiarznak+gamescreenfixhorizontal*rozmiarznak-cameraleftpos_x_hor*rozmiarznak; 
    y0=(X0)*rozmiarznak-rozmiarznak+gamescreenfixvertical*rozmiarznak-camerauppos_y_vert*rozmiarznak; --учтено смешение 258 и -rozmiarznak
    return x0,y0;
end


function xgametorealpositionbezbyte_for_cannons (X0,Y0)
  smsg1="cameraleftpos_x_hor="..cameraleftpos_x_hor.."  camerauppos_y_vert="..camerauppos_y_vert;
   -- ОХЕРЕТЬ функция заработала только после замены местами  camerauppos_y_vert и cameraleftpos_x_hor
    x0=0+(Y0)*rozmiarznak+1*rozmiarznak+gamescreenfixhorizontal*rozmiarznak-camerauppos_y_vert*rozmiarznak; 
    y0=(X0)*rozmiarznak-0*rozmiarznak+gamescreenfixvertical*rozmiarznak-cameraleftpos_x_hor*rozmiarznak; --учтено смешение 258 и -rozmiarznak
    return x0,y0;
end



function xgametorealposition (X0,Y0)
    x0=0+string.byte (Y0)*rozmiarznak+rozmiarznak+gamescreenfixhorizontal*rozmiarznak-cameraleftpos_x_hor*rozmiarznak; 
    y0=string.byte (X0)*rozmiarznak-rozmiarznak+gamescreenfixvertical*rozmiarznak-camerauppos_y_vert*rozmiarznak; --учтено смешение 258 и -rozmiarznak
    return x0,y0;
end

-- проверка видимости , требует РЕАЛЬНЫЕ x i y координаты, не обработанные gamex () 
-- возвращает 0 если невидим,  1 если видим.
function playsoundifvisible (sound,xt,yt)
  if (sound==nil) then return; end; 
    if ((isvisible(xt,yt))==1)  then 
      sound:clone():play()
      --love.audio.play(sound) 
      end;
  end
function isvisible (xt,yt)
    ix=gamex(xt); iy=gamey(yt); 
  --  smsg1=""..ix.."-"..cameraleftpos_x_hor.."<"..visual_mapsize_horizontal.." and >0;;;  iy="..iy.."-"..camerauppos_y_vert.."<"..visual_mapsize_vertical.." and>0)"; 
      if (ix-cameraleftpos_x_hor>0)and(ix-cameraleftpos_x_hor<visual_mapsize_horizontal)and(iy-camerauppos_y_vert>0)and (iy-camerauppos_y_vert<visual_mapsize_vertical) then return 1; end; 
    
return 0;
end

function print_r (name,x,y)

local serpent = require("serpent")  
lg.print (serpent.block(name),x,y);
end

      function  ext_param (table,id,column,mod)
      if (id==nil) then     return 0 ;         end; 
      if (table==nil) then  return 0 ;         end; 
      if (table[id+1]==nil) then  return 0 ;         end; 
      if (table[id+1][column]==nil) then return 0 ; end; 
       if (mod=="number") then param=tonumber (table[id+1][column]); end
       if (mod=="string") then param=tostring (table[id+1][column]); end; 
       if (param==nil) then return 0; end; 
       return param ;
       -- похоже номер обьекта в таблице отличается на +1.
       -- работает разумеется только для чисел, а не для строк.
     end

     function  ext_objs_param (id,column)
      if (id==nil) then         return 0 ;         end; 
      if (column==nil) then         return 0 ;         end; 
      if (objs[id+1][column]==nil) then return 0 ; end; 
       param=tonumber (objs[id+1][column]);
       return param ;
       -- похоже номер обьекта в таблице отличается на +1.
       -- работает разумеется только для чисел, а не для строк.
     end

     function  ext_objs_string (id,column)
       if (id==nil) then 
        return 0 ;
         end; 
      if (objs[id+1][column]==nil) then return 0 ; end; 
       param=tostring (objs[id+1][column]);
       return param ;
       -- похоже номер обьекта в таблице отличается на +1.
       -- работает разумеется только для чисел, а не для строк.
     end


  function writeMAP(filename, t)  
      local file = love.filesystem.newFile( filename, 'w' )
      local file = io.open(filename, 'wb')
      data = {};
      for i, v in pairs(t) do
         data[i] = v;
      end
      data = table.concat(data)
      file:write(data)
      file:close (data)
      end


  function writeSAVE(filename, t)  
      local file = love.filesystem.newFile( filename, 'w' )
      local file = io.open(filename, 'wb')
      data = {};
      for i, v in pairs(t) do
         data[i] = v;
      end
      data = table.concat(data)
      file:write(data)
      file:close (data)
      end


function freadbin (data)
  freadbin_used=freadbin_used+1;
  str = {};
    for b in string.gmatch(data, ".") do
        table.insert (str, b);end;
    return str;
end

--функция для разделения числа на 3 байта. 
 function split3bytes (byte)
  byte1= math.floor (math.abs(byte/65536))   -- 513/256=2
  byte2= math.floor (math.abs((byte-(byte1*65536))/256))   -- 513/256=2
  byte3= byte-byte2*256-byte1*65536;     --513-2*256 = 513-512=1   
   if (byte1>255) then byte1=255; end; 
   if (byte2>255) then byte2=255;end; 
   if (byte3>255) then byte3=255;end; 
   if (byte3<0) then byte3=0;end; 
     return byte3,byte2,byte1; 
    end

function poke (zxs)
  if (zxs==nil) then zxs=0;  end; -- if (zxs>255) then zxs=255; end;
  if (zxs<0) then zxs=0; end;
  byte2,byte1= split2bytes (zxs); 
  return string.char (byte1),string.char(byte2);
end

function stasuswlaczenia_textowe (a)
          if (a==0) then return smsg_string ("OFF"); end; 
          if (a==1) then return smsg_string ("ON"); end; 
      return "";
          end; 


function lprint (SMSG_CODE,cwidth,cheight)
   message,varname=smsg_string (SMSG_CODE);
   paramcontq="";
   if (varname~="") then paramcontq=_G[varname]; 
    if (paramcontq~=nil) then message=message.." "..paramcontq ;end;
    end;    --if (titlegame=="Reskue") then blue () ; lg.print(message,cwidth,cheight+5); white () ;     end
   lg.print(message,cwidth,cheight);
   return varname;
end

-- UTF-8 Reference:
-- 0xxxxxxx - 1 byte UTF-8 codepoint (ASCII character)-- 110yyyxx - First byte of a 2 byte UTF-8 codepoint
-- 1110yyyy - First byte of a 3 byte UTF-8 codepoint-- 11110zzz - First byte of a 4 byte UTF-8 codepoint
-- 10xxxxxx - Inner byte of a multi-byte UTF-8 codepoint
 
local function chsize(char)
    if not char then
        return 0
    elseif char > 240 then
        return 4
    elseif char > 225 then
        return 3
    elseif char > 192 then
        return 2
    else
        return 1
    end
end
 
-- This function can return a substring of a UTF-8 string, properly handling-- UTF-8 codepoints.  Rather than taking a start index and optionally an end
-- index, it takes the string, the starting character, and the number of-- characters to select from the string.
 
function utf8sub(str, startChar, numChars)
  local startIndex = 1
  while startChar > 1 do
    local char = string.byte(str, startIndex)
    startIndex = startIndex + chsize(char)
    startChar = startChar - 1
  end
   
  local currentIndex = startIndex
   
  while numChars > 0 and currentIndex <= #str do
    local char = string.byte(str, currentIndex)
    currentIndex = currentIndex + chsize(char)
    numChars = numChars -1
  end
  return string.sub(str, startIndex, currentIndex - 1)
end

--msgbox не должен сам обрабатывать smsg текст,  он получает готовый. 
function msgbox (textdata,x,y,wysotastroki,szerokosc) 
   if (textdata==nil) then return 0; end; 
   rozmiartekstu= utf8.len  (textdata); 
   if (textdata~=nil) then 
    textdata_w_enter,koliczestwo_zamen=string.gsub (textdata, '%^','\n'); --\r
      end
    lg.printf(textdata_w_enter,x, y,maxwidth/3*2 ); 
end

--smsg fields
--0 none    --1 number, not used    --2 SMSG_CODE    --3 message   --4 language (for items) or varname  
   function  smsg_string (SMSG_CODE)
      if (SMSG_CODE==nil) then return "null"; end; 
    scanid=SMSG_CODE..language;
    message="";varname="";
        for l0=1, #smsglist-1,1 do
          if ((smsglist[l0][2])==scanid) then message=smsglist[l0][3];varname=smsglist[l0][4]; varname2=smsglist[l0][5]; varname3=smsglist[l0][6];  end ; 

        end

    if (message=="") then
      scanid=SMSG_CODE;
        for l0=1, #smsglist-1,1 do
          if ((smsglist[l0][2])==scanid) then message=smsglist[l0][3];varname=smsglist[l0][4]; varname2=smsglist[l0][5]; varname3=smsglist[l0][6];  end ; 

        end
     smsg2="Invalid SMSG_CODE: "..SMSG_CODE.." Language ID="..language.." in smsg.ini"; end; 
     if (varname2==nil) then varname2="";  end; 
     if (varname3==nil) then varname3="";  end; 
           return message,varname,varname2,varname3 ;
       -- похоже номер обьекта в таблице отличается на +1.
       -- работает разумеется только для чисел, а не для строк.
     end


-- единственное место где определяется всё что должно быть в сохранённой игре SAVEGAME parameters 
  function xdatapreparetowrite ()
 
     --может быть не имеет смысл совсем читать максимум HP. 200 для любого уровня. 
      if (tanksdestroyed>252) then tanksdestroyed=252; end; 
      if (multikills>252) then multikills=252; end; 
      if (ultrakills>252) then ultrakills=252; end; 
      xdata[55634]=poke (tanksdestroyed);
      xdata[55625]=poke (gamey(y)+1);
      xdata[55626]=poke (gamex(x)); 
      xdata[55631]=poke (bombs);
      xdata[55632]=poke (ice);
      xdata[55633]=poke (lives);
      xdata[55635]=poke (ammo);
      xdata[55638]=poke (targetremains);
            xdata[55641]=poke (savegamecounter);
            xdata[55642]=poke (parameter80);
            xdata[55643]=poke (parameter81);
            xdata[55644]=poke (parameter82);
            xdata[55645]=poke (parameter83);
      xdata[55649]=poke (water); 
      xdata[55646]=poke (powerstate);
      xdata[55656]=poke (puszkistate);
      xdata[55637]=poke (keys);-- keys вместо бонуса за уровень
      xdata[55653]=poke (tank);
      xdata[55654]=poke (protect);
      xdata[55655]=poke (reservedaids);
      xdata[55610]=poke (enemytank);
     if (gamex(xpla2)<mapsize_vertical)and(gamey(ypla2)<mapsize_vertical) then xdata[55640]=poke (math.ceil(gamex(xpla2))); 
      xdata[55639]=poke (math.ceil(1+gamey(ypla2))); end
     if (hp<0) then hp=1 end;
     if (hp<255) then xdata[55629]=poke (hp) ;xdata[55652]=string.char (0); end  -- hp реальный вместо   не больше 255. 
     if (score<0) then 
      score1=0; score2=0;
      else
      score1,score2,score3=split3bytes (score);
    end
    --if (score>65535) then score=65535; end;-- пока есть только 2 байта для подсчёта очков.
     xdata[55650]=poke (score1);
     xdata[55651]=poke (score2);
     xdata[55660]=poke (score3);
     xdata[55661]=poke (backgroundcolorlevel);
     xdata[55662]=poke (colorizepole);
     xdata[55663]=poke (colorizeboulder);
     xdata[55664]=poke (multikills);
     xdata[55665]=poke (ultrakills);
     xdata[55666]=poke (parameter66);
     xdata[55667]=poke (parameter67);
     xdata[55668]=poke (parameter68);
         xdata[55705]=poke (enableredtank);
     xdata[55706]=poke (enableauratank);
     xdata[55707]=poke (enablewtank);
     xdata[55708]=poke (parameter73);
     xdata[55709]=poke (parameter74);
         xdata[55710]=poke (parameter75);
     xdata[55711]=poke (parameter76);
     xdata[55712]=poke (parameter77);
     xdata[55713]=poke (parameter78);
     xdata[55714]=poke (parameter79);
     xdata[55669]=poke (system_saveversion);
     xdata[55670]=poke (system_mapversion);
     
      if (hp>255) then
     hpx,hpb2=split2bytes (hp);
     xdata[55652]=poke (hpb2);
     xdata[55629]=poke (hpx);
    end
      --SAVE GAME  дополнительные параметры - повторно использовать всё для F5
       xdata[55624]=poke (darkzone);
       xdata[55623]=poke (greenshitdelay);
       xdata[55622]=poke  (greenshithastetime);
       xdata[55621]=poke (seed);
       xdata[55620],xdata[55697]=poke  (slot0);
       xdata[55675],xdata[55698]=poke (slot1);
       xdata[55676],xdata[55699]=poke (slot2);
       xdata[55677],xdata[55700]=poke (slot3);
       xdata[55678],xdata[55701]=poke (slot4);
       xdata[55679],xdata[55702]=poke (slot5);
       xdata[55680],xdata[55703]=poke (slot6);
       xdata[55619]=poke (paralysatorammo);
       xdata[55618],xdata[55688]=poke (inventoryitemtable[1]); -- эти предметы могут быть ТОЛЬКО в сохранённой игре и не должны быть в коде уровней.
       xdata[55617],xdata[55687]=poke (inventoryitemtable[2]);
       xdata[55616],xdata[55686]=poke (inventoryitemtable[3]); 
       xdata[55615],xdata[55685]=poke (inventoryitemtable[4]);
       xdata[55647],xdata[55689]=poke (inventoryitemtable[5]);
       xdata[55648],xdata[55690]=poke (inventoryitemtable[6]);
       xdata[55658],xdata[55691]=poke (inventoryitemtable[7]);
       xdata[55659],xdata[55692]=poke (inventoryitemtable[8]);
       xdata[55681],xdata[55693]=poke (inventoryitemtable[9]);
       xdata[55682],xdata[55694]=poke (inventoryitemtable[10]);
       xdata[55683],xdata[55695]=poke (inventoryitemtable[11]);
       xdata[55684],xdata[55696]=poke (inventoryitemtable[12]);
       xdata[55657]=poke (levelnumber);
       
       xdata[55614]=poke (minimumtanks);
       xdata[55613]=poke (inventorybelt);
       xdata[55636]=poke (allowedaidspersonal);
       xdata[55611]=poke (starttanks);
       xdata[55610]=poke (enemytank);

      -- попробовал сделать обычное сохранение , сохраняется всё что угодно кроме этих предметов
      -- но т.к. они пока не реализованы как  и инвентарь - поэтому это не особо важно.
      -- неиспользованные ключи 16хх  29 50,51,52,53,54,55
 
end
-- Режимы работы Scanobject
-- code - код искомого обьекта. Его координату нужно будет вернуть.
-- SC_MODE >0 указывает проверить указанную строку от 0 до 27. строка является номером вертикали (в игре это Y)
-- SC_X - указанная высота (номер по горизонтали)
-- coord2 - как правило служит счётчиком найденных обьектов, однако для режима -4 выполняет ограничение по горизонтали.
-- ЧТО НУЖНО ИСПРАВИТЬ -4 ()
-- SC_MODE -1 указывает сканировать весь экран и вернуть первый найденный от начала поля обьект.
-- SC_MODE -2 - указывает вернуть общее число найденных обьектов
-- SC_MODE -3 - указывает вернуть первый случайный обьект
-- SC_MODE -4 - указывает проверить указанную колонку или горизонталь от 0 до 31. (в игре это Х); 
-- SC_MODE -5 - указывает что надо вернуть обьект который найдется № по списку, например второй или третий. --  8,-4,22    28,-5,2 
-- SC_MODE -7 - работа с радиусом. возвращается первый найденный обьект в радиусе. 4-е значение это X, 5-е радиус в клетках.
-- SC_radius - размер области для проверки. используется в режиме -7. иначе игнорируется.
-- возвращает только один найденный обьект. Если указана строка - то ищет только в ней.
-- EXAMPLE  
-- scanobject (140,-7,-7,gamex(x),gamey(y),5);
function scanobject (code,SC_MODE,coord2,SC_X,SC_Y,SC_radius)
  if (editor==1)and (editorticket_scan==0) then  return 0,0 ; end;  -- (tylko 9 i 0 używane)  
  --if (scanobject_used>100) then smsg1="SCAN: Scanobject DISABLED."; return 0 ;end; 
  if (coord2~=nil)and((otladka==1)or(love.keyboard.isDown("kp1"))) then otladka=1; smsg6="SCAN: "..code.." ."..SC_MODE.." .."..coord2.." SCAN="..scanobject_used; end;
  if (coord2==nil)and((otladka==1)or(love.keyboard.isDown("kp1"))) then otladka=1; smsg6="SCAN: "..code.." ."..SC_MODE.." NIL SCAN="..scanobject_used; end;
  if (love.keyboard.isDown("kp1")) then return 0,0 ; end;  
  scanobject_used=scanobject_used+1; 
  if (SC_Y==nil)and (SC_MODE>-1) then SC_Y=SC_MODE ; end;  -- Если не передан SC_Y тогда SC_MODE подменяет его. для совместимости со старым кодом.

  if (titlegame=="Kolonista")and (code==166) then code=0; end;  -- код 166 запрещён для Colony. Это обычный обьект для него.
 if (code==166)or(code==17)or(code==18)or(editor==1)or(drawonce==0) then reduce=0; maximumscansize_vertical=mapsize_vertical; maximumscansize_horizontal=mapsize_horizontal; else reduce=1; end;  
 -- До выполнения загрузки уровня, в редакторе и для стартовых точек и определения маркера всегда работает максимальный размер сканирования
 if (reduce==1) then 
    if (skan_x_max<1) then maximumscansize_vertical=mapsize_vertical/2;maximumscansize_horizontal=mapsize_horizontal;   end --пока что нет карт где более 100 клеток используется. 
  if (skan_x_max>0) then maximumscansize_vertical=skan_x_max;    maximumscansize_horizontal=skan_y_max;  end
  if (titlegame=="Kolonista")or(levelnumber==132)  then maximumscansize_vertical=66;maximumscansize_horizontal=91; end ;  --пока что нет карт где более 100 клеток используется. 
  if (titlegame=="Reskue") then maximumscansize_vertical=69;maximumscansize_horizontal=94; 
  if levelnumber==1 then maximumscansize_horizontal=135;end; 
  end ;  --пока что нет карт где более 100 клеток используется. 
-- object "166" and(titlegame=="M2K")   
  if (typelevel=="ZX") then maximumscansize_vertical=20;maximumscansize_horizontal=31; end ;  --пока что нет карт где более 100 клеток используется. 
  --smsg1="drawonce="..drawonce.." maximumscansize_vertical="..maximumscansize_vertical.." maximumscansize_horizontal="..maximumscansize_horizontal..""; 
  end
  --smsg1="reduce="..reduce.." maximumscansize_vertical="..maximumscansize_vertical.." maximumscansize_horizontal="..maximumscansize_horizontal
     if (SC_MODE>-3) then sthorizontal=0;enhorizontal=maximumscansize_horizontal; end
     if (SC_MODE==-4) then stvertical=0; envertical=maximumscansize_vertical; sthorizontal=coord2; enhorizontal=coord2;  end; 
     if (SC_MODE==-7) then stvertical=SC_Y-SC_radius; envertical=SC_Y+SC_radius; sthorizontal=SC_X-SC_radius; enhorizontal=SC_X+SC_radius;  end; 
     if (SC_MODE==-1) then stvertical=1; envertical=maximumscansize_vertical; end; 
     if (SC_MODE>-1) then stvertical=SC_Y; envertical=SC_Y+1;  end;  -- по идее должно быть без +1 но где то что то сбивалось из за этого? 
     if (SC_MODE==-2) then stvertical=1; envertical=maximumscansize_vertical;end; 
     if (SC_MODE==-3) then stvertical=math.random(maximumscansize_vertical); 
      --stvertical=0; 
      envertical=maximumscansize_vertical;
       sthorizontal=math.random(maximumscansize_horizontal-1);
       --sthorizontal=0;  -- часто используется для телепорта для грязи и т.п. и часто не находится из за этого обьект. увеличит шансы. 
       enhorizontal=maximumscansize_horizontal; 
       end;
        wsego=0;

     if (SC_MODE==-5) then stvertical=1; envertical=maximumscansize_vertical; sthorizontal=0;enhorizontal=maximumscansize_horizontal; end; 
      --maximumscansize_vertical=2;maximumscansize_horizontal=2 ; -- ОТКЛЮЧАТЕЛЬ scanobject - нет не он снижает FPS 
        for a=stvertical,envertical,1 do  -- вертикаль     -- не ищет совсем если SC_MODE
         for b=sthorizontal,enhorizontal,1 do    --горизонталь.   так ищет только по вертикали что не так  если SC_MODE
              c=(screens (a,b));
              --if(SC_MODE==-4) then printat (a,b,1); end; -- Показывает в какой вертикали (по Y) был поиск.
              if ((c==code)) then 
                wsego=wsego+1;
                if (wsego==coord2)and (SC_MODE==-5) then return b,a;end;
                if (wsego==coord2)and (SC_MODE==-7) then return b,a;end;
                 if (SC_MODE>-2)and(wsego>0)or(SC_MODE==-4)and(wsego>0) then return b,a; end; -- при первом же обнаружении в не -2 режиме отправляет назад результат
                 if (SC_MODE==-3) then return b,a; end;   
                 end
           end
       end
       if (wsego<1) then return -1,-1; end --это означает что обьекта нет. 
       if (SC_MODE==-2) then return wsego,wsego; end;   
      if (SC_MODE==-4) then return b,a; end; --предположительно должно работать для второй оси координат.
      
    end

    --  map_flag = 1 - чтение уровней пользователя
    --  map_flag = 2 - возвращать 1 вместо реального чтения файла.
function sourceread(realfilename,map_flag)
   if (ossys~="Android") then p = love.filesystem.getSourceBaseDirectory() ; end;
   if (ossys=="Android") then p = love.filesystem.getSaveDirectory() ;end
    if (ossys=="Windows")then  filename=p..'\\saves\\'..realfilename; end
    if (ossys=="Linux") then filename=p..'/saves/'..realfilename; end
    if (ossys=="Windows")and(map_flag==1)then  filename=p..'\\Levels\\'..realfilename; end
    if (ossys=="Linux")and(map_flag==1) then filename=p..'/Levels/'..realfilename; end
    if (ossys=="Mac") then  filename=p..'/saves/'..realfilename; end
    if (ossys=="Mac")and(map_flag==1) then filename=p..'/Levels/'..realfilename; end
 
   if (ossys~="Android") then 
                            if (filename==nil) then return -1 ; end; --Возврат -1 означает что где то серьезная ошибка и пришёл nil
                            --checkfileexists=file_isExists(filename);--i-f (checkfileexists==true) then 
                                    local file = io.open(filename, 'rb'); 
                                  if (file~=nil) then
                                   local str = file:read (mapsize_bytes_max-1) ; --if (map_flag~="2") then  kurwa mać  55923!!! tyłe csasu stracono!
                                          file:close();
                                          return str ;
                                          -- else return 1; end;
                                  else return 0; 
                                end  
                         
                        end
   if (ossys=="Android") then exists = love.filesystem.exists( realfilename );--added 
    if (exists==true) then
             --if (map_flag~="2") then 

              str=love.filesystem.read(realfilename, love.filesystem.getSize(realfilename));
             return str 
             -- else return 1; end ; 
             else return 0; end
           end
          
  
end


   function closedoor (f_x,f_y,f_plusx)
  --if (plusy==0) then
      cd1= (screens (gamey(f_y)+1,gamex(f_x)+f_plusx));
      cd2= (screens (gamey(f_y)+2,gamex(f_x)+f_plusx));
      --smsg1="cd1="..cd1.." cd2="..cd2;
      if (cd1==56)and(cd2==56) then 
        printat (gamey(f_y),gamex(f_x)+f_plusx,"135");
        printat (gamey(f_y)+1,gamex(f_x)+f_plusx,"133");
        printat (gamey(f_y)+2,gamex(f_x)+f_plusx,"134");
        love.audio.play(swapitem);
         else love.audio.play(brokendoorsnd); 
        return;
      end; 
      end;


function realrandomscanobject (p1)

      total=scanobject (p1,-2);
            randomc=math.ceil(math.random(total));
            checkx,checky=scanobject (p1,-5,randomc);
            --smsg1="ibane total="..total.." che"..checkx.." y"..checky.." object="..p1;
            return checkx,checky;
            end

function setColorX11 (q1,q2,q3,q4)
    if (lovever<11) then lg.setColor(q1, q2, q3, q4); end
    if (lovever==11) then lg.setColor(q1/256, q2/256, q3/256, q4/256); end -- числа цветов color change love 10 love 11 делим на 256для 11
end

function setBGColorX11 (q1,q2,q3,q4)
    if (lovever<11) then lg.setBackgroundColor(q1, q2, q3, q4); end
    if (lovever==11) then lg.setBackgroundColor(q1/256, q2/256, q3/256, q4/256); end -- числа цветов color change love 10 love 11 делим на 256для 11
end


function sourcewrite(data, realfilename)
   if (ossys~="Android") then p = love.filesystem.getSourceBaseDirectory() ; end;
   if (ossys=="Android") then p = love.filesystem.getSaveDirectory() ;end
    if (ossys=="Windows")then  filename=p..'\\saves\\'..realfilename; end
    if (ossys=="Linux") then filename=p..'/saves/'..realfilename; end
    if (ossys=="Mac") then  filename=p..'/saves/'..realfilename; end
       
   if (ossys~="Android") then 
        local file = io.open(filename, 'wb'); 
       if (file==nil) then  smsg1="ERROR: Save "..filename.." FAILED!. OS="..ossys.." (pathbase) = "..p.." real="..realfilename;  end;
      if (file~=nil) then  file:write(data)
      file:close()
      if (wsego_saves==0) then wsego_saves=1; req_recheck_savelist=1; end; 
      end         
     end
   if (ossys=="Android") then 
               file=love.filesystem.write(realfilename, data);
                if (wsego_saves==0) then wsego_saves=1; req_recheck_savelist=1;  end; 
          if (file==nil) then  smsg1="Save "..realfilename.." FAILED!. OS="..ossys.." love.fs.write"; end;
             filename=realfilename;
        end

    if (req_recheck_savelist==1) then  req_recheck_savelist=0;
      getsaveslist ();
     end

    return filename
  end
  
 settingstest=sourceread("gamesettings1"); -- Настройки хранятся в папке Saves. 
 if (ossys~="Android") then 
  keyboardloadingdata=sourceread ("keyboardsettings"); 
 if (keyboardloadingdata~=0) then 
  ua= binser.deserialize (keyboardloadingdata); 
  if (ua[1]~=nil) then uammokey =ua[1];  uuammokey=uammokey ;end
  if (ua[2]~=nil) then uicekey = ua[2];  uuicekey=uicekey;end
  if (ua[3]~=nil) then ubombkey = ua[3];  uubombkey=ubombkey;end
  if (ua[4]~=nil) then udropkey = ua[4];uudropkey=udropkey;end
  if (ua[5]~=nil) then uleftkey = ua[5]; uuleftkey=uleftkey;end
  if (ua[6]~=nil) then urightkey = ua[6];uurightkey=urightkey ;end
  if (ua[7]~=nil) then uupkey = ua[7];   uuupkey=uupkey;end
  if (ua[8]~=nil) then udownkey = ua[8];uudownkey=udownkey;end
  if (ua[9]~=nil) then uunpackkey = ua[9];  uuunpackkey=uunpackkey;end
  if (ua[10]~=nil) then uhealkey = ua[10];  uuhealkey=uhealkey;end
  if (ua[11]~=nil) then urestkey = ua[11];  uurestkey=urestkey;end
  if (ua[12]~=nil) then uzbrojakey = ua[12];  uuzbrojakey=uzbrojakey;end
  if (ua[13]~=nil) then ustatkey = ua[13];  uustatkey=ustatkey;end
  if (ua[14]~=nil) then utostartkey = ua[14];  uutostartkey=utostartkey;end
    if (ua[15]~=nil) then uxcamleftkey = ua[15]; uuxcamleftkey =uxcamleftkey; end
    if (ua[16]~=nil) then uxcamrightkey = ua[16];uuxcamrightkey=uxcamrightkey; end
    if (ua[17]~=nil) then uxcamupkey = ua[17];   uuxcamupkey  = uxcamupkey; end
    if (ua[18]~=nil) then uxcamdownkey = ua[18]; uuxcamdownkey= uxcamdownkey; end
  
  end
end

function writesettingsgame () 
  
  if (writeactualsettings==1) then
            pnew={};
            pnew[1]=poke (musicvolume);
            pnew[2]=poke (mastervolume);
            pnew[3]=poke (language);
            pnew[4]=poke (nomusic);
            pnew[5]=poke (coop_join_disable); --похоже не используется 
            pnew[6]=poke (editor_dont_show_broken_items);
            pnew[7]=poke (saveslot);
            pnew[8]=poke (lastmove);
            pnew[9]=poke (poziom);
            pnew[10]=poke (fpslock);
            pnew[11]=poke (ObjectSIZE);
            pnew[12]=poke (setspeedgame);
            pnew[13]=poke (effectvolume);
            pnew[14]=poke (savparam1);
            pnew[15]=poke (savparam2);
            pnew[16]=poke (deadzone);
            pnew[17]=poke (savparam4);
            pnew[18]=poke (invertaxesleft);
            pnew[19]=poke (invertaxesright);
            pnew[20]=poke (disableleftstick);
            pnew[21]=poke (disablerightstick);

            local mydata = binser.serialize(uammokey,uicekey,ubombkey,udropkey,uleftkey,urightkey,uupkey,udownkey,unpackkey,uhealkey,urestkey,uzbrojakey,ustatkey,utostartkey,uxcamleftkey,uxcamrightkey,uxcamupkey,uxcamdownkey)
            datatowrite=table.concat(pnew);
            sourcewrite(datatowrite, "gamesettings1");
            if (ossys~="Android") then  sourcewrite(mydata, "keyboardsettings");  end
            smsg1="Game settings saved.";
            -- тут должно быть отображение дискетки с сохранением файла

        end;
      writeactualsettings=0;
end

-- tu jest podstawową wczytywanie danych oraz pozioma gry
  if (settingstest==0) then 
    writeactualsettings=1;-- writesettingsgame () ; не надо её вызывать при первом запуске! 
    WELCOME_WINDOW_FIRSTLOAD=1
  end
  if (settingstest~=0) then 
    
    settings_loading=1; 
    programparameterdata={};
    programparameterdata=freadbin (settingstest);
   p=programparameterdata;
    if (p~=nil) then 
     musicvolume=string.byte (p[1]);
     mastervolume=string.byte (p[2]);
        love.audio.setVolume( mastervolume/10 );
     language=string.byte (p[3]);
     nomusic=string.byte (p[4]);
     coop_join_disable=string.byte (p[5]);
     editor_dont_show_broken_items=string.byte (p[6]);
     saveslot=string.byte (p[7]);
     lastmove=string.byte (p[8]);
     poziom=string.byte (p[9]);
     fpslock=string.byte (p[10]); 
     ObjectSIZE=string.byte (p[11]);
     if (ObjectSIZE>2) then ObjectSIZE=1; end; 
     setspeedgame=string.byte (p[12]);
     effectvolume=string.byte (p[13]);
     savparam1=string.byte (p[14]);
     savparam2=string.byte (p[15]);
    if (p[16]~=nil) then deadzone=string.byte (p[16]); end
    if (p[17]~=nil) then savparam4=string.byte (p[17]); end; 
     invertaxesleft=string.byte (p[18]);
      invertaxesright=string.byte (p[19]);
       disableleftstick=string.byte (p[20]);
        disablerightstick=string.byte (p[21]); 
    end
  end;

setspeed (setspeedgame) ;
tdata={}; 
for a=0,75924,1 do 
  tdata[a]=0; end;
collisiondata={}; 
for a=0,75924,1 do 
  collisiondata[a]=0; end;

-- 
levelname="Levels/LEVEL"..levelnumber..".$C";
--disable_quickload_at_start=1;   
if (loadsavegame~="yes")and(loadexternallevel==0) then
--это единственный способ обьяснить LUA что это число а не byte  и не char и не строка.
    data, size = love.filesystem.read (levelname);
    glowtimer=0;
    glowlock=0; 
    if (data==nil) then  smsg_menu=" "..levelname.." doesn't exist.";
      loading_lock_message=1;
    end
    if (data~=nil) then leveldatacopy=freadbin (data); -- тут в массив загружается код уровня из архива .love самой игры
    xdata={};
    xdata_load_fail_copy=leveldatacopy;
    loading_lock_message=0; 
    end; 
end

if (loadexternallevel==1) then 
  levelname="LEVEL"..levelnumber..".$C";
   save=sourceread(levelname,1); 
     if (save==0) then smsg_menu=" Error. External file /Levels/"..levelname.." not exist. Try load another level."; 
  leveldatacopy=xdata_load_fail_copy; gameover=1; loading_lock_message=1; 
      end; 
     if (save~=0) then loading_lock_message=0; leveldatacopy=freadbin (save);  end -- тут в массив загружается
     
  loadexternallevel=0; -- блокируем авторестарт 
    xdata=leveldatacopy;
    
  end

if ( loadsavegame=="yes") then 
   -- тут в массив загружается код уровня из папки Saves в папке .love файла на устройстве.  LOAD GAME 
   -- часть комманд даётся в кнопке "2"
       --загрузка всех дополнительных данных из сохранёнки (save game)  
      if (saveslot==0) then levelname ='quicksave'; end ;   -- есть только 1 слот для сохранения пока что.
      if (saveslot==1) then levelname ='quicksavex'; end ;   -- есть только 1 слот для сохранения пока что.
      if (saveslot==-1) then levelname ='autosave'; end ;   -- есть только 1 слот для сохранения пока что.
       if (execute=="loadgame") then levelname=savegamename;selectedoptionmenu=0;menu=0;  end; 
       execute=""; 
      save=sourceread(levelname); -- sposob zagruzki czerez IO LUA  z z я надеюсь что  он годен не только для линукс но и для винды и андроид
      if (save==0) then smsg_menu="Loading "..levelname.." failed. File not found. Try loading another save."; 
        leveldatacopy=xdata_load_fail_copy; gameover=1; loading_lock_message=1;allowmove=0; renderer=0; allowshot=0; selectedoptionmenu=1;menu=0;   
          end; 
      if (save~=0) then loading_lock_message=0;  leveldatacopy=freadbin (save); end ; -- тут в массив загружается
     xdata=leveldatacopy;

   -- Dasglukenfield должен заканчиватся при переходе на следующий уровень.   АГсл 
  end
       typelevel="m2k";
        if (leveldatacopy[55669]~=nil) then 
        saveversion= (string.byte (leveldatacopy[55669])); -- загрузка системных параметров одинаковая и для сохраненки и для карты.
        mapversion= (string.byte (leveldatacopy[55670]));
      end
       if (leveldatacopy[2]=="a")and(leveldatacopy[3]=="p")and(loadsavegame~="yes") then 
        typelevel="Reskue+";
          if (converted==0)and(loadsavegame~="yes") then   -- для будущей работы с ним 
          darkzone=0;
            --start converting  625-656 ->  rozmiarznak25 rozmiarznak56
              --начальное преобразование уровня и убирание с карты поля данных об уровне на новое место.
              oldlevelshift=0;newformatstroka=0
            for a=0,mapsize_bytes_max,1 do -- 1500 ->  1624
              if ((leveldatacopy[a])==nil) then leveldatacopy[a]=56;end --затычка от nil 
                if( a<55000) then xdata[a]=string.char (76);  end
                if( a>54999) then xdata[a]=string.char (0);  end
            end
            for a=0,55621,1 do -- 1500 ->  1624  Агсл  агсл fuck fuck
               if(a<3858)then -- не хватало одного кирпичика для отображения уровня.  624 пришлось поменять на 625
                      b=a-17; -- исправляем сбивание карты на 15 знакомест
                     cc=512+(math.ceil (b/80)-1)*(mapsize_horizontal-80)-35;-- сдвигаем печать карты влево на 15 знаком. на смещение не влияет
                      o_kod=leveldatacopy[a];
                      ch=0;
                      --if (o_kod==string.char (58))and(ch==0) then o_kod=36); ch=1;end; 
                      if (o_kod==string.char (58))and(ch==0) then o_kod=51;ch=1;end; 
                      if (o_kod==string.char (53))and(ch==0) then o_kod=59;ch=1;end; 
                      if (o_kod==string.char (46))and(ch==0) then o_kod=60;ch=1;end; 
                      if (o_kod==string.char (0))and(ch==0) then o_kod=146;ch=1;end; 
                      if (o_kod==string.char (70))and(ch==0) then o_kod=146;ch=1;end; 
                      if (o_kod==string.char (13))and(ch==0) then o_kod=47;ch=1;end; 
                      cha=math.ceil (math.random(3));
                      if (o_kod==string.char (35))and(cha==1) then o_kod=70;ch=1;end; --topliwo
                      if (o_kod==string.char (35))and(cha==2) then o_kod=26;ch=1;end; --magnity
                      if (o_kod==string.char (35))and(cha==3) then o_kod=116;ch=1;end; --solarpanely
                      if (o_kod==string.char (33))and(ch==0) then o_kod=219;ch=1;end; 
                      if (o_kod==string.char (13))and(ch==0) then o_kod=47;ch=1;end; 
                      if (o_kod==string.char (12))and(ch==0) then o_kod=28;ch=1;end; 
                      if (o_kod==string.char (23))and(ch==0) then o_kod=141;ch=1;end; 
                      if (o_kod==string.char (24))and(ch==0) then o_kod=142;ch=1;end; 
                      if (o_kod==string.char (8))and(ch==0) then o_kod=75;ch=1;end; 
                      if (o_kod==string.char (19))and(ch==0) then o_kod=34;ch=1;end; 
                      if (o_kod==string.char (43))and(ch==0) then o_kod=135;ch=1;end; 
                      if (o_kod==string.char (54))and(ch==0) then o_kod=140;ch=1;end; 
                      if (o_kod==string.char (39))and(ch==0) then o_kod=133;ch=1;end; 
                      if (o_kod==string.char (60))and(ch==0) then o_kod=134;ch=1;end; 
                      if (o_kod==string.char (38))and(ch==0) then o_kod=147;ch=1;end; 
if (o_kod==string.char (17))and(ch==0) then o_kod=147;ch=1;end; 
if (o_kod==string.char (28))and(ch==0) then o_kod=147;ch=1;end; 
if (o_kod==string.char (18))and(ch==0) then o_kod=147;ch=1;end; 
if (o_kod==string.char (20))and(ch==0) then o_kod=147;ch=1;end; 
if (o_kod==string.char (26))and(ch==0) then o_kod=147;ch=1;end; 
if (o_kod==string.char (27))and(ch==0) then o_kod=147;ch=1;end; 
if (o_kod==string.char (25))and(ch==0) then o_kod=147;ch=1;end; 
   if (o_kod==string.char (29))and(ch==0) then o_kod=102;ch=1;end;  --ugolki
   if (o_kod==string.char (30))and(ch==0) then o_kod=102;ch=1;end;  --ugolki
   if (o_kod==string.char (31))and(ch==0) then o_kod=102;ch=1;end;  --ugolki
   if (o_kod==string.char (32))and(ch==0) then o_kod=102;ch=1;end;  --ugolki
                      if (o_kod==string.char (44))and(ch==0) then o_kod=114;ch=1;end; 
                      if (o_kod==string.char (56))and(ch==0) then o_kod=39;ch=1;end; --стакан пока заменил на защиту.
                      if (o_kod==string.char (57))and(ch==0) then o_kod=143;ch=1;end;  --trap box wmiesto stakana
                      if (o_kod==string.char (7))and(ch==0) then o_kod=207;ch=1;end; --horizont stena <->
                       if (o_kod==string.char (34))and(ch==0) then o_kod=243;ch=1;end; --horizont stena <->
                       if (o_kod==string.char (47))and(ch==0) then o_kod=244;ch=1;end; --horizont stena <->
                       --if (o_kod==string.char (73))and(ch==0) then o_kod=243;ch=1;end; --horizont stena <->
                       if (o_kod==string.char (79))and(ch==0) then o_kod=244;ch=1;end; --horizont stena <->
                      if (o_kod==string.char (5))and(ch==0) then o_kod=208;ch=1;end; --vert
                      if (o_kod==string.char (6))and(ch==0) then o_kod=210;ch=1;end; --vert
                      if (o_kod==string.char (21))and(ch==0) then o_kod=212;ch=1;end; --vert
                      if (o_kod==string.char (22))and(ch==0) then o_kod=211;ch=1;end; --vert
                      if (o_kod==string.char (4))and(ch==0) then o_kod=209;ch=1;end; --vert
                      if (o_kod==string.char (2))and(ch==0) then o_kod=56;ch=1;end; 
                      if (o_kod==string.char (10))and(ch==0) then o_kod=72;ch=1;end; 
                      if (o_kod==string.char (72))and(ch==0) then o_kod=213;ch=1;end; --vert
                      
                      if (o_kod==string.char (73))and(ch==0) then o_kod=247;ch=1;end; --vert
                      if (o_kod==string.char (80))and(ch==0) then o_kod=247;ch=1;end; --vert
                      if (o_kod==string.char (36))and(ch==0) then o_kod=58;ch=1;end; 
                      if (o_kod==string.char (59))and(ch==0) then o_kod=43;ch=1;end;  --duzy
                      if (o_kod==string.char (65))and(ch==0) then o_kod=88;ch=1;end;  --swicz
                      if (o_kod==string.char (76))and(ch==0) then o_kod=262;ch=1;end; --vert
                      if (o_kod==string.char (77))and(ch==0) then o_kod=260;ch=1;end; --vert
                          if (ch==1)  then xdata[a+cc-218],xdata[60000+a+cc-218]=poke (o_kod); end; 
                            if (o_kod==nil) then xdata[a+cc-218]=string.char (56); end; --затычка 1402 тшдnil
                          end
                   end;
            
            for a=625,625+32,1 do                  xdata[a+55000]=string.char (0);             end
            --чистка данных и запись пустого места , обьект 76 - стена
          
          targetremains=8;
          xdata[55638]=poke(targetremains); 
          backgroundcolorlevel=2; 
          xdata[55661]=poke (backgroundcolorlevel);
          ammo=255; 
          xdata[55635]=poke(ammo);
          ice=255;
          xdata[55632]=poke(ice);
          enemytank=1;
          lives=8;  if (poziom==1) then lives=2; end; 
                xdata[55633]=poke (lives);
          xdata[55610]=poke (enemytank);
          starttanks=2;
             xdata[55611]=poke (starttanks);
          minimumtanks=12;
          if (poziom==1)then minimumtanks=20; end; 
           xdata[55614]=poke (minimumtanks);
           x,y=xgametorealpositionbezbyte (46,84);
           printat (46,85,"18"); -- стартовая позиция
           printat (24,34,"56");-- на базе танков быть не должно  X i Y что пишет редактор должны писатся в обратном порядке для Printat
           --printat (74,34,"56"); --  x=74,y=34 ingame editor data presented) LV1
           printat (34,82, "56"); --  x=82,y=34 ingame editor data presented LV2...12   PRINTAT всегда путает X i Y .
           printat (4,61,"56");
           printat (4,65,"56");
           printat (1,88,"56");
           xdata[55625]=poke (y);
           xdata[55626]=poke (x);
            converted=1;
            leveldatacopy=""; --чистка массива ZX 
            collectgarbage("collect");
           else drawonceZZOLDLEVEL=1; -- задаём параметры если получили уже конвертированный уровень
                    --во первых надо пропустить рисование обьектов по координатам из старой zx версии.
            end

        end;
    if (leveldatacopy[2]=="E")and(leveldatacopy[3]=="V")and(loadsavegame~="yes") then 
        typelevel="ZX"; -- каждый файл в формате Hobeta  ZX надо предварительно конвертировать
        if (converted==0)and(loadsavegame~="yes") then   -- для будущей работы с ним 
          darkzone=0;
            --start converting  625-656 ->  rozmiarznak25 rozmiarznak56
              --начальное преобразование уровня и убирание с карты поля данных об уровне на новое место.
              oldlevelshift=0;newformatstroka=0
            for a=0,mapsize_bytes_max,1 do -- 1500 ->  1624
              if ((leveldatacopy[a])==nil) then leveldatacopy[a]=56;end --затычка от nil 
                if( a<55000) then xdata[a]=string.char (76);  end
                if( a>54999) then xdata[a]=string.char (0);  end
            end
            for a=0,55624,1 do -- 1500 ->  1624  Агсл  агсл fuck fuck
               if(a<625)then -- не хватало одного кирпичика для отображения уровня.  624 пришлось поменять на 625
                      b=a+16;
                     cc=(math.ceil (b/32)-1)*(mapsize_horizontal-32);
                      o_kod=leveldatacopy[a];
                      if (o_kod==string.char (255)) then o_kod=string.char (127); end; 
                            xdata[a+cc-218]=o_kod; 
                            xdata[60000+a+cc-218]=string.char (0); 
                          end
                   end;
            
            for a=625,625+32,1 do                  xdata[a+55000]=(leveldatacopy[a]);             end
            --чистка данных и запись пустого места , обьект 76 - стена
            for a=0,22,1 do printat (a,0,76);                end;
      -- рисуем те стены которые были в меньшем поле оригинальной игры чтобы не портилась логика уровня.
            converted=1;
            leveldatacopy=""; --чистка массива ZX 
            collectgarbage("collect");
          --end converting
           else drawonceZZOLDLEVEL=1; -- задаём параметры если получили уже конвертированный уровень
                    --во первых надо пропустить рисование обьектов по координатам из старой zx версии.
            end
    end;

        
    if (typelevel=="m2k") then
      xdata=leveldatacopy;  
       if (#xdata<155000) then --mapversion==2)or (saveversion==2)or (mapversion==0)or (saveversion==0)
            typelevel="fix" ; --smsg1= "xdata= "..#xdata; 
                for a=55685,mapsize_bytes_max,1 do -- 1500 ->  1624
                  xdata[a]=string.char (0);  
                end
            end

      dasglukenfild=0;
       converted=1; drawonceZZOLDLEVEL=1;
       
       seed= (string.byte (xdata[55621]));
       darkzone= (string.byte (xdata[55624])); 
       greenshitdelay= (string.byte (xdata[55623]));
       greenshithastetime= (string.byte (xdata[55622]));
       solarenergy=0;
       solarpower=0;
       enemies={};
       totalenemies=0;
       sledzione_hp_tankid=0; 
       wsego_tank_teleporterow=0;
       wsego_scientist_spawn_jednorazowy=0;
       wsego_miner_spawn_jednorazowy=0;
      flagchecknewteleportersenemy=1;  -- add flag chech tanks to field ! 
      ty,tx=scanobject (119,-1);--check teleport cel dla "..titlegame.." level.   wot takaja prostaja prowerka
      shippingzone_y,shippingzone_x=scanobject (29,-5,1);
      if (titlegame~="Kolonista") then skan_y_max,skan_x_max=scanobject (166,-1) ;  end --object "166"
      krysztalow=scanobject (197,-2) ;  --object "166"
    end
    -- тип ZX только для устаревших уровней, никогда не используется ни в сохранениях ни в новых уровнях
    if (typelevel=="ZX") then
        greenshitdelay=0;
        greenshithastetime=0; 
        darkzone=0;
        enemies={};
         drawonce=0; 
       totalenemies=0;
       sledzione_hp_tankid=0; 
       wsego_tank_teleporterow=0;
      flagchecknewteleportersenemy=0;
      ammoX={};
      totalammo=0;
      --drawonceZZOLDLEVEL=0;
      exp= (string.byte (xdata[55636]));  -- REUSED AS allowedaidspersonal похоже он вообще нигде не используется.   
      tt1= (string.byte (xdata[55637])); -- REUSED AS KEYS  bonus per level - нигде не используется.
       tx= (string.byte (xdata[55647]));
       ty= (string.byte (xdata[55648]));
       smsg2="ZX-level loaded, tx="..tx.." ty="..ty;
      if (tx>1)and (ty>1) then 
        originalteleport_x=tx; originalteleport_y=ty; 
        printat (tx,ty,"119");
        --printat (tx+1,ty+1,"86");
        end;
      ey= (string.byte (xdata[55630]));--expressSX,SY start SX,EY-END 
      sy= (string.byte (xdata[55628]));
      sx= (string.byte (xdata[55627])); 
       printat (sx-1,ey,"130");
       printat (sx-1,sy,"129"); 
       printat (sx-2,exp,"128");--печатаем экспресс,
     end

    -- тут надо проверять уровень и к xdata добавлять 1000 чтобы он читался из другого места.
if (loadedfirst==0) then
-- 76, 69, 86 , если три первых байте не равны кодам букв LEV, значит уровень не ZX. DECat 24310,639 bytes?? --нкт 29 50,51,52,53,54,55
--загружать старые карты по схеме, но на новых просто исп. будут новые коды для. --DATA x2,y2,sx,sy,xt,ey,b0,i,l,p,u,exp,t,SE,zx,zy,p1,dr,p2,p3,p4,pw,tx,ty,wt,e,e,e,e,e,e,mv   HEADER
     savegamecounter = (string.byte (xdata[55641])); -- zzOLD p1  --sost lazerow p1-p4 не сохранять. ненужно уже. 
     parameter80= (string.byte (xdata[55642])); -- zzOLD dr
     parameter81= (string.byte (xdata[55643])); -- zzOLD p2
     parameter82= (string.byte (xdata[55644])); -- zzOLD p3
     parameter83= (string.byte (xdata[55645])); -- zzOLD p4
    startX=xdata[55625];startY=xdata[55626];   --1-- загрузка координат игрока
    zx=string.byte (xdata[55639]); zy=string.byte (xdata[55640]); --2   
        saveversion= (string.byte (xdata[55669])); -- загрузка системных параметров одинаковая и для сохраненки и для карты.
        mapversion= (string.byte (xdata[55670]));
        parameter69= (string.byte (xdata[55673]));
        buj2=string.byte(xdata[55674]) ;-- куда теряется второй байт ??? 
        buj1=string.byte(xdata[55671]); 
        map_builded_with_version=buj1*256+buj2*1;  -- hp реальный вместо   не больше 255. 
        --smsg1="m="..map_builded_with_version.." buj1.."..buj1.." buj2="..buj2.." parameter69="..parameter69 ; 
    x,y=xgametorealposition (startX,startY);
    xpla2,ypla2=xgametorealpositionbezbyte (zx,zy);  -- по идее zx  nikak не мог получить строковое значение для ошибки в каком то уровне.
if (loadsavegame~="yes") then -- загружатся координаты по обьектам 17 и 18 (стартовые) должны ТОЛЬКО не в случае сохранённой игры.
checkx,checky=scanobject (18,-1);--check player 1 start position
--disable_quickload_at_start=1;   
if (checkx>-1) then x,y=xgametorealpositionbezbyte (1+checky,checkx) ; end
-- загрузка координат второго игрока
  checkxpla2,checkypla2=scanobject (17,-1);--check player 2 (enemytank) start position
if (checkxpla2>-1) then xpla2,ypla2=xgametorealpositionbezbyte  (1+checkypla2,checkxpla2); end;
if (otladka==1) then smsg1="no savegame. tp. x= "..x.." checkx="..checkx.." y="..y.." chy="..checky.." zx="..zx.." zy="..zy.." xpla2="..xpla2.." ypla2="..ypla2; end;
end
   sy,sx=scanobject (129,-1);
   ey,sx=scanobject (130,-1);sx=sx+1;

    if ((hardlevel==1) and (zx>0)and (zy>0)) then enemytank=1;end
       --LEVEL parameters  Универсальная часть загрузки которая выполняется и для карты и для сохранённой игры.  
      ammo= (string.byte (xdata[55635]));  
      hpmax=200 ; -- максимум жизни теперь всегда будет равен 200 + возможность прокачать его или временно увеличить. 
      if (poziom==1) then hpmax=hpmax/2; end; 
      ice= (string.byte (xdata[55632]));
      if (titlegame~="Perestroika") then lives= (string.byte(xdata[55633])); end; 
      bombs= (string.byte (xdata[55631])); 
      targetremains= (string.byte (xdata[55638]));
      hardlevel=(string.byte (xdata[55612]));
      
      keys=0 ; -- всегда похоже количество ключей во всех уровнях равно нулю
      water= (string.byte (xdata[55649]));-- wt это походу и есть стаканы. 
      powerstate= (string.byte (xdata[55646]));
      puszkistate= (string.byte (xdata[55656]));
      minimumtanks=(string.byte (xdata[55614]));
      starttanks= (string.byte (xdata[55611]));

        backgroundcolorlevel= (string.byte (xdata[55661]));
        colorizepole= (string.byte (xdata[55662]));
        colorizeboulder= (string.byte (xdata[55663]));
        multikills= (string.byte (xdata[55664]));
        ultrakills= (string.byte (xdata[55665]));
        parameter66= (string.byte (xdata[55666]));
        parameter67= (string.byte (xdata[55667]));
        parameter68= (string.byte (xdata[55668]));
        enableredtank= (string.byte (xdata[55705]));
        enableauratank= (string.byte (xdata[55706]));
        enablewtank= (string.byte (xdata[55707]));
        parameter73= (string.byte (xdata[55708]));
        parameter74= (string.byte (xdata[55709]));
        parameter75= (string.byte (xdata[55710]));
        parameter76= (string.byte (xdata[55711]));
        parameter77= (string.byte (xdata[55712]));
        parameter78= (string.byte (xdata[55713]));
        parameter79= (string.byte (xdata[55714]));
     
hp=hpmax;
loadedfirst=1;
if (loadsavegame=="yes") then   --LOAD GAME  
  -- теоретически 10 новых параметров должно загружатся чуть выше, т.к. все уровни в М2к формате.
  -- при загрузке уровня из сохранения используются дополнительные параметры. 
    keys=string.byte(xdata[55637]);-- keys вместо бонуса за уровень
    tank=string.byte(xdata[55653]);
    protect=string.byte(xdata[55654]);
    reservedaids=string.byte(xdata[55655]);
    hp=string.byte(xdata[55629])+(string.byte(xdata[55652])*256);  -- hp реальный вместо   не больше 255. 
    score3=string.byte(xdata[55660]); 
    score=string.byte(xdata[55650])+(string.byte(xdata[55651])*256)+(score3*65536);
    tanksdestroyed=string.byte(xdata[55634]); --не загружать этот параметр. пока что.
    -- эти предметы могут быть ТОЛЬКО в сохранённой игре и не должны быть в коде уровней.
    paralysatorammo=(string.byte (xdata[55619]));  
      allowedaidspersonal= (string.byte (xdata[55636]));  -- похоже он вообще нигде не используется.   
      inventorybelt=(string.byte (xdata[55613]));
      levelnumber= (string.byte (xdata[55657]));
      inventoryitem1= (string.byte (xdata[55615]))+256*(string.byte (xdata[55685]));
      inventoryitem2= (string.byte (xdata[55616]))+256*(string.byte (xdata[55686]));
      inventoryitem3= (string.byte (xdata[55617]))+256*(string.byte (xdata[55687]));
      inventoryitem4= (string.byte (xdata[55618]))+256*(string.byte (xdata[55688]));
      inventoryitem5= (string.byte (xdata[55647]))+256*(string.byte (xdata[55689]));
      inventoryitem6= (string.byte (xdata[55648]))+256*(string.byte (xdata[55690]));
      inventoryitem7= (string.byte (xdata[55658]))+256*(string.byte (xdata[55691]));
      inventoryitem8= (string.byte (xdata[55659]))+256*(string.byte (xdata[55692]));
      inventoryitem9= (string.byte (xdata[55681]))+256*(string.byte (xdata[55693]));
      inventoryitem10= (string.byte (xdata[55682]))+256*(string.byte (xdata[55694]));
      inventoryitem11= (string.byte (xdata[55683]))+256*(string.byte (xdata[55695]));
      inventoryitem12= (string.byte (xdata[55684]))+256*(string.byte (xdata[55696]));
       slot0= (string.byte (xdata[55620]))+256*(string.byte (xdata[55697]));
       slot1= (string.byte (xdata[55675]))+256*(string.byte (xdata[55698]));
       slot2= (string.byte (xdata[55676]))+256*(string.byte (xdata[55699]));
       slot3= (string.byte (xdata[55677]))+256*(string.byte (xdata[55700]));
       slot4= (string.byte (xdata[55678]))+256*(string.byte (xdata[55701]));
       slot5= (string.byte (xdata[55679]))+256*(string.byte (xdata[55702]));
       slot6= (string.byte (xdata[55680]))+256*(string.byte (xdata[55703]));

      score3= (string.byte (xdata[55660]));
            
      
                      inventoryitemtable={}; -- очищаем таблицу.
                            if (inventoryitem1>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem1); end; 
                            if (inventoryitem2>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem2); end; 
                            if (inventoryitem3>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem3); end; 
                            if (inventoryitem4>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem4); end; 
                            if (inventoryitem5>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem5); end; 
                            if (inventoryitem6>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem6); end; 
                            if (inventoryitem7>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem7); end; 
                            if (inventoryitem8>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem8); end; 
                            if (inventoryitem9>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem9); end; 
                            if (inventoryitem10>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem10); end; 
                            if (inventoryitem11>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem11); end; 
                            if (inventoryitem12>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem12); end; 
                   
                      countinventory=#inventoryitemtable;
               enemytank= (string.byte (xdata[55610]));
    -- номер уровня в сохранении присутствует, его можно использовать.
    --надо сохранять номер уровня в сохранении и загружать его тоже.
    loadsavegame=0;
    --в этом месте небольшая разница с сохранением игры исчезает. 
    --т.е. вся разница - это наличие инвентаря и счётчиков вот этих предметов
  end
end
 
if  (loading_lock_message==1) then gameover=1;allowmove=0; renderer=0; allowshot=0; selectedoptionmenu=1;menu=0; stattitle=0; pause=1;
        end; 

     lootid = {} ;-- тут загружается массив обьектов.
    for line in love.filesystem.lines ("lootid.ini") do
      table.insert (lootid, line:split("!"))
    end
      menuplayitems={};
      if (titlegame~="Reskue") and (titlegame~="Kolonista")and (titlegame~="Perestroika") then 
      addmenuplayitems (60); --hp
      addmenuplayitems (58); --ammo
    end
    if (titlegame~="Perestroika") then  addmenuplayitems (59); --dynamite
      addmenuplayitems (61); --ice
            if (titlegame~="Kolonista") then  addmenuplayitems (60); end --medkit
    end
   if (ossys~="Android") then
      if (titlegame~="Kolonista") then   addmenuplayitems (62);end ;  -- live X
      if (titlegame~="Reskue") and (titlegame~="Kolonista")and (titlegame~="Perestroika") then 
      addmenuplayitems (126); --key X
      addmenuplayitems (127); --water X 
      end
    end
      --[[ menu_glownaPLGUI={};       line="128!NAME!HEADER!0!0";           table.insert (centrum_dostawy_listSC,line:split("!") );      line="128!Health!hp!0!0";           table.insert (centrum_dostawy_listSC,line:split("!") );      ]]--
  -- аутыматычнае создание массива списков продаваемых предметов по objects.ini
    itemshippinglist={};
          shippingcenteritems={};
          shippingcenteritemsHQ={};
          shippingcenteritemsCC_classic={};
          centrum_dostawy_listSC={};
          
          counttablecentrum_dostawy_listSC=0;
           --HEADER SAMPLE  line="ID!ITEM_id!name_item!cost!title_shippingcenteritems";           table.insert (centrum_dostawy_listSC,line:split("!") );
           line="128!0!"..smsg_string ("SH_EXIT").."!0!0";           table.insert (centrum_dostawy_listSC,line:split("!") );
           line="0!0!"..smsg_string ("SH_ORDER").."!0!0";           table.insert (centrum_dostawy_listSC,line:split("!") );
          etatimer=0;
            for sa=0,#objs-1,1 do 
              aa=tonumber (ext_objs_param (sa,16)); -- 16 - COST , 15- UNPACK !!!!!
              oldCCprice=ext_objs_param (sa,27);  -- DLA OLD CC 
              qualityitem=ext_objs_string (sa,28);
             if (aa)and(aa>0) then 
                addshippingcenteritems(sa);
                counttablecentrum_dostawy_listSC=counttablecentrum_dostawy_listSC+1;
                nameobject=ext_objs_string (sa,2); if (nameobject==nil) then nameobject="0"; end;
                nameobject="0"; 
                line=counttablecentrum_dostawy_listSC.."!"..sa.."!"..nameobject.."!"..aa.."!";
                table.insert (centrum_dostawy_listSC,line:split("!") );
                end
            end
            -- end of shipping list generating  (using objects.ini)


  -- creating savegame list 

      req_recheck_savelist=0; 
     
     function getsaveslist () 
          zapisy_SAVES={};
          counttablezapisy_SAVES=0;
           --HEADER SAMPLE  line="ID!ITEM_id!name_item!cost!title_shippingcenteritems";           table.insert (centrum_dostawy_listSC,line:split("!") );
           line="0!Exit to main menu [Esc]!0!0";    table.insert (zapisy_SAVES,line:split("!") );
           line="1!Exit to main menu [Esc]!0!0";    table.insert (zapisy_SAVES,line:split("!") );
           --line="2!Quicksave [f5]!0!0";           table.insert (zapisy_SAVES,line:split("!") );
            savename="quicksave";
            wsego_saves=0;
              savetest=sourceread(savename);
            if (savetest~=0) then savetest=1;wsego_saves=wsego_saves+1; end; 

             line="2!"..savename.."!2!"..savetest;           table.insert (zapisy_SAVES,line:split("!") );
            for sa=3,13,1 do 
              if (1>0) then 
               savename="Savegame"..sa-2;
                counttablezapisy_SAVES=counttablezapisy_SAVES+1;
                 savetest=sourceread(savename);
            if (savetest~=0) then savetest=1; wsego_saves=wsego_saves+1;end; --  фиксим баг 5963 с UTF-8  , значит sourceread ПРОИГНОРИРОВАЛ map_flag 2 и прислал файл вместо 1
               -- nameobject=ext_objs_string (sa,2); if (nameobject==nil) then nameobject="0"; end; -- and(savetest~="1")
                line=sa.."!"..savename.."!"..counttablezapisy_SAVES.."!"..savetest.."!";
                --if (sa==3)and(otladka==1) then smsg1="LINE 630:"..line;  end; 
                --if (sa==4)and(otladka==1) then smsg2="LINE 630:"..line;  end; 
                table.insert (zapisy_SAVES,line:split("!") );
                end
            end
              savename="quicksave-autoexit";
              savetest=sourceread(savename);
            if (savetest~=0) then savetest=1; end; 
             line="14!"..savename.."!14!"..savetest;           table.insert (zapisy_SAVES,line:split("!") );
             savename="autosave-2";
              savetest=sourceread(savename);
            if (savetest~=0) then savetest=1; end; 
             line="15!"..savename.."!15!"..savetest;           table.insert (zapisy_SAVES,line:split("!") );
      --end of creating savegame list
    end
    getsaveslist (); 
    --тут создается двухмерный массив из objects.ini    -- аналогa readfullcsv
    --важно -  ид обьекта надо либо +1  делать либо использовать специальную новую функцию  ext_objs_param
    --hdr=objs[1][1];  --двухмерный масив задан правильно и работает
    --lg.print("Obj1-1"..hdr,32,32);     --cs.print("Objsubstr 2,2"..string.sub (hdr,2,2),48,48);--мда попроще нельзя б xxx=objs[1][1]
    player_ini = {} ;-- Меню игрока андроид - 
    for line in love.filesystem.lines ("player.ini") do
      table.insert (player_ini, line:split("!"))
    end
    --player_ini!ax-standartsizeusermenu!ay-standartwysotagraphicmenu 
    sklepy = {} ;-- Меню игрока андроид - контрольный центр --  - po obrazcu player.ini (player_ini)
    for line in love.filesystem.lines ("sklepid.ini") do
      table.insert (sklepy, line:split("!"))
    end
     
  
     menu_glowna = {} ;-- Главное меню (0) тут загружается массив обьектов.
    for line in love.filesystem.lines ("menu_glowna.ini") do
      table.insert (menu_glowna, line:split("!"))
    end
    menu_settings = {} ;-- Меню настроек и параметров (1)
    for line in love.filesystem.lines ("menu_settings.ini") do
      table.insert (menu_settings, line:split("!"))
    end
    menu_authors = {} ;-- меню авторы (2)
    for line in love.filesystem.lines ("authors.ini") do
      table.insert (menu_authors, line:split("!"))
    end
    editor_settings = {} ;-- меню редактора (3)
    for line in love.filesystem.lines ("editor_settings.ini") do
      table.insert (editor_settings, line:split("!"))
    end
    menu_user = {} ;-- меню игрока (пауза) (4)
    for line in love.filesystem.lines ("menu_user.ini") do
      table.insert (menu_user, line:split("!"))
    end
    menu_glowna_pomoc = {} ;
    
    if (player_ini[1][4]=="demo")and(titlegame=="Reskue") then demka=1 else demka=0; end; 
      --smsg1=player_ini[1][4]; 
--zzx2,xpla2,ypla2,hptank,allowmovepla2,man_is_movingpla2,plusypla2,freezetimerPL2,wrog_speed,speedtimerPL2
  class_enemy = {};
  --инициализируем поля класса
  function class_enemy:new(typt,x3,y3,hp,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8)
      local object = {};  -- как я и думал это массив внутри массива.
      if (titlegame=="Reskue") then love.audio.play(tanknewsnd) ; end; 
      --,x2,y2,hp,rotate,movekey,zzx2,allowmovepla2,x2pla2am,y2pla2am,zzx2ammo,allowshotpla2=0;
      object.typt = typt or "tank"; -- задача умолчания если не задан параметр
      object.x3 = x3 or 0;  -- real coord of tank
      object.y3 = y3 or 0;  -- real coord of tank
      object.hp = hp or 400;  -- hp  of tank
      object.rotate = rotate or "left"; -- now rotate of tank - возможно получится использовать для более частого движения в уже выбранную сторону.
      object.man_xpla3 = man_xpla3 or 0; -- temp coord of tank
      object.man_ypla3 = man_ypla3 or 0; -- temp coord of tank
      object.tanks_mov = tanks_mov or 0; -- is_moving датчик движения
      object.freezetanks = freezetanks or 0;
      object.speedtanks = speedtanks or 0;
      object.protecttanks = protecttanks or 0;
      object.jedzenietimer = jedzenietimer or 0; --x2pla2am -- real coord of tank shoot  -changed
      object.zebrany_item_id = zebrany_item_id or 0; --y2pla2am -- real coord of tank shoot -changed
      object.timer_alt_anim = timer_alt_anim or 0;  --man_x2pla2am temp coord-changed
      object.cooldowntanks = cooldowntanks or 0;  --man_y2pla2am temp coord-changed
      object.tanks_am = tanks_am or 0;  --tanks_am  indicator ammo
      object.rotate_t = rotate_t or 0;  --
      object.feartanks = feartanks or 0;  --
        object.aitype = aitype or 0;  --aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8)
        object.slowPL1tanks = slowPL1tanks or 0;  --
        object.damagetimertanks = damagetimertanks or 0;  --
        object.pa_icon = pa_icon or 0;  --
        object.kulemet = kulemet or 0;  --
        object.cel_hp = cel_hp or 0;  --
        object.realmovetanknow = realmovetanknow or 0;  --
        object.invisibletanks = invisibletanks or 0;  --
        object.painreflecttanks = painreflecttanks or 0;  --
        object.haveaura = haveaura or "";  --
        object.deadanim = deadanim or "";  --
        object.kierowcaczolgow = kierowcaczolgow or 0;  --
        object.slow_effect_power = slow_effect_power or 0;  --
        object.pax2 = pax2 or 0;  --
        object.pax3 = pax3 or 0;  --
        object.pax4 = pax4 or 0;  --
        object.pax5 = pax5 or 0;  --
        object.pax6 = pax6 or 0;  --
        object.pax7 = pax7 or 0;  --
        object.pax8 = pax8 or 0;  --
      object.res = res or 0;

      setmetatable(object,self) --нужно для работы класса
      self.__index = self ;
      return object; -- возвращаем объект!
  end


  class_ammo = {};
  --инициализируем поля класса
  function class_ammo:new(typta,start_x,start_y,x_ammo,y_ammo,timer_alt_anim,cooldowntanks,ammo_moving,rotate_tt,renderammoshot_ammos,rikoszets,animset,spd_a,sourceammo,command_ammo,wzmacniacz,directdamage_autoammo,src_tankid,msg_to_func,command_power,delayed_cmd,delayed_snd)
      local object = {};  -- как я и думал это массив внутри массива.
      object.typta = typta or "bullet"; -- задача умолчания если не задан параметр
      object.start_x = start_x or 0; --x2pla2am -- real coord of tank shoot
      object.start_y = start_y or 0; --y2pla2am -- real coord of tank shoot
      object.x_ammo = x_ammo or 0; --x2pla2am -- real coord of tank shoot
      object.y_ammo = y_ammo or 0; --y2pla2am -- real coord of tank shoot
      object.timer_alt_anim = timer_alt_anim or 0;  --man_x2pla2am temp coord
      object.cooldowntanks = cooldowntanks or 0;  --man_y2pla2am temp coord
      object.ammo_moving = ammo_moving or 0;  --tanks_am  indicator ammo
      object.rotate_tt = rotate_tt or 0;  --
      object.renderammoshot_ammos = renderammoshot_ammos or 0;  --
      object.rikoszets = rikoszets or 0 ;
      object.spd_a = spd_a or 0 ;
      object.sourceammo = sourceammo or 0 ;
      object.command_ammo = command_ammo or 0 ;
      object.wzmacniacz = wzmacniacz or 0 ;
      object.directdamage_autoammo = directdamage_autoammo or 0 ;
      object.src_tankid = src_tankid or 0 ;
      object.msg_to_func = msg_to_func or "" ;
      object.command_power = command_power or 0 ;
      object.delayed_cmd = delayed_cmd or 0 ;
      object.delayed_snd = delayed_snd or 0 ;
      object.res = res or 0;

if object.command_ammo=="dispel" then playsoundifvisible (wystreldispelsnd,start_x,start_y) end;
if object.command_ammo=="disarm" then playsoundifvisible (wystreldisarmsnd,start_x,start_y) end;
if object.command_ammo=="fear" then playsoundifvisible (wystrelfearsnd,start_x,start_y) end;
if object.command_ammo=="freeze" then playsoundifvisible (wystrelfrzsnd,start_x,start_y) end;
if object.command_ammo=="stun" then playsoundifvisible (wystrelstunsnd,start_x,start_y) end;
if object.command_ammo=="slow" then playsoundifvisible (wystrelshocksnd,start_x,start_y) end;
if object.command_ammo=="corrosion" then playsoundifvisible (wystrelwzmocsnd,start_x,start_y) end; --corruption --corrosion
if object.command_ammo=="kierowca" then playsoundifvisible (wystrelkersnd,start_x,start_y) end; 
if object.command_ammo=="bombplace" then playsoundifvisible (wystrelbombplacesnd,start_x,start_y) end; 
if object.command_ammo=="mineplace" then playsoundifvisible (wystrelbombplacesnd,start_x,start_y) end; 


      setmetatable(object,self) --нужно для работы класса
      self.__index = self ;

      return object; -- возвращаем объект!
  end

  --функция изменения
  function class_enemy:set(typt,x3,y3,hp,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8)
  local typt = typt or self.typt;
    local hp = hp or self.hp;
    local rotate = rotate or self.rotate;
    local man_xpla3 = man_xpla3 or self.man_xpla3;
    local man_ypla3 = man_ypla3 or self.man_ypla3;
    local tanks_mov = tanks_mov or self.tanks_mov;
    local freezetanks = freezetanks or self.freezetanks;
    local speedtanks = speedtanks or self.speedtanks;
    local protecttanks = protecttanks or self.protecttanks;
    local jedzenietimer = jedzenietimer or self.jedzenietimer;
    local zebrany_item_id = zebrany_item_id or self.zebrany_item_id;
    local timer_alt_anim = timer_alt_anim or self.timer_alt_anim;
    local cooldowntanks = cooldowntanks or self.cooldowntanks;
    local tanks_am = tanks_am or self.tanks_am;
        local rotate_t = rotate_t or self.rotate_t;
        local feartanks = feartanks or self.feartanks;
          local aitype = aitype or self.aitype;
          local slowPL1tanks = slowPL1tanks or self.slowPL1tanks;
          local damagetimertanks = damagetimertanks or self.damagetimertanks;
          local pa_icon = pa_icon or self.pa_icon;
          local kulemet = kulemet or self.kulemet;
          local cel_hp = cel_hp or self.cel_hp;
          local realmovetanknow = realmovetanknow or self.realmovetanknow;
          local invisibletanks = invisibletanks or self.invisibletanks;
          local painreflecttanks = painreflecttanks or self.painreflecttanks;
          local haveaura = haveaura or self.haveaura;
          local deadanim = deadanim or self.deadanim;
          local kierowcaczolgow = kierowcaczolgow or self.kierowcaczolgow;
          local slow_effect_power = slow_effect_power or self.slow_effect_power;
          local pax2 = pax2 or self.pax2;
          local pax3 = pax3 or self.pax3;
          local pax4 = pax4 or self.pax4;
          local pax5 = pax5 or self.pax5;
          local pax6 = pax6 or self.pax6;
          local pax7 = pax7 or self.pax7;
          local pax8 = pax8 or self.pax8;
      

    self.typt = typt;
    self.x3 = x3;
    self.y3 = y3;
    self.hp = hp;
    self.rotate = rotate;
    self.man_xpla3 = man_xpla3;
    self.man_ypla3 = man_ypla3;
    self.tanks_mov = tanks_mov;
    self.freezetanks = freezetanks;
    self.speedtanks = speedtanks;
    self.protecttanks = protecttanks;
    self.jedzenietimer = jedzenietimer;
    self.zebrany_item_id = zebrany_item_id;
    self.timer_alt_anim = timer_alt_anim;
    self.cooldowntanks = cooldowntanks;
    self.tanks_am = tanks_am;
    self.rotate_t = rotate_t;
    self.feartanks = feartanks;
        self.aitype = aitype;
    self.slowPL1tanks = slowPL1tanks;
    self.damagetimertanks = damagetimertanks;
    self.pa_icon = pa_icon;
    self.kulemet = kulemet;
    self.cel_hp = cel_hp;
    self.realmovetanknow = realmovetanknow;
    self.invisibletanks = invisibletanks;
    self.painreflecttanks = painreflecttanks;
    self.haveaura = haveaura;
    self.deadanim = deadanim;
    self.kierowcaczolgow = kierowcaczolgow;
    self.slow_effect_power = slow_effect_power;
    self.pax2 = pax2;
    self.pax3 = pax3;
    self.pax4 = pax4;
    self.pax5 = pax5;
    self.pax6 = pax6;
    self.pax7 = pax7;
    self.pax8 = pax8;
  end

--функция изменения
  function class_ammo:set(typta,start_x,start_y,x_ammo,y_ammo,timer_alt_anim,cooldowntanks,ammo_moving,rotate_tt,renderammoshot_ammos,rikoszets,animset,spd_a,sourceammo,command_ammo,wzmacniacz,directdamage_autoammo,src_tankid,msg_to_func,command_power,delayed_cmd,delayed_snd)
    local typta = typta or self.typta;
    local start_x = start_x or self.start_x;
    local start_y = start_y or self.start_y;
    local x_ammo = x_ammo or self.x_ammo;
    local y_ammo = y_ammo or self.y_ammo;
    local timer_alt_anim = timer_alt_anim or self.timer_alt_anim;
    local cooldowntanks = cooldowntanks or self.cooldowntanks;
    local ammo_moving = ammo_moving or self.ammo_moving;
        local rotate_tt = rotate_tt or self.rotate_tt;
        local renderammoshot_ammos = renderammoshot_ammos or self.renderammoshot_ammos;
        local rikoszets = rikoszets or self.rikoszets;
        local animset = animset or self.animset;
        local spd_a = spd_a or self.spd_a;
        local sourceammo = sourceammo or self.sourceammo;
        local command_ammo = command_ammo or self.command_ammo;
        local wzmacniacz = wzmacniacz or self.wzmacniacz;
        local directdamage_autoammo = directdamage_autoammo or self.directdamage_autoammo;
        local src_tankid = src_tankid or self.src_tankid;
        local msg_to_func = msg_to_func or self.msg_to_func;
        local command_power = command_power or self.command_power;
        local delayed_cmd = delayed_cmd or self.delayed_cmd;
        local delayed_snd = delayed_snd or self.delayed_snd;


    self.typta = typta;
    self.start_x = start_x;
    self.start_y = start_y;
    self.x_ammo = x_ammo;
    self.y_ammo = y_ammo;
    self.timer_alt_anim = timer_alt_anim;
    self.cooldowntanks = cooldowntanks;
    self.ammo_moving = ammo_moving;
    self.rotate_tt = rotate_tt;
    self.renderammoshot_ammos = renderammoshot_ammos;
    self.rikoszets = rikoszets;
    self.animset = animset;
    self.spd_a = spd_a;
    self.sourceammo = sourceammo;
    self.command_ammo = command_ammo;
    self.wzmacniacz = wzmacniacz;
    self.directdamage_autoammo = directdamage_autoammo;
    self.src_tankid = src_tankid;
    self.msg_to_func = msg_to_func;
    self.command_power = command_power;
    self.delayed_cmd = delayed_cmd;
    self.delayed_snd = delayed_snd;
  end


  --функция получения результата
  function class_enemy:get()
    return self.typt, self.x3, self.y3, self.hp, self.rotate, self.man_xpla3, self.man_ypla3, self.tanks_mov , self.freezetanks , self.speedtanks, self.protecttanks, self.jedzenietimer, self.zebrany_item_id, self.timer_alt_anim, self.cooldowntanks, self.tanks_am,self.rotate_t,self.feartanks,self.aitype,self.slowPL1tanks,self.damagetimertanks,self.pa_icon,self.kulemet,self.cel_hp,self.realmovetanknow,self.invisibletanks,self.painreflecttanks,self.haveaura,self.deadanim,self.kierowcaczolgow,self.slow_effect_power,self.pax2;
  end

function class_ammo:get()
    return self.typta, self.start_x, self.start_y,  self.x_ammo, self.y_ammo, self.timer_alt_anim, self.cooldowntanks, self.ammo_moving,self.rotate_tt,self.renderammoshot_ammos,self.rikoszets,self.animset,self.spd_a,self.sourceammo,self.command_ammo,self.wzmacniacz,self.directdamage_autoammo,self.src_tankid,self.msg_to_func,self.command_power,self.delayed_cmd,self.delayed_snd;
  end


    if (renderer==0) then
    render2d (1); end;

end

--wearitemtable

function addwearitem (itemcode)
   wear_changed=1;
  countwear=#wearitemtable;
   --love.audio.play(swapitem);
  if (countwear<maximumwear) then table.insert (wearitemtable,countwear+1,itemcode);
   --smsg1="table.insert (inventoryitemtable,"..countinventory..","..itemcode..");";   --for a=1,countinventory,1 do smsg2=smsg2.." inv["..a.."]="..inventoryitemtable[a]..""; end

   else smsg1="wear Full"; ammoKEYPL1=""; return -1; end
   countwear=#wearitemtable;
end

function checkwearitem (itemcode)
  countwear=#wearitemtable;
   for ia=1,countwear,1 do
    nowitem=wearitemtable[ia];
    if(nowitem==itemcode) then return true; end
end
   return false

end

function removewearitem (id)
  wear_changed=1;
  --love.audio.play(swapitem);
   if (countwear>0) then
  a=table.remove (wearitemtable,id);
  countwear=#wearitemtable;
  return a;
  end
  return 0;

end


function addinventoryitem (itemcode)
   inventory_changed=1;
  countinventory=#inventoryitemtable;
   love.audio.play(swapitem);
  if (countinventory<maximuminventorysize) then table.insert (inventoryitemtable,countinventory+1,itemcode);
   --smsg1="table.insert (inventoryitemtable,"..countinventory..","..itemcode..");";   --for a=1,countinventory,1 do smsg2=smsg2.." inv["..a.."]="..inventoryitemtable[a]..""; end

   else smsg1="Inventory Full"; ammoKEYPL1=""; return -1; end
   countinventory=#inventoryitemtable;
end

function checkinventoryitem (itemcode)
  countinventory=#inventoryitemtable;
   for ia=1,countinventory,1 do
    nowitem=inventoryitemtable[ia];
    if(nowitem==itemcode) then return true; end
end
   return false

end

function removeinventoryitem (id)
  inventory_changed=1;
  love.audio.play(swapitem);
   if (countinventory>0) then
  a=table.remove (inventoryitemtable,id);
  countinventory=#inventoryitemtable;
  return a;
  end
  return 0;

end



function addinventoryitemwkufrze (itemcode)
   inventory_changed=1;
  kufrcountinventory=#kufrinventoryitemtable;
   love.audio.play(swapitem);
  if (kufrcountinventory<kufrmaximuminventorysize) then table.insert (kufrinventoryitemtable,kufrcountinventory+1,itemcode);
   --smsg1="table.insert (inventoryitemtable,"..countinventory..","..itemcode..");";   --for a=1,countinventory,1 do smsg2=smsg2.." inv["..a.."]="..inventoryitemtable[a]..""; end

   else smsg1="Kufr Full"; ammoKEYPL1=""; return -1; end
   kufrcountinventory=#kufrinventoryitemtable;
end

function checkinventoryitemwkufrze (itemcode)
  kufrcountinventory=#kufrinventoryitemtable;
   for ia=1,kufrcountinventory,1 do
    nowitem=kufrinventoryitemtable[ia];
    if(nowitem==itemcode) then return true; end
end
   return false

end

function removeinventoryitemwkufrze (id)
  inventory_changed=1;
  love.audio.play(swapitem);
   if (kufrcountinventory>0) then
  a=table.remove (kufrinventoryitemtable,id);
  kufrcountinventory=#kufrinventoryitemtable;
  return a;
  end
  return 0;

end


function sortinventoryitem ()
  inventory_changed=1;
  table.sort (inventoryitemtable);
end


function addshippingcenteritems (itemcode)
  countinventory_s=#shippingcenteritems;
   --smsg1="adding..."..countinventory_s..",itemcode="..itemcode;
     if (countinventory_s<50) then table.insert (shippingcenteritems,countinventory_s+1,itemcode);
    else smsg1="shippingcenteritems Full"..countinventory_s; return -1; end
end

function addcontrolcenteritems (itemcode)
  countinventory_s=#controlcenteritems;
   --smsg1="adding..."..countinventory_s..",itemcode="..itemcode;
     if (countinventory_s<50) then table.insert (controlcenteritems,countinventory_s+1,itemcode);
    else smsg1="controlcenteritems Full"..countinventory_s; return -1; end
end


function removecontrolcenteritems (id)
     if (countinventory_s>0) then
  a=table.remove (controlcenteritems,id);
  return a;
  end
  return 0;
end

function addmenuplayitems (itemcode)
  countinventory_mp=#menuplayitems;
   --smsg1="adding..."..countinventory_s..",itemcode="..itemcode;
     if (countinventory_mp<15) then table.insert (menuplayitems,countinventory_mp+1,itemcode);
    else smsg1="Inv Full"..countinventory_mp; return -1; end
end

function removemenuplayitems (id)
     if (countinventory_mp>0) then
  a=table.remove (menuplayitems,id);
  return a;
  end
  return 0;
end


function additemshippinglist (itemcode)
  countinventory_i=#itemshippinglist;
     if (countinventory_i<maximumshipcapacity) then table.insert (itemshippinglist,countinventory_i+1,itemcode);
    else smsg1="itemshippinglist Full"..countinventory_i;  return -1; end
end

function removeitemshippinglist (id)
     if (countinventory_i>0) then
  a=table.remove (itemshippinglist,id);
  return a;
  end
  return 0;
end
-- если координаты второго игрока совпадают с координаторй пули первого - отнимаются HP у Р2
-- если снова возникнет баг перестрелкой танков то надо просто учесть man_step  для расчётов. хrozmiarznak)
--move_the_man
--x,y - начальные координаты
--man_x,man_y - конечная координата
--man_is_moving - идет ли перемещение
--man_speed - скорость анимации

 -- Анимирует движение, если оно имеется. Для чувака 1 i 2 universal function
function move_the_man(dt,x,y, man_x, man_y ,man_is_moving,man_speed)
     -- local x,y,man_x,man_y,man_is_moving,man_speed ;  надеюсь все эти переменные достаточно локализованы внутри функции.
     if (man_x < 100) and (man_y) < 50 then  -- детектируем ложное движение  с отправкой по нулевой координате.
            man_is_moving = false;
            man_x=x; man_y=y;
        end;
     if man_is_moving then
        -- шаг анимации
        local dd = math.floor(dt*man_speed*2.6);
        -- по X
        if dd >= math.abs(man_x - x)  then
            -- если шаг анимации слишком большой, то кидаем сразу в конечную точку
            x = man_x;
        else
            -- иначе двигаем на вычисленный шаг в сторону конечной точки (man_x, man_y)
            x = x + dd*(man_x - x)/math.abs(man_x - x);
        end

        if (classic_zx_spectrum_sprite_move==1) then x=man_x; y=man_y; end;
        -- по Y
        if dd >= math.abs(man_y - y)  then
            y = man_y;
        else
            y = y + dd*(man_y - y)/math.abs(man_y - y);
        end
        -- если достигли конечной точки, заканчиваем движение (анимацию)
        if man_x == x and man_y == y then
            man_is_moving = false;
        end;
    end
    return x,y,man_x,man_y,man_is_moving,man_speed
 end

-- Устанавливает новую цель движения чувака относительно текущего местоположения
function do_a_step(dt, dx, dy,x,y)
   if (x==nil) then x=0; end;
   if (y==nil) then y=0; end;
       -- новая цель движения
    return true,x + dx,y + dy;
end
 --======================================!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!================================
function love.update(dt)
  --if (otladka==1) then 
  PC1_x=x; PC1_y=y; 
    if (otladka==1) then smsg5="SCREENS="..screens_used .."fast="..fasttimer; end


--  Gesture_SwipeN:update();
--  Gesture_SwipeS:update();
--  Gesture_SwipeLDC:update();
--  Gesture_LongPressGesture:update();
--  Gesture_DoubleTap:update();
  rsKEYPL1="";
    if (renderer==1)and(joystickPL1_ID=="exist")or (menu==16 )and(joystickPL1_ID=="exist")or (menu==9 )and(joystickPL1_ID=="exist") then  --and    main.lua:2049: attempt to compare number with nil
        if (ss.ax==nil) then ss.ax=0; end;
        if (ss.ay==nil) then ss.ay=0; end;
        --typejoystick="nojoystick"

        if (ammoKEYPL1~="itemselect") then
            if (ss.ax>0)and(ss.ax<deadzone/10) then ss.x=0; ss.ax=0; else ss.x=ss.ax; end
            if (ss.ay>0)and(ss.ay<deadzone/10) then ss.y=0;ss.ay=0;  else ss.y=ss.ay; end
            if (ss.ax<0)and(ss.ax>-deadzone/10) then ss.x=0;ss.ax=0; else ss.x=ss.ax; end
            if (ss.ay<0)and(ss.ay>-deadzone/10) then ss.y=0; ss.ay=0;else ss.y=ss.ay;  end

           kamerasrc="" ;kamerapad=0;
            if (ss.y<0)and(disablerightstick==0)and (emulatedjoystick1as2==0) then rsKEYPL1="p"; ammoKEYPL1="p"; camerakey="p";kamerasrc="czlowiek" ;kamerapad=1;end; --camera move keys
            if (ss.y>0)and(disablerightstick==0)and (emulatedjoystick1as2==0) then rsKEYPL1=";";ammoKEYPL1=";"; camerakey=";";kamerasrc="czlowiek" ; kamerapad=1; end;
            if (ss.x<0)and(disablerightstick==0)and (emulatedjoystick1as2==0) then rsKEYPL1="[";ammoKEYPL1="["; camerakey="[";kamerasrc="czlowiek" ; kamerapad=1 ;end;
            if (ss.x>0)and(disablerightstick==0)and (emulatedjoystick1as2==0) then rsKEYPL1="]";ammoKEYPL1="]"; camerakey="]";kamerasrc="czlowiek" ; kamerapad=1; end;

        end
    end
    
    tank_anim_up:update(dt);
    tank_anim_down:update(dt);
    tank_anim_left:update(dt);
    tank_anim_right:update(dt);
    hero_anim_up:update(dt);
    hero_anim_down:update(dt);
    hero_anim_left:update(dt);
    hero_anim_right:update(dt);
    hero_fire_up:update(dt);
    hero_fire_down:update(dt);
    hero_fire_left:update(dt);
    hero_fire_right:update(dt);
        
    sci_anim_idle:update(dt)
    sci_anim_up:update(dt);
    sci_anim_down:update(dt);
    sci_anim_left:update(dt);
    sci_anim_right:update(dt);
    --dro_anim_idle:update(dt)
    dro_anim_up:update(dt);
    dro_anim_down:update(dt);
    dro_anim_left:update(dt);
    dro_anim_right:update(dt);
    dro_fire_up:update(dt);
    dro_fire_down:update(dt);
    dro_fire_left:update(dt);
    dro_fire_right:update(dt);
    hero_act_up:update(dt);
    hero_act_down:update(dt);
    hero_act_left:update(dt);
    hero_act_right:update(dt);
    dro_act_up:update(dt);
    dro_act_down:update(dt);
    dro_act_left:update(dt);
    dro_act_right:update(dt);

    tank2_anim_up:update(dt);
    tank2_anim_down:update(dt);
    tank2_anim_left:update(dt);
    tank2_anim_right:update(dt);
    tank3_anim_up:update(dt);
    tank3_anim_down:update(dt);
    tank3_anim_left:update(dt);
    tank3_anim_right:update(dt);

if (pajaks>0) then 
    pajak_up:update(dt);
    pajak_down:update(dt);
    pajak_left:update(dt);
    pajak_right:update(dt);
end
if (mimics>0) then 
    mim_nowy_up:update(dt);
    mim_nowy_down:update(dt);
    mim_nowy_left:update(dt);
    mim_nowy_right:update(dt);
    mim_fire_up:update(dt);
    mim_fire_down:update(dt);
    mim_fire_left:update(dt);
    mim_fire_right:update(dt);
    mim_anim_up:update(dt);
    mim_anim_down:update(dt);
    mim_anim_left:update(dt);
    mim_anim_right:update(dt);
end
    for a=1,#objs-1,1 do
        if (objs[a]~=nil)and(objs[a][12]=="animset") then
            animset_detect=objs[((a))][12]; --identifier animset
            animset_id_objs=objs[((a))][1]; --number object in object.ini (objs)
            animset_id=objs[((a))][2];  -- number animation in animset1.png

            anim[animset_id_objs]:update(dt);
        end
    end

    KEYPRESSED = false;
    spacepressed=0;
    if (firstload==1) then music:update();end ;
    if (totalammo>0) then class_ammo:update (dt);  end;
    coordXbezmove=gamex(x);
    coordYbezmove=gamey(y);
    -- Реальный вред игроку от наезда на него танка  P1==P2  PL1==PL2
    -- Если координаты игроков совпадают у P1 будет отниматся HP

    --Прямой вред от вражеских танков вашему игроку (P1)
    if ((totalenemies>0)and(editor==0)and(wszystkopostaciej>0)) then --and(wsego_tank_teleporterow>0
        auranum=1; auramax=0; auras = {};
        for enemynum=1,totalenemies,1 do
            typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value)

            if (haveaura~="")and(haveaura~=0)and(deadanim~="tankdead")and(hpt>0) then auras[auranum] = {auranum, xt, yt, haveaura,enemynum}; auranum=auranum+1; auramax=auramax+1; end;

            if ((xt==x)and(yt==y)and(hpt>0)and(hp>0))and(typt=="migalka") then
                by=math.ceil (gamey(y))+plusy;bx=math.ceil(gamex(x))+plusx; --by=x; bx=y;
                explodebomb2 (by,bx,"instakill","","kamikadze",enemynum); -- Почему то нужно отдельно вызвать запись состояния танка для этого.
                hp=0; hpt=0;

                enemies[enemynum]:set(typt, xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8); -- NIL  kak tak?
            end
            if ((xt==x)and(yt==y)and(hpt>0)and(hp>0))and(typt~="scientist")and(typt~="droid")and(typt~="enemydroid") then
                if (protect<1) then hp=hp-4;end;
                if (poziom>0) then hp=hp-4;end;
                if (tank<1) then hp=hp-4; end;
                if(rotate==0) then hardened_ammo_get="right"; end; --right movePL1
                if(rotate==90) then hardened_ammo_get="down"; end; --down
                if(rotate==180) then hardened_ammo_get="left"; end; --left
                if(rotate==270) then hardened_ammo_get="up";  end; --up
                player_change_lost_protect ();
                love.audio.play(jedzeniesnd);
            end

        end; end;



    auramax=#auras+1;
    --smsg3="Auras="..auramax;
    random_aura_enable=math.ceil(math.random(100));
    if (auramax>0)and(random_aura_enable>95)and(editor==0)and(pause==0)and(wszystkopostaciej>0) then
        --   green (); print_r (auras,0,0);  white () ;  вывод перемещен.
        --smsg1="auramax="..auramax;
        for aura_host=1 ,auramax,1 do
            if (auras[aura_host]==nil) then aura_host=-1 ;-- smsg4="aura_host= table IS NIL!"..aura_host;
            end
            if (auras[aura_host]~=nil)and (aura_host<auramax) then  auranum, xt, yt, haveaura, enemynum= unpack(auras[aura_host]);
                if (haveaura==nil) then error ("haveaura NIIIIIIIIIIIIIIIIIIIIIIIIL"); end;  if (yt==nil) then error ("yt NIIIIIIIIIIIIIIIIIIIIIIIIL"); end; if (xt==nil) then error ("xt NIIIIIIIIIIIIIIIIIIIIIIIIL"); end;
                dby=math.ceil (gamey(yt));dbx=math.ceil (gamex(xt));
                mass_explode (dby,dbx,haveaura,0,"aura_effect",-2,200);
                smsg2="aura applied"..aura_host.."/"..(auramax-1).." "..haveaura.." dbx="..dbx.." dby="..dby.."";
            end
        end;
    end

    function addpercent(value, count)
        return value + value * count * .01
    end


        -- 
function changepietro (pietro, celowepietro)
            
              smsg1="changepietro ("..pietro..","..celowepietro..")";
              love.audio.play(wallsnd);
             -- if (pietro==celowepietro) then return 0 ;end;
             --wyzerowanie ammo
            huded=0;            totalammo=0;
            ammoX={};            selectedammoid=nil;
        map_changed=5;
            startcopy=(pietro)*120000; --     
            endcopy=(celowepietro)*120000; --   2-1=1 1*55000 + 120000 = 175000 
          for a=0,120000,1 do  
           xdata[startcopy+a]= xdata[a]; end --сохранение текущей карты всегда идёт от 0
          for a=0,120000,1 do   --     1*120000=120000 ,0 
             if ((xdata[endcopy+a])==nil) then xdata[endcopy+a]=56;xdata[a]=56;end 
             --if ((xdata[endcopy+a])==14392) then xdata[endcopy+a]=string.char (56);end 
                                    --   2*120000=240000 =0 
           xdata[a]=xdata[endcopy+a]; end -- сохранение на текущую карту всегда идёт в 0 
        end

    function ekwipunekcheck (itemid)
      licznik=0; 
      if (slot1==itemid) then licznik=licznik+1;  end ; 
      if (slot2==itemid) then licznik=licznik+1;  end ; 
      if (slot3==itemid) then licznik=licznik+1;  end ; 
      if (slot4==itemid) then licznik=licznik+1;  end ; 
      if (slot5==itemid) then licznik=licznik+1;  end ; 
      if (slot6==itemid) then licznik=licznik+1;  end ; 
      if (licznik==0) then return false end; 
      return licznik; 
    end
 --  функция проверки одетого инвентаря умеет проверять число одинаковых вещей. 
 -- однако стандартная фунция носимого инвенталя умеет поддерживать таблицы 

  --  function checkinventoryitem (itemcode)
  --countinventory=#inventoryitemtable;
  -- for ia=1,countinventory,1 do
  --  nowitem=inventoryitemtable[ia];
  --  if(nowitem==itemcode) then return true; end
  -- end


     -- Gracz , param
    function standartparameters_player ()
        maximumammo_PC1=500;
        base_enemy_hp=500;
        base_enemy_hpmax=500;
        base_slow_shot_effect_length_PC1=100;
        base_freeze_shot_effect_length_PC1=100;
        base_fear_shot_effect_length_PC1=100;
        base_control_shot_effect_length_PC1=100;
        base_corruption_effect_length_PC1=100;
        base_multiplier_longpress_length_effect=2;
        base_slow_power_effect_PC1=0;
        base_bomb_damage=500;
        base_redeemer_damage=2000;
        base_bomb_shard_damage=150;
        base_bomb_grenadelauncher_shards_multiplier=4;
        base_ice_shards_multiplier=2;

         chances=math.ceil (math.random(100));
        if (tank==1) then hpmax=600; end
        if (tank==0) then hpmax=200; end;
        if (poziom==1) then hpmax=hpmax/2; end;
        if (slot0==180) then hpmax=hpmax+100; end;
        

        if (slot1==237) then hpmax=hpmax+300; end;
        if (slot1==240) then decreasecooldownPL1=20; else decreasecooldownPL1=0;  end;
        if (slot1==256)and (protect>1)and (hp<hpmax) and (tank==0) then
          protect=protect-1; 
          hp=hp+1;
         end;
        if (slot1==238) then hpmax=hpmax+50;
            maximumammo_PC1=maximumammo_PC1+100; end;
        if (slot1==215) then boostPL1=1 else boostPL1=0; end;
        if (slot0==214)or(slot0==176)or(slot0==179) then deboostPL1=1 else deboostPL1=0; end;
        if (speedtimer>0) then
            man_speed = default_man_speed*2.0-100*deboostPL1;
            ammo_speed = default_ammo_speed*2.0+250*boostPL1;
        end
        if (speedtimer<1) then
            man_speed = default_man_speed-100*deboostPL1;
            ammo_speed = default_ammo_speed+250*boostPL1;

        end
        if (speedtimer<1)and(slowPL1>0) then
            man_speed= math.ceil (default_man_speed/4)-100*deboostPL1;
            --smsg1="man_speed="..man_speed.." deboost"..deboostPL1;
            ammo_speed= math.ceil (default_ammo_speed/4)+250*boostPL1;
        end
            if (man_speed<1) then man_speed=2; end; 
            if (ammo_speed<1) then ammo_speed=2; end; 
         if (express==1) then man_speed=default_man_speed*4;  end;
         if (slot5==272) then hpmax=hpmax*2; 
          if (hp<hpmax)and (chances>50) then hp=hp+1; end;
          end;
        
    end

    -- Gracz , ataka
    function setstandartdamage_P1 (onlyICEPL1,icekeyPL1,firekeyPL1)
        standartdamage=50;
        damagetype_PC1=""; 
        alt_damage_PC1=0; 
        if (tank==1) then standartdamage=standartdamage+50; end;
        if (poziom==0) then standartdamage=standartdamage+85; end;
        if (hardlevel~=1) then standartdamage=standartdamage+15; end;
        if (speedtimer>0) then standartdamage=standartdamage+25; end;
        if (speedtimer>0) then standartdamage=standartdamage+25; end;
        if (slot0==170) then standartdamage=standartdamage+20; end;
        if (slot0==171) then standartdamage=standartdamage+10; damagetype_PC1="steallife"; end;
        if (slot0==172) then standartdamage=standartdamage-20; damagetype_PC1="freeze";  end;
        if (slot0==174) then standartdamage=standartdamage-100; damagetype_PC1="stun";  end;
        if (slot0==177) then standartdamage=1;  damagetype_PC1="unused";  end;
        if (slot0==173)and (ammoLONGpressedPC1==1) then standartdamage=standartdamage-20;damagetype_PC1="slow"; end;
        if (slot0==175)and (ammoLONGpressedPC1==1) then standartdamage=standartdamage-20;damagetype_PC1="fear"; end;
        if (slot0==178)and(slot2==257) then standartdamage=standartdamage+200;damagetype_PC1="corrosion"; end;
        if (slot3==259) then standartdamage=standartdamage+40; end;
        if (slot4==271) then standartdamage=standartdamage+100; end;
        if (slot5==272) then standartdamage=standartdamage+50; end;
        
        if (slot0==181) then standartdamage=standartdamage+50; end;
        if (slot0==172)and (ammoLONGpressedPC1==1) then standartdamage=0; end;
        if (cursedtimerPL1>0) then standartdamage=math.ceil (standartdamage/2); end;
        -- ему просто насрать на onlyICEPL1 при стрельбе льдом.  отлично будем занулять сразу в двух местах для надёжности.
        --smsg1="onlyICEPL1 "..onlyICEPL1;  --видимо вред где то пересчитывается ещё раз в другом месте, т.к. обе переменных верно отрабатывают.
        if (slot0==181)and (onlyICEPL1==1) then standartdamage=0; end;
        if (slot0==170)and (onlyICEPL1==1) then standartdamage=0; end;
        if (slot0==171)and (onlyICEPL1==1) then standartdamage=0; end;
        if (slot0==180) then standartdamage=0;damagetype_PC1="protect"; end;
        if (slot0==0)and (onlyICEPL1==1) then standartdamage=0;  end;
        if (slot0==176) then standartdamage=math.ceil (standartdamage/3); end;
        alt_damage_PC1=standartdamage;
        if (slot0==179) then alt_damage_PC1=mass_explode_damage; damagetype_PC1="mine"; end; --* урон не меняется однако бомба нанесет дополнительный.
        if (slot0==214) then alt_damage_PC1=standartdamage+mass_explode_damage; damagetype_PC1="bomb"; end; --* урон не меняется однако бомба нанесет дополнительный.

        if (slot0==173) then alt_damage_PC1=standartdamage-20;end;
        if (slot0==175) then alt_damage_PC1=standartdamage-20;end;
        if (slot0==172) then alt_damage_PC1=0;end;
      return standartdamage;
    end
    -- прямой вред от самостоятельных патрон, рикошета и осколков   для игрока P1 ,  другие танки

    standartdamage=setstandartdamage_P1 (onlyICEPL1,icekeyPL1,firekeyPL1) ; --это_вред_только_игрока_1_не_танков_не_других_персонажей_не_P2_а_только_игрока_1
    standartparameters_player ();
    enemytankstandartdamage=80;

    if (nietykalnyPL1>0) then hp=hpmax; end; 
    if(protect>0) then enemytankstandartdamage=enemytankstandartdamage-20; end
    if(tank==1) then enemytankstandartdamage=enemytankstandartdamage-30; end
    if(hardlevel==1) then enemytankstandartdamage=enemytankstandartdamage+20; end

    if ((totalammo>0)) then --ammofuck   ещё один обработчик вреда не включенный в class_ammo:update?  по идее именно тут reactammo должен отрабатывать а не там. 
        for ammonum=1,totalammo,1 do
            typta,start_x,start_y,x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_moving,rotate_tt,renderammoshot_ammos,rikoszets,animset,spd_a,sourceammo,command_ammo,wzmacniacz,directdamage_autoammo,src_tankid,msg_to_func,command_power,delayed_cmd,delayed_snd=ammoX[ammonum]:get();
            if (typta=="")  then
                ammo_moving=false; rotate_t=-1; renderammoshot_ammos=false;end
            --попытка заодно проверить на вред танков
            totalenemycheck=#enemies+enemytank;
            if (rikoszets>0) then sourceammo="rikoszet"; end;
            if ((totalenemycheck)>0)and(typta~="") then
                -- вред танкам от автоматических патрон  Белый танк вред получает не отсюда.  а видимо из tankareexploded
                --y_ammo+rozmiarznak    походу нужен.  иначе автопатрон мажет мимо танка по соседней строке если он находится
                if (editor==0) then
                   -- build 10000 x_ammo and y_ammo changed to m_x_ammo + m_y_ammo  fixes AUTOAMMO BUG  with last cell protected.  фикс автопатрон работает!
                    potrafil=tankareexploded (math.ceil(gamey(m_y_ammo+rozmiarznak)),math.ceil(gamex(m_x_ammo)),command_ammo,directdamage_autoammo,sourceammo,src_tankid,command_power,typta);    end;
                if (potrafil==true)and(editor==0) then
                    typta=""; ammo_moving=false; renderammoshot_ammos=false ;
                    playsoundifvisible (ammotobadtargetsnd,x_ammo,y_ammo);
                end
            end; -- вот они откуда повреждения другим танкам!

            --здесь игрок получает любой плохой эффект от любых патрон  включая отражённые.
            if (isnear (x_ammo,x))and(isnear (y_ammo,y))and(ammo_moving)and(hp>0) then
                if (editor==0)and(typta~="")and(sourceammo~="PC1") then
                  if (command_ammo~="protect")and (protect>0) then 
                    command_power=math.ceil (command_power/2); 
                  end
                    if (command_ammo=="freeze") then freezetimerPL1=freezetimerPL1+command_power;  end
                    if (command_ammo=="fear") then feartimerPL1=feartimerPL1+command_power; end;
                    if (command_ammo=="slow") then slowPL1=slowPL1+command_power; end;
                    if (command_ammo=="corrosion") then damagetimerPL1=damagetimerPL1+command_power; 
                    if (slot2==258) then damagetimerPL1=math.ceil (command_power/100); end; 
                    end
                    if (command_ammo=="kwas") then damagetimerPL1=damagetimerPL1+command_power; end; 
                    if ((titlegame=="Kolonista")and (command_ammo=="kwas")) then damagetimerPL1=math.ceil (command_power/20); end;
                    if (tank==1)and(command_ammo=="kwas")  then damagetimerPL1=math.ceil (command_power/10);  end
                    if (command_ammo=="pajakowy_zespol") then pajaktimerPL1=pajaktimerPL1+command_power*12; pajakilosc=command_power; end; 
                    if (command_ammo=="invisible") then directdamage_autoammo=2; end; 
                    if (command_ammo=="szkoda") then hp=hp-command_power; end;
                    if (command_ammo=="curse") then cursedtimerPL1=cursedtimerPL1+command_power; end;
                    if (command_ammo=="heal")and(hp<hpmax) then hp=hp+command_power; end;
                    if (command_ammo=="stun")then -- бесперерывное переключение пунктов меню здесь баг не?
                       -- НИКОГДА НЕ ПИСАТЬ render==1 НИКОГДА !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                        if (renderer==1) then  if (tor_pocisku=="left") then x=x-rozmiarznak; man_x=x; man_is_moving=false; end
                        if (tor_pocisku=="right") then x=x+rozmiarznak; man_x=x; man_is_moving=false;end
                        if (tor_pocisku=="up") then y=y-rozmiarznak; man_y=y; man_is_moving=false;end;
                        if (tor_pocisku=="down") then y=y+rozmiarznak; man_y=y;man_is_moving=false; end;
                        end
                      protect=protect-command_power; 
                      protect=protect-directdamage_autoammo;
                    end;
                    if (command_ammo=="protect") then protect=protect+command_power; protect=protect+command_power; end;
                    if (command_ammo=="dispel")and(protect==0) then speedtimer=0; cursedtimerPL1=0; freezetimerPL1=0; feartimerPL1=0; slowPL1=0; painreflectionPL1=0; damagetimerPL1=0; haveaura=""; end;
                    if (command_ammo=="dispel")and(protect>0) then protect=protect-directdamage_autoammo*4;end; 
                    if (command_ammo=="painreflect") then painreflectionPL1=painreflectionPL1+command_power; end;
                    if (command_ammo=="explodeshards") then smsg2="explodeshards used";
                        start_x=x; start_y=y+3; command_ammox="";ammo_moving=true; renderammoshot_ammos=true; src_=-1;
                        totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("left",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,180,renderammoshot_ammos,rikoszets,0,300,"shards",command_ammox,1,43,src_);
                        totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("right",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,0,renderammoshot_ammos,rikoszets,0,300,"shards",command_ammox,1,43,src_);
                        totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("up",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,270,renderammoshot_ammos,rikoszets,0,300,"shards",command_ammox,1,43,src_);
                        totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("down",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,90,renderammoshot_ammos,rikoszets,0,300,"shards",command_ammox,1,43,src_);
                    end;
                    if (directdamage_autoammo=="") then directdamage_autoammo=0; end;
                    if (command_ammo=="corrosion")and (slot2==258) then directdamage_autoammo=0; end; 
                    hp=hp-math.ceil (directdamage_autoammo/3);
                    --if (rikoszets>0) then hp=hp-5000; end;  -- TEMP INSTAKILL при рикошете.
                    if (protect<1) then hp=hp-math.ceil (directdamage_autoammo/3);end;
                    if (protect>1) then protect=protect-math.ceil (directdamage_autoammo/20); end; 
                    if (tank<1) then hp=hp-math.ceil (directdamage_autoammo/3); end;
                    if (hardlevel>0) then hp=hp-math.ceil (directdamage_autoammo/3); end;
                    if (poziom>0) then hp=hp-math.ceil (directdamage_autoammo/3); end;
                    typta=""; ammo_moving=false; renderammoshot_ammos=false ;
                    playsoundifvisible (ammotobadtargetsnd,x_ammo,y_ammo);
                   if (command_ammo~="stun") then   player_change_lost_protect (); end
                end
                if (editor==1) then
                    if (love.keyboard.isDown("m")) then
                        if (movePL1=="up") then  y_ammo=y_ammo-rozmiarznak;   end
                        if (movePL1=="down") then  y_ammo=y_ammo+rozmiarznak; end
                        if (movePL1=="left") then  x_ammo=x_ammo-rozmiarznak; end
                        if (movePL1=="right") then  x_ammo=x_ammo+rozmiarznak; end

                    end
                    if ((love.keyboard.isDown("d"))) then
                        typta="";
                        ammo_moving=false;
                        renderammoshot_ammos=false ;

                    end

                    if ((love.keyboard.isDown("o"))) then
                        huded=5;
                        selectedammoid=ammonum;

                    end
                end


            end

            ammoX[ammonum]:set(typta, start_x,start_y,x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_moving,rotate_tt,renderammoshot_ammos,rikoszets,animset,spd_a,sourceammo,command_ammo,wzmacniacz,directdamage_autoammo,src_tankid,msg_to_func,command_power,delayed_cmd,delayed_snd);

        end; end;


    ----Выполняет аутоматычно конвертацию в знакоместа для сканирования карты
    function scanobject_nearby (code_item,sc_x,sc_y,sc_radius)
        start_ammo_x,start_ammo_y=scanobject (code_item,-7,1,gamex(sc_x),gamey(sc_y),sc_radius);
        return start_ammo_x,start_ammo_y;
    end

    -- Сканирование координат в поисках врага по экранным координатам. Эта команда работает с точностью 1 знакомест
    function isnear (par1,par2)
        if (par1==nil) then return false; end;
        par1= math.floor (par1);
        par2= math.floor (par2);
        --
        mn=rozmiarznak/2;-- было /2 увеличил для чувствительности танков.
        --if (near_radius>0) then mn=man_step/2*near_radius; end;
        for a=par1-mn,par1+mn,1 do
            --checka=math.floor(a);
            checka=a;
            if checka==par2 then return true end
        end
        return false;
    end

    function isnearED (par1,par2,near_radius)
       if (near_radius==nil)then near_radius=0; end
        if (par1==nil) then return false; end;
        mn=rozmiarznak*2;
        if (near_radius>0) then mn=rozmiarznak*near_radius; end
        for a=par1-mn,par1+mn,1 do
            if a==par2 then return true end
        end
        return false;
    end

    function isnear2 (par1,par2)
        mn=1;
        for a=par1-mn,par1+mn,1 do
            if a==par2 then return true end
        end
        return false;
    end

    --сейчас всё ок, отнимается жизнь всегда. 100% работает.
    -- Если игрок обстреливает танк противника (белый танк) P2
    standartdamage=setstandartdamage_P1 (onlyICEPL1,icekeyPL1,firekeyPL1) ;
    standartparameters_player ();
    -- Этот блок отключится если использовать не стандартные патроны а новые автопатроны (оружия №2 и №3)

    function droploot (idGO)   --lootid loot system
        percent=0;loot=0;
        for a=1,#lootid,1 do
            --if (lootid[a][1]~=nil) then smsg1="lootid 1:1="..lootid[4][1].." yourID="..idGO; end;   -- 4.1.==47 realno
            if (tonumber (lootid[a][1])==tonumber (idGO)) then  -- (lootid[a]~=nil)and then

                totalitems=tonumber (lootid[a][3]);-- цикл для обработки списка всего лута
                maxitemsdropz=tonumber (lootid[a][2]); -- цикл для обработки нескольких предметов лута
                for lootcycle=4,totalitems*2,2 do
                    loot=tonumber (lootid[a][lootcycle]);
                    percent=tonumber (lootid[a][lootcycle+1]);
                    chances=math.ceil (math.random(100));
                    if (chances<percent) then return loot; end;
                end
                if (otladka==1) then  smsg1="totallootids="..#lootid.." a="..a.." tot="..totalitems.." max="..maxitemsdropz.." lot="..loot.." per="..percent; end;

            end
        end
        return 0;
    end--
    --если игрок обстреливает дополнительные танки противника.

    function get_item_name_only (iditem)
        message,item_name=smsg_string (objs[((iditem+1))][13]); --message,varname
        if (item_name==nil) then item_name="";  end;
        return item_name
    end

    function printat_if_empty (xt,yt,newloot)
        ytt=gamey (yt);
        xtt=gamex (xt);
        czto_pod_tankom=(screens (ytt,xtt));
        if (czto_pod_tankom)and(czto_pod_tankom==56)and(newloot~=0) then printat (ytt,xtt,newloot);
          return 1; 
            --smsg1="droploot "..get_item_name_only (newloot);
        end;
        return 0 ; 
    end


    function printat_not_empty (xt,yt,newloot)
        ytt=gamey (yt);
        xtt=gamex (xt);
        czto_pod_tankom=(screens (ytt,xtt));
        if (czto_pod_tankom)and(newloot~=0) then printat (ytt,xtt,newloot);
          return 1; 
          end;
        return 0 ; 
    end



    if (totalenemies>0) then
        for enemynum=1,totalenemies,1 do
            typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value)
            hpt_start=hpt;
            if (protecttanks>0) then getstandartdamage=math.ceil (standartdamage/4)  else  getstandartdamage=standartdamage;  end
            if (hpt<1)and(deadanim~="tankdead") then
             cooldowntanks=150;  -- вот именно этот счётчик и срабатывает при смерти танка . другие не срабатывают. 
             if (titlegame~="Kolonista") then score=score+70; end
                -- фиксит tanksgetdamage тот обрабатывает смерть но не сохраняет состояние смерти почему то
                -- начало обработки смерти танка.  должно быть ОДНОРАЗОВЫМ!!! однако есть второй обработчик смерти в tanksgetdamage
                deadanim="tankdead";   -- ubrano build 4000 не убирается, бесконечное начисление очков какого то хера.
                if (hpt~=-1234) then love.audio.play (tankdeadsnd);
                    tanksdestroyed=tanksdestroyed+1;  end
                hpt=0 ;  --модуля где производится убийство танков почему то 2 (!!)  2- puszki
            end;

            if (xt>60)and((isnear (xt,x))and(isnear (yt,y))and(hpt>0)and (editor==1)) then   -- man_is_moving2
                if (love.keyboard.isDown("m")) then  -- добавить ошибку в координатах для gluckcheckX
                    if (movePL1=="up") then  yt=yt-rozmiarznak;   end              if (movePL1=="down") then  yt=yt+rozmiarznak; end
                    if (movePL1=="left") then  xt=xt-rozmiarznak; end              if (movePL1=="right") then  xt=xt+rozmiarznak; end man_xpla3=xt; man_ypla3=yt;
                end

                if (love.keyboard.isDown("m")and (enemynum==1)and (love.keyboard.isDown("1"))) then
                    if (movePL1=="up") then  yt=yt-rozmiarznak;   end              if (movePL1=="down") then  yt=yt+rozmiarznak; end
                    if (movePL1=="left") then  xt=xt-rozmiarznak; end              if (movePL1=="right") then  xt=xt+rozmiarznak; end man_xpla3=xt; man_ypla3=yt;
                end

                if ((love.keyboard.isDown("d"))) then hpt=0;                      end
                if ((love.keyboard.isDown("y"))) then haveaura="protect";  end
                if ((love.keyboard.isDown("t"))) then haveaura="painreflect";    end
                if ((love.keyboard.isDown("r"))) then haveaura="curse";    end
                if ((love.keyboard.isDown("u"))) then aitype=1;  end
                if ((love.keyboard.isDown("t"))) then aitype=2;  end
                if ((love.keyboard.isDown("i"))) then   huded=3;
                    -- просто читаем данные танков и выводим их на печать, отладочная функция
                    if (tanks_mov==true) then par_tmov="tanks_mov"; else par_tmov=""; end
                    if (tanks_am==true) then par_ta="tanks_am"; else par_ta=""; end
                    selectedtankid=enemynum;
                end
            end

            cel_hp=-1;  -- прямой вред от вражеских танков игроку P1 (!!!)  Damage player P1 from tanks
                  -- x _tanks jedzenietimer teraz nie obsługuje !  za bardzo damagu. 
            if (1==0)and (xt>60)and((isnear (xt,x))and(isnear (yt,y))and(tanks_am)and(hp>0)and(hpt>0)and(freezetanks==0)and (editor==0)) then   -- man_is_moving2
                cel_hp=rotate_t;
            end

            enemies[enemynum]:set(typt, xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8);-- NIL  kak tak?
            if (1==1)and(delayed_cmd~="")and(delayed_cmd~="0")and(delayed_cmd~=0)and(dby_copy~=nil) then -- это затычка от глючащего mass_effect который при попадании патрон не желает нормально распространять эффект попадания.
                -- ME_AMMO analog    -- delayed_cmd чаще всего равен если там пусто то нулю цифровому 0 .
                --delayed_power=10000;
                if (otladka==1) then smsg1="AOE ("..dbx_copy..","..(dby_copy+1).." "..delayed_src.." with effect "..delayed_cmd.." (power="..delayed_power..") delayedexplode;"; end; 
                --kto przysyła power=0 :?
                -- nie jeść prawidłowej decizjej   -- BUILD 85XX-9300 DISABLE MASS_EXPLODE APPLY PROBLEM
                mass_explode (1+dby_copy,dbx_copy,delayed_cmd,0,delayed_src,delayed_id,delayed_power)

                --      if (delayed_snd~="")and(dzwiek_od_trafienia<2) then playsoundifvisible ((_G[delayed_snd]),x_ammo,y_ammo); delayed_snd="" ; end;
                delayed_id=0; delayed_power=0; delayed_src=""; delayed_cmd="" ; delayedexplode=0;
            end
        end; end;


    function sleep(ms)
        local b = os.clock() * 1
        while os.clock() * 1 - b <= ms do end
    end

    function checklistice (o_kod,mx,my)  -- function checklistammo  ice  or table
        o_kod_ice=ext_objs_param (o_kod,8);
        o_kod_damagestage=ext_objs_param (o_kod,6);
        if (o_kod_ice~=nil) then  result=o_kod_ice else result=0; end;
        if (o_kod_ice==0) then return 0;  end;
        --if (o_kod>5)and(o_kod<10)and(powerstate==1) then powerclean (); allowpowerrescan=1;end;
        if (o_kod_ice==255) then result=0; end;
        if (o_kod_ice==255)and(o_kod_damagestage~=nil)and(o_kod_damagestage>0) then result=o_kod_damagestage; end;
        if (o_kod_damagestage==255) then result=0; end
        return result;
    end

    function checklistbomb (o_kod,mx,my)
        o_kod_bomb=ext_objs_param (o_kod,7);
        if (o_kod_bomb~=nil) then  result=o_kod_bomb else result=0; end;
        if (o_kod_bomb==0) then return 0;  end;
        if (o_kod==122)or(o_kod==123) then if (NO_SCORE_MINES_MODE==0) then  targetremains=targetremains-1;        end; end;

        if (o_kod>5)and(o_kod<10)and(powerstate==1) then powerclean (); allowpowerrescan=1;end;
        return result;
    end

    function checklistwater (o_kod,mx,my)
        o_kod_water=ext_objs_param (o_kod,24);
        if (o_kod_water~=nil) then  result=o_kod_water else result=0; end;
        if (o_kod_water==0) then return 0;  end;
        if (o_kod==183) then result=o_kod_water;
        end;
        if (o_kod==74) then result=200;    end
        return result;
    end

    function tankareexploded (y_TAE,x_TAE,command_TAE,directdamage_autoammo_f,sourceammo_TAE,src_tankid_TAE,command_power_TAE,tor_pocisku)
        --command_power_TAE=10000;  -- BUILD 85XX-9300 DISABLE MASS_EXPLODE APPLY PROBLEM      --src_tankid_TAE=0;
        TAE_CALLS=TAE_CALLS+1;
        xx2,yy2= xgametorealpositionbezbyte (y_TAE,x_TAE) ; -- мы получаем только координаты пули и команду которую она несла.
        --smsg1="TAE->TGD ("..xx2.."="..xpla2..","..yy2.."="..ypla2..") xx2=xpla2 ORIG X4="..x_TAE..",Y4="..y_TAE.." c="..command.."";
        if (command_TAE==nil) then command_TAE="";end;
        if (getstandartdamage==nil) then smsg1="getstandartdamage=NIL!!!!! get 10000";  getstandartdamage=10000; end;
        damage_TAE=getstandartdamage;
        if (directdamage_autoammo_f=="") then damage_TAE=0;directdamage_autoammo_f=0;  end;
        if (directdamage_autoammo_f==nil) then damage_TAE=0;directdamage_autoammo_f=0;  smsg1="directdamage_autoammo_= NIL!!!!!!!!!!!!!!!!"; end;
        if (directdamage_autoammo_f>-1) then damage_TAE=directdamage_autoammo_f; end;
        -- directdamage присылает только autoammo i cannons  ;; mass_explode - не присылает такую команду. но его используют и бомбы и ловушки и выстрелы.
        if (xx2==nil) then xx2=0; return 0; end
        if (yy2==nil) then yy2=0; return 0; end
        if (src_tankid_TAE==nil) then src_tankid_TAE=-1;smsg2="src_tankid_f NIL 2773 CHG TO -1";
        end;
        if (sourceammo_TAE==nil) then sourceammo_TAE="Unknown"; end;
        if(otladka==1)and(sourceammo_TAE=="PC1") then
            smsg1="TAE_FUNC:"..command_TAE.." damg="..damage_TAE.." src="..sourceammo_TAE.." src_tankid="..src_tankid_TAE.." pow="..command_power_TAE.."SND="..delayed_snd; end;

        if (otladka==1)and (sourceammo_TAE~="realrikoszet")and (sourceammo_TAE~="aura_effect")and(sourceammo_TAE~="jezyk") then
            smsg1=""..sourceammo_TAE..", ("..src_tankid_TAE..") наносит урон "..damage_TAE.." используя эффект "..command_TAE ;  end; --and(otladka==1)
        -- источник реалрикошет - всегда предмет!     --здесь ауры дебаффов игрока рядом.
        --if (sourceammo_f=="aura_effect") then smsg1=" AURA cmd="..command.." TAE EXEC SRC_T_ID="..src_tankid_f.."..POWE="..command_power_f;end
        if (command_TAE=="curse") then if (isnear (xx2,x))and(isnear (yy2,y)) then cursedtimerPL1=cursedtimerPL1+300; end ;
        end;
        -- здесь находятся ауры действующие на танк и танки
        if (totalenemies>0)and(src_tankid_TAE~=-4)  then  --and(livedtanks>0) убирало вред некоторым типам монстов в куче мест!!!!
            -- Это всего лишь 1 из 2 мест где используется tanksgetdamage? куда отправляются координаты пули     -- мы передаём только одну координату патрон?  а для mass_effect можно вызвать и несколько раз.
            potrafil,zabicie_TGD=tanksgetdamage (xx2,yy2,command_TAE,damage_TAE,sourceammo_TAE,src_tankid_TAE,command_power_TAE,tor_pocisku);  --отправляем в обработку обучные танки
            if (zabicie_TGD==nil) then zabicie_TGD=0; end; 
            zabicie_ilosc=zabicie_ilosc+zabicie_TGD;
            return potrafil,zabicie_ilosc;
        end
        return 0;
    end

   function check_nagrode () 
    if (multikills)==5 and (countinventory<maximuminventorysize) then addinventoryitem (259) end; 
    if (multikills)==5 and (countinventory>maximuminventorysize-1) then printat (gamey(y)+plusy,gamex(x)+plusx,"259");end; 
    if (ultrakills)==5 and (countinventory<maximuminventorysize) then addinventoryitem (271) end; 
    if (ultrakills)==5 and (countinventory>maximuminventorysize-1) then printat (gamey(y)+plusy,gamex(x)+plusx,"271");end; 
    end

    function mass_explode (by_ME,bx_ME,command_ME,damage_ME,sourceammo_ME,src_tankid_ME,command_power_ME)     -- Для аур - sourceammo="aura_effect", src = -2 всегда.
      --zabicie_ilosc=0; 
        if (editor==0)and(wszystkopostaciej>0)  then     ME_CALLS=ME_CALLS+1;  -- полное отключение этой функции не снижает падение FPS
            tankareexploded (by_ME,bx_ME,command_ME,damage_ME,sourceammo_ME,src_tankid_ME,command_power_ME);
            tankareexploded (by_ME+1,bx_ME,command_ME,damage_ME,sourceammo_ME,src_tankid_ME,command_power_ME);
            tankareexploded (by_ME-1,bx_ME,command_ME,damage_ME,sourceammo_ME,src_tankid_ME,command_power_ME);
            tankareexploded (by_ME,bx_ME+1,command_ME,damage_ME,sourceammo_ME,src_tankid_ME,command_power_ME);
            tankareexploded (by_ME,bx_ME-1,command_ME,damage_ME,sourceammo_ME,src_tankid_ME,command_power_ME);

            if(otladka==1)and(sourceammo_ME=="PC1") then
                smsg1="ME_FUNC:"..command_ME.." damg="..damage_ME.." src="..sourceammo_ME.." src_tankid="..src_tankid_ME.." pow="..command_power_ME.."SND="..delayed_snd.."(x="..by_ME..",y="..bx_ME.."";
            end;
            tankareexploded (by_ME,bx_ME+2,command_ME,damage_ME,sourceammo_ME,src_tankid_ME,command_power_ME);
            tankareexploded (by_ME,bx_ME-2,command_ME,damage_ME,sourceammo_ME,src_tankid_ME,command_power_ME);
            tankareexploded (by_ME+2,bx_ME,command_ME,damage_ME,sourceammo_ME,src_tankid_ME,command_power_ME);
            tankareexploded (by_ME-2,bx_ME,command_ME,damage_ME,sourceammo_ME,src_tankid_ME,command_power_ME);
            tankareexploded (by_ME+1,bx_ME+1,command_ME,damage_ME,sourceammo_ME,src_tankid_ME,command_power_ME);
            tankareexploded (by_ME-1,bx_ME+1,command_ME,damage_ME,sourceammo_ME,src_tankid_ME,command_power_ME);
            if (sourceammo_ME=="PC1")and(1==1) then
                tankareexploded (by_ME+2,bx_ME+2,command_ME,damage_ME,sourceammo_ME,src_tankid_ME,command_power_ME);
                tankareexploded (by_ME-2,bx_ME+2,command_ME,damage_ME,sourceammo_ME,src_tankid_ME,command_power_ME);
                tankareexploded (by_ME+3,bx_ME+3,command_ME,damage_ME,sourceammo_ME,src_tankid_ME,command_power_ME);
                tankareexploded (by_ME-3,bx_ME+3,command_ME,damage_ME,sourceammo_ME,src_tankid_ME,command_power_ME);
                tankareexploded (by_ME+2,bx_ME+3,command_ME,damage_ME,sourceammo_ME,src_tankid_ME,command_power_ME);
                tankareexploded (by_ME-2,bx_ME+3,command_ME,damage_ME,sourceammo_ME,src_tankid_ME,command_power_ME);
             end
        end
                  
                     smsg2="zabicie-b="..zabicie_ilosc;
                    if (zabicie_ilosc>1)and (smsg1~="ultrakill !") then smsg1="doublekill !"; end 
                    if (zabicie_ilosc>3) then smsg1="multikill !";
                    multikills=multikills+1; check_nagrode ();  end 
                    if (zabicie_ilosc>5) then smsg1="ultrakill !";
                    ultrakills=ultrakills+1; 
                     end 
        return 0 ;
    end


    function explodeice (by,bx,command,command_power_f,sourceammo_f_ice,src_tankid_f_ice)
        map_changed=65;  -- sourceammo_f_ice=="delayedexplode" - Это и есть наши выстрелы!
        if (command==nil) then command=""; end
        c1=screens (by+1,bx); cc1=checklistice (c1,by+1,bx); -- тут мы получаем коды всего что лежит рядом.
        c2=screens (by-1,bx); cc2=checklistice (c2,by-1,bx);
        c3=screens (by,bx+1); cc3=checklistice (c3,by,bx+1);
        c4=screens (by,bx-1); cc4=checklistice (c4,by,bx-1) ;
        c5=screens (by,bx+2); cc5=checklistice (c5,by,bx+2);
        c6=screens (by,bx-2); cc6=checklistice (c6,by,bx-2);
        c7=screens (by+2,bx); cc7=checklistice (c7,by+2,bx) ;
        c8=screens (by-2,bx); cc8=checklistice (c8,by-2,bx) ;
        if (command=="freezebomb") then command="freeze";
            map_changed=77; defacescreen=2; timerz=0; -- для спецэффекта  wremenno ubral ibo meszajet 4100  wernut
            if (cc1==1)then printat (by+1,bx,"30"); end; --если что то есть из списка - взрываем.
            if (cc2==1) then printat (by-1,bx,"30");end;
            if (cc3==1) then printat (by,bx+1,"30");end;
            if (cc4==1) then printat (by,bx-1,"30");end;
            if (cc5==1)and(cc3==1) then printat (by,bx+2,"30");end;
            if (cc6==1)and(cc4==1) then printat (by,bx-2,"30");end;
            if (cc7==1)and(cc1==1) then printat (by+2,bx,"30");end;
            if (cc8==1)and(cc2==1) then printat (by-2,bx,"30");end;
            if (cc1>1)then printat (by+1,bx,cc1); end; --если что то есть из списка - взрываем.
            if (cc2>1) then printat (by-1,bx,cc2);end;
            if (cc3>1) then printat (by,bx+1,cc3);end;
            if (cc4>1) then printat (by,bx-1,cc4);end;
            if (cc5>1)and(cc3==1) then printat (by,bx+2,cc5);end;
            if (cc6>1)and(cc4==1) then printat (by,bx-2,cc6);end;
            if (cc7>1)and(cc1==1) then printat (by+2,bx,cc7);end;
            if (cc8>1)and(cc2==1) then printat (by-2,bx,cc8);end;
        end
        if (command=="freezebomb") then printat (by,bx,"27"); end;
        mass_explode (by,bx,command,0,sourceammo_f_ice,-2,command_power_f);
        -- mass_explode (by,bx,command_f,damage_f,sourceammo_fmass,src_tankid_ME)
        return;
    end

    function explodebomb (by,bx,command)
        map_changed=60;
        --функция взрыва бомбы на самом деле только обрабатывает визуальное содержимое, т.е. взрывает вещи.  существ обрабатывает mass_explode
        if (command==nil) then command=""; end
        c1=screens (by+1,bx); cc1=checklistbomb (c1,by+1,bx); -- тут мы получаем коды всего что лежит рядом.
        c2=screens (by-1,bx); cc2=checklistbomb (c2,by-1,bx);
        c3=screens (by,bx+1); cc3=checklistbomb (c3,by,bx+1);
        c4=screens (by,bx-1); cc4=checklistbomb (c4,by,bx-1) ;
        c5=screens (by,bx+2); cc5=checklistbomb (c5,by,bx+2);
        c6=screens (by,bx-2); cc6=checklistbomb (c6,by,bx-2);
        c7=screens (by+2,bx); cc7=checklistbomb (c7,by+2,bx) ;
        c8=screens (by-2,bx); cc8=checklistbomb (c8,by-2,bx) ;
        --defaultbroken="27";
        printat (by,bx,"27");
        defacescreen=1; timerz=0; -- для спецэффекта  wremenno ubral ibo meszajet 4100  wernut
        mass_explode (by,bx,command,mass_explode_damage,"bomb",0);
        if (cc1==1)then printat (by+1,bx,"27"); end; --если что то есть из списка - взрываем.
        if (cc2==1) then printat (by-1,bx,"27");end;
        if (cc3==1) then printat (by,bx+1,"27");end;
        if (cc4==1) then printat (by,bx-1,"27");end;
        if (cc5==1)and(cc3==1) then printat (by,bx+2,"27");end;
        if (cc6==1)and(cc4==1) then printat (by,bx-2,"27");end;
        if (cc7==1)and(cc1==1) then printat (by+2,bx,"27");end;
        if (cc8==1)and(cc2==1) then printat (by-2,bx,"27");end;
        if (cc1>1)then printat (by+1,bx,cc1); end; --если что то есть из списка - взрываем.
        if (cc2>1) then printat (by-1,bx,cc2);end;
        if (cc3>1) then printat (by,bx+1,cc3);end;
        if (cc4>1) then printat (by,bx-1,cc4);end;
        if (cc5>1)and(cc3==1) then printat (by,bx+2,cc5);end;
        if (cc6>1)and(cc4==1) then printat (by,bx-2,cc6);end;
        if (cc7>1)and(cc1==1) then printat (by+2,bx,cc7);end;
        if (cc8>1)and(cc2==1) then printat (by-2,bx,cc8);end;
        return;
    end

    function explodebomb2 (by,bx,command,zloto,sourceammo_f_bomb2,src_tankid_f_bomb2)
        map_changed=60;
        if (command==nil) then command=""; end
        c1=screens (by+1,bx); cc1=checklistbomb (c1,by+1,bx); -- тут мы получаем коды всего что лежит рядом.
        c2=screens (by-1,bx); cc2=checklistbomb (c2,by-1,bx);
        c3=screens (by,bx+1); cc3=checklistbomb (c3,by,bx+1);
        c4=screens (by,bx-1); cc4=checklistbomb (c4,by,bx-1) ;
        c5=screens (by+1,bx+1); cc5=checklistbomb (c5,by+1,bx+1);
        c6=screens (by-1,bx-1); cc6=checklistbomb (c6,by-1,bx-1);
        c7=screens (by+1,bx-1); cc7=checklistbomb (c7,by+1,bx-1) ;
        c8=screens (by-1,bx+1); cc8=checklistbomb (c8,by-1,bx+1) ;
        defaultbroken="27";
        -- сс1=1;cc2=1;cc3=1; cc4=1;cc5=1;cc6=1;cc7=1;cc8=1; почему то при столкновении с обьектом только работает, а если ГГ и мигалка - нет.
        if (zloto~=nil)and(zloto~="") then  defaultbroken=zloto; end;
        printat (by,bx,defaultbroken);
        defacescreen=1; timerz=0; -- для спецэффекта  wremenno ubral ibo meszajet 4100  wernut
        mass_explode (by,bx,command,10000,sourceammo_f_bomb2,src_tankid_f_bomb2);
        if (cc1==1)then printat (by+1,bx,defaultbroken); end; --если что то есть из списка - взрываем.
        if (cc2==1) then printat (by-1,bx,defaultbroken);end;
        if (cc3==1) then printat (by,bx+1,defaultbroken);end;
        if (cc4==1) then printat (by,bx-1,defaultbroken);end;
        if (cc5==1)and(cc3==1) then printat (by+1,bx+1,defaultbroken);end;
        if (cc6==1)and(cc4==1) then printat (by-1,bx-1,defaultbroken);end;
        if (cc7==1)and(cc1==1) then printat (by+1,bx-1,defaultbroken);end;
        if (cc8==1)and(cc2==1) then printat (by-1,bx+1,defaultbroken);end;
        if (cc1>1)then printat (by+1,bx,cc1); end; --если что то есть из списка - взрываем.
        if (cc2>1) then printat (by-1,bx,cc2);end;
        if (cc3>1) then printat (by,bx+1,cc3);end;
        if (cc4>1) then printat (by,bx-1,cc4);end;
        if (cc5>1)and(cc3==1) then printat (by+1,bx+1,cc5);end;
        if (cc6>1)and(cc4==1) then printat (by-1,bx-1,cc6);end;
        if (cc7>1)and(cc1==1) then printat (by+1,bx-1,cc7);end;
        if (cc8>1)and(cc2==1) then printat (by-1,bx+1,cc8);end;
        return;
    end

    function mushroomupd (by,bx)

        c1=screens (by,bx); -- тут мы получаем код
        finalobject="83";
        check2=wzroststage (c1);               --smsg2=(startobject.." TO "..finalobject);
        if (check2~="0") then finalobject=check2;printat (by,bx,finalobject);  end
    end

    function wzroststage (checkcode)  -- аналог  Damaged by ammo
        if (checkcode==80) then return "81"; end;
        if (checkcode==81) then return "82"; end;
        if (checkcode==82) then return "83"; end;
        if (checkcode==200) then return "201"; end;
        if (checkcode==201) then return "202"; end;
        if (checkcode==202) then return "203"; end;
        if (checkcode==203) then return "204"; end;
        return "0";
    end


    function greenshit (by,bx,placeobject,placeitembydefault_d)

        c1=screens (by+1,bx); -- тут мы получаем коды всего что лежит рядом.
        c2=screens (by-1,bx);
        c3=screens (by,bx+1);
        c4=screens (by,bx-1);

        xxx=math.ceil(math.random (4));
        if (xxx>1)and(checklistbomb (c1)>0) then trytoplace (by+1,bx,c1,placeobject); end; --если что то есть из списка - взрываем.
        xxx=math.ceil(math.random (4));
        if (xxx>1)and(checklistbomb (c2)>0) then trytoplace (by-1,bx,c2,placeobject);end;
        xxx=math.ceil(math.random (4));
        if (xxx>1)and(checklistbomb (c3)>0) then trytoplace (by,bx+1,c3,placeobject);end;
        xxx=math.ceil(math.random (4));
        if (xxx>1)and(checklistbomb (c4)>0) then trytoplace (by,bx-1,c4,placeobject);end;
    end

    function greenwater (by,bx,placeobject,placeitembydefault_d)

        c1=screens (by+1,bx); -- тут мы получаем коды всего что лежит рядом.
        c2=screens (by-1,bx);
        c3=screens (by,bx+1);
        c4=screens (by,bx-1);

        xxx=math.ceil(math.random (4));
        if (xxx>1)and(checklistwater (c1)>0) then trytoplacewater (by+1,bx,c1,placeobject); end; --если что то есть из списка - взрываем.
        xxx=math.ceil(math.random (4));
        if (xxx>1)and(checklistwater (c2)>0) then trytoplacewater (by-1,bx,c2,placeobject);end;
        xxx=math.ceil(math.random (4));
        if (xxx>1)and(checklistwater (c3)>0) then trytoplacewater (by,bx+1,c3,placeobject);end;
        xxx=math.ceil(math.random (4));
        if (xxx>1)and(checklistwater (c4)>0) then trytoplacewater (by,bx-1,c4,placeobject);end;
    end


    function gravity_exec (bx,by,placeobject)
        --c1=screens (by+1,bx); -- тут мы получаем коды всего что лежит рядом.
        printed=0;
        c2=screens (by+1,bx);
        c3=screens (by,bx+1);-- справа
        c4=screens (by,bx-1);-- слева
        c33=screens (by+1,bx+1);-- справа и внизу
        c44=screens (by+1,bx-1);-- слева и внизу
        --        xxx=math.ceil(math.random (4));
        x_ceil=gamex(x); y_ceil=gamey(y); -- точные координаты игрока в знакоместах
        if (c2~=198)and(gravity_check (c2)>0) then  printed2=trytoplace (by+1,bx,c2,"256"); end --fuck test
        --if (printed2==1)and(isnear (bx,gamex(x)))and(isnear (by,gamey(y)))and(hp>0) then c2=198;  end;
        if (otladka==1) then smsg1="by="..by.."==.."..y_ceil.." bx="..bx.." =="..x_ceil.." fUCK";  end;
        if (gravity_check (c2)>0)and(isnear (bx,x_ceil))and(isnear(by,y_ceil))and(hp>0) then smsg2="";
            --hp=hp-200; c2=198;
        end;
        if (c2~=198)and(gravity_check (c2)>0) then printed=trytoplace (by+1,bx,c2,placeobject);end;


        if (printed==0)and(c2~=198)and(gravity_check (c3)>0)and(gravity_check (c33)>0) then  printed=trytoplace (by,bx+1,c3,placeobject);end;
        if (printed==0)and(c2~=198)and(gravity_check (c4)>0)and(gravity_check (c44)>0) then  printed=trytoplace (by,bx-1,c4,placeobject);end;
        if (printed==1) then printat (by,bx,"56" ); return 1 ; end;
        return 0
    end

    function gravity_check (o_kod)
        result=0;
        if (o_kod==56) then result=200;    end
        if (o_kod==27) then result=200;    end
        return result;
    end


    function trytoplace (dx,dy,startobject,finalobject)
        check2=damagestage (startobject);
        printed=0;
        if (startobject==124) then explodebomb (dx,dy);end;
        if (check2~="0") then finalobject=check2; end
        if (finalobject=="256") then
            printed=1 ; return printed;
        end
        if (finalobject~="255") then
            printat (dx,dy,finalobject); printed=1 ;
        end

        return printed;
    end

    function trytoplacewater (dx,dy,startobject,finalobject)
        check2=damagestage (startobject);
        xxx=math.ceil(math.random (7));
        if (xxx>4) then check2=repairstage (startobject); end;
        if (check2~="0") then finalobject=check2; end
        if (finalobject~="255") then
            printat (dx,dy,finalobject);
        end

    end

    --функция содержит таблицу поведения для расстреливаемых обычными патронами предметов.
    --может быть полезна для упрощения некоторых вычислений которые сейчас дублируют друг друга.
    --возвращает 0 если не знает можно ли что то делать с этим обьектом.
    function damagestage (checkcode)  -- аналог  Damaged by ammo
        --if (checkcode==104) then return "105"; end;
        code=ext_objs_param (checkcode,6);
        if (code==nil) then return "0" else return ""..code.."" ; end;
        if (code==255) then return "0" else return ""..code.."" ; end;

    end

    function repairstage (checkcode)  -- аналог  Damaged by ammo
        code=ext_objs_param (checkcode,24);
        if (code==nil) then return "0" else return ""..code.."" ; end;
        if (code==255) then return "0" else return ""..code.."" ; end;

    end

    -- Т.к. второй игрок отличается от первого отработка обьектов и событий для них сильно различается
    -- но  само перемещение персонажа похоже и можно его "функционализировать"   НЕ СДЕЛАНО
    --speedtimerPL2  wrog_speed    freezetimerPL2=2;
    function reactmove2 (zzx2,xpla2,ypla2,hptank_f,allowmovepla2,plusxpla2,plusypla2,freezetimerPL2_f,wrog_speed,speedtimerPL2_f,protecttanks_f,feartanks_f,typt_f, zz_id_teraz,enemynum_f,invisibletanks_f,painreflecttanks_f)
        --hptank=0;
        teleport=0; teleport_xpla2=0;  teleport_ypla2=0;
        if (editor==1)or(pause==1) then return allowmovepla2,hptank_f,freezetimerPL2_f,speedtimerPL2_f,protecttanks_f,feartanks_f, teleport_xpla2, teleport_ypla2,teleport,invisibletanks_f; end;
        if (hptank_f<1) then  return 0,0,0,0,0 ; end;
        chancesitem=ext_objs_param (zzx2,11);
        if (chancesitem==nil) then chancesitem=0; end;
        if (freezetimerPL2_f>0) then return 0,hptank_f,freezetimerPL2_f,speedtimerPL2_f,protecttanks_f,feartanks_f,teleport_xpla2, teleport_ypla2,teleport,invisibletanks_f; end;
        reactmove_code_en=ext_objs_param (zzx2,5);
        o_kod_repair=ext_objs_param (zzx2,24);
        if (reactmove_code_en==255) then  allowmovepla2=0; end;
        if (speedtimerPL2_f>0) then damager=1; else damager=0; end;
        if (protecttanks_f>0) then addchance=5; else addchance=0; end;

        chancesyou=(math.random(67+20*damager+addchance)); -- chances attack
        chancesrandomsound=math.random(70);-- почти никакой автоматизации damagestageid, autoshot=0  и.т.п. пока не используется.
        -- реакция на objects.ini по умолчанию - если в 5-й колонке есть значение на этот предмет - оно печатается.
        if (reactmove_code_en~=nil)and(reactmove_code_en<255)and(typt_f~="scientist")and(typt_f~="miner")and(typt_f~="droid") then
            --love.audio.play(icetakesnd);  ((zzx2==22))
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,reactmove_code_en);
        end

        if (typt_f=="scientist")or(typt_f=="droid") then

            if(o_kod_repair~=nil)and(o_kod_repair<255)and(chancesrandomsound>(62-levelnumber))and(timerz>50) then
                printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,o_kod_repair);
            end
        end

        -- Блок обьекты только для минёра - бюрократа
        if (typt_f=="miner") then

            if (zzx2==189)and(chancesrandomsound>(62-levelnumber))and(timerz>50) then
                printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"191");
            end
            if (zzx2==56)and(chancesrandomsound>65)and(timerz>50) then
                printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"122");
            end
            if (zzx2==74)and(chancesrandomsound>65)and(timerz>40) then
                printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"200");
            end

        end
        --окончание блока минёра

        if (zzx2==256) then
            by=gamey(ypla2)+plusypla2;bx=gamex(xpla2)+plusxpla2; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
            playsoundifvisible (explodeicesnd,xpla2,ypla2);
            explodeice (by,bx,"freezebomb",0,"trap",-2);
            freezetimerPL2_f=freezetimerPL2_f+1000;
        end;

        if (zzx2==16)and(protecttanks_f<1)and(typt_f~="scientist")and(typt_f~="droid") then
            by=gamey(ypla2)+plusypla2;bx=gamex(xpla2)+plusxpla2; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
            playsoundifvisible (explodeicesnd,xpla2,ypla2);
            mass_explode (by,bx,"freeze",0,"trap",-2,400)
            freezetimerPL2_f=freezetimerPL2_f+445;
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"27");
            -- по хорошему тут надо бы передать mute т.е заглушить передачу freezetimerPL2 которыый забивает тот что изменяется в explodeice
            -- и на записанный там позже сразу же записывается значение отсюда конечно же не совпадающее., а чаще всего 0,
            -- именно поэтому значение на выходе теряется и именно поэтому пришлось написать эти 2 строки.
        end;
        if (zzx2==38)and((protecttanks_f==0))and(typt_f~="scientist")and(typt_f~="droid") then
            by=gamey(ypla2)+plusypla2;bx=gamex(xpla2)+plusxpla2; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
            playsoundifvisible (explodeicesnd,xpla2,ypla2);
            mass_explode (by,bx,"fear",0,"trap",-2,400)
            feartanks_f=feartanks_f+445;
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"27");
        end;

        if (zzx2==48)and(protecttanks_f==0)and(typt_f~="scientist")and(typt_f~="droid") then
            by=gamey(ypla2)+plusypla2;bx=gamex(xpla2)+plusxpla2; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
            playsoundifvisible (stunhitsnd,xpla2,ypla2);
            mass_explode (by,bx,"slow",0,"trap",-2,400)
            slowPL1tanks=slowPL1tanks+400; --и так работает можно не писать
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"27");
        end;
        if (zzx2==49)and(protecttanks_f==0)and(typt_f~="scientist")and(typt_f~="droid") then
            by=gamey(ypla2)+plusypla2;bx=gamex(xpla2)+plusxpla2; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
            playsoundifvisible (signalsnd,xpla2,ypla2);
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"27");
            tankwithsignal=enemynum_f;
            signaltraptimer=signaltraptimer+100; --и так работает можно не писать
        end;


        if (zzx2==20) then allowmovepla2=0;  darkzone= not_numeric (darkzone);
            love.audio.play(patronysnd);
            smsg1=smsg_string ("CIEMNOSC")..stasuswlaczenia_textowe (darkzone); 
        end;
        if (zzx2==36) then allowmovepla2=0; latarnia = not_numeric (latarnia);
            love.audio.play(patronysnd);
            smsg1=smsg_string ("LATARNIA")..stasuswlaczenia_textowe (latarnia); 
        end;

        if (zz_id_teraz==46) or (zz_id_teraz==45) then
            hptank_f=hptank_f-600;
        end

        if (zzx2==194)and(typt_f=="scientist") then allowmove=0;
            if (timerz>12) then
                rnd11=math.ceil (math.random (6));
                scannon_x,scannon_y= scanobject_nearby (11,xpla2,ypla2,rnd11); -- стреляет LEFT  300
                scannon_x2,scannon_y2= scanobject_nearby (10,xpla2,ypla2,rnd11);
                if (scannon_x~=nil)and(scannon_x>0) or  (scannon_x2~=nil)and(scannon_x2>0) then
                        if (scannon_x~=nil)and(scannon_x>0)  then 
                          cannon_y,cannon_x=xgametorealpositionbezbyte (scannon_y,scannon_x);
                         cannon_x=cannon_x+rozmiarznak; --смещение карты вызывает выстрел на +1 +1 x y от правильной координаты
                       end
                         if (scannon_x2~=nil)and(scannon_x2>0) then 
                          cannon_y2,cannon_x2=xgametorealpositionbezbyte (scannon_y2,scannon_x2);
                         cannon_x2=cannon_x2+rozmiarznak;
                          end

                    ammo_moving=1;
                    renderammoshot_ammos=1;                   -- rikoszets=1; 
                    command_ammox="slow";
                    src_c="cannon";
                    src_ammo="cannon";
                    command_power_c=500;
                    damage=450; 
                if (scannon_x~=nil)and(scannon_x>0)  then 
                totalammo=totalammo+1;
                             cannon_y=cannon_y-rozmiarznak;
                ammoX[totalammo] = class_ammo:new("left",cannon_y,cannon_x,cannon_y,cannon_x,0,0,ammo_moving,180,renderammoshot_ammos,rikoszets,0,damage,src_ammo,command_ammox,1,250,src_c,"",command_power_c);
                playsoundifvisible (wystrelshocksnd,xpla2,ypla2); 
                end
                        if (scannon_x2~=nil)and(scannon_x2>0) then 
                        totalammo=totalammo+1;
                                     cannon_y2=cannon_y2+rozmiarznak;
                        ammoX[totalammo] = class_ammo:new("right",cannon_y2,cannon_x2,cannon_y2,cannon_x2,0,0,ammo_moving,0,renderammoshot_ammos,rikoszets,0,damage,src_ammo,command_ammox,1,250,src_c,"",command_power_c);
                        playsoundifvisible (wystrelshsnd,xpla2,ypla2); 
                        end
                end
                timerz=0;  end;
        end;

        if (zzx2==57) then painreflecttanks_f=painreflecttanks_f+1000; --protecttank=1000;
            love.audio.play(protectsnd);
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
        end;

        if (zzx2==39) then protecttanks_f=protecttanks_f+1000; --protecttank=1000;
            love.audio.play(protectsnd);
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
        end;

        if (zzx2==176) then kulemet=50; --protecttank=1000;
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
        end;

        if (zzx2==21) then
            hptank_f=hptank_f-1;
            if (typt_f=="scientist") then hptank_f=hptank_f-100; end;
        end

        if (zzx2==88)and(typt_f=="scientist") then allowmovepla2=0;
            if (timerz>5) then
                start_ammo_x,start_ammo_y= scanobject_nearby (140,xpla2,ypla2,5);
                if (start_ammo_x~=nil)and(start_ammo_x>0) then
                    --ccc=screens (start_ammo_y,start_ammo_x);
                    door_y,door_x=xgametorealpositionbezbyte (start_ammo_y,start_ammo_x);
                    door_x=door_x+rozmiarznak;
                    closedoor (door_y,door_x,0);
                end
                timerz=0;  end;
        end;

        if (zzx2==199)then
            if (invisibletanks_f==nil) then invisibletanks_f=0;  end  --затычка от nil
            invisibletanks_f=invisibletanks_f+195;
            playsoundifvisible(invisiblesnd,xpla2,ypla2);
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
        end;

        if (zzx2==19) then
            speedtimerPL2_f=speedtimerPL2_f+1500;-- speedtanks=1000;

            playsoundifvisible(uskoritelsnd,xpla2,ypla2);
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
        end;

        if (zzx2==30) then
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"27");
            freezetimerPL2_f=freezetimerPL2_f+50; --freezetanks=40; freezePL2=1;
            love.audio.play(iceeffectsnd);
        end;

        if (zzx2==147) then             allowmovepla2=0;          end

        if (zzx2==44) then
           allowmovepla2=0; 
        end;

        if (zzx2>5)and(zzx2<11) then allowmovepla2=0;                        end;
        if (zzx2==87) then allowmovepla2=0;                           end;

        if (zzx2==121)and(typt_f=="wtank") then --xt,yt=xgametorealpositionbezbyte (1+checky,checkx) ; xt>0)and(yt>0
            flagchecknewteleportersenemy=0;
            enemies[totalenemies+1] = class_enemy:new("tank",xpla2,ypla2,500,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
            totalenemies=totalenemies+1;
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
        end

        if (zzx2==192)and(typt_f=="wtank") then --xt,yt=xgametorealpositionbezbyte (1+checky,checkx) ; xt>0)and(yt>0
            flagchecknewteleportersenemy=0;
            enemies[totalenemies+1] = class_enemy:new("miner",xpla2,ypla2,500,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
            totalenemies=totalenemies+1;
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
        end
        if (zzx2==124) then  -- образец как работать с protecttanks
            hptank_f=hptank_f-50;
            if (protecttanks_f==0) then hptank_f=hptank_f-200; end;
            if (hardlevel~=1) then hptank_f=hptank_f-50; end; -- на усложнённых уровнях урон танку от бомб меньше
            if (poziom~=1) then hptank_f=hptank_f-50; end;  --  на усложнённых уровнях урон танку от бомб меньше

            if (titlegame=="Reskue") then love.audio.play(dynamitesnd);end;
            if (titlegame~="Reskue") then love.audio.play(bombsnd);end;
            by=gamey(ypla2)+plusy;bx=gamex(xpla2)+plusx; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
            explodebomb (by,bx,"");
        end;

        if (zzx2==31)and(typt_f~="scientist")and(typt_f~="droid") then
            love.audio.play(deadminesnd);
            hptank_f=0; --enemytank=0;
        end;

        if (zzx2==21)and(typt_f=="migalka") then
            love.audio.play (tankdeadsnd);
            hptank_f=0; --enemytank=0;
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"27");
            by=gamey(ypla2)+plusy;bx=gamex(xpla2)+plusx;
            explodebomb2 (by,bx,"instakill","197","kamikadze",enemynum_f);
        end;

        --tylko dla nie scientistów
        if (typt_f~="scientist")and(typt_f~="droid") then

            if (solarpower>2)and(zzx2==146)and(protecttanks_f<1) then
                love.audio.play (tankdeadsnd);
                solarpower=solarpower-4;
                hptank_f=0; --enemytank=0;
                printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"27");

            end

            if (zzx2==101) then  -- TEST  танки не должны боятся батареек.
                playsoundifvisible (batterysnd,xpla2,ypla2) ;
                feartanks_f=50;hptank_f=hptank_f+200;
                printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
            end

            if (zzx2==53)and(solarpower<5)and(chancesyou>40) then  -- magnes zniszczenie

                printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
            end

            -- большая часть этого кода описывает то что должно быть в поле №5 objects.ini - 5-Reactmove2(enemy)   and(typt_f~="miner")
            if (zzx2>103)and(zzx2<113)and(typt_f~="miner")and(speedtimerPL2_f>0) or(zzx2==149) then allowmovepla2=0;
                playsoundifvisible (jedzeniesnd,xpla2,ypla2) ;
                finalobject="27";
                check2=damagestage (zzx2);
                if (check2~="0") then finalobject=check2; end
                if (chances>63) then  printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,finalobject);end;

            end;

            if (zzx2==102)or(zzx2==144)or(zzx2==145) then allowmovepla2=0;  if (1==1) then
                playsoundifvisible (jedzeniesnd,xpla2,ypla2) ;
                finalobject="27";
                check2=damagestage (zzx2);
                if (check2~="0") then finalobject=check2; end
                if (chances>56) then  printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,finalobject);end;

            end;
            end

            if (zzx2>79)and(zzx2<87)and(1==1)  then allowmovepla2=0;
                playsoundifvisible (jedzeniesnd,xpla2,ypla2) ;
                finalobject="27";
                check2=damagestage (zzx2);
                if (check2~="0") then finalobject=check2; end
                if (chances>16) then  printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,finalobject);end;

            end

        end
        -- nie scientist koniec

        -- dla scientisti
        if (typt_f=="scientist")or(typt_f=="droid") then
            if (zzx2==60)and(typt_f=="scientist") then  -- TEST  танки не должны боятся батареек.
                feartanks_f=50;hptank_f=200;
                love.audio.play(aptekasnd);
                printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
            end
            if (zzx2==148)or(zzx2==101)  then
                allowmove=0;
            end
            if (zzx2==147) then
                allowmove=0;
                checkxB,checkyB=realrandomscanobject (148,-5,randomb);
                checkx,checky=realrandomscanobject (147,-5,randomc);
                if (checkx==-1) then smsg2="Scientist tries use teleporter.";end;
                if (checkx>-1) then teleport_xpla2,teleport_ypla2=xgametorealpositionbezbyte (2+checky,checkx) ;
                    teleport=1;
                    smsg2="teleport_xpla2="..teleport_xpla2.." teleport_ypla2="..teleport_ypla2.." teleport flag="..teleport;

                end;
                if (math.random (10)>8.8)and(checkxB>-1) then
                    teleport_xpla2,teleport_ypla2=xgametorealpositionbezbyte (2+checkyB,checkxB) ;
                    teleport=1;
                    smsg2="teleport_xpla2="..teleport_xpla2.." teleport_ypla2="..teleport_ypla2.." teleport flag="..teleport;
                end;
                playsoundifvisible (teleport2snd,xpla2,ypla2) ;
            end

            if (zzx2==135) then allowmove=0;
                --if  then allowmove=0; end нужен таймер не позволяющий любому обьекту многократно применятся по 50 раз за прикосновение.
                if (plusy==0) then
                    cd1= (screens (gamey(ypla2)+1,gamex(xpla2)+plusxpla2));
                    cd2= (screens (gamey(ypla2)+2,gamex(xpla2)+plusxpla2));
                    --smsg1="cd1="..cd1.." cd2="..cd2;
                    if (timerz>10) then if (cd1==133)and(cd2==134)then
                        printat (gamey(ypla2),gamex(xpla2)+plusxpla2,"140");
                        printat (gamey(ypla2)+1,gamex(xpla2)+plusxpla2,"56");
                        printat (gamey(ypla2)+2,gamex(xpla2)+plusxpla2,"56");
                        playsoundifvisible (swapitem,xpla2,ypla2) ;
                        timerz=0; else playsoundifvisible (brokendoorsnd,xpla2,ypla2) ;
                        return;
                    end; end
                end;
            end;
            if (zzx2==140) then allowmove=0;

                if (timerz>10) then closedoor (xpla2,ypla2,plusxpla2,plusypla2,timerz); timerz=0; end ;
            end;

            if ((zzx2==58)or(zzx2==61)or(zzx2==62)or(zzx2==59)or(zzx2==60)) then allowmovepla2=0;          end;
            if (zzx2>103)and(zzx2<113)or(zzx2==149) then allowmovepla2=0;   end
            if (zzx2==102)or(zzx2==144)or(zzx2==145) then allowmovepla2=0;  end
            if (zzx2>79)and(zzx2<87) then allowmovepla2=0; end;

            if (zzx2==72)and(typt_f=="scientist") then
         teskt_wiadomosci_smsg="HIBER_";--==33 ==35 ==266  HIBER_
         czas_wyswietlania=120; 
                hxmap=0; hymap=0; 
                love.audio.play(dymok3snd);
                hptank_f=-1234; score=score+5000; --enemytank=0;
                targetremains=targetremains-1;
                newloot=droploot(1000);   
                printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"33");
                if (newloot~=0) then printat (gamey(ypla2),gamex(xpla2),newloot); end 

            end

            if (zzx2==122) then
                love.audio.play(deadminesnd);
                if (NO_SCORE_MINES_MODE==0) then targetremains=targetremains-1; end;
                hptank_f=0;
                printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
                love.audio.play(deadsnd);
            end
            if (zzx2==123) then
                love.audio.play(targsnd);
                hptank_f=hptank_f-15;

                targetremains=targetremains-1;
                printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
            end


        end
        -- koniec scientistów

        if ((zzx2==76)or(zzx2==78)or(zzx2==0)or(zzx2==1)or(zzx2==2)or(zzx2==3)) then          allowmovepla2=0;       end;
        if (zzx2==75)or(zzx2==96) then                    allowmovepla2=0;                 end;
        if (zzx2==73) then                    allowmovepla2=0;                 end;

        if ((zzx2==77)) then
            love.audio.play(icetakesnd);
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
        end

        if (zzx2==97) then
            if (typt_f~="scientist") then  love.audio.play(jedzeniesnd); end
            allowmovepla2=0;
            if (chances>50) then printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"98"); end;
        end;

        if (zzx2==98) then
            if (typt_f~="scientist") then  love.audio.play(jedzeniesnd); end
            allowmovepla2=0;
            if (chances>50) then printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"99");end;
        end;
        if (zzx2==99) then
            if (typt_f~="scientist") then  love.audio.play(jedzeniesnd); end
            allowmovepla2=0;
            if (chances>50) then printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"100");end;
        end;

        if (zzx2==100) then
            if (typt_f~="scientist") then  love.audio.play(jedzeniesnd); end
            allowmovepla2=0;
            if (chances>50) then printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"27");end;
        end;

        if (zzx2==114)and(typt_f=="scientist")and(hptank_f<310) then

            dodac=320-hptank_f;
            if (solarpower>40) then
                love.audio.play(szpricsnd);
                if (solarpower<dodac) then dodac=solarpower; end;
                hptank_f=hptank_f+dodac;
                solarpower=solarpower-dodac;
            end;

        end;



        if (zzx2==12)and(timerz>5) then
            love.audio.play(switchpwsnd);
            allowmovepla2=0;
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"14");
            powerstate=1; timerz=3;
            allowpowerrescan=1; 
          smsg1=smsg_string ("PRAD")..stasuswlaczenia_textowe (powerstate); 
          end
        if (zzx2==12)and(timerz<6) then allowmovepla2=0;
        end
        if (zzx2==14)and(timerz>5) then
            love.audio.play(switchpwsnd2);

            allowmovepla2=0;
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"12");
            powerstate=0;
            smsg1=smsg_string ("PRAD")..stasuswlaczenia_textowe (powerstate); 
            powerclean ();
            timerz=3; end
        if (zzx2==14)and(timerz<6) then allowmovepla2=0;

        end

        if (zzx2==120) then
            love.audio.play(switchmsnd);
            allowmovepla2=0;
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"131");
            puszkistate=1;
            smsg1=smsg_string ("ARMATY")..stasuswlaczenia_textowe (puszkistate); 

        end
        if (zzx2==131) then
            love.audio.play(switchmsnd);
            allowmovepla2=0;
            printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"120");
            puszkistate=0;
            smsg1=smsg_string ("ARMATY")..stasuswlaczenia_textowe (puszkistate); 
        end

        if ((zzx2==13)or(zzx2==79)or(zzx2==71)or(zzx2==70)) then
            allowmovepla2=0;
            zzblock=(screens (gamey(ypla2)+2*plusypla2,gamex(xpla2)+2*plusxpla2));
            if (zzblock==56) then
                love.audio.play(movableblocksnd);
                printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
                printat (gamey(ypla2)+2*plusypla2,gamex(xpla2)+2*plusxpla2,zzx2);
            end
            if (zzblock==13)and(zzx2==79) then
                love.audio.play(movableblockdestrsnd);
                printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
                --printat (gamey(y)+2*plusy,gamex(x)+2*plusx,zzx);
            end
            if (zzblock==79)and(zzx2==79) then
                love.audio.play(movableblockdestrsnd);
                printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
                --printat (gamey(y)+2*plusy,gamex(x)+2*plusx,zzx);
            end

        end;
        return allowmovepla2,hptank_f,freezetimerPL2_f,speedtimerPL2_f,protecttanks_f,feartanks_f, teleport_xpla2, teleport_ypla2,teleport,invisibletanks_f,painreflecttanks_f;
    end

     if (ObjectSIZEchangeallow==3)and (timerz>3) and ((movePL1~="") or (ammoKEYPL1~="") )then 
        ObjectSIZEchangeallow=0; escapepressed=0; spacepressed=0;  --==266
        incontrolcentre=0;  timerz=5;--x=xsaved; y=ysaved;
        ObjectSIZE=ObjectSIZEOLD;
        reschange (resolutionPC);         
        map_changed=3;
       end;

    hpmaxtemp=hpmax+math.floor (hpmax); 
    steampak_PC1= ubywanie (steampak_PC1); 
    chances=math.ceil (math.random(100));
    --if (steampak_PC1>0)and (hp>hpmax)and (chances>90) then hp=hp-1 ;end; 

 
 --если нет ни одного флага предмет активируется незамедлительно после взятия и не появляется в инвентаре.
 --это действие выполняется по умолчанию. 
 --Перепроверка использования и подбирания ВСЕХ предметов
 --Reactmove - логика работы.
 --Предметы можно использовать тремя методами.
  --1- Джойстик - FAST USE (левый спуск и Х)
  --2- Inventory - USE  (кнопка С,  клава и джойстик)  (предметы имеющие флаг inv... правильно берутся но исчезают,обычный флаг отмечающий использовние)
  --3- Клавиатура - быстрый набор 1,2,3,4,5
 --КУФСЕЬЩМУ 
    function reactmove (zzx,inventory_fast_and_full_remove_flag_enable)
       itemused=0; 
        if (inventory_fast_and_full_remove_flag_enable==nil) then inventory_fast_and_full_remove_flag_enable=0; end; 
        -- ten flag jeść ustawiony w 1 tyłko w ekwipunke pelnem. [c]
        --if (inventory_fast_and_full_remove_flag_enable==1) then smsg1="INVPLN:"..zzx;end;
        if (ObjectSIZEchangeallow>0) then  allowmove=0; allowshot=0;  return; end;
        if (editor==1) then return; end;
        if (pause==1)and(inventory_fast_and_full_remove_flag_enable==0) then return; end;
        if (freezetimerPL1>0) then return; end;
        --реакция на движение второго игрока - возможно потом придётся вынести как отдельную функцию.
        --по умолчанию второй игрок отправляет обьект на который наступил, однако для Player 2 надо особый обработчик.
        --реакция на движение, может изменять параметры,или запрещать движение или корректировать его.
        reactmove_code=ext_objs_param (zzx,4);
        ignorecode=ext_objs_param (zzx,12);
        if (ignorecode~="IGNORE") then ostatni_obiekt=zzx; end;--всего лишь не печатать инфо о названии обьекта.
        takeableitem=ext_objs_string (zzx,19);
        movableitem=ext_objs_string (zzx,25);
        remove_inv_after_using_item=ext_objs_string (zzx,27);
        disable_take_action=ext_objs_string (zzx,28);
        usable=ext_objs_string (zzx,22);
        rifleenh=ext_objs_string (zzx,23);
        if (reactmove_code==255) then  allowmove=0; end;

        -- реакция на objects.ini по умолчанию - если в 4\5-й колонке есть значение на этот предмет - оно печатается.
        if (reactmove_code~=nil)and(reactmove_code~=255) then
            printat (gamey(y)+plusy,gamex(x)+plusx,reactmove_code);
        end
        if (zzx==32) then allowmove=0; renderer=0; allowshot=0; 
            if (menu~=5) then selectedoptionmenu=1; playsoundifvisible (computersnd,x,y);end;
            menu=5; incontrolcentre=1; 


        end;

        if (zzx==266)and timerz>3 and (not (man_is_moving) ) and  (ObjectSIZEchangeallow~=3) 
          or
          (zzx==35)and timerz>3 and (not (man_is_moving) ) and  (ObjectSIZEchangeallow~=3) 
            then
            allowmove=0; renderer=1; allowshot=0; 
            selectedoptionmenu=1; 

            playsoundifvisible (swapitem,x,y);
            incontrolcentre=1; 
            ObjectSIZEchangeallow=3;
            ObjectSIZEOLD=ObjectSIZE;
            ObjectSIZE=2; if (ObjectSIZEOLD==3) then ObjectSIZE=3;end;
            timerz=0;
            reschange (resolutionPC);         map_changed=3;
       end


       

      if (otladka==1)and (remove_inv_after_using_item=="removeinvafteruse") then smsg1=" item must be removed  "..itemkey ; end; 
        if (inventory_fast_and_full_remove_flag_enable==1)and (remove_inv_after_using_item=="removeinvafteruse")and (itemused==0) then
         -- removeinventoryitem (itemkey);  -- отмена повторного удаления предмета по ошибке 
         -- itemkey=0; -- added to prevent remove 2 or more items.
          takeableitem=""; -- removing item CANNOT be retaken 
        end


        if  (takeableitem=="take") then --starttanks=starttanks+5; ДЕЙСТВИЕ TAKE
            if (countinventory<maximuminventorysize) then
                addinventoryitem (zzx);
                love.audio.play(patronysnd);
                printat (gamey(y)+plusy,gamex(x)+plusx,"56");
                if (zzx==83) then printat (gamey(y)+plusy,gamex(x)+plusx,"74"); end;
            else
                allowmove=0;
            end
        end;


        if   (inventory_fast_and_full_remove_flag_enable==0)and (disable_take_action=="disabletakeaction") then --starttanks=starttanks+5; ДЕЙСТВИЕ TAKE
          return 0 ; 
        end

        if (zzx==306) then
          hpmaxtemp=hpmax+math.floor (hpmax/2); 
            if (hp<hpmaxtemp ) then      love.audio.play(aptekasnd);  hp=hpmaxtemp;   
            steampak_PC1=100; 
            itemused=1;
            end;   
        end;



        if (zzx==183) then hp=math.ceil (hp/8)-1; end;

        if (zzx==190) then score=score+1000;
            playsoundifvisible (pisk1snd,x,y);
            printat (gamey(y)+plusy,gamex(x)+plusx,"189"); end;

        if (zzx==193) then score=score+500;
            playsoundifvisible (pisk1snd,x,y);
            printat (gamey(y)+plusy,gamex(x)+plusx,"189"); end;

        if (zzx==191)and (score>0) then
            playsoundifvisible (pisk2snd,x,y);
            score=score-math.ceil (score/3);

            printat (gamey(y)+plusy,gamex(x)+plusx,"189"); end;

        if (zzx==199) then
            zzx2=0;
            invisibletimerPL1=invisibletimerPL1+195;
            playsoundifvisible(invisiblesnd,x,y);
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end;

        if (zzx==19) then
            speedtimer=195;
            playsoundifvisible(uskoritelsnd,x,y);
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end;

        if (zzx==267) then
            dasglukenfild=1;
            for a=1,#objs-1,1 do
                if (a~=76)and(a~=56)  then
                    objs[a+1][20]="realrikoszet";        --objs[a+1][26]="gravity";       --objs[a+1][25]="movable";       --smsg1="gravity";
                end  end
            love.audio.play(patronysnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end;

        if (zzx==74)and(seed>1) then
            seed=seed-1;
            love.audio.play(patronysnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"80");
        end;


        if (zzx==88) then allowmove=0;
            if (timerz>5) then
                start_ammo_x,start_ammo_y= scanobject_nearby (140,x,y,5);
                if (start_ammo_x~=nil)and(start_ammo_x>0) then
                    --ccc=screens (start_ammo_y,start_ammo_x);
                    door_y,door_x=xgametorealpositionbezbyte (start_ammo_y,start_ammo_x);
                    door_x=door_x+rozmiarznak;
                    closedoor (door_y,door_x,0);
                end
                timerz=0;  end;
        end;

        if (zzx==194) then allowmove=0; --88 rabotajet  a 194 net kakogo? 
          
          cooldown194=10;
          
          if (hardlevel==1) or (poziom==1) then cooldown194=25; end; 
            if (timerz>cooldown194) then
                rnd11=math.ceil (math.random (6));
                scannon_x,scannon_y= scanobject_nearby (11,x,y,rnd11); -- стреляет LEFT  300.
                scannon_x2,scannon_y2= scanobject_nearby (10,x,y,rnd11); -- wprawo
                --if (scannon_y2~=nil) then                 smsg1="act timerz"..timerz.." "..cooldown194.." scann"..scannon_y2; end; 
                if (scannon_x~=nil)and(scannon_x>0) or  (scannon_x2~=nil)and(scannon_x2>0)  then
                    if (scannon_x~=nil)and(scannon_x>0)  then 
                          cannon_y,cannon_x=xgametorealpositionbezbyte (scannon_y,scannon_x);
                         cannon_x=cannon_x+rozmiarznak; --смещение карты вызывает выстрел на +1 +1 x y от правильной координаты
                       end
                         if (scannon_x2~=nil)and(scannon_x2>0) then 
                          cannon_y2,cannon_x2=xgametorealpositionbezbyte (scannon_y2,scannon_x2);
                         cannon_x2=cannon_x2+rozmiarznak;
                          end
                    ammo_moving=1;
                    renderammoshot_ammos=1;                   -- rikoszets=1; 
                    command_ammox="slow";
                    src_c="cannon";
                    src_ammo="cannon";
                    command_power_c=500;
                    damage=450; 
                   if (scannon_x~=nil)and(scannon_x>0)  then 
                    cannon_y=cannon_y-rozmiarznak;
                  totalammo=totalammo+1;
                 -- smsg1="CREATED AMMO! y"..cannon_y.."  x="..cannon_x; 
                  ammoX[totalammo] = class_ammo:new("left",cannon_y,cannon_x,cannon_y,cannon_x,cannon_y,cannon_x,ammo_moving,180,renderammoshot_ammos,rikoszets,0,damage,src_ammo,command_ammox,1,250,src_c,"",command_power_c);
                  playsoundifvisible (wystrelshocksnd,x,y); 
                  end
                        if (scannon_x2~=nil)and(scannon_x2>0) then 
                          cannon_y2=cannon_y2+rozmiarznak; -- wizualno letit na 1 kwadrat prawee czem nado.  hmm. 
                        totalammo=totalammo+1;
                        ammoX[totalammo] = class_ammo:new("right",cannon_y2,cannon_x2,cannon_y2,cannon_x2,cannon_y2,cannon_x2,ammo_moving,0,renderammoshot_ammos,rikoszets,0,damage,src_ammo,command_ammox,1,250,src_c,"",command_power_c);
                        playsoundifvisible (wystrelshocksnd,x,y); 
                        end
                end
                timerz=0;  end;
        end;

        if (zzx==135) then allowmove=0;
            --if  then allowmove=0; end нужен таймер не позволяющий любому обьекту многократно применятся по 50 раз за прикосновение.
            if (plusy==0) then
                cd1= (screens (gamey(y)+1,gamex(x)+plusx));
                cd2= (screens (gamey(y)+2,gamex(x)+plusx));
                --smsg1="cd1="..cd1.." cd2="..cd2;
                if (timerz>3) then if (cd1==133)and(cd2==134)then
                    printat (gamey(y),gamex(x)+plusx,"140");
                    printat (gamey(y)+1,gamex(x)+plusx,"56");
                    printat (gamey(y)+2,gamex(x)+plusx,"56");
                    love.audio.play(swapitem);
                    timerz=0; else love.audio.play(brokendoorsnd);
                    return;
                end; end
            end;
        end;
        if (zzx==140) then allowmove=0;
            if (timerz>3) then closedoor (x,y,plusx); timerz=0;  end;


        end;

        if (zzx==55) then
            if (levelnumber<200) then levelnumber=levelnumber+1; end;
            score=score+1000+lives*20+ammo+ice+bombs+keys*5+water*5;
            if (titlegame=="Perestroika") then lives=lives+math.ceil (score/1000); end;
            levelname="Levels/LEVEL"..levelnumber..".$C";
            changemusic (mtrack) ;
            love.audio.play(levelnextsnd);

            love.load();
        end;



         
      if (zzx==307)and (pietro==1) then
            -- wyzerowanie wrogów
            pietro=pietro+1;
            enemies={};            selectedtankid_fortanks=0;
            totalenemies=0;            sledzione_hp_tankid=0;
            wsego_tank_teleporterow=0;            livedtanks=0;
            selectedtankid=nil;
            changepietro (1,2);       changemusic (mtrack) ;
               checkx,checky=scanobject (308,-1);--check player 1 start position
                if (checkx>-1) then x,y=xgametorealpositionbezbyte (1+checky,checkx) ; end
            
        end;

           if (zzx==308)and (pietro==2) then
            -- wyzerowanie wrogów
            pietro=pietro-1;
            enemies={};            selectedtankid_fortanks=0;
            totalenemies=0;            sledzione_hp_tankid=0;
            wsego_tank_teleporterow=0;            livedtanks=0;
            selectedtankid=nil;
            changepietro (2,1);       changemusic (mtrack) ;
             
               checkx,checky=scanobject (307,-1);--check player 1 start position
                if (checkx>-1) then x,y=xgametorealpositionbezbyte (1+checky,checkx) ; end
            
        end;

        if (zzx==309)and (pietro==1) then
            -- wyzerowanie wrogów
            pietro=pietro+2;
            enemies={};            selectedtankid_fortanks=0;
            totalenemies=0;            sledzione_hp_tankid=0;
            wsego_tank_teleporterow=0;            livedtanks=0;
            selectedtankid=nil;
            changepietro (1,3);     
               checkx,checky=scanobject (307,-1);--check player 1 start position
                if (checkx>-1) then x,y=xgametorealpositionbezbyte (1+checky,checkx) ; end
            
        end;

    if  (zzx==268) and(editor==0)or(ammoKEYPL1=="ekwip") then
        stattitle=1;
        menu=9; selectedoptionmenu=1;
        disable_quickload_at_start=1; -- fix autoload problem
    end
    

        if (zzx==51)and(savedscientists>4)and(savedfuel>3)and(editor==0)then
            finaltitle=1;
            autosave_execute ();
            score=score+2000+lives*20+ammo+ice+bombs+keys*5+water*5;
            gameover=1;
        end
        if (zzx==51) then
        savedscientists=scanobject (33,-2);
        frozenscientists=scanobject (34,-2);
        savedfuel=scanobject (42,-2);
        if (savedscientists<0) then savedscientists=0; end
        if (savedfuel<0) then savedfuel=0; end
        if (frozenscientists<0) then frozenscientists=0; end; 
          smsg1="Fuel:"..savedfuel.." Scientists saved:"..savedscientists .." Frozen:"..frozenscientists;
          end;

        molotok=checkinventoryitem(50);
        if (zzx==16)and(molotok==false)and(titlegame~="Reskue") then
            by=gamey(y)+plusy;bx=gamex(x)+plusx; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
            playsoundifvisible (explodeicesnd,x,y);
            mass_explode (by,bx,"freeze",0,"trap",-2,700)
            freezetimerPL1=freezetimerPL1+50;
            printat (gamey(y)+plusy,gamex(x)+plusx,"27");
        end;

        if (zzx==38)and(molotok==false)and(titlegame~="Reskue") then
            by=gamey(y)+plusy;bx=gamex(x)+plusx; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
            playsoundifvisible (explodeicesnd,x,y);
            mass_explode (by,bx,"fear",0,"trap",-2,700)
            feartimerPL1=feartimerPL1+35;
            printat (gamey(y)+plusy,gamex(x)+plusx,"27");
        end;

        if (zzx==48)and(molotok==false)and(titlegame~="Reskue") then
            by=gamey(y)+plusy;bx=gamex(x)+plusx; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
            playsoundifvisible (stunhitsnd,x,y);
            --explodeice (by,bx,"slow",0,"trap",-2);
            mass_explode (by,bx,"slow",0,"trap",-2,700)
            slowPL1=slowPL1+95;
            man_speed=math.ceil (default_man_speed/4);
            ammo_speed=math.ceil (default_ammo_speed/4);
            printat (gamey(y)+plusy,gamex(x)+plusx,"27");
        end;

        if (zzx==22) then passthrurock=passthrurock+2;
            printat (gamey(y)+plusy,gamex(x)+plusx, ext_objs_param (zzx,4));  -- приходит уже string
        end;

        if (zzx==58) then
            if (countinventory<maximuminventorysize)and(ammo>maximumammo_PC1-1)and(allowmove~=0) then
                addinventoryitem(58); allowmove=0;
                printat (gamey(y)+plusy,gamex(x)+plusx,"56");
            end
            if (countinventory==maximuminventorysize)and(ammo>maximumammo_PC1-1) then allowmove=0; plusx=0; plusxy=0; end
            if (ammo<maximumammo_PC1)and(allowmove~=0) then love.audio.play(patronysnd);
                ammo=ammo+18;allowmove=0;
                if (titlegame=="Reskue") then ammo=ammo+70; end;
                printat (gamey(y)+plusy,gamex(x)+plusx,"56");
            end;
        end;

        if (zzx==94) then
            if (seed<80) then  seed=seed+40;
                love.audio.play(patronysnd);
                printat (gamey(y)+plusy,gamex(x)+plusx,"56");
            else
                allowmove=0;
            end
        end;

        if (zzx==61) then
            if (countinventory<maximuminventorysize)and(ice>maximumammo_PC1-1)and(allowmove~=0) then
                addinventoryitem(61); allowmove=0;
                printat (gamey(y)+plusy,gamex(x)+plusx,"56");
            end
            if (countinventory==maximuminventorysize)and(ice>maximumammo_PC1-1) then allowmove=0; plusx=0; plusxy=0; end
            if (ice<maximumammo_PC1)and(allowmove~=0) then love.audio.play(patronysnd);
                ice=ice+20;allowmove=0;
                if (titlegame=="Reskue") then ice=ice+70; end;
                printat (gamey(y)+plusy,gamex(x)+plusx,"56");
            end;
        end;

        if (zzx==62) then lives=lives+1; if (poziom==0) then lives=lives+1; end;
            love.audio.play(livessnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end;--это упрощение,  в обычной сложности +1
        if (zzx==59) then bombs=bombs+6;
            love.audio.play(patronysnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end;
        if (zzx==126) then keys=keys+1;
            love.audio.play(keysnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end;

        if (zzx==95) then
            addinventoryitem (95);
            love.audio.play(newarsenalsnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end;

        

        if (zzx==103) then paralysatorammo=paralysatorammo+1;
            love.audio.play(patronysnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end;

        if (movableitem=="movable") then

            allowmove=0;
            zzblock=(screens (gamey(y)+2*plusy,gamex(x)+2*plusx)); -- команда вычисляет что находится через 1 клетку от движения игрока.

            if (zzblock==56)or(zzblock==27) then
                love.audio.play(movableblocksnd);
                printat (gamey(y)+plusy,gamex(x)+plusx,"56");
                printat (gamey(y)+2*plusy,gamex(x)+2*plusx,zzx);
            end
            if (zzblock==13)and(zzx==79) then  -- особые правила для  Armored box
                love.audio.play(movableblockdestrsnd);
                printat (gamey(y)+plusy,gamex(x)+plusx,"56");
            end
            if (zzblock==79)and(zzx==79) then  -- особые правила для  Armored box
                love.audio.play(movableblockdestrsnd);
                printat (gamey(y)+plusy,gamex(x)+plusx,"56");
            end
            if (countinventory<maximuminventorysize)then  if(zzblock==64)and(zzx==70)or(zzblock==73)and(zzx==70)or(zzblock==207)and(zzx==70)or(zzblock==208)and(zzx==70)or(zzblock==155)and(zzx==70)or(zzblock==156)and(zzx==70) then
                love.audio.play(dwigacsnd);
                printat (gamey(y)+plusy,gamex(x)+plusx,"56");
                addinventoryitem ("70");
            end end
            if (zzblock==43)and(zzx==70) then
                fuel=fuel+1;
                love.audio.play(dwigacsnd);
                printat (gamey(y)+plusy,gamex(x)+plusx,"56");
                printat (gamey(y)+2*plusy,gamex(x)+2*plusx,"42");
            end
        end;

        if (zzx==87) then
            love.audio.play(movableblocksnd);
            allowmove=0;
            if (water>0) then water=water-1;
                if (zzblock==56) then

                    printat (gamey(y)+2*plusy,gamex(x)+2*plusx,zzx);
                end
                if ((zzblock==76)or(zzblock==77)) then
                    printat (gamey(y)+plusy,gamex(x)+plusx,"27");
                end;
            else
                if (tank==0) then  hp=0; end
                if (tank==1) then hp=hp-100;player_change_lost_protect ();  end;
                damagetimerPL1=damagetimerPL1+2;
                love.audio.play(firesnd);end;
        end;

        if (zzx==118) then                     allowmove=0;                 end

        if ((zzx==121)and(tank>0)and(titlegame=="M2K")) then  --при попытке взять ещё один танк появляется враг.ы
            allowmove=0;
            hpt_new=3000; addpain=700;
            xt=x; yt=y; typeobject="wtank";
            if (xt>0)and(yt>0) then
                enemies[totalenemies+1] = class_enemy:new(typeobject,xt,yt,hpt_new,0,0,0,0,0,addspeed,10+addprotect,0,0,0,0,0,0,addfear,0,addslowdown,0,0,addkulemet,0,0,addinvis,addpain,addaura,0,0,0,0);
                totalenemies=totalenemies+1;
            end
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
            if (acidprotect>0) then addinventoryitem(40); acidprotect=0; end;

        end

        if (zzx==121)and(tank<1)and(titlegame~="Perestroika") then tank=1;
            love.audio.play(tankzsnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end;

        if (zzx==128) then express=1;
            love.audio.play(expresssnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
            man_speed=default_man_speed*4;

        end;
       

        if (zzx==57) then
            painreflectionPL1=painreflectionPL1+500;
            love.audio.play(protectsnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end;


        if (zzx==39) then
             doprotect=1; 
            if (protect>1400) then addinventoryitem (39) ;doprotect=0;
                printat (gamey(y)+plusy,gamex(x)+plusx,"56");end;
            if (protect<1550)and(doprotect==1) then protect=protect+800;end
            if (protect>1550)and(doprotect==1) then protect=1550;end
            feartimerPL1=0; freezetimerPL1=0;slowPL1=0; cursedtimerPL1=0;
            if (acidprotect>0) then addinventoryitem (40); end;
            acidprotect=0;
            love.audio.play(protectsnd);

            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end;

        if (zzx==41) then inventorybelt=1;
            love.audio.play(protectsnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end

        if (zzx==40) then
            if (acidprotect>0) then addinventoryitem (40) ;
                printat (gamey(y)+plusy,gamex(x)+plusx,"56");end;
            acidprotect=1;
            if (protect>0) then addinventoryitem (39); end;
            protect=0;
            love.audio.play(protectsnd);
            if (tank==0) then printat (gamey(y)+plusy,gamex(x)+plusx,"56"); end;
            if (tank==1) then printat (gamey(y)+plusy,gamex(x)+plusx,"121"); end;
            tank=0;
        end;

        if (zzx==27) then
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end;

        if (zzx==255)or(zzx==127) then water=water+1;
            love.audio.play(patronysnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end;

        if (zzx==47) then
            -- random items not released.
            score=score+math.random(50);
            newloot=droploot(47);      --printat_if_empty (xt,yt,newloot);
            if (newloot~=0) then addinventoryitem (newloot);
              nameitem="";
              textdatacontent,nameitem=smsg_string (objs[newloot+1][13]);
                smsg1=""..nameitem;
            end;
            if (math.random(50)>45) then hp=hp+40;
                smsg1="You found an bonus hp";
            end;  
            love.audio.play(patronysnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end;

        --функция для взрыва бомбы,  наступания на бомбы и выстрела в нее любым игроком одна и та же.
        if (zzx==124) then
            hp=hp-25;
            if (hardlevel==1) then hp=hp-25; end;
            if (poziom==1) then hp=hp-25; end;
            if (tank<1) then hp=hp-50; end;
            if (protect<1) then hp=hp-50; end;
            player_change_lost_protect ();
            if (titlegame=="Reskue") then love.audio.play(dynamitesnd);end;
            if (titlegame~="Reskue") then love.audio.play(bombsnd);end;
            by=gamey(y)+plusy;bx=gamex(x)+plusx; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
            explodebomb (by,bx,"");
        end;

        if (zzx==30) then
            -- выключено ибо непонятно что происходит всвязи с увеличением клетки  - dla zmiany rozmiaru
            love.audio.play(iceeffectsnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"27");
            freezetimerPL1=1;
            if (protect<1) then freezetimerPL1=2;end
            if (tank<1) then freezetimerPL1=2;end
        end;

        if (zzx==60) then if (hp==hpmax)or(hp>hpmax)  then
            if (reservedaids<(maxiumumreservedaids)) then
                reservedaids=reservedaids+1;
                love.audio.play(patronysnd);
            else

                if (countinventory<maximuminventorysize) then addinventoryitem(60); allowmove=0; printat (gamey(y)+plusy,gamex(x)+plusx,"56"); else allowmove=0; plusx=0; plusxy=0; end
            end
        end;
            if (hp<hpmax ) then      love.audio.play(aptekasnd);  hp=hpmax;
            end;


            if (allowmove~=0) then  printat (gamey(y)+plusy,gamex(x)+plusx,"56"); end;
        end;


     


        if (zzx==114) then
            dodac=hpmax+100-hp;
            if (solarpower>100) then
                love.audio.play(szpricsnd);
                if (solarpower<dodac) then dodac=solarpower; end;
                hp=hp+dodac;
                solarpower=solarpower-dodac;
            end;

        end;

        if (zzx==150) then allowmove=0;
            dodac=hpmax+50-hp;
            if (solarpower>50) then
                love.audio.play(szpricsnd);
                if (solarpower<dodac) then dodac=solarpower; end;
                hp=hp+dodac;
                solarpower=solarpower-dodac;
            end;

            dodac=300-ammo;
            if (solarpower>1)and(ammo<300) then
                --love.audio.play(aptekasnd);
                if (solarpower<dodac) then dodac=solarpower; end;
                ammo=ammo+dodac;
                solarpower=solarpower-dodac;
            end;


        end;




        if (zzx==20) then allowmove=0;  darkzone= not_numeric (darkzone);
            love.audio.play(patronysnd);
            smsg1=smsg_string ("CIEMNOSC")..stasuswlaczenia_textowe (darkzone); 

        end;

       if (zzx==36) then allowmove=0;  latarnia= not_numeric (latarnia);
            love.audio.play(patronysnd);
             smsg1=smsg_string ("LATARNIA")..stasuswlaczenia_textowe (latarnia); 
        end;

        if (zzx==115) then allowmove=0;
        end;

        if (zzx==86) then allowmove=0;                         end;
        if (zzx==84) then allowmove=0;                         end;
        if (zzx==85) then allowmove=0;                          end;
        if (zzx==141) then allowmove=0;                           end;
        if (zzx==142) then allowmove=0;                          end;

        if (zzx==31)and(titlegame~="Reskue") then tank=0;  protect=0; end; --обьект не должен уничтожатся как и стена.

        if (passthrurock<1) then
            if (zzx==76) then
                love.audio.play(wallsnd);
                if (express<1) then allowmove=0; end -- на экпрессе можно сломать стену.  FUCK
            end;
            if (zzx==75)or(zzx==96) then                    allowmove=0;                 end;

            if (zzx==73)or(zzx==107)or(zzx==108)or(zzx==109)or(zzx==110)or(zzx==111)or(zzx==112) then allowmove=0;  end;
            if (zzx==55) then                   allowmove=0;                 end;
            if (zzx==63) then                    allowmove=0;                 end;


        end  --end of passthrurock spell

        if (passthrurock>0) then
            if (zzx==76)or(zzx==55)or(zzx==63) then  passthrurock=passthrurock-1;    end;
        end

        chances=(math.random(52+7*tank+1*protect));

        if (zzx==97) then
            love.audio.play(wallsnd);
            allowmove=0;
            if ((protect<1)and(tank<1)) then hp=hp-math.random(1);  end
            if (chances>50) then printat (gamey(y)+plusy,gamex(x)+plusx,"98"); end;
        end;

        if (zzx==98) then
            love.audio.play(wallsnd);
            allowmove=0;
            if ((protect<1)and(tank<1)) then hp=hp-math.random(1); end
            if (chances>50) then printat (gamey(y)+plusy,gamex(x)+plusx,"99");end;
        end;
        if (zzx==99) then
            love.audio.play(wallsnd);
            allowmove=0;
            if ((protect<1)and(tank<1)) then hp=hp-math.random(1); end
            if (chances>50) then printat (gamey(y)+plusy,gamex(x)+plusx,"100");end;
        end;

        if (zzx==100) then
            love.audio.play(wallsnd);
            allowmove=0;
            if ((protect<1)and(tank<1)) then hp=hp-math.random(1); end
            if (chances>50) then printat (gamey(y)+plusy,gamex(x)+plusx,"27");end;
        end;



        if (zzx==12)and(timerz>15) then
            love.audio.play(switchpwsnd);
            allowmove=0;
            printat (gamey(y)+plusy,gamex(x)+plusx,"14");
            powerstate=1; timerz=0;
            allowpowerrescan=1; 
           smsg1=smsg_string ("PRAD")..stasuswlaczenia_textowe (powerstate); 
        end
        if (zzx==12)and(timerz<16) then allowmove=0;

        end
        if (zzx==14)and(timerz>15) then
            love.audio.play(switchpwsnd2);
            allowmove=0;
            printat (gamey(y)+plusy,gamex(x)+plusx,"12");
            powerstate=0; timerz=0;
            allowpowerrescan=1;
            powerclean ();
            smsg1=smsg_string ("PRAD")..stasuswlaczenia_textowe (powerstate); 

        end
        if (zzx==14)and(timerz<16) then allowmove=0;
        end

        if (zzx==120) then
            love.audio.play(switchmsnd);
            allowmove=0;
            printat (gamey(y)+plusy,gamex(x)+plusx,"131");
            puszkistate=1;
            smsg1=smsg_string ("ARMATY")..stasuswlaczenia_textowe (puszkistate); 


        end
        if (zzx==131) then
            love.audio.play(switchmsnd);
            allowmove=0;
            printat (gamey(y)+plusy,gamex(x)+plusx,"120");
            puszkistate=0;
            smsg1=smsg_string ("ARMATY")..stasuswlaczenia_textowe (puszkistate); 

        end


        if (zzx==113) then
            love.audio.play(doorsnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end;
        if ((zzx==78)and(keys==0)) then
            love.audio.play(wallsnd);
            allowmove=0;
        end;
        if ((zzx==78)and(keys>0)) then
            keys=keys-1;
            love.audio.play(doorsnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end

        if ((zzx==77)and(tank==0)) then
            love.audio.play(wallsnd);
            allowmove=0; if (protect<1) then hp=hp-math.random(1); end
        end;
        if ((zzx==77)and(tank>0)) then
            love.audio.play(icetakesnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end
        if ((zzx==10)or(zzx==11)or(zzx==6)or(zzx==7)or(zzx==8)or(zzx==9)) then
            if (tank==0) then
                love.audio.play(wallsnd);
                allowmove=0;
            end;
            if ((tank>0)) then
                love.audio.play(cannondestrsnd);
                if (zzx==6)or(zzx==7)or(zzx==8)or(zzx==9) then powerclean (); allowpowerrescan=1;nowait=1; end; -- запуск рескана штырьков
                --нет анимации уничтожения  НЕ СДЕЛАНО.
                printat (gamey(y)+plusy,gamex(x)+plusx,"27");
            end
        end
        if (zzx==5)and(incontrolcentre==0) then --sklepid
          allowmove=0;
            playsoundifvisible (computersnd,x,y);
            incontrolcentre=1;
            sklepID="CC_wyprzedaz";
            if (menu~=5)and (ossys~="Android") then selectedoptionmenu=1; end ; 
            if (ossys~="Android") then menu=15; renderer=0;  end;
            inventory_changed=1;
          
        end
        if (zzx==299)and(incontrolcentre==0) then
          allowmove=0;
            playsoundifvisible (computersnd,x,y);
            incontrolcentre=1;
            sklepID="sklep1";
            if (menu~=5)and (ossys~="Android") then selectedoptionmenu=1; end ; 
            if (ossys~="Android") then menu=15; renderer=0;  end;
            inventory_changed=1;
          
        end

         if (zzx==270) then
          allowmove=0;
            playsoundifvisible (computersnd,x,y);
            incontrolcentre=1;
            sklepID="sklep2";
            if (menu~=98)and (ossys~="Android") then selectedoptionmenu=1; end ; 
            if (ossys~="Android") then menu=98; renderer=0;  end;
            inventory_changed=1;
          
        end

        if (zzx==310) then
            allowmove=0;
            playsoundifvisible (computersnd,x,y);
            incontrolcentre=1;
            sklepID="POMOCR18_"; -- training PC1 
            selectedoptionmenu=17;
            menu=16; renderer=0;  
            prokrutka=0 ;    -- запретить смену пунктов но прокрутку оставить.
            disablechangemenuoptions=17; 
        end

if (zzx==311) then
            allowmove=0;
            playsoundifvisible (computersnd,x,y);
            incontrolcentre=1;
            sklepID="POMOCR18_"; -- training PC1 
            selectedoptionmenu=18;
            menu=16; renderer=0;  
            prokrutka=0 ; -- запретить смену пунктов но прокрутку оставить.
            disablechangemenuoptions=18; 
        end

if (zzx==312) then
            allowmove=0;
            playsoundifvisible (computersnd,x,y);
            incontrolcentre=1;
            sklepID="POMOCR18_"; -- training PC1 
            selectedoptionmenu=19;
            menu=16; renderer=0;  
            prokrutka=0 ;-- запретить смену пунктов но прокрутку оставить.
            disablechangemenuoptions=19; 
        end



        if (incontrolcentre==1) then allowmove=0; end;  -- блокирует перемещение персонажа пока тот затаривается покупками.ы
        if (pause==1) then allowmove=0; end;  -- блокирует перемещение персонажа пока pause
        if ((zzx==23)or(zzx==45)or(zzx==46)) then
            love.audio.play(deadminesnd);
            hp=0;
            allowmove=0;
        end

        if (zzx==21) then
            if (acidprotect>0) then  end;
            if (acidprotect==0)and(tank==0) then      love.audio.play(deadminesnd);
                hp=0;
                allowmove=0;  end;
            if (acidprotect==0)and(tank==1) then           hp=hp-10;      end

        end

        if (zzx==122) then
            --     love.audio.play(deadminesnd);
            tank=0;
            if (NO_SCORE_MINES_MODE==0) then    targetremains=targetremains-1;end
            hp=0;
            --анимация взрыва танка или человечка  - НЕ РЕАЛИЗОВАНО
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
            love.audio.play(deadsnd);
        end
        if (zzx==123) then
            love.audio.play(targsnd);
            hp=hp-1; if (tank<1) then hp=hp-10;end;
            --анимация взрыва человечка  - НЕ РЕАЛИЗОВАНО
            targetremains=targetremains-1;
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end

        if (zzx==197) then
            love.audio.play(krysztalsnd);
            score=score+10;
            targetremains=targetremains-1;
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end

        if (zzx==198) then
            love.audio.play(bdashwalksnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end




        if (zzx==147) or (zzx==37) then
            allowmove=0;
            if (itemcooldown_PL1==0) then 
            playsoundteleport=0;
            checkxB,checkyB=realrandomscanobject (148,-5,randomb);--check player 1 start position
            checkx,checky=realrandomscanobject (147,-5,randomc);--check player 1 start position

            if (checkx==-1) then smsg2="Teleporters not found.";end;
            if (checkx>-1) then x,y=xgametorealpositionbezbyte (2+checky,checkx) ; playsoundteleport=1;   end
            if ((math.random (10))>8.8)and(checkxB>-1) then x,y=xgametorealpositionbezbyte (2+checkyB,checkxB) ;  playsoundteleport=1; end;
            if (playsoundteleport==1) then love.audio.play(teleport2snd); end;
            itemcooldown_PL1=50; 
            end; 
        end

        if (zzx==15) then  --teleport object   -- АНИМАЦИЯ НЕ СДЕЛАНО
            if (tx<1)or (1==1) then
        skanx,skany=scanobject (119,-1) ;
       if (skanx>0) then ty=skanx;tx=skany; end;  
       end
            --  accelmove=2;
            --правильно было бы так - найти на карте все коды 119, переместится случайно в любой из них рядом с
            --которым есть свободная клетка.
            removeteleportmarker=1;
            love.audio.play(telesnd);
            allowmove=0;
            --      plusx=0;  plusy=0;
            --   pri=coord (gamey(y)+plusy,gamex(x)+plusx);
            printat (tx,ty,"15");
            ttx=gamex(x)+plusx;tty=gamey(y)+plusy;
            --на данную секунду обьекты меняются кооректно местами, но сам человечек часто попадает не туда.
            --y=(tx+plusx)*rozmiarznak;x=+(ty+plusy)*rozmiarznak;  -- задаём новые координаты по адресу полученного телепорта,
            x,y=xgametorealpositionbezbyte (tx,ty);
            --if (move=="up") then x=x+2*rozmiarznak;end;  --здесь y это высота
            if (move=="down") then y=y+2*rozmiarznak;end;  --здесь y это высота
            if (move=="left") then x=x-1*rozmiarznak; y=y+1*rozmiarznak; end;  --здесь y это высота
            if (move=="right") then x=x+1*rozmiarznak; y=y+1*rozmiarznak; end;  --здесь y это высота
            -- x- это по горизонтали для чела y для вертикали, но в некоторых переменных оси перепутаны.
            --gamex i gamey делят реальные координаты для получения простых координат совместимых с уровнем.
            --они не подходят для перемещения человечка, там нужно умножение.
            tx=tty; ty=ttx; --  телепорт перемещается на старые координаты.
            printat (tx,ty,"119");
        end;

        if (zzx==4) then  -- xblock object
            accelmove=1;
            love.audio.play(xsnd);
            printat (gamey(y)+plusy,gamex(x)+plusx,"76");
            pri=coord (gamey(y)+plusy,gamex(x)+plusx);
            new_x_block_fix=movePL1;
            --new_x_block_fix=(screens (gamey(y)+plusy),(gamex(x)+plusx));
            --reactmove (new_x_block_fix);
        end;


        --После перехода по кодам 0-4 должна быть проверка НЕМЕДЛЕННАЯ следующего символа! НЕ СДЕЛАНО
        --accelmove допустимо значеине 2 для перепрыгивания обьекта.
        if (zzx==3) then  --3 wniz 1 wprawo 0 wlewo
            love.audio.play(strelkasnd);
            --   plusx=0; --Игнорируется почему то,по неверной
            --if (plusx~=0) then allowmove=0;plusx=0;end;--Тут долж быть смена управление. НЕ СДЕЛАНО.
            if (plusy>-1) then  accelmove=1; end;
            if (plusy==-1) then allowmove=0;
                pri=coord (gamey(y)+plusy,gamex(x)+plusx);
            end;

        end;
        if (zzx==2) then  -- 2 wwerh 1 wprawo 0 wlewo
            love.audio.play(strelkasnd);
            --if (plusx~=0) then allowmove=0;plusx=0;end;--Тут долж быть смена управление. НЕ СДЕЛАНО.
            if (plusy<1) then   accelmove=1; end;
            if (plusy==1) then allowmove=0;
                pri=coord (gamey(y)+plusy,gamex(x)+plusx);
            end

        end;

        if (zzx==1) then  -- 2 wwerh 1 wprawo 0 wlewo
            love.audio.play(strelkasnd);
            --if (plusy~=0) then allowmove=0;plusy=0; end;--Тут долж быть смена управление. НЕ СДЕЛАНО.
            if (plusx>-1) then   accelmove=1; end;
            if (plusx==-1) then allowmove=0;
                pri=coord (gamey(y)+plusy,gamex(x)+plusx);
            end

        end;

        if (zzx==0) then  -- 2 wwerh 1 wprawo 0 wlewo
            love.audio.play(strelkasnd);
            --if (plusy~=0) then allowmove=0;plusy=0; end;--Тут долж быть смена управление. НЕ СДЕЛАНО.
            if (plusx<1) then   accelmove=1; end;
            if (plusx==1) then allowmove=0;
                pri=coord (gamey(y)+plusy,gamex(x)+plusx);
            end

        end;
        if (zzx~=4) then
            new_x_block_fix="";
            hardened_ammo_get="";
        end
    end

    -- выстрел Player 1  Игрок 1 выстрел, анимация полёта пули.
    if (pause==1) then allowmove=0;end;

    if (try_to_fix_tankPC1==1) then
        xpla2q,ypla2q=standardowecoordfix (x,y);
        if (xpla2q~=nil) then x=xpla2q   ; y=ypla2q+rozmiarznak; end
    end;
    if (try_to_fix_tankPC2==1) then
        xpla2q,ypla2q=standardowecoordfix (xpla2,ypla2);
        if (xpla2q~=nil) then xpla2=xpla2q   ; ypla2=ypla2q+rozmiarznak;
            try_to_fix_tankPC2=0;  end;

    end

    
    -- if (cooldownPL1ammo>0) then kulemet_PC1_timer=0; end;
   
    ammoLONGpressedPC1=0;
    if (ammoKEYPL1~="ammo") then kulemet_PC1_timer=0; end;
      if (ammoKEYPL1=="ammo")and(hp>0) then
        kulemet_PC1_timer=kulemet_PC1_timer+1;
        if (kulemet_PC1_timer>1) then  ammoKEYPL1="";  end;
        old_mode_shoot_f=0; if (lastmove==0) then old_mode_shoot_f=200; end ; 
        if (kulemet_PC1_timer>(70+old_mode_shoot_f))then -- sobstwenno sam wystrzel tutaj  --and(lastmovePL1~="")   а это зачем?
            ammoLONGpressedPC1=1;   ammoKEYPL1="ammo";  --  kulemet_PC1_timer=0;
        end
    end
     itemLONGpressedPC1=0;
    if (ammoKEYPL1~="placeitem") then item_PC1_timer=0; end;
      if (ammoKEYPL1=="placeitem")and(hp>0) then
        item_PC1_timer=item_PC1_timer+1;
        --if (item_PC1_timer>1) then  ammoKEYPL1=""; end;   --  Само действие отключено.  
            if (item_PC1_timer>(100))then -- sobstwenno sam wystrzel tutaj  --and(lastmovePL1~="")   а это зачем?
            itemLONGpressedPC1=1;  
            -- ammoKEYPL1="ammo";  --  Само действие отключено. скрипт только для анимации используется. 
        end
    end
    --smsg1="ammoLONGpressedPC1="..ammoLONGpressedPC1.." :: kulemet_PC1_timer.."..kulemet_PC1_timer.." onlyFIREPL1";
   if (lastmove==0)and(slot0==0) then
    if (movePL=="") then ammoKEYPL1=""; end ;
   -- if (movePL~="") then ammoKEYPL1="ammo"; end ;
    ammoLONGpressedPC1=0;kulemet_PC1_timer=0; 
    --smsg1="oldshootmode_on";
  end; 
-- при Старом режиме стрельбы не будет работать долгое удержание стрельбы. Будет обычный выстрел вместо этого.
    cooldownPL1ammo=ubywanie (cooldownPL1ammo);
    itemcooldown_PL1=ubywanie (itemcooldown_PL1);
    cooldownPL1ice=ubywanie (cooldownPL1ice);
    standartdamage=setstandartdamage_P1 (onlyICEPL1,icekeyPL1,firekeyPL1) ;

    weaponPL1="";

    onlyICEPL1=0;onlyFIREPL1=0;
    if (ammoKEYPL1=="ammo") or (ammoKEYPL1=="ice") then weaponPL1="used"; end;
    if (not man_is_moving)and(titlegame~="Perestroika") then  --W3 ammo
        if ((incontrolcentre==1)and(weaponPL1=="used")and(ammoKEYPL1=="ammo")and(hp>0)and(ammo<1)and(editor<1)and(pause<1)) then
            love.audio.play(noammosnd);  -- при усилителе  81 урона самому себе очень часто наносит.
        end
        if ((incontrolcentre==1)and(weaponPL1=="used")and(ammoKEYPL1=="ice")and(hp>0)and(ice<1)and(editor<1)and(pause<1)) then
            love.audio.play(noammosnd);  -- при усилителе  81 урона самому себе очень часто наносит.
        end
        zezwolenie=0;
        if (icekeyPL1=="ice")and (ice>0) then zezwolenie=1; end;
        if (firekeyPL1=="fire")and(ammo>0) then zezwolenie=1;end;
        if (incontrolcentre==1)and(renderer==0) then zezwolenie=0; allowshot=0; end;
        if ((weaponPL1=="used")and(hp>0)and(zezwolenie>0)and(editor<1)and(pause<1)and(cooldownPL1ammo==0)) then
            if (movePL1=="")and(lastmove==1) then               movePL1=lastmovePL1;                end
            disarm_chances=math.ceil (math.random(100));
            combofirePL1=0;
            if (firekeyPL1=="fire")and(icekeyPL1=="ice")then combofirePL1=1; end; -- combo
            if (icekeyPL1=="ice")and (firekeyPL1=="") then onlyICEPL1=1; end ;
            if (icekeyPL1=="")and (firekeyPL1=="fire") then onlyFIREPL1=1; end ;
            start_x=x; start_y=y;
            usedlast_ammo_pc1="ammo";     ammoicon=movePL1;
            allowshot=1;
            steps=1;  -- есть подозрение что рикошет отключен именно череz steps
            love.audio.play(wystrelsnd);
            invisibletimerPL1=0;-- игрок теперь теряет невидимость при выстреле.
            ammosaved=ammo; icesaved=ice;
            ammo=ammo-1;
            powtorz=0;
            comboenable=0; 
            command_ammo="";command_power=0; delayed_cmd="";delayed_snd="";
            cooldownPL1ammo=81-setspeedgame*4;
            -- обслуживается ли  coomand--  delayedexplode -- disarm --  speed --  Здесь автопатронам сообщаются параметры массовых и одиночных эффектов.
            if (slot0==172) then command_ammo="freeze"; command_power=500; end;
            if (slot0==172)and (ammoLONGpressedPC1==1)  then command_ammo="freeze"; command_power=400;delayed_cmd="freeze"; delayed_snd="icehitsnd"; end;
            if (slot0==172)and (onlyICEPL1==1) then command_ammo="noammo"; end;
            if (slot0==172)and (combofirePL1==1) then
                if (paralysatorammo<1)and(ice>300) then ice=ice-300; paralysatorammo=1; end;
                if (paralysatorammo==0) then command_ammo="noammo"; end;
            end;
            if (slot0==176) then cooldownPL1ammo=math.ceil ((40-setspeedgame*3)/1);   end -- для других оружий кулдаун устанавливать также. 
           -- if (slot0==176)and (ammoLONGpressedPC1==1)  then end -- НИКОГДА не устанавливать кулдаун так
            if (slot0==176)and (onlyICEPL1==1)  then command_ammo="noammo";ammoLONGpressedPC1=0;kulemet_PC1_timer=0;  end
            if (slot0==176)and (onlyFIREPL1==1)and (ammoLONGpressedPC1==0)   then command_ammo="noammo"; end-- (kulemet_PC1_timer<1)
            if (slot0==176)and (combofirePL1==1)  then command_ammo="noammo"; end
            if (slot0==174) then command_ammo="stun" ;  end
            if (disarm_chances<5)and(slot0==174) then command_ammo="disarm" ;  end
            if (slot0==174)and (combofirePL1==1) then command_ammo="dispel"; end;
            if (slot0==174)and (onlyICEPL1==1) then command_ammo="noammo"; end;
            if (slot0==173) then command_ammo="slow"; command_power=500;end;
            if (slot0==173)and (onlyICEPL1==1) then command_ammo="noammo"; end;
            if (slot0==173)and (ammoLONGpressedPC1==1)  then cooldownPL1ammo=cooldownPL1ammo+100; ammo=ammo-3; command_ammo="slow"; command_power=400; delayed_cmd=command_ammo; delayed_snd="stunhitsnd"; end;
            if (slot0==173)and (combofirePL1==1) and (ice>50) then
                ice=ice-50; comboenable=1;                     end;
            
            if (slot0==175) then command_ammo="fear"; command_power=500;end;

            if (slot0==175)and (ammoLONGpressedPC1==1)  then cooldownPL1ammo=cooldownPL1ammo+100; ammo=ammo-3; command_ammo="fear"; command_power=350; delayed_cmd=command_ammo; delayed_snd="stunhitsnd";   end;
            if (slot0==175)and (combofirePL1==1)and (ice>100)  then cooldownPL1ammo=cooldownPL1ammo+300; ice=ice-100;  tankwithsignal=enemynum; command_power=150;  signaltraptimer=signaltraptimer+command_power;delayed_cmd="signal"; delayed_snd="signalsnd"; end;
            if (slot0==175)and (onlyICEPL1==1) then cooldownPL1ammo=cooldownPL1ammo+300; ice=ice-15; command_ammo="kierowca";  command_power=1000; delayed_cmd=command_ammo; delayed_snd="signalsnd"; end;
            if (slot0==177) then  command_ammo="nowywrog"; command_power=500; end
            if (slot0==178) then  command_ammo="corrosion"; command_power=500; 
                if (slot2==257) then command_power=1000;end; 
              end;
            if (slot0==178)and (onlyICEPL1==1) then command_ammo="noammo";  end;
            if (slot0==178)and (ammoLONGpressedPC1==1) then cooldownPL1ammo=cooldownPL1ammo+100; command_ammo="corrosion";command_power=300; delayed_cmd=command_ammo; delayed_snd="psyhitsnd";
                if (disarm_chances<11) then command_ammo="speed"; command_power=100;  end      end;
            if (slot0==178)and (combofirePL1==1)and(ammo>20) then cooldownPL1ammo=cooldownPL1ammo+250;  command_ammo="explodeshards"; command_power=250;
                if (kulemet_PC1>0) then powtorz=6;  kulemet_PC1=kulemet_PC1-1;  end;
                if (kulemet_PC1==0) then powtorz=4;  ammo=ammo-20;   end;
            end;

            if (slot0==180) then command_ammo="heal";  command_power=100;    end;
            if (slot0==180)and (onlyICEPL1==1) then command_ammo="protect"; command_power=100;end;
            if (slot0==180)and (combofirePL1==1) then protect=protect+5; command_ammo="noammo"; command_power=0;end;
            --smsg1="wzmacniacz przy wystrzele:"..wzmacniacz; -- tut on nil!   analog - damager. 
            if (slot0==214)and(bombs>0) then cooldownPL1ammo=cooldownPL1ammo+190;command_ammo="bombplace";bombs=bombs-1;  command_power=500;    end;
            if (slot0==179)and(bombs>0) then cooldownPL1ammo=cooldownPL1ammo+190;command_ammo="mineplace";bombs=bombs-1;  command_power=500;    end;
            if (ammo<0) then ammo=0; end;
            if (ice<0) then ice=0; end;

            if (wzmacniacz==1)or(speedtimer>0) then cooldownPL1ammo=cooldownPL1ammo/2;end;      -- ammo_speed - is player PL1 ammo speed
            if (decreasecooldownPL1>0) then cooldownPL1ammo=cooldownPL1ammo-(cooldownPL1ammo/4);end;      -- ammo_speed - is player PL1 ammo speed
            if (titlegame=="M2K") then cooldownPL1ammo=cooldownPL1ammo-(cooldownPL1ammo/4);end;      -- ammo_speed - is player PL1 ammo speed
            if (speedtimer>0) then damager=1 else damager=0 end;  --хотя почему то и так шансы на вред увеличены для автопатрон многократно.
            angle=0;
            if (movePL1=="left") then angle=180; end    if (movePL1=="right") then angle=0; end
            if (movePL1=="up") then angle=270; end;    if (movePL1=="down") then angle=90; end;
            paramX=0;
            -- Обработка основного пистолета и всех его режимов стрельбы. Образец.
            SEND_DAMAGE=standartdamage;
            if (slot0==181)or (slot0==171)or (slot0==170)or(slot0==0) or (slot0=="") then
                if (ammoLONGpressedPC1==1) then powtorz=2;  cooldownPL1ammo=cooldownPL1ammo+100; ammo=ammo-2; end
                if (icekeyPL1=="ice")and(ice>0) then paramX="PC1ice";command_ammo="freeze"; command_power=200;ice=ice-1; ammo=ammo+1; cooldownPL1ammo=cooldownPL1ammo+20;
                    SEND_DAMAGE=0;  -- Лёд не должен вредить.
                end;
            end;
                              
                smsg3="cooldown="..cooldownPL1ammo;
            if (slot1==239) then  powtorz=powtorz+1 ; end; -- на обычном оружии эффект двойного патрона недоступен.
            if (command_ammo=="noammo") then powtorz=-1; ammo=ammosaved; ice=icesaved; end;
            if (delayed_cmd~="") then delayed_power=command_power; -- ДЛЯ mass_explode  ME_AMMO   i AOE
                delayed_src="PC1";
                delayed_id=0;
            end

            if (allowshot==1)and(zezwolenie==1) then 
            for a=0,powtorz,1 do totalammo=totalammo+1;
                final_ammo_speed=ammo_speed-(a*75);
                if (slot0==173) then final_ammo_speed=final_ammo_speed-100; end;
                if final_ammo_speed<0 then final_ammo_speed=10; end;
                ammoX[totalammo] = class_ammo:new(movePL1,start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,angle,renderammoshot_ammos,rikoszets,0,final_ammo_speed,"PC1",command_ammo,damager,SEND_DAMAGE,0,paramX,command_power,delayed_cmd,delayed_snd);

            end
            end 
        end
    end

    if (ammo<0) then ammo=0; end;

    if (slot0==214)and (allowshot==1)and(zezwolenie==1)  then
      command_ammo="invisible";  command_power=1; 
      final_ammo_speed=final_ammo_speed-100;SEND_DAMAGE=0; damager=0;  totalammo=totalammo+1;
      ammoX[totalammo] = class_ammo:new(movePL1,start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,angle,renderammoshot_ammos,rikoszets,0,final_ammo_speed,"PC1",command_ammo,damager,SEND_DAMAGE,0,paramX,command_power,delayed_cmd,delayed_snd);
    end

    if (paralysatorammo>0)and(slot0==172)and(combofirePL1==1) then
        paralysatorammo=paralysatorammo-1;
        love.audio.play(iceeffectsnd);
        freezetimerPL3=freezetimerPL3+1500;
        if (totalammo>0) then
            for ammonum=1,totalammo,1 do
                typta,start_x,start_y,x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_moving,rotate_tt,renderammoshot_ammos,rikoszets,animset,spd_a,sourceammo,command_ammo,wzmacniacz,directdamage_autoammo,src_tankid,msg_to_func,command_power,delayed_cmd,delayed_snd=ammoX[ammonum]:get();
                spd_a=math.floor (default_ammo_speed/20);
                ammoX[ammonum]:set(typta, start_x,start_y,x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_moving,rotate_tt,renderammoshot_ammos,rikoszets,animset,spd_a,sourceammo,command_ammo,wzmacniacz,directdamage_autoammo,src_tankid,msg_to_func,command_power,delayed_cmd,delayed_snd);
            end ;
        end
            if (totalenemies>0) then
                ammoKEYPL1="";
                for enemynum=1,totalenemies,1 do
                    typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8=enemies[enemynum]:get();
                    freezetanks=freezetanks+2000+command_power*10;
                    enemies[enemynum]:set(typt, xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8); -- NIL  kak tak?
                end;
                ammoKEYPL1=""; end;
        
    end

     if (slot0==173)and(combofirePL1==1)and (comboenable==1) then
        love.audio.play(stunhitsnd);
            if (totalenemies>0) then
                ammoKEYPL1="";
                for enemynum=1,totalenemies,1 do
                    typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8=enemies[enemynum]:get();
                    if (protecttanks==0) then slowPL1tanks=slowPL1tanks+100+command_power*8; end; 
                    enemies[enemynum]:set(typt, xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8); -- NIL  kak tak?
                end;
                 end;
        command_ammo="noammo";
        comboenable=0;
        ammoKEYPL1="";
        combofirePL1=0;
    end




    -- сброс команд чтобы танки не копировали команды игрока.
    command_player_saved=command_ammo;
    command_ammo="";

    if ((1==0)and(editor==0)and(enemytank>0)) then   -- movePL2="";
        chances=(math.random(55+10*tank+10*protect+3*hardlevel+10*poziom));
        if (chances>50)and(hp>1)and(xpla2>200) then ammoKEYPL2="ammo"; end
        if (chances<50) then ammoKEYPL2="";end
        if (chances==50) then hpdetect=1; hpdetect2=1; end;
        if ((chances<10) and (chances>0)) then movePL2="left";end
        if ((chances<20) and (chances>10)) then movePL2="right";end
        if ((chances<30) and (chances>20)) then movePL2="up";end
        if ((chances<40) and (chances>30)) then movePL2="down";end
        if ((chances<50) and (chances>40)) then movePL2="up";end
        if (timerz<10) then hpdetect=hp; end;
        if (timerz<155)and(timerz>80) then hpdetect2=hp; end;
        if (1>0)and(hpdetect==hpdetect2) then

            if x==xpla2 and y<ypla2 then movePL2="up";end
            if x==xpla2 and y>ypla2 then movePL2="down";end
            if x>xpla2 and y==ypla2 then movePL2="right";end
            if x<xpla2 and y==ypla2 then movePL2="left";end
        end
        if (timerz==200) then hpdetect=1; hpdetect2=1; end;
    end
    -- выстрел Player2  -- если противник обстреливает игрока. -- если координаты 1 игрока совпадают с координатой пули 2 - отнимаются HP у Р1
    -- анимация движения

    --в кого попадают выстрелы. при сов
    bombtimercompare=bombtimercompare-1;

    -- BOMB выстрел Player1  , использует переменные от ammo ssss
    if ((not man_is_moving2)and(not man_is_moving)) then -- обрабатываем кнопки только, если чувак и пуля не двигается уже
        if (((ammoKEYPL1=="bomb")and(hp>0)and(bombs>0)and(editor<1)and(pause<1)and(bombtimercompare<1))) then
            -- персонаж перемещается при выстреле льда,поправить как нибудь.
            steps=0; --zzx=0;
            y2=y; x2=x;y2now=y2; x2now=x2;
            if movePL1=="left" then
                bombs=bombs-1; bombtimercompare=70;
                x2=x2-rozmiarznak;
               zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1)
                if (zzz) then
                    zzx=(zzz); 
                    if (zzx==56) then printat (gamey (y2),gamex (x2),"124"); end;
                end
            end;
            if movePL1=="right" then
                bombs=bombs-1; bombtimercompare=70;
                x2=x2+rozmiarznak;
               zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1)
                if (zzz) then
                    zzx=(zzz); 
                    if (zzx==56) then printat (gamey (y2),gamex (x2),"124"); end;
                end
            end;
            if movePL1=="down" then
                bombs=bombs-1; bombtimercompare=70;
                y2=y2+rozmiarznak;
               zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1)
                if (zzz) then
                    zzx=(zzz); 
                    if (zzx==56) then printat (gamey (y2),gamex (x2),"124"); end;
                end
            end;
            if movePL1=="up" then
                bombs=bombs-1; bombtimercompare=70;
                y2=y2-rozmiarznak;
               zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1)
                if (zzz) then
                    zzx=(zzz); 
                    if (zzx==56) then printat (gamey (y2),gamex (x2),"124"); end;
                end
            end;
            --=====================================
        end

    end;

    -- END BOMB

    --if (ammoKEYPL1=="sortitems")and (countinventory>0) then
        --sortinventoryitem ();  -- wciąż wyletaje bez przyczyny  usunęte
    --end
    maximuminventorysize=5;
    maxiumumreservedaids=4;
    if (allowedaidspersonal>0) and (allowedaidspersonal<11) then maxiumumreservedaids=maxiumumreservedaids+maxiumumreservedaids;end;

    if (titlegame=="M2K") then maxiumumreservedaids=maxiumumreservedaids+10; end;
    if (inventorybelt==1) then maximuminventorysize=maximuminventorysize+3; 
        maxiumumreservedaids=maxiumumreservedaids+3; end
    if (inventorybelt==1)and (titlegame=="Kolonista") then maximuminventorysize=maximuminventorysize+2; end
    if (slot1==238) then maximuminventorysize=maximuminventorysize+1; end; 
    if (tank==1) then maximuminventorysize=maximuminventorysize+2; end; 

        if (etatimer<15) and (latarnia==0)and (etatimer>2)and (titlegame~="Reskue") then etatimer=etatimer+10;
          smsg1=smsg_string ("O_LATARNIA_OFF"); 
          love.audio.play (wallsnd); 
        end
        
  



    --электричество теперь может включится само по достижению достаточного запаса солнечной энергии в 50. И отключится при падении ( но только если было включено с помощью солнечных панелей).
    if (solarenergy>50)and(solarpower>200)and(titlegame=="Kolonista") then powerstate=1; powersetupbysolarenergy=1;   p1=1; p3=1;
        if (solarpower>200)and(solarpower<250)and(titlegame=="Kolonista") then allowpowerrescan=1; end ;
    end; -- зачем то для включения повер требуется p1>0 p3>0   для чего?
    if (solarenergy<40)and(powersetupbysolarenergy==1) then powerstate=0;powersetupbysolarenergy=0; end;


    -- искуственный "интеллект" танков
    function checkusefulitems_near (xt,yt,typeobject_f)
        recommendedmove="";    --xpla3c,ypla3c=xgametorealpositionbezbyte (yt,xt);
        xpla3c=math.ceil (gamex(xt)) ; ypla3c=math.ceil (gamey(yt));

        o_kod=screens (ypla3c,xpla3c+1);  if ((listcheck (o_kod,typeobject_f))==1) then recommendedmove="right"; reto_kod=o_kod; end
        o_kod=screens (ypla3c,xpla3c-1);  if ((listcheck (o_kod,typeobject_f))==1) then recommendedmove="left"; reto_kod=o_kod;end
        o_kod=screens (ypla3c-1,xpla3c);  if ((listcheck (o_kod,typeobject_f))==1) then recommendedmove="up"; reto_kod=o_kod;end
        o_kod=screens (ypla3c+1,xpla3c);  if ((listcheck (o_kod,typeobject_f))==1) then recommendedmove="down"; reto_kod=o_kod;end
        o_kod=screens (ypla3c,xpla3c+2);  if ((listcheck (o_kod,typeobject_f))==1) then recommendedmove="right"; reto_kod=o_kod;end
        o_kod=screens (ypla3c,xpla3c-2);  if ((listcheck (o_kod,typeobject_f))==1) then recommendedmove="left"; reto_kod=o_kod;end
        o_kod=screens (ypla3c-2,xpla3c);  if ((listcheck (o_kod,typeobject_f))==1) then recommendedmove="up"; reto_kod=o_kod;end
        o_kod=screens (ypla3c+2,xpla3c);  if ((listcheck (o_kod,typeobject_f))==1) then recommendedmove="down"; reto_kod=o_kod;end
        --  smsg2=" xpla3c,ypla3c= "..xpla3c..","..ypla3c.."  o_kod"..o_kod.."; list="..listcheck (o_kod).." recom.."..recommendedmove ;
        return recommendedmove,reto_kod;
    end

    function checkfreecell (xt,yt,typeobject_f,previousmove)
        recommendedmove="";reto_kod=0;

        --xpla3c,ypla3c=xgametorealpositionbezbyte (yt,xt);
        xpla3c=math.ceil (gamex(xt)) ; ypla3c=math.ceil (gamey(yt));
        c_right=0;    c_left=0;    c_up=0;    c_down=0;
        o_kod=screens (ypla3c,xpla3c+1);
        tdata_ID=coord (ypla3c,xpla3c+1);    visited=tdata[tdata_ID]; collision=collisiondata[tdata_ID];
        if (previousmove=="right") then c_right=c_right+1;end
        if (visited==0) then c_right=c_right+1; end;
        if (collision==0) then c_right=c_right+1 ; end;
        if (visited==2)and(invisibletimerPL1<1) then c_right=c_right+2; end;
        if ((listcheckmoveguard (o_kod,typeobject_f))==1) then c_right=c_right+1;  else c_right=c_right-1; end    --smsg1="visi(right):"..tdata_ID.."visited="..visited;

        o_kod=screens (ypla3c,xpla3c-1);
        tdata_ID=coord (ypla3c,xpla3c-1);    visited=tdata[tdata_ID];collision=collisiondata[tdata_ID];
        if (previousmove=="left") then c_left=c_left+1; end
        if (visited==0) then c_left=c_left+1; end;
        if (collision==0) then c_left=c_left+1 ; end;
        if (visited==2)and(invisibletimerPL1<1)then c_left=c_left+2; end;
        if ((listcheckmoveguard (o_kod,typeobject_f))==1) then c_left=c_left+1;else c_left=c_left-1; end

        o_kod=screens (ypla3c-1,xpla3c);
        tdata_ID=coord (ypla3c-1,xpla3c);    visited=tdata[tdata_ID];collision=collisiondata[tdata_ID];
        if (previousmove=="up") then c_up=c_up+1;end
        if (visited==0) then c_up=c_up+1; end;
        if (collision==0) then c_up=c_up+1 ; end;
        if (visited==2)and(invisibletimerPL1<1) then c_up=c_up+2; end;
        if ((listcheckmoveguard (o_kod,typeobject_f))==1) then c_up=c_up+1;else  c_up=c_up-1 ; end

        o_kod=screens (ypla3c+1,xpla3c);
        tdata_ID=coord (ypla3c+1,xpla3c);    visited=tdata[tdata_ID];collision=collisiondata[tdata_ID];
        if (previousmove=="down") then c_down=c_down+1;end
        if (visited==0) then c_down=c_down+1; end;
        if (collision==0) then c_down=c_down+1 ; end;
        if (visited==2)and(invisibletimerPL1<1)then c_down=c_down+2; end;
        if ((listcheckmoveguard (o_kod,typeobject_f))==1) then c_down=c_down+1;else c_down=c_down-1; end

        if (c_right>c_left)and(c_right>c_up)and(c_right>c_down) then recommendedmove="right"; end;
        if (c_left>c_right)and(c_left>c_up)and(c_left>c_down) then recommendedmove="left"; end;
        if (c_up>c_left)and(c_up>c_right)and(c_up>c_down) then recommendedmove="up"; end;
        if (c_down>c_left)and(c_down>c_right)and(c_down>c_up) then recommendedmove="down"; end;


        --smsg2=" xpla3c,ypla3c= "..xpla3c..","..ypla3c.."  o_kod"..o_kod.."; list="..listcheck (o_kod).." recom.."..recommendedmove ;
        return recommendedmove,reto_kod;
    end


    function listcheckmoveguard (o_kod,typeobject_f)
        whoisinterestitem=ext_objs_string (o_kod,18);
        if (o_kod==56) then return 1 ; end
        if (o_kod==27) then return 1 ; end
        return 0
    end

    function listcheck (o_kod,typeobject_f)
        -- smsg1="listcheck (o_kod="..o_kod.." type_cc="..typeobject_f..")" ;
        whoisinterestitem=ext_objs_string (o_kod,18);
        if (whoisinterestitem=="creatures") then return 1; end;  -- интересно всем
        if (whoisinterestitem=="tanks")then if (typeobject_f=="tank")or(typeobject_f=="gwozd") then return 1; end;  end;
        if (whoisinterestitem=="gwozd")then if (typeobject_f=="gwozd") then return 1; end;  end;
        if (typeobject_f=="scientist")and (whoisinterestitem=="scientist") then
            return 1;
        end

        return 0;
    end

    function AI (xpla3_f,ypla3_f,moveE_f,ammoKEYE_f,speedtanks,hpt,feartanks,typeobject_f,aitype_f,pa_icon_f,tanks_mov,enemynum_f,kierowcaczolgow)    -- movePL2="";   AI TANK
        --aitype_f=4;  -- BUILD 85XX-9300 DISABLE MASS_EXPLODE APPLY PROBLEM  TESTING
        chances=(math.random(75+20*poziom));  -- +3*hardlevel
        if (signaltraptimer>0) then
            x_ai=signal_x;  y_ai=signal_y;        -- if (tankwithsignal==nil) then tt=0; else tt=tankwithsignal; end; --smsg1="tt="..tt.." sigtimer.."..signaltraptimer.." signal_x="..signal_x.." x="..x;
            selectedtankid_fortanks=tankwithsignal;
        end
        if (signaltraptimer<1)and((typeobject_f~="wtank")) then
            x_ai=x;  y_ai=y;
        end
        if (xpla3_f==nil) then xpla3_f=0; end --затычка от nil  yflt. надеюсь и от копирования поведения других танков поможет.
        if (ypla3_f==nil) then ypla3_f=0; end
        --для ловушки нужно перехватить x i y
        if (aitype_f==0) then
            if (typeobject_f=="gwozd")and(timerx>15) then ammoKEYE_f="ammo";end;
            if (chances>60)and(hp>0)and(xpla3_f>200) then ammoKEYE_f="ammo";moveE_f=""; end
            if (typeobject_f=="tank")and(hp<1) then ammoKEYE_f="";end;
            if (typeobject_f=="scientist")or(typeobject_f=="miner")or(typeobject_f=="migalka")or(typeobject_f=="droid") then ammoKEYE_f="";end;
            if (chances>29)and(chances<50) then hpdetect=1; hpdetect2=1; end;
            if ((chances<5) and (chances>0)) then moveE_f="left";end
            if ((chances<10) and (chances>5)) then moveE_f="right";end
            if ((chances<15) and (chances>10)) then moveE_f="up";end
            if ((chances<20) and (chances>15)) then moveE_f="down";end
            --if (movePL2~="")and(coop_join_disable==0)and(typeobject_f=="wtank") then moveE_f=movePL2;  end ; -- включение режима копирования всех действий игрока 2
            if (speedtanks<1) then  if ((chances<45) and (chances>29)) then moveE_f="";end ;end ;
            if (timerz<10) then hpdetect=hp; end;
            if (timerz<125)and(timerz>115) then hpdetect2=hpdetect; end;
            if (speedtanks>0)and(timerx>55) then hpdetect2=hpdetect; end;
            if (invisibletimerPL1>0)and(signaltraptimer<1) then hpdetect2=-1;end;
            if (kulemet>0)and(hp>0)and(hp==hpdetect2)and(cel_hp>-1)then-- W3 FUCK BUG
                smsg1="On wystrzelil";
                moveE_f=""; kulemet=kulemet-1;
                if(cel_hp==0) then ammoword="right"; end; --right movePL1
                if(cel_hp==90) then ammoword="down"; end; --down
                if(cel_hp==180) then ammoword="left"; end; --left
                if(cel_hp==270) then ammoword="up";  end; --up
                if (kulemet<2) then cel_hp=-1;  end;
                start_x=math.ceil (xpla3_f)-plusx*rozmiarznak;          start_y=math.ceil (ypla3_f)-plusy*rozmiarznak;
                src_tankid=enemynum_f;
                rikoszets=0;
                if (speedtanks>0) then wzmacniacz=1; else wzmacniacz=0; end;
                for a=0,9,1 do totalammo=totalammo+1;
                    ammoX[totalammo]= class_ammo:new(ammoword,start_x,start_y,start_x,start_y,start_x,start_y,true,cel_hp,1,rikoszets,0,default_ammo_speed-a*20,"tank","",wzmacniacz,enemytankstandartdamage,src_tankid);
                end
            end
            if (typeobject_f=="pajak") and (pajaktimerPL1>0) then hpdetect2=-1; end; 
            if (typeobject_f=="migalka") then hpdetect2=-1; end; 
            if (hp>0)and(hpdetect==hpdetect2) then   --выключение этого условия делает танки неагрессивными и нестреляющими.
                if (x_ai==nil) then x_ai=0; end;   --затычка от NIL ибо задолбал
                if (y_ai==nil) then y_ai=0; end;   --затычка от NIL ибо задолбал
                if (xpla3_f==nil) then xpla3_f=0; end  --затычка от NIL
                if (ypla3_f==nil) then ypla3_f=0; end  --затычка от NIL
                if x_ai==xpla3_f and y_ai<ypla3_f then moveE_f="up";end
                if x_ai==xpla3_f and y_ai>ypla3_f then moveE_f="down";end
                   if x_ai>xpla3_f and y_ai==ypla3_f then moveE_f="right";end
                if x_ai<xpla3_f and y_ai==ypla3_f then moveE_f="left";end


                if (feartanks~=nil)and(feartanks>0)or(typt=="scientist")and(ammoKEYPL1~="placeitem") then
                    if x==xpla3_f and y<ypla3_f then moveE_f="down";end
                    if x==xpla3_f and y>ypla3_f then moveE_f="up";end
                    if x>xpla3_f and y==ypla3_f then moveE_f="left";end
                    if x<xpla3_f and y==ypla3_f then moveE_f="right";end
                end
            end
        end --endi aitype 0

        if ((typeobject_f=="migalka")) then
            tdata_ID=coord (gamey (ypla3_f),gamex (xpla3_f));
            tdata[tdata_ID]=1; --танки запоминают все посещенные точки.

            --  collisiondata[tdata_ID]=1; --танки запоминают все посещенные точки.
        end
        if (kierowcaczolgow>0) then
            ammoKEYE_f=ammoKEYPL1;moveE_f=movePL1;
        end

        if (aitype_f==1)or(aitype_f==2) then
            previousmove=moveE_f;
            moveE_f="";ammoKEYE_f="";
            if (aitype_f==1) then
                recommendedmove,reto_kod=checkfreecell (xpla3_f,ypla3_f,typeobject_f,previousmove); --  if (tanks_mov==false) then  end;
                moveE_f=recommendedmove;
            end
            if (recommendedmove=="") then changemovetank=1;             else changemovetank=0; end;
            if ((changemovetank==1) and (previousmove=="up")) then moveE_f="left"; changemovetank=0;end
            if ((changemovetank==1) and (previousmove=="left")) then moveE_f="down";changemovetank=0;end
            if ((changemovetank==1) and (previousmove=="down")) then moveE_f="right";changemovetank=0;end
            if ((changemovetank==1) and (previousmove=="right")) then moveE_f="up";changemovetank=0;end
        end --endi aitype 1
--        if (ammoKEYPL2~="")and(coop_join_disable==0)and(typeobject_f=="wtank") then ammoKEYE_f=ammoKEYPL2;  end ; -- включение режима копирования всех действий игрока 2

        if (ammoKEYE_f=="ammo")and(moveE_f=="") then ammoKEYE_f=""; end
        --smsg1=recommendedmove..", "..reto_kod.."=checkusefulitems_near (xpla3_f,ypla3_f,"..typeobject_f.."); ";  BUG FUCK баг с магнитом и именем существа НЕ ИСПРАВЛЕН!!
        if (aitype_f==0) then
            recommendedmove,reto_kod=checkusefulitems_near (xpla3_f,ypla3_f,typeobject_f);
            if (recommendedmove~="")and(chances>12)and(reto_kod~="53") then moveE_f=recommendedmove;         end;
            if (reto_kod=="53")and(recommendedmove~="")and(chances>2)and(solarpower>1) then solarpower=solarpower-11;  moveE_f=recommendedmove;         end;
            if (pa_icon_f~="")and(pa_icon_f~=0) then moveE_f=pa_icon_f; end; --(chances>30)
            pa_icon_f="";
        end

        return xpla3_f,ypla3_f,moveE_f,ammoKEYE_f;
    end


    timerx=timerx+1;  livedtanks=0; scientists=0;miners=0;migalok=0;wszystkopostaciej=0;mimics=0; 
    -- обработка перемещения танков
    if (1==1) then  -- (not man_is_moving2)and(not man_is_moving) все падение FPS происходит тут
        randomget=50+math.ceil (math.random(50));
        if (((editor<1)and(pause<1)and (ObjectSIZEchangeallow==0))) then  --(ammoKEYPL1=="placeenemy")
            if (totalenemies>0) then
                for enemynum=1,totalenemies,1 do
                    typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,ta,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value)
                    -- больше негде в принципе сохранить параметры текущего перемещения кроме как в массиве. а где же ещё то . man_xpla2
                    allowshot_tanks=0;
                    cooldowntanks= ubywanie (cooldowntanks);
                    jedzenietimer= ubywanie (jedzenietimer); 
                    if (enemynum==gracz2idpostaci)and (hpt<1) then gracz2idpostaci=0; end
                    if (enemynum==gracz3idpostaci)and (hpt<1) then gracz3idpostaci=0; end
                    if (signaltraptimer>0)and(enemynum==tankwithsignal)and(hpt>0) then
                        signal_x=xt; signal_y=yt; end
                    if (enemynum==tankwithsignal)and(hpt<1)then tankwithsignal=nil;signaltraptimer=0;  end;
                    if (hpt>0) then wszystkopostaciej=wszystkopostaciej+1 ;   end;
                    if (typt=="tank")or(typt=="gwozd")or(typt=="wtank")or(typt=="migalka")or(typt=="miner")or(typt=="pajak")or(typt=="mimic")or(typt=="enemydroid")then if (hpt>0) then livedtanks=livedtanks+1    end;  end;
                    if (typt=="scientist") and (hpt>0) then scientists=scientists+1;   hxmap=xt; hymap=yt;  end;
                    if (scientists==0) then hxmap=-1; hymap=0;end; 
                    if (typt=="miner")and (hpt>0) then miners=miners+1;       end;
                    if (typt=="mimic")and (hpt>0) then mimics=mimics+1;       end;
                    if (typt=="pajak")and (hpt>0) then pajaks=pajaks+1;       end;
                    if (typt=="migalka")and (hpt>0) then migalok=migalok+1;   migxmap=xt; migymap=yt;      end;
                    if (migalok==0) then migxmap=-1; migymap=0;end; 
                    if (timerx>100) then timerx=0;end;
                    if (feartanks==nil) then feartanks=0; end
                    man_speedpla3= default_man_speed;
                    if (speedtanks>0) then speedtanks=speedtanks-1;man_speedpla3 =default_man_speed*2; end;
                    if (slowPL1tanks>0) then slowPL1tanks=slowPL1tanks-1;man_speedpla3 = math.ceil (default_man_speed/3); end;
                    freezetanks=ubywanie (freezetanks) ;
                    invisibletanks=ubywanie (invisibletanks);
                    painreflecttanks=ubywanie (painreflecttanks);
                    kierowcaczolgow=ubywanie (kierowcaczolgow);
                    damagetimertanks=ubywanie (damagetimertanks);
                    if (damagetimertanks>0) then hpt=hpt-1;
                        if (typt=="wtank")and(protecttanks==0)then hpt=hpt-2; end
                    end;

                    protecttanks=ubywanie (protecttanks);
                    feartanks=ubywanie (feartanks);
                    if (typt=="wtank")and(feartanks>0) then feartanks=1; smsg1="White tanks not fear anything."; end;
                    tanks_speed_am = default_ammo_speed;
                    if (speedtanks>0) then   tanks_speed_am = default_ammo_speed*2; end;
                    if (slowPL1tanks>0) then   tanks_speed_am = math.ceil (default_ammo_speed/2); end;
            
                  if ((ammoKEYPL2=="zamiast")and(editor==0))and (timerz>30) then forcereselecttank=1;timerz=0; 
                      if (RolePL2=="") then  smsg1="PL2 Select creature first . Use L3/kp7 or R3/kp9 to select. "; end; 
                    end;
                    zmniejszij_wyzowy=(math.random(100)); 
                    --smsg1="xt="..xt.."..x="..x.." yt="..yt.." y="..y;
                  --  aa,rasst1=isnear3 (xt,x);aa,rasst2=isnear3 (yt,y);
                  --   if (rasst1~=false)and (rasst2~=false) then rasst=rasst1+rasst2; else rasst=8; end; 
                    if (typt=="mimic")or (typt=="migalka") then 
                       if (xt>0)and((isnear3 (xt,x))and(isnear3 (yt,y))and(hpt>0)and (jedzenietimer>20)and (fasttimer==12))and (editor==0)and (pause==0) then 
                        --smsg1="r1="..rasst1.." r2="..rasst2; 
                        playsoundifvisible (mimicnearsnd,xt,yt);
                       end

                       if (xt>0)and((isnearED (xt,x,1))and(isnearED (yt,y,1))and(hpt>0)and (jedzenietimer>20)) then 
                        jedzenietimer=20; 
                        if (otladka==1) then smsg1="mimic "..enemynum.." start move!!!";  end; 
                       end
                     end
                    if (jedzenietimer>0)and(typt=="mimic")  then zmniejszij_wyzowy=0; aitype=0; end

                    --smsg1="a2="..ammoKEYPL2.." rol="..RolePL2.." gracz2idpostaci=.."..gracz2idpostaci; 
                              if (enemynum==gracz2idpostaci)and(gracz2idpostaci~=0) then
                    if (typt=="scientist")and (ammoKEYPL2=="ammo") then ammoKEYPL2=""; end
                     moveE=movePL2; ammoKEYE=ammoKEYPL2;

                     end; 
                    if (enemynum==gracz3idpostaci)and(gracz2idpostaci~=0) then
                    if (typt=="scientist")and (ammoKEYPL3=="ammo") then ammoKEYPL3=""; end
                     moveE=movePL3; ammoKEYE=ammoKEYPL3; 
                      end; 
                    if (zmniejszij_wyzowy>50)and (enemynum~=gracz2idpostaci)and (enemynum~=gracz3idpostaci) then
                    xt,yt,moveE,ammoKEYE=AI (xt,yt,moveE,ammoKEYE,speedtanks,hpt,feartanks,typt,aitype,pa_icon,tanks_mov,enemynum,kierowcaczolgow) ;  --- ,rotate[enemynum]
                  end
                  if (zmniejszij_wyzowy<51) and  (enemynum~=gracz2idpostaci)and (enemynum~=gracz3idpostaci) then
                     moveE=""; ammoKEYE="";
                   end
                    
                    realmovetanknow=moveE;
                    xt,yt,hpt,rotate,man_xpla3,man_ypla3,freezetanks,speedtanks,tanks_mov,feartanks,protecttanks=tankmove (xt,yt,man_xpla3,man_ypla3,tanks_mov,man_speedpla3,moveE,ammoKEYE,hpt,freezetanks,speedtanks,protecttanks,feartanks,typt,enemynum,realmovetanknow); -- if love.keyboard.isDown("e")and((ammoKEYE~="ammo")) then end;
                    if (moveE)and(ammoKEYE) then        --if (enemynum==1) then smsg1="e1:rotate_t"..rotate_t..",ta="..ta.." rotate="..rotate..",ammoKEYE"..ammoKEYE..",HP="..hpt; end;
                    end      --  jedzenietimer - BUILD 8643 DISABLED BY W3   MUST DISABLED! if (renderammoshot_ammos==1) then end;
                    ta=0;tanks_am=true;--ta=1 запрещает любые выстрелы танкам!
                    if (tanks_mov==true) then tmov=1; end
                    if (tanks_mov==false) then
                        if (yt==nil) then yt=0; end -- там НИКОГДА не должно быть NIL !   ни при каких случаях!!!
                        if (xt==nil) then xt=0; end
                        gluckcheckY=gamey (yt); gluckcheckYYY=math.ceil(gluckcheckY);
                        gluckcheckX=gamex (xt); gluckcheckXXX=math.ceil(gluckcheckX);
                        if (gluckcheckX~=gluckcheckXXX)or(gluckcheckY~=gluckcheckYYY) then
                            xt,yt= xgametorealpositionbezbyte (gluckcheckYYY,gluckcheckXXX);
                            if (otladka==1) then smsg1="Gluck fix: OLD=gluckcheckX"..gluckcheckX.." ("..gluckcheckXXX..") gluckcheckY="..gluckcheckY.."new "..xt..",y="..yt..""; end;
                            man_xpla3=xt; man_ypla3s=yt;
                            feartanks=10; -- для решения проблемы с танками с сбивающимися координатами (танки могли перемещатся сквозь стены)_4то_ни_делай_до_конца_не_решено.
                        end;
                    end
                    if (tanks_mov==false ) then tmov=0; end -- and(tanks_mov)
                    
                    if (typt=="scientist")or(typt=="miner")or(typt=="migalka")or(typt=="droid") then ammoKEYE_f="";end; -- откуда то приходит все равно сигнал выстрела затыкаем его повторно. 
                    if (ammoKEYE=="ammo") and (not tanks_mov)and(freezetanks<1)and(cooldowntanks<2) then -- FUCKFUCKFUCK  and (not tanks_am)  and (not tanks_mov)   (ammoKEYE=="ammo") -- and (not tanks_mov)
                        -- танки не должны ни в коем случае стрелять если они находятся не ровно на своем знакоместе. т.е. tanks_mov   должен быть выключен !! а он не выключается нигде и никогда похоже.
                        -- отключение tankammo не снижает падения FPS .
                        allowshot_tankammo=1; 
                        if (typt=="pajak") and (pajaktimerPL1>0) then allowshot_tankammo=0 ; end; 
                        if (hpt>0)and (allowshot_tankammo==1) then 
                          ta,cooldowntanks,kulemet=tankammo (xt,yt,tanks_mov,man_speedpla3,moveE,ammoKEYE,hpt,freezetanks,speedtanks,ta,tanks_speed_am,rikoszet,typt,enemynum,kulemet);
                        end
                        --jedzenietimer,zebrany_item_id,timer_alt_anim=0,0,0;

                    end
                    pa_icon="";
                    enemies[enemynum]:set(typt, xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,ta,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8); -- NIL  kak tak?
                end
            end
        end;
    end;
    if (editor==1) then renderammoshot_ammos=0; end ;

    -- Вред_от_танков_игроку_новая_версия W3   enemytankstandartdamage= 80
    function  tankammo (xpla3,ypla3,tanks_mov,man_speedpla3,moveE_f,ammoKEYE,hptank,freezetanks,speedtanks,ta,tanks_speed_am,rikoszet_ta,typt,enemynum,kulemet)
        randomget=50+math.ceil (math.random(50));
        wzmacniacz=0; 
        if (moveE_f=="left") then angle=180; end              if (moveE_f=="right") then angle=0; end
        if (moveE_f=="up") then angle=270; end;              if (moveE_f=="down") then angle=90; end;
        cooldowntanks=math.floor (randomget/2);
        retry=0;
        if (typt=="gwozd") then cooldowntanks=math.ceil (randomget/3);  end;
        if (kulemet>0) then retry=11; kulemet=kulemet-1; cel_hp=angle; end; --; -- for test
        allowshot_tanks=1;   renderammoshot_ammos=1;  --реально_старая_функция_не_сообщает_какой_наносить_вред!!!
        if (freezetanks>0) then allowshot_tanks=0; end;
        damage=enemytankstandartdamage;
        if (typt=="wtank") then damage=damage*2; end
        
        if (speedtanks>0) then damage=damage*2;
            tanks_speed_am=tanks_speed_am+50;
            wzmacniacz=1;
            --command_ammo="stun";
            command_ammo="corrosion";
            cooldowntanks=math.ceil (cooldowntanks/2);
        end;-- stun эффект может_к_каждому_выстрелу_добавить? НЕ_ОБРАБАТЫВАЕТСЯ NOT DONE НЕ СДЕЛАНО
        if (haveaura=="curse") then command_ammo="stun";command_power=5000;   end; -- если указать protect добавляет только 1000 защиты. 
        if (typt=="gwozd")and (randomget<40)and (randomget>15) then command_ammo="explodeshards";retry=2;              end
        if (ta==0)and(((hpt>0)and(editor<1)and(pause<1)))and(allowshot_tanks~=0) then             --xpla2 i ypla2 не должны менятся никаким образом! это координаты игрока!!
            if (moveE_f~="") then playsoundifvisible (wystrelsnd,xpla3,ypla3); end
            ammodefaultuse=1;
            if (typt=="enemydroid") then
                    randomget=50+math.ceil (math.random(50));
                    command_ammo="freeze";
                    command_power=1;   --command power почему то в итоге получает 50 или 100!
                    damage=(damage/10); 
                    tanks_speed_am=tanks_speed_am-40;
                if (randomget<85) then 
                    command_ammo="slow";
                    command_power=5;
                  end
                   if (randomget<75) then 
                    command_ammo="fear";
                     command_power=1;
                  end
                end;
                  if (typt=="pajak") then
                    randomget=math.ceil (math.random(70));
                    command_ammo="kwas";
                    command_power=40;   --command power почему то в итоге получает 50 или 100!
                    damage=math.floor (damage/15); 
                    if (titlegame=="Kolonista") then damage=5; end; 
                    if (tank==1) then damage=math.floor (damage/2); end
                    tanks_speed_am=tanks_speed_am-40;
                     if (randomget<24)and (titlegame~="Kolonista")and (tank==0) then 
                      damage=1; 
                     command_ammo="pajakowy_zespol"; 
                     command_power=3;
                    end
                  end
                  if (typt=="mimic") then
                    randomget=math.ceil (math.random(70));
                    command_ammo="kwas";
                    command_power=500;   --command power почему то в итоге получает 50 или 100!
                    damage=math.floor (damage/8); 
                    tanks_speed_am=tanks_speed_am-70;
                      if (randomget<9) then 
                      command_ammo="freeze";
                     command_power=4;
                    end
                  end
            if (1==1) then 
              totalammo=totalammo+1;
            ammoX[totalammo] = class_ammo:new(moveE_f,xpla3,ypla3,xpla3,ypla3,xpla3,ypla3,ammo_moving,angle,renderammoshot_ammos,rikoszets,0,tanks_speed_am,typt,command_ammo,wzmacniacz,damage,enemynum,"",command_power);
            end
            

            if (retry>0) then for aa00=1,retry,1 do
                totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new(moveE_f,xpla3,ypla3,xpla3,ypla3,xpla3,ypla3,ammo_moving,angle,renderammoshot_ammos,rikoszets,0,tanks_speed_am-(20*aa00),typt,command_ammo,wzmacniacz,enemytankstandartdamage,enemynum,"",command_power);
            end
                if (typt=="gwozd")and (randomget<15) then
                    totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("left",xpla3,ypla3,xpla3,ypla3,xpla3,ypla3,ammo_moving,180,renderammoshot_ammos,rikoszets,0,tanks_speed_am,typt,command_ammo,wzmacniacz,enemytankstandartdamage,enemynum,"",command_power);
                    totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("right",xpla3,ypla3,xpla3,ypla3,xpla3,ypla3,ammo_moving,0,renderammoshot_ammos,rikoszets,0,tanks_speed_am,typt,command_ammo,wzmacniacz,enemytankstandartdamage,enemynum,"",command_power);
                end;
            end
            --PRIMER:set(typta, start_x,start_y,x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_moving,rotate_tt,renderammoshot_ammos,rikoszets,animset,spd_a,sourceammo,command_ammo,wzmacniacz,directdamage_autoammo,src_tankid,msg_to_func,command_power,delayed_cmd,delayed_snd);
        end
        return 1,cooldowntanks,kulemet
    end
    -- END окончание обработки выстрелов танков

    -- Free ammo and realrikoszet
    -- Обработка самостоятельных патрон и рикошета
    -- в данный момент чуть более чем полностью проблемная, похоже нужно переписать целиком.
    -- 1 - нужно рассчитать траекторию до ближайшего ломаемого предмета.
    -- 2 - и только тогда разово пустить по нему пулю или что угодно. уже это будет графическое отображение.

    function class_ammo:update(dt)

        -- typta = typta or self.typta;  -- куда летит пуля, слово с названием направления, или пусто если пули нет.
        -- start_x = start_x or self.start_x;  -- - стартовая координата откуда был произведен выстрел, не должна менятся
        -- - x_ammo = x_ammo or self.x_ammo; -- текущая координата патрона ,     -- y_ammo = y_ammo or self.y_ammo;
        --ADDED NEW command_power,delayed_cmd,delayed_snd
        if (totalammo>0)and(editor==0)   then --ammofuck
            wszystkoammo=0;
            for ammonum=1,totalammo,1 do
                typta,start_x,start_y,x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_moving,rotate_tt,renderammoshot_ammos,rikoszets,animset,spd_a,sourceammo,command_ammo,wzmacniacz,directdamage_autoammo,src_tankid,msg_to_func,command_power,delayed_cmd,delayed_snd=ammoX[ammonum]:get();
                randommove_word=math.ceil(math.random(4));
                if (randommove_word==4) then randommove_word="up"; randommove_rotate=270; end     if (randommove_word==3) then randommove_word="down";randommove_rotate=90;  end
                if (randommove_word==2) then randommove_word="left"; randommove_rotate=180; end     if (randommove_word==1) then randommove_word="right"; randommove_rotate=0; end

                if (typta~="") then
                    wszystkoammo=wszystkoammo+1;
                    spd=spd_a; --  if (rikoszets>0) then spd=250; end       if (rikoszets>1) then spd=400; end
                    x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_moving,man_speedx=move_the_man(dt,x_ammo,y_ammo,m_x_ammo, m_y_ammo,ammo_moving,spd);
                    plux=0; plusy=0; steps=0;
                    autoammo_downfix=0; downbugammofix=0; rightbugammofix=0; 
                    if (typta=="up")and((gamey(y_ammo)>0)) then  -- plusy=-steps+2;
                        ammo_moving,m_x_ammo,m_y_ammo=do_a_step(dt, 0, -man_step*1,x_ammo,y_ammo); else  renderammoshot_ammos=0;
                    end ;
                    if (typta=="down")and((gamey(y_ammo)<mapsize_vertical))  then downbugammofix=rozmiarznak;
                        -- autoammo_downfix=1;  --нужен ли этот фикс и зачем он был сделан когда то? Build 7900
                        ammo_moving,m_x_ammo,m_y_ammo=do_a_step(dt, 0,  man_step*1,x_ammo,y_ammo) ; else  renderammoshot_ammos=0;
                    end ;    --y man_step*1
                    if (typta=="left")and((gamex(x_ammo)>0)) then --plusx=-1;
                        ammo_moving,m_x_ammo,m_y_ammo=do_a_step(dt, -man_step*1,0,x_ammo,y_ammo); else  renderammoshot_ammos=0;
                    end ;
                    if (typta=="right")and((gamex(x_ammo)<mapsize_horizontal)) then  rightbugammofix=rozmiarznak;
                        ammo_moving,m_x_ammo,m_y_ammo=do_a_step(dt, man_step*1, 0,x_ammo,y_ammo); else  renderammoshot_ammos=0;
                    end ;
                    dzwiek_od_trafienia=0;
                    if (ammo_moving) then allowshot_ammo_status=1; else allowshot_ammo_status=0; end;
                    -- allowshot_ammo_status/ allowshotpla2 - не понимает false/true туда шлют обычно 1  и он и остаётся если не встретилось препятствие
                    checkwzywost1= (gamex(m_x_ammo));
                    checkwzywost2=math.ceil (gamex(m_x_ammo));
                    if (checkwzywost2~=checkwzywost1) then wszywo=1; else wszywo=0; end;  --fuck --afuck
                    steps=steps+1;
                    toscreen_x,toscreen_y=math.floor (gamex(x_ammo)),math.floor(gamey (y_ammo));  --  gamex  gamey  zzx4ammo==48  - screens очень любит это
                    zzx4ammo= ((screens (toscreen_y,toscreen_x)));--ammofuck  screens   --
                    if (msg_to_func=="PC1ice") then playericeshot=1 else playericeshot=0; end;
                    if (zzx4ammo~=48)and(wszywo==0) then -- build 11000   objectid=0 correct works i hope and(zzx4ammo~=0) 
                        allowshot_ammo_status_save=allowshot_ammo_status;
                        --smsg1="wzmacniacz to damager.."..wzmacniacz; -- a nie 2 !!! 
                        if (playericeshot==0) then allowshot_ammo_status,realrikoszet=reactammo2 (zzx4ammo,math.floor (x_ammo),math.floor (y_ammo),allowshot_ammo_status,typta,wzmacniacz,sourceammo,command_ammo,command_power); end;
                        -- постепенно избавится от reactice , command==freeze  d.b.
                        if (playericeshot==1) then plusx=0; plusy=0; allowshot_ammo_status,realrikoszet=reactice (zzx4ammo,math.floor (x_ammo),math.floor (y_ammo)-autoammo_downfix,allowshot_ammo_status,typta,2,"PC1",command_ammo); end;
                        if (allowshot_ammo_status==0)and(allowshot_ammo_status_save>0) then dzwiek_od_trafienia=2;end;
                    end
                    if (allowshot_ammo_status==0) then ammo_moving=false; renderammoshot_ammos=0; --dhtvt  wremenno
                        --command_power -- а откуда берутся dbx,dby для команды отложенного взрыва? не из координат цели случайно? тогда в эту секунду этот патрон прекращает существовать как раз.
                        if (delayed_cmd~="")and(delayed_cmd~=0) then --FUCK автопатрон W3 должен именно встретится с целью, как минимум с танком или другим существом.
                            dbx=math.floor (gamex(m_x_ammo));dby=math.floor (gamey(m_y_ammo))-autoammo_downfix;  -- był math.ceil
                            dbx_copy=dbx; dby_copy=1+dby;
                            -- Очень Очень интересно, trap, haveaura отлично работают без Mass_explode тут
                            mass_explode (dby_copy,dbx_copy,command_ammo,0,sourceammo,src_tankid,command_power); -- проверено - не она вызывает падение FPS , не этот вызов по крайней мере
                            if (otladka==1) then smsg1="AOE2 ("..dbx_copy..","..dby_copy.." "..delayed_src.." with effect "..delayed_cmd.." (power="..delayed_power..") delayedexplode;"; end; 
                            -- BUILD 85XX-9300 DISABLE MASS_EXPLODE APPLY PROBLEM    --mass_explode (dby,dbx,"slow",0,"PC1",-2,50000);
                            --фильтрация лога     -- (otladka==1)and(sourceammo=="PC1")
                            if (delayed_snd~="")and(dzwiek_od_trafienia<2) then playsoundifvisible ((_G[delayed_snd]),x_ammo,y_ammo); delayed_snd="" ; end;
                            -- delayed_cmd="";
                        end
                        typta=""; end;
                    rik_enable=0; --тут запрашиваем ИД танка имеющего и пулемёт и усилитель.
                    if (sourceammo=="PC1")and(speedtimer>0) then rik_enable=1; end;--available sources::  jezyk realrikoszet tank PC1 rikoszet
                    if (sourceammo=="tank")and(wzmacniacz>0) then rik_enable=1; end;   -- sfuck  realrikoszet tank PC1 rikoszet
                    if (sourceammo=="shard")and(wzmacniacz>0) then rik_enable=1; end;   -- тут же ещё должен быть рикошет от танка с pain_reflection  reflectsnd

                    --тут вероятнее всего надо проверить нет ли по этим координатам танка или игрока с pain_reflection / reflectsnd
                    if (realrikoszet=="rikoszet")and(rikoszets<3)and(typta~=randommove_word)and(rik_enable==1)and(wszywo==0)  then --RIKOSZET DISABLED
                        -- А что у нас это за рикошет, если он ещё и реалрикошет из реактаммо2 получает *????
                        -- по идее при рикошете мы имеем корректные координаты, раз сработал reactammo. иначе он вообще не сработает собственно
                        rikoszets=rikoszets+1;
                        --  if (math.fmod(x_ammo,2)~=0) then x_ammo=x_ammo-1; end; --убирает смещение на единичку которое точно неверное.  --  if (math.fmod(y_ammo,2)~=0) then y_ammo=y_ammo-1; end;
                        start_x=math.ceil (x_ammo)-plusx*rozmiarznak;
                        start_y=math.ceil (y_ammo)-plusy*rozmiarznak;
                        if (directdamage_autoammo==nil)or(directdamage_autoammo==0) then directdamage_autoammo=22; end;
                        --  wzmacniacz=0;
                        class_ammo:new(randommove_word,start_x,start_y,start_x,start_y,start_x,start_y,true,randommove_rotate,true,rikoszets,0,1,"rikoszet","c_a_update",wzmacniacz,directdamage_autoammo);
                        if (otladka==1) then smsg1="new rikoszet("..randommove_word..","..start_x..","..start_y.." directdamage="..directdamage_autoammo ;   end;
                        ammo_moving=true; renderammoshot_ammos=true;typta=randommove_word ;
                        realrikoszet="";
                        rotate_tt=randommove_rotate;
                    end;
                    ammoX[ammonum]:set(typta, start_x,start_y,x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_moving,rotate_tt,renderammoshot_ammos,rikoszets,animset,spd_a,sourceammo,command_ammo,wzmacniacz,directdamage_autoammo,src_tankid,msg_to_func,command_power,delayed_cmd,delayed_snd);
                    rikoszets=0;
                end --of if typta~=""
            end
        end


        -- ammo_moving, ammo_am -- указатель столкнулась ли с чем то пуля *по идее, идет ли перемещение, false если встретила персонажа или препятствие
        --персонажи или препятствия после получения вреда должны установить этот параметр и сбросить typta на ""
        --rotate_tt - на сколько градусов требуется повернуть пулю для анимации
        --renderammoshot_ammos -- требуется ли рисовать пулю на экране
        --ammofuck
    end
    -- Окончание обработки самостоятельных патрон и рикошета
    if (totalammo>clearammo) then
            totalammo=0;
            ammoX={};
            selectedammoid=nil;
            huded=0;
        end
      

    -- Создание выстрела самостоятельных патрон и рикошета
    randomget=math.ceil (math.random(200));--and (randomget==1)
    if (wsego_jezykow>0)and (randomget>196-wsego_jezykow)and(renderer==1)and(editor==0)and(pause==0)and(fasttimer==10) then
        clearammo=500;

           if (ossys=="Android") then clearammo=70 ; end;
       if (wszystkoammo==0)and(totalammo>250)and (1==0) then
            totalammo=0;
            ammoX={};
            selectedammoid=nil;
            huded=0;
        end  
     

        start_ammo_x,start_ammo_y=realrandomscanobject(54,-5,1); --  scanobject
        start_ammo_y=start_ammo_y+1;
        start_x,start_y= xgametorealpositionbezbyte (start_ammo_y,start_ammo_x);

        ammo_moving=true;
        rikoszets=0;
        renderammoshot_ammos=true;
        --if (start_ammo_x<1) then start_x=xpla2; start_y=ypla2; end;  --второй танк будет "сеять" самостоятельные патроны.
        if (start_x>1)and (start_ammo_x>1) then
            randoma=math.ceil(math.random(11));
            if (randoma==4) then command_ammo="freeze"; end;
            if (randoma==3) then command_ammo="slow"; end;
            if (randoma==2) then command_ammo="heal"; end;
            if (randoma==1) then command_ammo="fear"; end;
            if (randoma==5) then command_ammo="szkoda"; end;
            if (randoma==6) then command_ammo="corrosion"; end;
            if (randoma==7) then command_ammo="curse"; end;
            if (randoma==8) then command_ammo="explodeshards"; end;
            if (randoma==9) then command_ammo="protect"; end;
            if (randoma==10) then command_ammo="dispel"; end;
            jpower=200; 
            mass=""; 
            randomc=math.ceil(math.random(5));
            if (randomc==4)or (randomc==5) then totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("left",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,180,renderammoshot_ammos,rikoszets,0,200,"jezyk",command_ammo,0,33,-3,"",jpower,mass); end;
            if (randomc==1)or (randomc==5) then totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("right",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,0,renderammoshot_ammos,rikoszets,0,200,"jezyk",command_ammo,0,33,-3,"",jpower,mass); end;
            if (randomc==2)or (randomc==5) then totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("up",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,270,renderammoshot_ammos,rikoszets,0,200,"jezyk",command_ammo,0,33,-3,"",jpower,mass); end;
            if (randomc==3)or (randomc==5) then totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("down",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,90,renderammoshot_ammos,rikoszets,0,200,"jezyk",command_ammo,0,33,-3,"",jpower,mass); end;
            -- ammoX[totalammo] = class_ammo:new(moveE_f,xpla3,ypla3,xpla3,ypla3,xpla3,ypla3,ammo_moving,angle,renderammoshot_ammos,rikoszets,0,tanks_speed_am-(20*retry),typt,command_ammo,wzmacniacz,enemytankstandartdamage,enemynum,"");
            smsg3="New ammoX ["..totalammo.."]: start_ammo_x="..start_ammo_x.." start_x="..start_x.." start_ammo_y="..start_ammo_y.." start_y="..start_y;
        end;
    end

    -- Окончание создания выстрелов самостоятельных  патрон и рикошета
    -- обработка перемещений танков, требует перевода на попиксельные координаты и заключение внутрь цикла
    -- первый танк имеет ккординату x=4 (360) y=9 (760)    move переходит сюда как movePL2
    function tankmove (xpla3,ypla3,man_xpla3,man_ypla3,tanks_mov,man_speedpla3,moveE_f,ammoKEYE_f,hptank,freezetanks,speedtanks,protecttanks,feartanks,typt,enemynum)
        --tankmove (xt,yt,man_xpla3,man_ypla3,tanks_mov,man_speedpla3,moveE_f,ammoKEYE_f,hpt,freezetanks,speedtanks,protecttanks,feartanks); -- if love.keyboard.isDown("e")and((ammoKEYE_f~="ammo")) then end;
        xpla3,ypla3,man_xpla3,man_ypla3,tanks_mov,man_speedpla3=move_the_man(dt,xpla3,ypla3, man_xpla3, man_ypla3 ,tanks_mov,man_speedpla3);
        if (tanks_mov) then tmov=1; end
        if (tanks_mov==false ) then tmov=0; end
        allowmovepla3=1;
        if (freezetanks>0) then allowmovepla3=0; end;
        if ((ammoKEYE_f=="ammo")) then allowmovepla3=0;end;

        if (pause==1) then allowmovepla3=0;end;
        redirectmovepla2=0;

        move="undefined";
        plusxpla2=0; plusypla2=0;
        xnowpla3=xpla3;ynowpla3=ypla3; -- сохраняем настоящие текущие координаты.
        cannotmove=0;
        teleport_xpla3=0;  teleport_ypla3=0;teleport=0;
        if (typt=="tank")and(hptank<30) then cannotmove=1; end;
        if (typt=="gwozd")and(hptank<1) then cannotmove=1; end;
        if (typt=="scientist")and(hptank<1) then cannotmove=1; end;
        if ((not tanks_mov)and(allowmovepla3>0)) then
            -- обрабатываем кнопки только, если чувак не двигается уже
            if (((moveE_f=="right"))and(not (ammoKEYE_f=="ammo"))and(gamex(xpla2)<mapsize_horizontal-1)) then
                movepla2="right";plusxpla2=1;rotate=180;
                zz_id_teraz=(screens (gamey (ypla3),gamex (xpla3)));-- определяем од ног
                zzz2=(screens (gamey (ypla3),gamex (xpla3)+1));-- определяем куда движется чувак
                if (zzz2) then
                    zzx2=(zzz2);
                    if (cannotmove==0) then allowmovepla3,hptank,freezetanks,speedtanks,protecttanks,feartanks, teleport_xpla3, teleport_ypla3,teleport,invisibletanks,painreflecttanks=reactmove2 (zzx2,xpla3,ypla3,hptank,allowmovepla3,plusxpla2,plusypla2,freezetanks,0,speedtanks,protecttanks,feartanks,typt, zz_id_teraz,enemynum,invisibletanks,painreflecttanks) else if (editor==0) then allowmovepla3=0; end end;
                end
                if (teleport==1)and(teleport_xpla3~=nil)  then xnowpla3=xpla3; ynowpla3=ypla3; teleport=0;plusxpla2=0; plusypla2=0; allowmovepla3=0; man_xpla3=xpla3; man_ypla3=ypla3; tanks_mov=0; end;
                if (allowmovepla3==1) then tanks_mov,man_xpla3,man_ypla3=do_a_step(dt, man_step*1, 0,xpla3,ypla3);end;
                --if (allowmovepla3==1) then smsg2=" man_is_movingpla2,"..man_xpla2..","..man_ypla2.."=do_a_step(dt, "..man_step.."*"..accelmovepla2..", 0,"..xpla2..","..ypla2..");end;"; end;         --smsg3="allowmovepla3="..allowmovepla3.." reactmove (zzx2="..zzx2..")";  -- man_is_movingpla2 is boolean  cannot be printed
            end
            -- FUCKFUCKFUCK
            if (((moveE_f=="left"))and(not (ammoKEYE_f=="ammo"))and(gamey(xpla3)>0)) then
                movepla2="left";plusxpla2=-1;rotate=0;
                zzz2=(screens (gamey (ypla3),gamex (xpla3)-1));
                if (zzz2) then
                    zzx2=(zzz2);
                    if (cannotmove==0) then allowmovepla3,hptank,freezetanks,speedtanks,protecttanks,feartanks, teleport_xpla3, teleport_ypla3,teleport,invisibletanks,painreflecttanks=reactmove2 (zzx2,xpla3,ypla3,hptank,allowmovepla3,plusxpla2,plusypla2,freezetanks,0,speedtanks,protecttanks,feartanks,typt, zz_id_teraz,enemynum,invisibletanks,painreflecttanks) else if (editor==0) then allowmovepla3=0; end end;
                end
                if (teleport==1)and(teleport_xpla3~=nil)  then xnowpla3=xpla3; ynowpla3=ypla3; teleport=0;plusxpla2=0; plusypla2=0; allowmovepla3=0; man_xpla3=xpla3; man_ypla3=ypla3; tanks_mov=0; end;
                if (allowmovepla3==1) then tanks_mov,man_xpla3,man_ypla3=do_a_step(dt, -man_step*1, 0,xpla3,ypla3);end;
            end

            if (((moveE_f=="down"))and(not (ammoKEYE_f=="ammo"))and(gamey(ypla3)<mapsize_vertical+20*editor)) then
                movepla2="down";plusypla2=1;rotate=270;
                zzz2=(screens (gamey (ypla3)+1,gamex (xpla3)));
                if (zzz2) then
                    zzx2=(zzz2);
                    if (cannotmove==0) then allowmovepla3,hptank,freezetanks,speedtanks,protecttanks,feartanks, teleport_xpla3, teleport_ypla3,teleport,invisibletanks,painreflecttanks=reactmove2 (zzx2,xpla3,ypla3,hptank,allowmovepla3,plusxpla2,plusypla2,freezetanks,0,speedtanks,protecttanks,feartanks,typt, zz_id_teraz,enemynum,invisibletanks,painreflecttanks) else if (editor==0) then allowmovepla3=0; end end;
                end
                if (teleport==1)and(teleport_xpla3~=nil)  then xnowpla3=xpla3; ynowpla3=ypla3; teleport=0;plusxpla2=0; plusypla2=0; allowmovepla3=0; man_xpla3=xpla3; man_ypla3=ypla3; tanks_mov=0; end;
                if (allowmovepla3==1) then tanks_mov,man_xpla3,man_ypla3=do_a_step(dt, 0, man_step*1,xpla3,ypla3) ;end;
            end
            if (((moveE_f=="up"))and(not (ammoKEYE_f=="ammo"))and(gamey(ypla3)>1)) then
                movepla2="up";plusypla2=-1; rotate=90;
                zzz2=(screens (gamey (ypla3)-1,gamex (xpla3)));
                if (zzz2) then
                    zzx2= (zzz2);
                    if (cannotmove==0) then allowmovepla3,hptank,freezetanks,speedtanks,protecttanks,feartanks, teleport_xpla3, teleport_ypla3,teleport,invisibletanks,painreflecttanks=reactmove2 (zzx2,xpla3,ypla3,hptank,allowmovepla3,plusxpla2,plusypla2,freezetanks,0,speedtanks,protecttanks,feartanks,typt, zz_id_teraz,enemynum,invisibletanks,painreflecttanks) else if (editor==0) then allowmovepla3=0; end end;
                end
                if (teleport==1)and(teleport_xpla3~=nil) then xnowpla3= teleport_xpla3; ynowpla3= teleport_ypla3; teleport=0;plusxpla2=0; plusypla2=0; allowmovepla3=0; man_xpla3= teleport_xpla3; man_ypla3= teleport_ypla3; tanks_mov=false; end;
                if (allowmovepla3==1) then tanks_mov,man_xpla3,man_ypla3=do_a_step(dt, 0, -man_step*1,xpla3,ypla3);end;
            end

        end
        --конец управления танками
        if (man_xpla3<200)or (man_ypla3<200) then xpla3=xnowpla3; ypla3=ynowpla3; end;
        -- Затычка выключена  if (allowmovepla2==1)and (man_xpla2>200)and (man_ypla2>200) then xpla2=man_xpla2; ypla2=man_ypla2; end;
        return xpla3,ypla3,hptank,rotate,man_xpla3,man_ypla3,freezetanks,speedtanks,tanks_mov,feartanks,protecttanks;
    end


    -- временный модуль для расстановки танков  fuck
    if (love.keyboard.isDown("/"))or (fasttimer==53)and(timerx>50)and (editor==0)and(pause==0) then 
      flagchecknewteleportersenemy=1;
      spawn_jednorazowy=10; 
      end; 
    --smsg1="timerx"..timerx.."spawn_jednorazowy="..spawn_jednorazowy.." paj"..wsego_pajak_spawn_jednorazowy;

    if ((love.keyboard.isDown(".")and(editor==1)and(pause<1)))  then --отладочная , отключена.  oij
      --  for enemynum=1,totalenemies,1 do
       --     typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am,rotate_t,feartanks=enemies[enemynum]:get();
       -- end
        flagchecknewteleportersenemy=1;
    end;
    --zzx2, II , jedzenie

  if (flagchecknewteleportersenemy==1)and(pause==0)and(editor==0)and(renderer==1)and(fasttimer>10) then
        --smsg1="Executing flagchecknewteleportersenemy";
        wsego_tank_teleporterow=scanobject (28,-2); -- tanks  universal teleporter
                --   if (wsego_tank_teleporterow==-1) then smsg1="Tanks teleporters [28] not found.";end;
        wsego_scientist_spawn_jednorazowy=scanobject (34,-2);-- frozen human  not enemy
        wsego_miner_spawn_jednorazowy=scanobject (192,-2);--miner
        wsego_anomaly_spawn_jednorazowy=scanobject (195,-2);-- migalka
        wsego_boxes_spawn_jednorazowy=scanobject (47,-2); -- mimic +
        wsego_gwozd_spawn_jednorazowy=scanobject (235,-2); -- 235 гвоздь
        wsego_pajak_spawn_jednorazowy=scanobject (255,-2); -- 255 pajak
        wsego_tank_spawn_jednorazowy=scanobject (303,-2); -- 303 танк  
        wsego_tank_white_spawn_jednorazowy=scanobject (304,-2); -- 304 танк biały 
        wsego_jezykow=scanobject (54,-2); jezykow=wsego_jezykow; 
        wsego_enemydroid_spawn_jednorazowy=scanobject (269,-2); -- 269 дроид
    spawn_jednorazowy= wsego_miner_spawn_jednorazowy+wsego_anomaly_spawn_jednorazowy+wsego_gwozd_spawn_jednorazowy+wsego_pajak_spawn_jednorazowy+wsego_enemydroid_spawn_jednorazowy;
    if (spawn_jednorazowy==0)then  flagchecknewteleportersenemy=0; fasttimer=-200; end;

        if (titlegame=="M2K")and (levelnumber<130)  then wsego_boxes_spawn_jednorazowy=0; end; 
      end
    --smsg1="wsego_scientist_spawn_jednorazowy="..wsego_scientist_spawn_jednorazowy;
    if (chances==nil) then chances=0; end;
typeobject_generated="";
    if (timerx>22)and(fasttimer==2)and(wsego_tank_teleporterow>0)and(editor==0)and(renderer==1)and(pause==0)or (ammoKEYPL1=="placeenemy") then
        if (livedtanks==0)or (ammoKEYPL1=="placeenemy")or(livedtanks<minimumtanks*2)or(totalenemies<starttanks) then
          generator_tanks_called=generator_tanks_called+1; 
          if (otladka>-1) then consolelogg=""; end;  -- .." TA:"..totalammo;
            wsego_tank_teleporterow=scanobject (28,-2); -- tanks RESKAN
            if (livedtanks<starttanks) then timerx=-100;  end;
            if (livedtanks>starttanks)and (livedtanks<minimumtanks) then timerx=-390;  end;
            if (livedtanks>minimumtanks-1)and (livedtanks<minimumtanks*2) then timerx=-700;  end;
            if (ammoKEYPL1=="placeenemy") then timerx=90; end;
            if (totalenemies<starttanks) then timerx=85; end;
            randomteleporterselect=   math.ceil (math.random (wsego_tank_teleporterow));
            checkx,checky=scanobject (28,-5,randomteleporterselect);  -- создание новых танков
            hpt_new=500;
            if (chances<70) then typeobject="tank"; end;
            if (chances>66) then typeobject="gwozd";end;
            if (chances<30) and (titlegame~="Kolonista") then typeobject="enemydroid";  end;
            if (chances<20) then typeobject="pajak";  end;
            if (titlegame=="Kolonista")and(typeobject=="gwozd") then typeobject="pajak"; end; 
            if (chances<10)and (titlegame~="Kolonista") then typeobject="mimic";  end;
            if (chances<5)and (titlegame~="Kolonista") then typeobject="miner"; NO_SCORE_MINES_MODE=1;  end;
            if (chances<4) then typeobject="migalka";  end;
            if (chances<3)and(enablewtank==1) then typeobject="wtank";  end;  --TEMPORARY ONLY BTANKS
            if (otladka==1) then smsg1="new "..typeobject..":: "..checkx..","..checky.."=scanobject (28,-5,"..randomteleporterselect..")"; end; --new tank
            if (checky~=nil) then xt,yt=xgametorealpositionbezbyte (1+checky,checkx) ;

                if (titlegame=="Reskue") then 
                  randomget=math.ceil(math.random(40)); 
                   else randomget=0; end;
                addaura="";
                if (randomget==1)and(enableredtank==1) then addspeed=1400; else addspeed=0; end;
                if (randomget==2)or (randomget==13) then addprotect=1400; else addprotect=0 ;end;
                if (randomget==3) then addfear=1400; else addfear=0 ;end;
                if (randomget==4)or(randomget>31) then addslowdown=1400; else addslowdown=0 ;end;
                if (randomget==5) then addkulemet=10; else addkulemet=0 ;end;
                if (randomget==6)and(enableredtank==1)  then addkulemet=40;addspeed=1400;end --  else addkulemet=0 ; addspeed=0; end;
                if (randomget==7) then addpain=500; else addpain=0 ;end;
                if (randomget==8) then addinvis=50; else  addinvis=0;end;
                addaura="";
                if (randomget==9)and(enableauratank==1) then addaura="protect"; end;
                if (randomget==10)and(enableauratank==1) then addaura="painreflect"; end;
                if (randomget==11)and(enableauratank==1) then addaura="heal"; end;
                if (randomget==12)and(enableauratank==1) then addaura="curse"; end;
                if (typeobject=="wtank") then hpt_new=3000; addpain=1400;  end;
                if (1==1) then --(xt>0)and(yt>0)  оГРАНИЧИвало спавн текущей позицией как стартом карты.  ну и приводило к постоянным повторам спавна т.к. никого не спавнило
                enemies[totalenemies+1] = class_enemy:new(typeobject,xt,yt,hpt_new,0,0,0,0,0,addspeed,10+addprotect,jedzenietimer,0,0,0,0,0,addfear,0,addslowdown,0,0,addkulemet,0,0,addinvis,addpain,addaura,0,0,0,0);
                    totalenemies=totalenemies+1;
                    typeobject_generated=typeobject;
   --class_enemy:new(typt,x3,y3,hp,rotate,mx,my,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8)
  
                end --of checky==true
            end
        end
    end

    if (timerx>30)and(fasttimer==3)and(wsego_boxes_spawn_jednorazowy>0)and(editor==0)and(renderer==1) then  --and(miners<1)
        if (mimics<3)or(typeobject_generated=="mimic") then
            typeobject="mimic";
            randomteleporterselectminer=math.ceil (math.random (wsego_boxes_spawn_jednorazowy));
            checkx,checky=scanobject (47,-5,randomteleporterselectminer);
            if (otladka==1)and(checky~=nil)and(checkx~=nil) then smsg1="new"..typeobject..":: "..checkx..","..checky.."=scanobject (34,-5,"..randomteleporterselectminer..")"; end;
            if (checky~=nil) then xt,yt=xgametorealpositionbezbyte (1+checky,checkx) ;
                if (xt>0)and(yt>0) then
                   -- printat (checky,checkx,"56");
                    jedzenietimer=50000;
                    mimics=mimics+1; 
                    addslowdown=0;
                    enemies[totalenemies+1] = class_enemy:new(typeobject,xt,yt,150,0,0,0,0,0,addspeed,10+addprotect,jedzenietimer,0,0,0,0,0,addfear,1,addslowdown,0,0,addkulemet,0,0,0,0,0,0,0,0,0)
                    totalenemies=totalenemies+1;
                end --of checky==true
            end
        end
    end


    if (timerx>20)and(fasttimer==4)and(wsego_scientist_spawn_jednorazowy>0)and(scientists<1)and(editor==0)and(renderer==1) then
        if (1==1) then
            typeobject="scientist";
            randomteleporterselect=   math.ceil (math.random (wsego_scientist_spawn_jednorazowy));
            checkx,checky=scanobject (34,-5,randomteleporterselect); --16
            if (otladka==1)and(checky~=nil)and(checkx~=nil) then smsg1="new"..typeobject..":: "..checkx..","..checky.."=scanobject (34,-5,"..randomteleporterselect..")"; end;

            if (checky~=nil) then xt,yt=xgametorealpositionbezbyte (1+checky,checkx) ;
                if (xt>0)and(yt>0) then
                    printat (checky,checkx,"56");
                    enemies[totalenemies+1] = class_enemy:new(typeobject,xt,yt,150,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
                    totalenemies=totalenemies+1;
                    love.audio.play(appearssnd);
                id_scientist=totalenemies; --isnear (xt,x))and(isnear (yt,y))  visiblity_tank=isvisible (xt,yt);
                xt_scientist=xt;
                yt_scientist=yt; 
                end --of checky==true

                frozenscientists=scanobject (34,-2);
                savedscientists=scanobject (33,-2);
            end
        end
    end

   if (timerx>33)and(fasttimer==5)and(wsego_pajak_spawn_jednorazowy>0)and(editor==0)and(renderer==1) then  --and(miners<1)
        if (spawn_jednorazowy>0) then
            typeobject="pajak";
            randomteleporterselect=math.ceil (math.random (wsego_pajak_spawn_jednorazowy));
            checkx,checky=scanobject (255,-5,randomteleporterselect);
            if (otladka==1)and(checky~=nil)and(checkx~=nil) then smsg1="new"..typeobject..":: "..checkx..","..checky.."=scanobject (34,-5,"..randomteleporterselectminer..")"; end;
            if (checky~=nil) then xt,yt=xgametorealpositionbezbyte (1+checky,checkx) ;
                if (xt>0)and(yt>0) then
                    printat (checky,checkx,"56");
                    enemies[totalenemies+1] = class_enemy:new(typeobject,xt,yt,150,0,0,0,0,0,addspeed,10+addprotect,0,0,0,0,0,0,addfear,0,addslowdown,0,0,addkulemet,0,0,0,0,0,0,0,0,0)
                    totalenemies=totalenemies+1;
                  
                end --of checky==true
            end
        end
    end

       if (timerx>53)and(fasttimer==6)and(wsego_enemydroid_spawn_jednorazowy>0)and(editor==0)and(renderer==1) then  --and(miners<1)
        if (spawn_jednorazowy>0) then
            typeobject="enemydroid";
            randomteleporterselect=math.ceil (math.random (wsego_enemydroid_spawn_jednorazowy));
            checkx,checky=scanobject (269,-5,randomteleporterselect);
            if (otladka==1)and(checky~=nil)and(checkx~=nil) then smsg1="new"..typeobject..":: "..checkx..","..checky.."=scanobject (34,-5,"..randomteleporterselectminer..")"; end;
            if (checky~=nil) then xt,yt=xgametorealpositionbezbyte (1+checky,checkx) ;
                if (xt>0)and(yt>0) then
                    printat (checky,checkx,"56");
                    enemies[totalenemies+1] = class_enemy:new(typeobject,xt,yt,150,0,0,0,0,0,addspeed,10+addprotect,0,0,0,0,0,0,addfear,0,addslowdown,0,0,addkulemet,0,0,0,0,0,0,0,0,0)
                    totalenemies=totalenemies+1;
                  
                end --of checky==true
            end
        end
    end

      if (timerx>33)and(fasttimer==7)and(wsego_gwozd_spawn_jednorazowy>0)and(editor==0)and(renderer==1) then  --and(miners<1)
        if (spawn_jednorazowy>0) then
            typeobject="gwozd";
            randomteleporterselect=math.ceil (math.random (wsego_gwozd_spawn_jednorazowy));
            checkx,checky=scanobject (235,-5,randomteleporterselect);
            if (otladka==1)and(checky~=nil)and(checkx~=nil) then smsg1="new"..typeobject..":: "..checkx..","..checky.."=scanobject (34,-5,"..randomteleporterselectminer..")"; end;
            if (checky~=nil) then xt,yt=xgametorealpositionbezbyte (1+checky,checkx) ;
                if (xt>0)and(yt>0) then
                    printat (checky,checkx,"56");
                    enemies[totalenemies+1] = class_enemy:new(typeobject,xt,yt,500,0,0,0,0,0,addspeed,10+addprotect,0,0,0,0,0,0,addfear,0,addslowdown,0,0,addkulemet,0,0,0,0,0,0,0,0,0)
                    totalenemies=totalenemies+1;
                  
                end --of checky==true
            end
        end
    end

    if (timerx>23)and(fasttimer==8)and(wsego_miner_spawn_jednorazowy>0)and(editor==0)and(renderer==1) then  --and(miners<1)
        if (spawn_jednorazowy>0) then
            typeobject="miner";
            randomteleporterselect=math.ceil (math.random (wsego_miner_spawn_jednorazowy));
            checkx,checky=scanobject (192,-5,randomteleporterselect);
            if (otladka==1)and(checky~=nil)and(checkx~=nil) then smsg1="new"..typeobject..":: "..checkx..","..checky.."=scanobject (34,-5,"..randomteleporterselectminer..")"; end;
            if (checky~=nil) then xt,yt=xgametorealpositionbezbyte (1+checky,checkx) ;
                if (xt>0)and(yt>0) then
                    printat (checky,checkx,"56");
                    if (titlegame=="Perestroika") then  printat (checky,checkx,"189"); end;
                    miners=miners+1;
                    addslowdown=100;
                    enemies[totalenemies+1] = class_enemy:new(typeobject,xt,yt,150,0,0,0,0,0,addspeed,10+addprotect,0,0,0,0,0,0,addfear,0,addslowdown,0,0,addkulemet,0,0,0,0,0,0,0,0,0)
                    totalenemies=totalenemies+1;
                    NO_SCORE_MINES_MODE=1;
                    --smsg1="totalenemies="..totalenemies.." miners="..miners.." #enemies"..#enemies.." tlwsego="..wsego_miner_spawn_jednorazowy;
                end --of checky==true
            end
        end
    end


    if (timerx>23)and(fasttimer==9)and(wsego_anomaly_spawn_jednorazowy>0)and(editor==0)and(renderer==1) then  --and(miners<1)
        if (spawn_jednorazowy>0) then
            typeobject="migalka";
            randomteleporterselect=math.ceil (math.random (wsego_anomaly_spawn_jednorazowy));
            checkx,checky=scanobject (195,-5,randomteleporterselect);
            if (otladka==1)and(checky~=nil)and(checkx~=nil) then smsg1="new"..typeobject..":: "..checkx..","..checky.."=scanobject (34,-5,"..randomteleporterselectminer..")"; end;
            if (checky~=nil) then xt,yt=xgametorealpositionbezbyte (1+checky,checkx) ;
                if (xt>0)and(yt>0) then
                    printat (checky,checkx,"56");
                    migalok=migalok+1;
                    addslowdown=100;
                    enemies[totalenemies+1] = class_enemy:new(typeobject,xt,yt,150,0,0,0,0,0,addspeed,10+addprotect,0,0,0,0,0,0,addfear,1,addslowdown,0,0,addkulemet,0,0,0,0,0,0,0,0,0)
                    totalenemies=totalenemies+1;
                end --of checky==true
            end
        end

        if (timerx>23)and(fasttimer==9)and(wsego_tank_spawn_jednorazowy>0)and(editor==0)and(renderer==1) then  --and(miners<1)
        if (spawn_jednorazowy>0) then
            typeobject="tank";
            randomteleporterselect=math.ceil (math.random (wsego_tank_spawn_jednorazowy));
            checkx,checky=scanobject (303,-5,randomteleporterselect);
            if (otladka==1)and(checky~=nil)and(checkx~=nil) then smsg1="new"..typeobject..":: "..checkx..","..checky.."=scanobject (34,-5,"..randomteleporterselectminer..")"; end;
            if (checky~=nil) then xt,yt=xgametorealpositionbezbyte (1+checky,checkx) ;
                if (xt>0)and(yt>0) then
                    printat (checky,checkx,"56");
                    --migalok=migalok+1;
                    addslowdown=3;
                    addprotect=20;
                    enemies[totalenemies+1] = class_enemy:new(typeobject,xt,yt,500,0,0,0,0,0,addspeed,10+addprotect,0,0,0,0,0,0,addfear,1,addslowdown,0,0,addkulemet,0,0,0,0,0,0,0,0,0)
                    totalenemies=totalenemies+1;
                end --of checky==true
            end
        end
    end

        flagchecknewteleportersenemy=0;
    end
        flagchecknewteleportersenemy=0;
    -- tank PC2 selfresurrect if hardlevel or reskue  REMOVED
    -- END временный модуль для расстановки танков

    -- =======================================================================

    function customitems_use (id_item_placed,inventory_item_used)
        zzx=id_item_placed;
        if (zzx==162)and(inventory_item_used==101) then printat (gamey (y2),gamex (x2),56);
            removeinventoryitem(countinventory);
            countinventory=countinventory-1;
            enemies[totalenemies+1] = class_enemy:new("droid",x2,y2,500,0,0,0,0,0,0,10,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,10000,0,0,0,0,0);
            --class_enemy:new(typeob ,xt,yt,hpt,0,0,0,0,0,spd,prot,0,0,0,0,0,0,fear,0,slow,0,0,kule,0,0,invi,pain,addaura,0,0,0,0);
            totalenemies=totalenemies+1;
        end
    end

    if (ammoKEYPL1=="prifle") then end;


    if (ammoKEYPL1=="unused")and(hp>0)and(countinventory>0)and(editor<1)and(pause<1)and(kufrcountinventory<kufrmaximuminventorysize) then
        inventoryitemtoremove=inventoryitemtable[countinventory];
        dropableitem=ext_objs_string (inventoryitemtoremove,21);
        addinventoryitemwkufrze(inventoryitemtoremove);
        smsg1="";
        removeinventoryitem(countinventory);
        countinventory=countinventory-1; --предмет можно удалить только если он успешно поставится.
    end

    -- выкладывание вещей из инвентаря Player1  , использует переменные от ammo ssss
    if ((not man_is_moving2)and(not man_is_moving)) then -- обрабатываем кнопки только, если чувак и пуля не двигается уже
        if (((ammoKEYPL1=="placeitem")and(hp>0)and(countinventory>0)and(editor<1)and(pause<1))) then
            -- персонаж перемещается при выстреле льда,поправить как нибудь.
            steps=0; -- zzx=0;
            y2=y; x2=x;y2now=y2; x2now=x2;
            inventoryitemtoremove=inventoryitemtable[countinventory];
            dropableitem=ext_objs_string (inventoryitemtoremove,21);
            smsg2="inventoryitemtoremove="..inventoryitemtoremove;
            --if (inventoryitemtoremovex==nil) then inventoryitemtoremovex=inventoryitemtoremove; end;
            if (joystick_placeitem==1)and(dropableitem~="nodrop") then
              inventoryitemtoremove=inventoryitemtable[itemkeypress];
              dropableitem=ext_objs_string (inventoryitemtoremove,21);
              smsg2="inventoryitemtoremove="..inventoryitemtoremove;
              zzzzz=printat_if_empty (x,y,inventoryitemtoremove);
              if (zzzzz==1) then removeinventoryitem(itemkeypress);
                                  countinventory=countinventory-1; 
              end 
            end
            if movePL1=="left" then
                x2=x2-rozmiarznak;
               zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1)
                if (zzz) then
                    zzx=(zzz); 
                    customitems_use (zzx,inventoryitemtoremove);
                    if (zzx==56)and(dropableitem~="nodrop") then printat (gamey (y2),gamex (x2),inventoryitemtoremove);
                        removeinventoryitem(countinventory);
                        countinventory=countinventory-1; --предмет можно удалить только если он успешно поставится.

                    end;
                end
            end;

            --===========================
            if movePL1=="right" then
                --love.audio.play(wystrelsnd);
                x2=x2+rozmiarznak;
               zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1)
                if (zzz) then
                    zzx=(zzz); 
                    customitems_use (zzx,inventoryitemtoremove);
                    if (zzx==56)and(dropableitem~="nodrop") then printat (gamey (y2),gamex (x2),inventoryitemtoremove);
                        removeinventoryitem(countinventory);
                        countinventory=countinventory-1;
                    end;
                end
            end;
            --=====================================

            if movePL1=="down" then
                y2=y2+rozmiarznak;
               zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1)
                if (zzz) then
                    zzx=(zzz); 
                    customitems_use (zzx,inventoryitemtoremove);
                    if (zzx==56)and(dropableitem~="nodrop") then printat (gamey (y2),gamex (x2),inventoryitemtoremove);
                        removeinventoryitem(countinventory);
                        countinventory=countinventory-1;
                    end;
                end
            end;
            --=====================================
            if movePL1=="up" then
                y2=y2-rozmiarznak;
               zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1)
                if (zzz) then
                    zzx=(zzz); 
                    customitems_use (zzx,inventoryitemtoremove);
                    if (zzx==56)and(dropableitem~="nodrop") then printat (gamey (y2),gamex (x2),inventoryitemtoremove);
                        removeinventoryitem(countinventory);
                        countinventory=countinventory-1;
                    end;
                end
            end;
            --=====================================
            countinventory=#inventoryitemtable;
            inventory_changed=1;
        end

    end;

    -- END инвентарь игрока 1

    -- У всех реакций на выстрел 1 неиспр баг, если держать выстрел удаляются несколько целей
    --реакция на выстрел льда  Работает на 50%
    function reactice (zzxice,ext_x2,ext_y2)
        if(ext_x2~=nil) then x2=ext_x2; end;
        if(ext_y2~=nil) then y2=ext_y2; end;
        o_kod_ice=ext_objs_param (zzxice,8);
        damagestageid=ext_objs_param (zzxice,6);
        if (o_kod_ice==255) then  allowshot=0; end;
        if (o_kod_ice==nil) then o_kod_ice=0; end ;
        if (o_kod_ice>1)and(o_kod_ice<255) then  --build 4100
            love.audio.play(iceeffectsnd);
            printat (gamey(y2)+plusy,gamex(x2)+plusx,o_kod_ice);
            allowshot=0;
        end;
        if (zzxice==124) then

            by=gamey(y2);bx=gamex(x2); --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
            if (paralysatorrifle==0) then
                love.audio.play(iceeffectsnd);
                printat (gamey(y2)+plusy,gamex(x2)+plusx,"77");
   

                 end;
        end;

        if (o_kod_ice==1) then
            love.audio.play(iceeffectsnd);
            printat (gamey(y2)+plusy,gamex(x2)+plusx,"30");
            allowshot=0;
        end;--63,113,124  => 77
        if (zzxice==97)or (zzxice==98)or (zzxice==99)  then
            --стена от ледяново выстрела мгновенно рушится. но только в упор.
            if (steps<2) then printat (gamey(y2)+plusy,gamex(x2)+plusx,"27"); end;
            allowshot=0;
        end;
        return allowshot,0;
    end

    --реакция на выстрел пули  игрока 2 Работает на 100%  является копией reactammo , также как и reactmove2 - копия reactmove
    --        reactammo2 (zzx4ammo,x_ammo,y_ammo,allowshot_ammo_status,typta,2,sourceammo,command_ammo,command_power); end;
    function reactammo2 (zzx2ammo,x2pla2am,y2pla2am,allowshotpla2,ammoiconpla2,speedtimerPL2,sourceammo_f,komanda_pocisku,command_power_RA2)
        --smsg3="zlapali reactammo2 ("..zzx2ammo..","..x2pla2am..","..y2pla2am..",allowshotpla2,ammoiconpla2)";
        if (editor==1)or(pause==1) then         return 0,0;  end; 
        if (komanda_pocisku==nil) then komanda_pocisku=""; end; 
        realrikoszet=0;
        o_kod_ammo=ext_objs_param (zzx2ammo,10);
        o_kod_ammoPL1=ext_objs_param (zzx2ammo,9); -- dla gracza PL1
         o_kod_ice=ext_objs_param (zzx2ammo,8);
        damagestageid=ext_objs_param (zzx2ammo,6);
        if (o_kod_ammo==255) then  allowshotpla2=0; end;
        if (o_kod_ice==nil) then  o_kod_ice=0; end;       -- if (o_kod_ammoPL1==nil) then  o_kod_ammoPL1=0; end;
        if (damagestageid~=nil)and(damagestageid>0) then allowshotpla2=0; end;
        chancesitem=ext_objs_param (zzx2ammo,11); -- TO JEST WYTRZYMALOŚĆ itema !!
        if (chancesitem==nil) then chancesitem=0; end;
        damager=0; 
        if (sourceammo_f=="PC1") and (speedtimer>0) then damager=1;  end
        if (sourceammo_f~="PC1") and (speedtimerPL2>0) then damager=1; end
        realrikoszet=ext_objs_string (zzx2ammo,20);
        oldCCprice=ext_objs_string (zzx2ammo,27);
        qualityitem=ext_objs_string (zzx2ammo,28);
        if (realrikoszet==nil) then realrikoszet=0; end;
        addchances=0;
        if(sourceammo_f=="jezyk")then addchances=0; end;
        if(sourceammo_f=="realrikoszet")then addchances=0; end;
        if(sourceammo_f=="PC1")then -- (zzx4ammo,math.ceil (m_x_ammo),math.ceil (m_y_ammo)-autoammo_downfix,allowshot_ammo_status,typta,2,"PC1"); end;
            chancesyou=(math.random(46+20*tank+4*protect+24*damager)); -- udany atak
        end
        if(sourceammo_f~="PC1")then  chancesyou=(math.random(82+28*damager+addchances)); -- chances attack
          -- Ошибка исправлена , всегда приходил sourceammo="PC1"    (zzx4ammo)
        end
        --if  (chancesitem>0) then smsg1="Chances:"..chancesitem.."<"..chancesyou.."src="..sourceammo_f.."add="..addchances; end;
        chancesrandomsound=math.random(70);

        if (zzx2ammo==28)and(komanda_pocisku=="corrosion") then 
            printat_not_empty  (x2pla2am,y2pla2am,302); --_if_empty
             allowshotpla2=0;
          end

        --and(steps<5)and(steps>1)  --  Опция разрешения глобального рикошета. работает странно  пули танков отражаются как надо но они самоубиваются
        rikx=0;riky=0;
        if (ammoiconpla2=="cannons") then plusx=0; plusy=0;
        end;
        if (ammoiconpla2=="left") then plusx=-1;rikx=-rozmiarznak; end  -- их удаление не помогает решить вопрос невредимости врага за 1 клетку от стены. 
        if (ammoiconpla2=="right") then  plusx=1;rikx=rozmiarznak; end
        if (ammoiconpla2=="up") then  plusy=-1; riky=-rozmiarznak;  end
        if (ammoiconpla2=="down") then plusy=1; riky=rozmiarznak end
              if (realrikoszet=="rikoszet") then
            start_x=x2pla2am-rikx; start_y=y2pla2am-riky;ammo_moving=true; cmd="";
            --    start_x=x2pla2am; start_y=y2pla2am;ammo_moving=true; cmd="";
            if (ammoiconpla2=="right") then totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("left",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,180,1,0,1,default_ammo_speed,"realrikoszet",cmd,0,(math.ceil (standartdamage/2)) ); end;
            if (ammoiconpla2=="left") then totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("right",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,0,1,0,1,default_ammo_speed,"realrikoszet",cmd,0,(math.ceil (standartdamage/2)) ); end;
            if (ammoiconpla2=="down")  then  totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("up",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,270,1,0,1,default_ammo_speed,"realrikoszet",cmd,0,(math.ceil (standartdamage/2)) ); end;
            if (ammoiconpla2=="up")  then  totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("down",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,90,1,0,1,default_ammo_speed,"realrikoszet",cmd,0,(math.ceil (standartdamage/2)) ); end;
        end
        --if (zzx2ammo==27) then return allowshotpla2,ammoiconpla2 ;end; -- ???  3799 ошибка  y2pla2am  может быть из за этого?
       -- зачем извне автопатроны вычисляют плюс х и у если они задаются тут? 
       if (zzx2ammo<4) then 
            start_x=x2pla2am-rikx; start_y=y2pla2am-riky; cmd="";
            if (zzx2ammo==770)and(ammoiconpla2=="left") then 
              allowshotpla2=1; end 
            if (zzx2ammo==771)and(ammoiconpla2=="right") then
              allowshotpla2=1; end 
            if (zzx2ammo==772)and(ammoiconpla2=="up") then  
              allowshotpla2=1; end 
            if (zzx2ammo==773)and((ammoiconpla2=="down"))  then
              allowshotpla2=1; end 

                --ugolki
            if (realrikoszet=="powrot") then  allowshotpla2=1 ; end; 

          start_x=x2pla2am; start_y=y2pla2am; cmd="";
          allowshotpla2=0;
          if (zzx2ammo==0 )and(ammoiconpla2=="left")and (realrikoszet~="powrot") then 
              totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("left",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,180,1,0,1,default_ammo_speed,"powrot",cmd,0,(math.ceil (standartdamage/2)) ); end;
            if (zzx2ammo==1)and(ammoiconpla2=="right") then
              totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("right",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,0,1,0,1,default_ammo_speed,"powrot",cmd,0,(math.ceil (standartdamage/2)) ); end;
            if (zzx2ammo==2)and(ammoiconpla2=="up") then  
              totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("up",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,270,1,0,1,default_ammo_speed,"powrot",cmd,0,(math.ceil (standartdamage/2)) ); end;
            if (zzx2ammo==3)and((ammoiconpla2=="down"))  then
              totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("down",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,90,1,0,1,default_ammo_speed,"powrot",cmd,0,(math.ceil (standartdamage/2)) ); end;
            end

              -- ammo when stucks on object (allowed)
        if (o_kod_ammo~=nil)and(o_kod_ammo=="255")or(damagestageid~=nil)and(damagestageid>0)  then 
        if (komanda_pocisku=="bombplace") then 
        printat_if_empty  (x2pla2am-(plusx*rozmiarznak),y2pla2am-(plusy*rozmiarznak),"124");
        allowshotpla2=0;   end; -- when stuck enemy places bomb
        if (komanda_pocisku=="mineplace") then 
        printat_if_empty  (x2pla2am-(plusx*rozmiarznak),y2pla2am-(plusy*rozmiarznak),"146");
        allowshotpla2=0;   end; -- kiedy spotyka wroga zużywa miny 
              
           if (komanda_pocisku=="nowywrog") then 
            typeobject="migalka";
            xt=x2pla2am-(plusx*rozmiarznak);
            yt=y2pla2am-(plusy*rozmiarznak);
            hpt_new=command_power_RA2;
              enemies[totalenemies+1] = class_enemy:new(typeobject,xt,yt,hpt_new,0,0,0,0,0,addspeed,10+addprotect,0,0,0,0,0,0,addfear,0,addslowdown,0,0,addkulemet,0,0,addinvis,addpain,addaura,0,0,0,0);
                    totalenemies=totalenemies+1;
            end
        end

        damagestage_enable=1;
        if (komanda_pocisku=="freeze") then 
            xt=x2pla2am;--(plusx*rozmiarznak);
            yt=y2pla2am;--(plusy*rozmiarznak);
        if (o_kod_ice>1)and(o_kod_ice<255) then  --build 4100
            love.audio.play(iceeffectsnd);
            printat (gamey(yt),gamex(xt),o_kod_ice);
            allowshotpla2=0; --smsg1="ice="..o_kod_ice;
            damagestage_enable=0; 
        end;
        if (o_kod_ice==1) then
            love.audio.play(iceeffectsnd);
            printat (gamey(yt),gamex(xt),"30");
           -- smsg1="ice1="..o_kod_ice;
            allowshotpla2=0; 
            damagestage_enable=0;
            return 
        end;
      end

        if (zzx2ammo==63) then
            --love.audio.play(ammotobadtargetsnd);
            allowshotpla2=0;
        end;
        if (zzx2ammo==147) then
            playrandombrokensound (50);
        end

        -- это задаёт реакцию по умолчанию на выстрел , если указан код 1 значит предмет разрушаемый  и разрушать его надо по damagestage
        if ((damagestageid~=nil)and(damagestageid<255))and (damagestage_enable==1) then  --(o_kod_ammo==1)and
            if (chancesitem<chancesyou) then
                if (zzx2ammo<97)or(zzx2ammo>99)then   playrandombrokensound (chancesrandomsound,x2pla2am,y2pla2am);end;
                if (zzx2ammo>96)and(zzx2ammo<101)then playsoundifvisible(ammotobadtargetsnd,x2pla2am,y2pla2am); end
                printat (gamey(y2pla2am),gamex(x2pla2am),damagestageid); end ;
            allowshotpla2=0;-- при попадании в любую цель пуля должна остановится, иначе она будет лететь дальше.
        end;

     if (zzx2ammo==33) or (zzx2ammo==34) then 
            frozenscientists=scanobject (34,-2);
            savedscientists=scanobject (33,-2);
          end


   if (zzx2ammo==123) then

            zzblock=(screens (gamey(y2pla2am)+plusx,gamex(x2pla2am)+plusy));
            if (zzblock==56) then
                printat (gamey(y2pla2am),gamex(x2pla2am),"56");
                printat (gamey(y2pla2am)+plusx,gamex(x2pla2am)+plusy,zzx2ammo);
            end
            if (zzblock~=56)and(zzx2ammo==123) then
                love.audio.play(ammobrokeitemortargetsnd);
                targetremains=targetremains-1;-- при базовом уровне сложности счет идёт игроку 1.
                score=score+10;
                printat (gamey(y2pla2am),gamex(x2pla2am),"27");
                allowshotpla2=0;
            end
        end

        if (zzx2ammo==71) then
            map_changed=60;defacescreen=1; timerz=0;
            playsoundifvisible(superbombsnd,x2pla2am,y2pla2am);
            printat (gamey(y2pla2am),gamex(x2pla2am),"27");
            printat (gamey(y2pla2am)+plusy,gamex(x2pla2am)+plusx,"27");
            allowshotpla2=0;
        end;

        if (zzx2ammo==75) then
            playrandombrokensound (chancesrandomsound,x2pla2am,y2pla2am);
        end;

        if (zzx2ammo==124) then
          start_x=x2pla2am; start_y=y2pla2am; 
            if (titlegame=="Reskue") then  playsoundifvisible(dynamitesnd,x2pla2am,y2pla2am);end;
            if (titlegame~="Reskue") then playsoundifvisible(bombsnd,x2pla2am,y2pla2am);end;
            by=gamey(y2pla2am);bx=gamex(x2pla2am); --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
            if (sourceammo_f~="PC1")or(slot0~=172)and(sourceammo_f=="PC1") then  explodebomb (by,bx,""); end

            if (slot0==172)and(sourceammo_f=="PC1") then
              playsoundifvisible (explodeicesnd,x2,y2);
              mass_explode (by,bx,"freeze",0,"trap",-2,5000)
            printat (gamey(y2pla2am),gamex(x2pla2am),"30");
              tanks_speed_am = default_ammo_speed;
          totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("left",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,180,1,rikoszets,0,tanks_speed_am,"freezebomb","freeze",wzmacniacz,50,0,"freezebomb",200);
          totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("right",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,0,1,rikoszets,0,tanks_speed_am,"freezebomb","freeze",wzmacniacz,50,0,"freezebomb",200);
          totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("up",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,90,1,rikoszets,0,tanks_speed_am,"freezebomb","freeze",wzmacniacz,50,0,"freezebomb",200);
          totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("down",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,270,1,rikoszets,0,tanks_speed_am,"freezebomb","freeze",wzmacniacz,50,0,"freezebomb",200);
         
            end ;
     
        if (slot0~=172)then  --(slot0==214) and 
           command_ammo_b=""; delayed_cmd="";
          if (damager==1) then command_ammo_b="bombplace"; delayed_cmd="bombplace"; 
            --wzmacniacz tam null i nado damager  okay  okay. 
             tanks_speed_am = default_ammo_speed;
             tanks_speed_am=tanks_speed_am-20; 
             end; 
          totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("left",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,180,renderammoshot_ammos,rikoszets,0,tanks_speed_am,typt,command_ammo_b,damager,50,0,delayed_cmd,200);
          totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("right",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,0,renderammoshot_ammos,rikoszets,0,tanks_speed_am,typt,command_ammo_b,damager,50,0,delayed_cmd,200);
          totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("up",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,90,renderammoshot_ammos,rikoszets,0,tanks_speed_am,typt,command_ammo_b,damager,50,0,delayed_cmd,200);
          totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("down",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,270,renderammoshot_ammos,rikoszets,0,tanks_speed_am,typt,command_ammo_b,damager,50,0,delayed_cmd,200);
          if (slot0==214)and (damager==1)  then
          command_ammo="invisible";  command_power=1; 
         final_ammo_speed=final_ammo_speed-100;SEND_DAMAGE=0; damager=0;
         totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("left",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,angle,renderammoshot_ammos,rikoszets,0,final_ammo_speed,"PC1",command_ammo,damager,SEND_DAMAGE,0,paramX,command_power,delayed_cmd,delayed_snd);
         totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("right",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,angle,renderammoshot_ammos,rikoszets,0,final_ammo_speed,"PC1",command_ammo,damager,SEND_DAMAGE,0,paramX,command_power,delayed_cmd,delayed_snd);
         totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("up",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,angle,renderammoshot_ammos,rikoszets,0,final_ammo_speed,"PC1",command_ammo,damager,SEND_DAMAGE,0,paramX,command_power,delayed_cmd,delayed_snd);
         totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("down",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,angle,renderammoshot_ammos,rikoszets,0,final_ammo_speed,"PC1",command_ammo,damager,SEND_DAMAGE,0,paramX,command_power,delayed_cmd,delayed_snd);
          end

         end

            allowshotpla2=0;
        end;

   if (sourceammo_f=="freezebomb")and (zzx2ammo==30) then allowshotpla2=1;  end; 
   if (sourceammo_f=="freezebomb")and (zzx2ammo==77) then allowshotpla2=1; end; 
       

        if ((zzx2ammo==58)and(chances>35)or(zzx2ammo==59)) then
            playsoundifvisible(bombsnd,x2pla2am,y2pla2am);
            by=gamey(y2pla2am);bx=gamex(x2pla2am); --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
            explodebomb (by,bx,"");
            allowshotpla2=0;
        end;

        if ((zzx2ammo==61)and(chances>35)) then
            playsoundifvisible(explodeicesnd,x2pla2am,y2pla2am);
            by=gamey(y2pla2am);bx=gamex(x2pla2am); --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
            explodeice (by,bx,"freezebomb",0,"trap",-2);
            allowshotpla2=0;
        end;

     

        -- в усложнённом уровне танк может уничтожать цели основного игрока портя ему прохождение.
        if ((zzx2ammo==122)) then  -- в дружественном режиме танк может помогать ему.
            if (NO_SCORE_MINES_MODE==0) then  love.audio.play(ammobrokeitemortargetsnd); end;
            if (NO_SCORE_MINES_MODE==0) then targetremains=targetremains-1;end;-- при базовом уровне сложности счет идёт игроку 1.
            printat (gamey(y2pla2am),gamex(x2pla2am),"27");
            -- придётся немного упростить игру, иначе будет непроходимо с другими оружиями (poziom==0)and(hardlevel~=1)
            allowshotpla2=0;-- при попадании в любую цель пуля должна остановится, иначе она будет лететь дальше.

        end


        if (zzx2ammo==76)or(zzx2ammo==133)or (zzx2ammo==134) then
            playsoundifvisible (ammotobadtargetsnd,x2pla2am,y2pla2am);
        end;

        if (zzx2ammo==114)or (zzx2ammo==120)or(zzx2ammo==131)  then
            playrandombrokensound (chancesrandomsound,x2pla2am,y2pla2am);
        end;

        if  (y2pla2am==nil) then y2pla2am=0; end -- затычка от ошибки 3807 global y2pla2am == nil !!!!
        if  (x2pla2am==nil) then x2pla2am=0; end -- затычка от ошибки 3807 global y2pla2am == nil !!!!
        return allowshotpla2,realrikoszet;
    end
    -- обработка выстрелов игрока 2 s


    --нужно отправить реальные координаты карты в визуальные и обратно.
    function reactammo3 (zzx3ammo,x3pla2am,y3pla2am,allowshotpla3)
        x3pla2amrealtovisual,y3pla2amrealtovisual= xgametorealpositionbezbyte (y3pla2am,x3pla2am);
        y3pla2amrealtovisual=y3pla2amrealtovisual+rozmiarznak;
        allowshotpla3=reactammo2 (zzx3ammo,x3pla2amrealtovisual,y3pla2amrealtovisual,allowshotpla3,"cannons",0,"",0); --x3pla2am,y3pla2am,
        return allowshotpla3;
        --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
    end

    --реакция на выстрел пули  игрока 3  является копией reactammo2
    --работает только с знакоместными координатами а не преобразует реальные в знакоместные через gamex/gamey

    function playrandombrokensound (chances,xt,yt)
        if (xt==nil)and(yt==nil) then xtt=x; ytt=y else xtt=xt; ytt=yt; end;
        brokesoundid=math.ceil(math.random(10));
        playsoundifvisible (brokensnd[brokesoundid],xtt,ytt);
    end

    ossys=love.system.getOS()

    randommove_word=math.ceil(math.random(4));
    if (randommove_word==4) then randommove_word="up"; end
    if (randommove_word==3) then randommove_word="down"; end
    if (randommove_word==2) then randommove_word="left"; end
    if (randommove_word==1) then randommove_word="right"; end
    icekeyPL1="";
    firekeyPL1="";
       movePL2=""; ammoKEYPL2="";
         movePL3=""; ammoKEYPL3="";
    -- слой для переопределения клавиш для разных ОС. и возможности их легкого переопределения.
    if (ossys=="Linux")or(ossys=="Windows") then
        movePL1="";
        if (editor==1) then movePL2=""; end --(coop_join_disable==0)
        if (renderer==1) then ammoKEYPL1=""; end  -- пытаюсь устранить баг в Андроид - не выбираются пункты меню!!!1655 добавил IF
        if (editor==1) then ammoKEYPL2=""; end; -- (coop_join_disable==0)

        joysticks=love.joystick.getJoysticks();

       if (rzad=="pad")and(typejoystick=="nojoystick")  then joystickremoved=1;    end; 
       if (rzad=="pad")and(#joysticks==0)  then joystickremoved=1;  end; 
       if (joystickremoved==1)and(editor==0) then pause=1 ;joystickremoved=0; smsg1=smsg_string ("NO_JOY");  end;  --and(typejoystick~="xbox360")

    function detecttypejoystick (joystickPL1name)
      
        if (joystickPL1name==nil) then typejoystick="nojoystick"; 
          
        end ; -- WORKING   Gets real joystick name.
                    if (joystickPL1name=="Microsoft X-Box One S pad") then typejoystick="xbox1"; imagejoystick="xbox"; end
                    if (joystickPL1name=="Xbox Wireless Controller") then typejoystick="xbox1-Wireless"; imagejoystick="xbox"; end
                    
                    if (joystickPL1name=="Xbox 360 Wireless Receiver") then typejoystick="xbox360"; imagejoystick="xbox"; end
                    if (joystickPL1name=="Microsoft X-Box 360 pad") then typejoystick="xbox360"; imagejoystick="xbox"; end -- speedlink
                    if (joystickPL1name=="Sony PLAYSTATION(R)3 Controller") then typejoystick="sonyPS3"; imagejoystick="sonyPS3"; end
                    if (joystickPL1name=="SHANWAN PS3 GamePad") then typejoystick="sonyPS3"; imagejoystick="sonyPS3"; end
                    if (joystickPL1name=="ShanWan USB WirelessGamepad") then typejoystick="sonyPS3"; PS3joystickMOD="shanwan"; imagejoystick="sonyPS3";end
                      return typejoystick,imagejoystick;
                    end



        --love.joystick.loadGamepadMappings    https://love2d.org/wiki/love.joystick.loadGamepadMappings
        joystickremoved=0; 
        if (ossys~="Android")and(#joysticks>0) then
            joystickKEYPL1="";
            joystickKEYPL2="";
            joystickKEYPL3="";
            for i, joystick in ipairs(joysticks) do
                joystickPL1 = joysticks[1];
                if (i==1)or (i==2) or (i==3) then    --  joystick_is_gamepad=joystick:isGamepad() ;
                    s = {}; ss= {} ;
                    joystickPL1name=joystick:getName();
                    if  (i==2) then joystickPL2name=joystick:getName(); end; 
                    if  (i==3) then joystickPL3name=joystick:getName(); end; 
                    s.ax, s.ay,leftfirejs,ss.ax,ss.ay,rightfirejs = joystick:getAxes();

                    
                    if (leftfirejs==nil) then leftfirejs=0; end
                    if (rightfirejs==nil) then rightfirejs=0; end;-- zatyczki ot nil
                    typejoystick="sonyPS3";
                    PS3joystickMOD="";
                    joystickPL1_ID="exist";joystickremoved=0; 
                    typejoystick=detecttypejoystick (joystickPL1name) ;
                    if  (i==1) then typePL1joystick,imagePL1joystick=detecttypejoystick (joystickPL1name) ; end; 
                    if  (i==2) then typePL2joystick,imagePL2joystick=detecttypejoystick (joystickPL2name) ; end; 
                    if  (i==3) then typePL3joystick,imagePL3joystick=detecttypejoystick (joystickPL3name) ; end; 
                    if (typejoystick=="xbox1-Wireless") then 
                      s.ax, s.ay,ss.ax,ss.ay,rightfirejs,leftfirejs = joystick:getAxes();
                        end
                    ; -- REMOVE IT !! 
                    --  joystick_getGUID=joystick:getGUID(); -- GUID 050000004C0500006802000000800000 Sony PLAYSTATION(R)3 Controller
                    smsg4="Pad driver:"..typejoystick.." "..PS3joystickMOD
                   if (joystickPL1_ID=="exist")and (vibration>0)and (rzad=="pad") then joystick:setVibration( vibration, vibration, vibration ) ; vibration=0; end;
                end
     
       
   function detectmovejoystick (i,disableleftclick,deadzone)
                        s.ax, s.ay,leftfirejs,ss.ax,ss.ay,rightfirejs = joystick:getAxes();
                        if (s.ax>0)and(s.ax<deadzone/10) then s.x=0; s.ax=0; else s.x=s.ax; end
                        if (s.ay>0)and(s.ay<deadzone/10) then s.y=0;s.ay=0;  else s.y=s.ay; end
                        if (s.ax<0)and(s.ax>-deadzone/10) then s.x=0;s.ax=0; else s.x=s.ax; end
                        if (s.ay<0)and(s.ay>-deadzone/10) then s.y=0; s.ay=0;else s.y=s.ay;  end
                        if (s.y>0)and(disableleftstick==0) then movePLX="down";  lastmovePLX=movePLX; end; --move keys
                        if (s.y<0)and(disableleftstick==0) then movePLX="up";   lastmovePLX=movePLX; end;
                        if (s.x<0)and(disableleftstick==0) then movePLX="left";   lastmovePLX=movePLX; end;
                        if (s.x>0)and(disableleftstick==0) then movePLX="right";  lastmovePLX=movePLX;  end;
                        if (rightfirejs>deadzone/10) then ammoKEYPLX="ammo";firekeyPLX="fire"; end;
                        return movePLX,ammoKEYPLX,firekeyPLX,lastmovePLX
   end


               -- 2 основных стика на всех джойстиках работают одинаково.
                         
                if (i==1)and (emulatedjoystick1as2==0) then --player 1 support
               
                       --movePL1,ammoKEYPL1,firekeyPL1,lastmovePL1=detectmovejoystick (i,disableleftclick,deadzone); 
                        -- обьединить не удаётся  ему ПОХЕР на все изменения  ломается сразу ВСЁ перемещение вообще в игре если вызывать эту функцию. 
                        if (1==1) then -- придется 20 раз копировать один и тот же код 
                        if (s.ax>0)and(s.ax<deadzone/10) then s.x=0; s.ax=0; else s.x=s.ax; end
                        if (s.ay>0)and(s.ay<deadzone/10) then s.y=0;s.ay=0;  else s.y=s.ay; end
                        if (s.ax<0)and(s.ax>-deadzone/10) then s.x=0;s.ax=0; else s.x=s.ax; end
                        if (s.ay<0)and(s.ay>-deadzone/10) then s.y=0; s.ay=0;else s.y=s.ay;  end
                        if (s.y>0)and(disableleftstick==0) then movePL1="down"; lastmovePL1=movePL1; rzad="pad"; end; --move keys
                        if (s.y<0)and(disableleftstick==0) then movePL1="up"; lastmovePL1=movePL1;  rzad="pad"; end;
                        if (s.x<0)and(disableleftstick==0) then movePL1="left"; lastmovePL1=movePL1;  rzad="pad"; end;
                        if (s.x>0)and(disableleftstick==0) then movePL1="right"; lastmovePL1=movePL1;  rzad="pad";  end;
                        if (rightfirejs>deadzone/10) then ammoKEYPL1="ammo";firekeyPL1="fire"; end;
                          end

                        if (leftfirejs>deadzone/10) then 
                          ammoKEYPL1="itemselect"; 
                          if (menu==9) then rsKEYPL1="ekwipunek"; ammokeyPL1="";  end; 
                          itemkey=0;
                            if (ss.ax>0)and(ss.ax<deadzone/3)and(disablerightstick==0) then itemkeypress=itemkeypress+1; else ss.x=ss.ax; end
                            if (ss.ay>0)and(ss.ay<deadzone/3)and(disablerightstick==0) then itemkeypress=itemkeypress+1;  else ss.y=ss.ay; end
                            if (ss.ax<0)and(ss.ax>-deadzone/3)and(disablerightstick==0) then itemkeypress=itemkeypress-1; else ss.x=ss.ax; end
                            if (ss.ay<0)and(ss.ay>-deadzone/3)and(disablerightstick==0) then itemkeypress=itemkeypress-1; else ss.y=ss.ay;  end
                          codeitem= inventoryitemtable[itemkeypress];
                            if (countinventory>0)and (codeitem~=nil)and (timerz>1) then
                                a,item_name1=smsg_string (objs[((codeitem+1))][13]); --=selectedobject_name_SMSG_code);
                                if (item_name1~=nil) then smsg1="Select "..item_name1; end;
                            end
                            if (countinventory==nil) then countinventory=0; end;  
                            if ((itemkeypress==nil)) then itemkeypress=0; end; 
                            if (itemkeypress>countinventory) then itemkeypress=countinventory; end
                            if (itemkeypress<1) then itemkeypress=1; end
                            
                            if (joystick:isDown(1)) and (typejoystick=="sonyPS3" ) then ammoKEYPL1="itemuse";itemkey=itemkeypress;  end; --13 rightstick removed
                            if (joystick:isDown(1)) and (typejoystick=="xbox360" )  then ammoKEYPL1="itemuse";itemkey=itemkeypress;  end; --8 rightstick removed
                            if (joystick:isDown(1)) and (typejoystick=="xbox1" )  then ammoKEYPL1="itemuse";itemkey=itemkeypress;  end; --8 rightstick removed
                            if (joystick:isDown(1)) and (typejoystick=="xbox1-Wireless" )  then ammoKEYPL1="itemuse";itemkey=itemkeypress;  end; --8 rightstick removed
                              joystick_placeitem=0; 
                            if (joystick:isDown(4)) and (typejoystick=="sonyPS3")then ammoKEYPL1="placeitem";itemkey=itemkeypress;  joystick_placeitem=1; end;
                            if (joystick:isDown(4)) and (typejoystick=="xbox360")then ammoKEYPL1="placeitem";itemkey=itemkeypress;  joystick_placeitem=1; end;
                            if (joystick:isDown(4)) and (typejoystick=="xbox1")then ammoKEYPL1="placeitem";itemkey=itemkeypress;  joystick_placeitem=1; end;
                            if (joystick:isDown(4)) and (typejoystick=="xbox1-Wireless")then ammoKEYPL1="placeitem";itemkey=itemkeypress;  joystick_placeitem=1; end;
                            --if (joystick:isDown(3)) and (typejoystick=="xbox1-Wireless")then ammoKEYPL1="placeitem";itemkey=itemkeypress;  joystick_placeitem=1; end;
                            
                        else itemkeypress=0;
                        end
                    if (typejoystick=="xbox360" ) then
                        if joystick:isDown(1)and( ammoKEYPL1~="itemuse") then ammoKEYPL1="ammo";firekeyPL1="fire";joystickKEYPL1="X"; rzad="pad";  end;  --A (X xbox360) used for APPLY
                        if joystick:isDown(2) then  joystickKEYPL1="O"; end;   --B (O xbox360)  used for CANCEL
                        if joystick:isDown(3) then ammoKEYPL1="bomb";joystickKEYPL1="TR"; end;  --Y (TR xbox360)
                        --if joystick:isDown(3)and(menu==9) then ammoKEYPL1="unpack";joystickKEYPL1="TR"; end;  --Y (TR PS3)
                        if joystick:isDown(4) then ammoKEYPL1="placeitem";joystickKEYPL1="SQR"; end; -- X (SQR xbox360) (drop item)
                        if joystick:isDown(5) then ammoKEYPL1="ekwip"; itemkey=0; end --left fire xbox360
                        if joystick:isDown(6) then ammoKEYPL1="ice"; icekeyPL1="ice"; rzad="pad";  end ;--right fire xbox360
                     --   if joystick:isDown(11)  then movePL1="menu";  end;  --start xbox360   -     было 8  для джойстика если это не пауза строку выше поменять
                        if (ossys=="Linux")and joystick:isDown(11) then ammoKEYPL1="r"; end;  --linux xpad xbox360 fix -- было 8  для джойстика если это не пауза строку выше поменять
                        if joystick:isDown(10) then ammoKEYPL1="r"; end;  --  -- right stick button must be  R3
                        if joystick:isDown(8) then movePL1="menu";end;  --   -- start button must be 
                        if joystick:isDown(14) then movePL1="up";lastmovePL1=movePL1; rzad="pad";  end; --dpup xbox360
                        if joystick:isDown(15) then movePL1="down";lastmovePL1=movePL1; rzad="pad";  end; --dpdown xbox360
                        if joystick:isDown(12) then movePL1="left";lastmovePL1=movePL1;  rzad="pad"; end; --dpleft xbox360
                        if joystick:isDown(13) then movePL1="right";lastmovePL1=movePL1; rzad="pad";  end; --dpright xbox360
                        if joystick:isDown(9) then ammoKEYPL1="h";  end;  -- left stick button must be defauld  L3

                  
                        if joystick:isDown(7) then ammoKEYPL1="openmainmenu"; end;  -- PS key (guide?) xbox360
                        if joystick:isDown(16) then ammoKEYPL1="ammo"; firekeyPL1="fire"; end ;--right fire xbox360
                        if joystick:isDown(17) then ammoKEYPL1="ice"; icekeyPL1="ice"; joystickKEYPL1="O"; end;   --B (O xbox360)  used for CANCEL
                        if joystick:isDown(9) and joystick:isDown(10) then ammoKEYPL1="openmainmenu"; end; -- L3+R3

                        if joystick:isDown(8) and joystick:isDown(7)  and timerz>2 then love.audio.play(wallsnd); emulatedjoystick1as2=not_numeric(emulatedjoystick1as2);  
                        smsg1="PL2 Select mode Versus or Ally Player (if available).  L3 or R3. COOP activated."; menu=0; renderer=1; 
                        end;  -- SELECT + PAUSE XBOX ONE 
                      end

                    if (typejoystick=="xbox1" ) then
                        if joystick:isDown(1)and( ammoKEYPL1~="itemuse") then ammoKEYPL1="ammo";firekeyPL1="fire";joystickKEYPL1="X"; rzad="pad";  end;  --A (X xbox360) used for APPLY
                        if joystick:isDown(2) then  joystickKEYPL1="O"; end;   --B (O xbox360)  used for CANCEL
                        if joystick:isDown(3) then ammoKEYPL1="bomb";joystickKEYPL1="TR"; end;  --Y (TR xbox360)
                        --if joystick:isDown(3)and(menu==9) then ammoKEYPL1="unpack";joystickKEYPL1="TR"; end;  --Y (TR PS3)
                        if joystick:isDown(4) then ammoKEYPL1="placeitem";joystickKEYPL1="SQR"; end; -- X (SQR xbox360) (drop item)
                        if joystick:isDown(5) then ammoKEYPL1="ekwip"; itemkey=0; end --left fire xbox360
                        if joystick:isDown(6) then ammoKEYPL1="ice"; icekeyPL1="ice";rzad="pad";  end ;--right fire xbox360

                        if joystick:isDown(8) then  ammoKEYPL1="openmainmenu";  end;  --   -- TRI POLOSKI XBOX ONE KEY 
                        if joystick:isDown(9) then ammoKEYPL1="openmainmenu"; end;  -- XBOX ONE KEY
                        if joystick:isDown(7)  then movePL1="menu";  end;  -- SELECT XBOX ONE KEY 
                        if joystick:isDown(10) then ammoKEYPL1="h";  end;  -- L3 XBOX ONE KEY
                        if joystick:isDown(11) then ammoKEYPL1="r"; end;  -- R3 XBOX ONE KEY 

                        if joystick:isDown(16) then movePL1="up";lastmovePL1=movePL1; rzad="pad";  end; --dpup xbox360
                        if joystick:isDown(17) then movePL1="down";lastmovePL1=movePL1; rzad="pad";  end; --dpdown xbox360
                        if joystick:isDown(18) then movePL1="left";lastmovePL1=movePL1;  rzad="pad"; end; --dpleft xbox360
                        if joystick:isDown(19) then movePL1="right";lastmovePL1=movePL1; rzad="pad";  end; --dpright xbox360

                        if joystick:isDown(8) and joystick:isDown(7)  and timerz>2 then love.audio.play(wallsnd); emulatedjoystick1as2=not_numeric(emulatedjoystick1as2);  
                        smsg1="PL2 Select mode Versus or Ally Player (if available).  L3 or R3. COOP activated."; menu=0; renderer=1; 
                        end;  -- SELECT + PAUSE XBOX ONE 
                      end
                        if (typejoystick=="xbox1-Wireless" ) then
                        if joystick:isDown(1)and( ammoKEYPL1~="itemuse") then ammoKEYPL1="ammo";firekeyPL1="fire";joystickKEYPL1="X"; rzad="pad";  end;  --A (X xbox360) used for APPLY
                        if joystick:isDown(2) then joystickKEYPL1="O"; end;   --B (O xbox360)  used for CANCEL
                        if joystick:isDown(5) then ammoKEYPL1="bomb";joystickKEYPL1="TR"; end;  --Y (TR xbox360)
                        --if joystick:isDown(5)and(menu==9) then ammoKEYPL1="unpack";joystickKEYPL1="TR"; end;  --Y (TR PS3)
                        if joystick:isDown(4) then ammoKEYPL1="placeitem";joystickKEYPL1="SQR"; end; -- X (SQR xbox360) (drop item)
                        if joystick:isDown(7) then ammoKEYPL1="ekwip"; itemkey=0; end --left fire xbox360
                        if joystick:isDown(8) then  ammoKEYPL1="ice"; icekeyPL1="ice"; rzad="pad";  end ;--right fire xbox360

                        if joystick:isDown(255) then  ammoKEYPL1="openmainmenu";  end;  --   --  XBOX ONE KEY  - 17
                        if joystick:isDown(12) then ammoKEYPL1="openmainmenu"; end;  -- TRI POLOSKI XBOX ONE KEY 
                        if joystick:isDown(16)  then movePL1="menu";  end;  -- SELECT XBOX ONE KEY 
                        if joystick:isDown(14) then ammoKEYPL1="h";  end;  -- L3 XBOX ONE KEY
                        if joystick:isDown(15) then ammoKEYPL1="r"; end;  -- R3 XBOX ONE KEY 

                        if joystick:isDown(3) then movePL1="up";lastmovePL1=movePL1; rzad="pad";  end; --dpup xbox360
                        if joystick:isDown(6) then movePL1="down";lastmovePL1=movePL1; rzad="pad";  end; --dpdown xbox360
                        if joystick:isDown(9) then movePL1="left";lastmovePL1=movePL1;  rzad="pad"; end; --dpleft xbox360
                        if joystick:isDown(10) then movePL1="right";lastmovePL1=movePL1; rzad="pad";  end; --dpright xbox360

                        if joystick:isDown(12) and joystick:isDown(16)  and timerz>2 then love.audio.play(wallsnd); emulatedjoystick1as2=not_numeric(emulatedjoystick1as2);  
                        smsg1="PL2 Select mode Versus or Ally Player (if available).  L3 or R3. COOP activated."; menu=0; renderer=1; 
                        end;  -- SELECT + PAUSE XBOX ONE 
                      end

                    if (typejoystick=="sonyPS3" ) then
                        if joystick:isDown(1)and( ammoKEYPL1~="itemuse") then ammoKEYPL1="ammo";firekeyPL1="fire";joystickKEYPL1="X"; rzad="pad";  end;  --A (X PS3) used for APPLY

                        if joystick:isDown(2) then  joystickKEYPL1="O"; end;   --B (O PS3)  used for CANCEL
                        if joystick:isDown(3) then ammoKEYPL1="bomb";joystickKEYPL1="TR"; end;  --Y (TR PS3)
                        --if joystick:isDown(3)and(menu==9) then ammoKEYPL1="unpack";joystickKEYPL1="TR"; end;  --Y (TR PS3)
                        if joystick:isDown(4) then ammoKEYPL1="placeitem";joystickKEYPL1="SQR"; end; -- X (SQR PS3) (drop item)
                        if joystick:isDown(5) then ammoKEYPL1="ekwip"; itemkey=0; end --left fire PS3
                        if joystick:isDown(6) then ammoKEYPL1="ice"; icekeyPL1="ice";  rzad="pad"; end ;--right fire PS3
                        
                        if joystick:isDown(13)  then ammoKEYPL1="r"; end;  -- right stick click PS3 -- R3   and (ammoKEYPL1~="itemselect")and( ammoKEYPL1~="itemuse")
                        --if joystick:isDown(7) then ammoKEYPL1="ice";  end --left  fire fire PS3                        --if joystick:isDown(8) then ammoKEYPL1="ice";  end --right fire fire PS3
                        if joystick:isDown(9) then ammoKEYPL1="openmainmenu"; end;  --select PS3
                        if joystick:isDown(10)  then movePL1="menu";  end;  --start PS3     USUN KOMENTARZ
                        if joystick:isDown(9) and  joystick:isDown(10) and timerz>2 then love.audio.play(wallsnd); emulatedjoystick1as2=not_numeric(emulatedjoystick1as2); 
                          smsg1="PL2 Select mode Player or Ally Player (if available).  L3 or R3. COOP activated."; menu=0; renderer=1;  
                         end;  --start PS3
                        if joystick:isDown(11) then ammoKEYPL1="openmainmenu"; end;  -- PS key (guide?) PS3
                        if joystick:isDown(12) then ammoKEYPL1="h"; end;  -- left stick click PS3   L3
                        if joystick:isDown(14) then movePL1="up";lastmovePL1=movePL1;  rzad="pad"; end; --dpup PS3
                        if joystick:isDown(15) then movePL1="down";lastmovePL1=movePL1; rzad="pad";  end; --dpdown PS3
                        if joystick:isDown(16) then movePL1="left";lastmovePL1=movePL1;  rzad="pad"; end; --dpleft PS3
                        if joystick:isDown(17) then movePL1="right";lastmovePL1=movePL1; rzad="pad";  end; --dpright PS3
                        if joystick:isDown(18) then ammoKEYPL1="openmainmenu"; end;  -- PS key (guide?)
                        if joystick:isDown(19) then ammoKEYPL1="openmainmenu"; end;  -- PS key (guide?)
                        if joystick:isDown(20) then ammoKEYPL1="openmainmenu"; end;  -- PS key (guide?)
                        if joystick:isDown(12) and joystick:isDown(13) then ammoKEYPL1="openmainmenu"; end; --L3+R3

                --if (itemkey) then smsg1="a"..ammoKEYPL1.."..itemkey.."..itemkey.."/"..itemkeypress; end;
                       
                        if (PS3joystickMOD=="shanwan") then
                            if joystick:isDown(8) then movePL1="up";lastmovePL1=movePL1; rzad="pad";  end; --dpup PS3
                            if joystick:isDown(9) then movePL1="down";lastmovePL1=movePL1; rzad="pad";  end; --dpdown PS3
                            if joystick:isDown(10) then movePL1="left";lastmovePL1=movePL1;  rzad="pad"; end; --dpleft PS3
                            if joystick:isDown(11) then movePL1="right";lastmovePL1=movePL1;  rzad="pad"; end; -- right stick click PS3
                        end
                    end
                    --smsg1="s.x="..s.x.."s.y="..s.y.." ext="..extent.." 0.25 deadzone";

                end

                  -- первый джойстик без эмуляции  - это ПЕРВЫЙ игрок                   -- первый джойстик с эмуляцией - это ВТОРОЙ игрок
                  -- второй джойстик без эмуляции - это ВТОРОЙ игрок.                   -- второй джойстик с эмуляцией - это ТРЕТИЙ игрок.
                  -- 3 без - это ТРЕТИЙ игрок
                if (i==1) and (emulatedjoystick1as2==1) then --условия верные осталось добавить xbox и доп кнопки 
                
                   if joystick:isDown(14) then movePL2="up";lastmovePL2=movePL2;  end; --dpup PS3
                    if joystick:isDown(15) then movePL2="down"; lastmovePL2=movePL2; end; --dpdown PS3
                   if joystick:isDown(16)and(typejoystick=="sonyPS3") then movePL2="left"; lastmovePL2=movePL2; end; --dpleft PS3
                    if joystick:isDown(17)and(typejoystick=="sonyPS3") then movePL2="right";lastmovePL2=movePL2;  end; --dpright PS3
                    if joystick:isDown(12)and(typejoystick=="xbox360") then movePL2="left";lastmovePL2=movePL2; end; --dpleft xbox360
                    if joystick:isDown(13)and(typejoystick=="xbox360") then movePL2="right";lastmovePL2=movePL2; end; --dpright xbox360
                    if joystick:isDown(1) then ammoKEYPL2="ammo"; end;  --A (X PS3) used for APPLY
                    if joystick:isDown(8)and(typejoystick=="sonyPS3") then ammoKEYPL2="ammo";  end --right fire fire PS3
                          if (1==1) then 
                        if (s.ax>0)and(s.ax<deadzone/10) then s.x=0; s.ax=0; else s.x=s.ax; end
                        if (s.ay>0)and(s.ay<deadzone/10) then s.y=0;s.ay=0;  else s.y=s.ay; end
                        if (s.ax<0)and(s.ax>-deadzone/10) then s.x=0;s.ax=0; else s.x=s.ax; end
                        if (s.ay<0)and(s.ay>-deadzone/10) then s.y=0; s.ay=0;else s.y=s.ay;  end
                        if (s.y>0)and(disableleftstick==0) then movePL2="down"; lastmovePL2=movePL2; end; --move keys
                        if (s.y<0)and(disableleftstick==0) then movePL2="up"; lastmovePL2=movePL2; end;
                        if (s.x<0)and(disableleftstick==0) then movePL2="left"; lastmovePL2=movePL2; end;
                        if (s.x>0)and(disableleftstick==0) then movePL2="right"; lastmovePL2=movePL2; end;
                        if (rightfirejs>deadzone/10) then ammoKEYPL2="ammo";firekeyPL2="fire"; end;
                          end
                        
                        -- wybór gracza dla kontrollera (pada),  wybór tryba gry sieciową
                    if (coop_join_disable==1) then if joystick:isDown(12) or joystick:isDown(13) or joystick:isDown(10 ) or joystick:isDown(11) or joystick:isDown(14) or joystick:isDown(15) then
                       smsg1="COOPDISABLED"; love.audio.play(badsnd); 
                     end;end; 
                     if (coop_join_disable==0)  and gracz2idpostaci==0  then 
                    if joystick:isDown(12)and(typejoystick=="sonyPS3")then 
                    if (RolePL2=="") then  RolePL2="czolg"; love.audio.play(wallsnd); end;                      end;  -- left stick click PS3
                    if joystick:isDown(13)and(typejoystick=="sonyPS3") and (titlegame=="Reskue")  then
                     if (RolePL2=="") then RolePL2="naukowec"; love.audio.play(wallsnd); end;                     end;  -- right stick click PS3
                    if joystick:isDown(10)and(typejoystick~="sonyPS3") then
                     if (RolePL2=="") then  RolePL2="czolg";  love.audio.play(wallsnd);end;                      end;  -- left stick click PS3
                    if joystick:isDown(11)and(typejoystick~="sonyPS3") and (titlegame=="Reskue")  then
                       if (RolePL2=="") then RolePL2="naukowec";  love.audio.play(wallsnd);end;                     end;  -- right stick click PS3
                    if joystick:isDown(14)and(typejoystick=="xbox1-Wireless") then
                      if (RolePL2=="") then  RolePL2="czolg";  love.audio.play(wallsnd);end;                      end;  -- left stick click PS3
                    if joystick:isDown(15)and(typejoystick=="xbox1-Wireless")and (titlegame=="Reskue")  then 
                       if (RolePL2=="") then RolePL2="naukowec"; love.audio.play(wallsnd); end;                     end;  -- right stick click PS3
                       end -- end coop block player 2 select
                    if (leftfirejs>deadzone/10) and (rightfirejs>deadzone/10) then ammoKEYPL2="zamiast"; end
                  --if joystick:isDown(9) and  joystick:isDown(10) and timerz>15 then timerz=0; emulatedjoystick1as2=not_numeric(emulatedjoystick1as2);  end;  --start PS3
                end

                if (i==2)and (emulatedjoystick1as2==0) or (i==3) and (emulatedjoystick1as2==1) then  --player 2 support   temporary simpliest 
                    
                    if joystick:isDown(14) then movePL2="up";lastmovePL2=movePL2;  end; --dpup PS3
                    if joystick:isDown(15) then movePL2="down"; lastmovePL2=movePL2; end; --dpdown PS3
                     if joystick:isDown(16)and(typejoystick=="sonyPS3") then movePL2="left"; lastmovePL2=movePL2; end; --dpleft PS3
                    if joystick:isDown(17)and(typejoystick=="sonyPS3") then movePL2="right";lastmovePL2=movePL2;  end; --dpright PS3
                    if joystick:isDown(12)and(typejoystick=="xbox360") then movePL2="left";lastmovePL2=movePL2; end; --dpleft xbox360
                    if joystick:isDown(13)and(typejoystick=="xbox360") then movePL2="right";lastmovePL2=movePL2; end; --dpright xbox360
                    if joystick:isDown(1) then ammoKEYPL2="ammo"; end;  --A (X PS3) used for APPLY
                    if joystick:isDown(8)and(typejoystick=="sonyPS3") then ammoKEYPL2="ammo";  end --right fire fire PS3
                     if (1==1) then 
                        if (s.ax>0)and(s.ax<deadzone/10) then s.x=0; s.ax=0; else s.x=s.ax; end
                        if (s.ay>0)and(s.ay<deadzone/10) then s.y=0;s.ay=0;  else s.y=s.ay; end
                        if (s.ax<0)and(s.ax>-deadzone/10) then s.x=0;s.ax=0; else s.x=s.ax; end
                        if (s.ay<0)and(s.ay>-deadzone/10) then s.y=0; s.ay=0;else s.y=s.ay;  end
                        if (s.y>0)and(disableleftstick==0) then movePL2="down"; lastmovePL2=movePL2; end; --move keys
                        if (s.y<0)and(disableleftstick==0) then movePL2="up"; lastmovePL2=movePL2; end;
                        if (s.x<0)and(disableleftstick==0) then movePL2="left"; lastmovePL2=movePL2; end;
                        if (s.x>0)and(disableleftstick==0) then movePL2="right"; lastmovePL2=movePL2; end;
                        if (rightfirejs>deadzone/10) then ammoKEYPL2="ammo";firekeyPL2="fire"; end;
                          end
                           
                 if (coop_join_disable==1) then if joystick:isDown(12) or joystick:isDown(13) or joystick:isDown(10 ) or joystick:isDown(11) or joystick:isDown(14) or joystick:isDown(15) then
                       smsg1="COOPDISABLED"; love.audio.play(badsnd); 
                     end;end; 
                    if joystick:isDown(12)and (coop_join_disable==0) and gracz2idpostaci==0 then  if (RolePL2=="") then love.audio.play(wallsnd); RolePL2="czolg"; end;                      end;  -- left stick click PS3
                    if joystick:isDown(13)and (coop_join_disable==0) and gracz2idpostaci==0 and (titlegame=="Reskue")  then if (RolePL2=="") then love.audio.play(wallsnd); RolePL2="naukowec"; end;                     end;  -- right stick click PS3
                    if (leftfirejs>deadzone/10) and (rightfirejs>deadzone/10) then ammoKEYPL2="zamiast"; end
                 end
                  if (i==2)and (emulatedjoystick1as2==1) or (i==3) and (emulatedjoystick1as2==0) then  --player 3 support   temporary simpliest 
                    
                    if joystick:isDown(14) then movePL3="up"; end; --dpup PS3
                    if joystick:isDown(15) then movePL3="down"; end; --dpdown PS3
                     if joystick:isDown(16)and(typejoystick=="sonyPS3") then movePL3="left"; end; --dpleft PS3
                    if joystick:isDown(17)and(typejoystick=="sonyPS3") then movePL3="right"; end; --dpright PS3
                    if joystick:isDown(12)and(typejoystick=="xbox360") then movePL3="left"; end; --dpleft xbox360
                    if joystick:isDown(13)and(typejoystick=="xbox360") then movePL3="right"; end; --dpright xbox360
                    if joystick:isDown(1) then ammoKEYPL3="ammo"; end;  --A (X PS3) used for APPLY
                    if joystick:isDown(8)and(typejoystick=="sonyPS3") then ammoKEYPL3="ammo";  end --right fire fire PS3
                     if (1==1) then 
                        if (s.ax>0)and(s.ax<deadzone/10) then s.x=0; s.ax=0; else s.x=s.ax; end
                        if (s.ay>0)and(s.ay<deadzone/10) then s.y=0;s.ay=0;  else s.y=s.ay; end
                        if (s.ax<0)and(s.ax>-deadzone/10) then s.x=0;s.ax=0; else s.x=s.ax; end
                        if (s.ay<0)and(s.ay>-deadzone/10) then s.y=0; s.ay=0;else s.y=s.ay;  end
                        if (s.y>0)and(disableleftstick==0) then movePL3="down"; lastmovePL3=movePL3; end; --move keys
                        if (s.y<0)and(disableleftstick==0) then movePL3="up"; lastmovePL3=movePL3; end;
                        if (s.x<0)and(disableleftstick==0) then movePL3="left"; lastmovePL3=movePL3; end;
                        if (s.x>0)and(disableleftstick==0) then movePL3="right"; lastmovePL3=movePL3; end;
                        if (rightfirejs>deadzone/10) then ammoKEYPL3="ammo";firekeyPL2="fire"; end;
                          end
                           
                   if (coop_join_disable==1) then if joystick:isDown(12) or joystick:isDown(13) or joystick:isDown(10 ) or joystick:isDown(11) or joystick:isDown(14) or joystick:isDown(15) then
                       smsg1="COOPDISABLED"; love.audio.play(badsnd); 
                     end;end; 
                    if joystick:isDown(12)and (coop_join_disable==0) and gracz3idpostaci==0 then  if (RolePL3=="") then love.audio.play(wallsnd); RolePL3="czolg"; end;                      end;  -- left stick click PS3
                    if joystick:isDown(13)and (coop_join_disable==0) and gracz3idpostaci==0 then  if (RolePL3=="") then love.audio.play(wallsnd);RolePL3="naukowec"; end;                     end;  -- right stick click PS3
                    if (leftfirejs>deadzone/10) and (rightfirejs>deadzone/10) then ammoKEYPL3="zamiast"; end
                end
            end
            --smsg1="joysticks:"..#joysticks; -- WORKING  Total joysticks in system      --joystick = joysticks[1];
        end;

        -- именно тут идет подмена значений приходящих от выбранных настроек клавиатуры пользователем на стандартные ключи игры (ammoKEYPL1 i movePL1)
        if love.keyboard.isDown("lalt")and love.keyboard.isDown("return")and (timerz>3) then timerz=0;statusfullscreen=not (statusfullscreen); stfullscreen=love.window.setFullscreen(statusfullscreen, "desktop"); end
        if love.keyboard.isDown("ralt")and love.keyboard.isDown("return")and (timerz>3) then timerz=0;statusfullscreen=not (statusfullscreen); stfullscreen=love.window.setFullscreen(statusfullscreen, "desktop"); end
        if love.keyboard.isDown("lgui")and love.keyboard.isDown("return")and (timerz>3) then  timerz=0; statusfullscreen=not (statusfullscreen); stfullscreen=love.window.setFullscreen(statusfullscreen, "desktop"); end

        if love.keyboard.isDown("right")or love.keyboard.isDown(urightkey) then movePL1="right";lastmovePL1=movePL1;  rzad="kb"; end;
        if love.keyboard.isDown("left")or love.keyboard.isDown(uleftkey) then movePL1="left";lastmovePL1=movePL1;  rzad="kb";end;
        if love.keyboard.isDown("up")or love.keyboard.isDown(uupkey) then movePL1="up";lastmovePL1=movePL1;  rzad="kb";end;
        if love.keyboard.isDown("down")or love.keyboard.isDown(udownkey) then movePL1="down";lastmovePL1=movePL1;  rzad="kb";end;
        if (feartimerPL1>0)and(editor==0)and(renderer==1) then movePL1=randommove_word; end
        if (new_x_block_fix~="") then movePL1=new_x_block_fix; end
        if (hardened_ammo_get~="") then movePL1=hardened_ammo_get; end

        if love.keyboard.isDown(uammokey) then ammoKEYPL1="ammo";firekeyPL1="fire";  rzad="kb"; end;
        if love.keyboard.isDown(uammokey) then ammoKEYPL1="ammo";firekeyPL1="fire"; rzad="kb"; end;
        if love.keyboard.isDown(uicekey) then ammoKEYPL1="ice";icekeyPL1="ice";  end;
        if (kamerapad~=1) then  kamerasrc="" ; end; 
        if love.keyboard.isDown(uxcamupkey) then ammoKEYPL1="p"; camerakey="p";rsKEYPL1="p"; kamerasrc="czlowiek" ;kamerapad=0; end; --camera move keys
        if love.keyboard.isDown(uxcamleftkey) then ammoKEYPL1="["; camerakey="[";rsKEYPL1="["; kamerasrc="czlowiek" ;kamerapad=0; end;
        if love.keyboard.isDown(uxcamrightkey) then ammoKEYPL1="]"; camerakey="]";rsKEYPL1="]"; kamerasrc="czlowiek" ;kamerapad=0; end;
        if love.keyboard.isDown(uxcamdownkey) then ammoKEYPL1=";"; camerakey=";";rsKEYPL1=";"; kamerasrc="czlowiek" ;kamerapad=0; end;
        if love.keyboard.isDown(ubombkey) then ammoKEYPL1="bomb" ;end;
        if love.keyboard.isDown(ubombkey)and(menu==9) then ammoKEYPL1="unpack" ;end;
        if love.keyboard.isDown(uhealkey) then ammoKEYPL1="h"; end;
        if love.keyboard.isDown(urestkey) then ammoKEYPL1="r"; end;
        if love.keyboard.isDown(uunpackkey) then ammoKEYPL1="unpack"; end;
        if love.keyboard.isDown(udropkey) then ammoKEYPL1="placeitem"; end;
        if love.keyboard.isDown(uzbrojakey) then ammoKEYPL1="ekwip"; end;-- sortitems  
        if love.keyboard.isDown(utostartkey) then ammoKEYPL1="tostart"; end;
        if love.keyboard.isDown(",") then ammoKEYPL1="placeenemy" end;  -- Используется для отработки мультиинстансных танков.
        if love.keyboard.isDown("f5")and(gameover==0) then ammoKEYPL1="savegame" end;
        if love.keyboard.isDown("kp0")then ammoKEYPL2="ammo"; end;
        --smsg1="gracz2idpostaci.."..gracz2idpostaci.." k1:"..ammoKEYPL1.." k2:"..ammoKEYPL2;
        if (selectplayermode=="versus") or love.keyboard.isDown("kp7") then if  (gracz2idpostaci==0)and (coop_join_disable==0) then
         love.audio.play(wallsnd); if (RolePL2=="") then  RolePL2="czolg"; end; 
         end; end ;  -- left stick click PS3 end;
        if (selectplayermode=="coop") or love.keyboard.isDown("kp9") then if (gracz2idpostaci==0)and (titlegame=="Reskue") and (coop_join_disable==0) then 
          love.audio.play(wallsnd); if (RolePL2=="") then  RolePL2="naukowec"; end;
           end;  end;
         -- if (titlegame~="Reskue")and (coop_join_disable==0)and (RolePL2=="") then RolePL2="czolg";end;         

        if love.keyboard.isDown("kp.") then ammoKEYPL2="zamiast"; end;
        if love.keyboard.isDown("kp6") then movePL2="right";lastmovePL2=movePL2;  end;
        if love.keyboard.isDown("kp4") then movePL2="left";lastmovePL2=movePL2;  end;
        if love.keyboard.isDown("kp8") then movePL2="up";lastmovePL2=movePL2;  end;
        if love.keyboard.isDown("kp5") then movePL2="down";lastmovePL2=movePL2;  end;
        
        if (ammoKEYPL1~="") then android_ui_changed_state=1; end;
    end



    if (ossys=="Android") then
        --Look  touchmoved section
        if love.keyboard.isDown("kp0") then ammoKEYPL2="ammo" end;
    end

    -- перемещение Player 1  , если не стреляет.s
    --move_the_man(dt);
    x,y,man_x,man_y,man_is_moving,man_speed=move_the_man(dt,x,y, man_x, man_y ,man_is_moving,man_speed);
    allowmove=1;


    if (freezetimerPL1>0)and(editor==0) then allowmove=0;
        if (freezetimerPL1<1) then freezetimerPL1=0; end
    end;

    if (damagetimerPL1>0)and(editor==0) then
      hpsave=hp;
      randomget=math.ceil (math.random(80)) ;
        if (movePL1~="")and (damagetimerPL1>19) then hp=hp-3; end;
        if (movePL1~="")and (damagetimerPL1<20) then hp=hp-1; end;
        if (protect<1) then hp=hp-1; end;
        if (poziom>0) then hp=hp-1; end;
        if (hardlevel>0) then hp=hp-1;end ;
        if ((tank==1)and (randomget>40)) or ((titlegame=="Kolonista") and (randomget>20)) 
        then hp=hpsave end;
    end;

    if (damagetimerPL2>0)and(editor==0) then
        if (protecttank<1) then hptank=hptank-1; end;
        if (movePL2~="") then hptank=hptank-2; end;
    end;
    --test


    if (hp<45)and(protect>0)and(reservedaids>0)and(tank<1) then
        reservedaids=reservedaids-1;
        hp=hpmax+10;
        love.audio.play(szpricsnd);
    end


    -- Бонус уровни при смерти перебрасывают в следующий уровень.
    if ((hardlevel==2)and(hp<1)) then -- and(lives<1) - условие на число жизней можно сделать опциональным.
        levelnumber=levelnumber+1; -- никаких бонусных очков за смерть в бонус уровне!
        love.load ();
    end



    if (pause==1) then allowmove=0;end;
    redirectmove=0;
    accelmove=1;
    move="undefined";
    plusx=0; plusy=0;
    xnow=x;ynow=y;


    if not man_is_moving then
        if (editor==0) then  objectpodnogami=(screens (gamey (y),gamex (x))); end;  -- реализация автоходьбы по стрелкам.

        if (editor==0) then       tdata_ID=coord (gamey (y),gamex (x));
            if (tdata[tdata_ID]==1) then tdata[tdata_ID]=2; end ; --танки запоминают все посещенные точки.
        end
        if (objectpodnogami==183)and (randomget>150)and(acidprotect<1) then hp=hp-1; end;
        if (objectpodnogami==87)and (randomget>20)and(protect<1) then hp=hp-1; end;
        if (editor==0) then if (objectpodnogami==0) then movePL1="left"; end;
            if (objectpodnogami==1) then movePL1="right"; end;
            if (objectpodnogami==2) then movePL1="up"; end;
            if (objectpodnogami==3) then movePL1="down"; end;
        end
        -- обрабатываем кнопки только, если чувак не двигается уже
        zezwolchodz=0;
        if (editor==1)or(ammoKEYPL1=="") then zezwolchodz=1; end;
        if ((movePL1=="right")and(zezwolchodz==1)and (gamex(x)<mapsize_horizontal-1)) then
            if (tank>0) then playertank=tankright;end;
            move="right";plusx=1;
            --  if (express==1) then   randomget=math.ceil (math.random(10)) ;
            --        if (randomget==1) then        camerakey="]";          end; end
           zzz=(screens (gamey (y),gamex (x)+1));-- определяем куда движется чувак
            if (express==1) then zzzdown=(screens (gamey (y)+1,gamex (x)+1));-- определяем куда движется чувак
                if (zzzdown<125) then allowmove=0; end; --не исполняется т.к. не исполняется screen на полной скорости camerakey="";movePL1="space"; express=0;

            end

            if (zzz) then
                zzx=(zzz); 
                if  (hp>0) then reactmove (zzx) else if (editor==0) then allowmove=0; end end;
            end
            if (allowmove==1) then man_is_moving,man_x,man_y=do_a_step(dt, man_step*accelmove, 0,x,y);end;
        end

        if ((movePL1=="left")and(zezwolchodz==1)and (gamex(x)>0)) then
            if (tank>0) then playertank=tankleft;end;
            move="left";plusx=-1;
            -- if (express==1) then       randomget=math.ceil (math.random(10)) ;
            --      if (randomget==1) then        camerakey="[";         end; end
           zzz=(screens (gamey (y),gamex (x)-1));
            if (express==1) then zzzdown=(screens (gamey (y)+1,gamex (x)-1));
                if (zzzdown<125) then allowmove=0; end;
            end

            if (zzz) then
                zzx=(zzz); 
                if  (hp>0) then reactmove (zzx) else if (editor==0) then allowmove=0; end end;
            end
            if (allowmove==1) then man_is_moving,man_x,man_y=do_a_step(dt, -man_step*accelmove, 0,x,y);end;
        end

        if (((movePL1=="down"))and(zezwolchodz==1)and (gamey(y)<mapsize_vertical+29*editor)) then -- тут задается расширение для редактора  --editor generating items  editoritems
            if (express==1) then allowmove=0; end;
            if (tank>0) then playertank=tankdown;end
            move="down";plusy=1;
           zzz=(screens (gamey (y)+1,gamex (x)));

            if (zzz) then
                zzx=(zzz); 
                if  (hp>0) then reactmove (zzx) else if (editor==0) then allowmove=0; end end;
            end
            if (allowmove==1) then man_is_moving,man_x,man_y=do_a_step(dt, 0, man_step*accelmove,x,y) ;end;
        end
        if ((movePL1=="up")and(zezwolchodz==1)and (gamey(y)>1)) then
            if (express==1) then allowmove=0;end;
            if (tank>0) then playertank=tankup;end;
            move="up";plusy=-1;
           zzz=(screens (gamey (y)-1,gamex (x)));

            if (zzz) then
                zzx=(zzz); 
                if  (hp>0) then reactmove (zzx) else if (editor==0) then allowmove=0; end end;
            end
            if (allowmove==1) then man_is_moving,man_x,man_y=do_a_step(dt, 0, -man_step*accelmove,x,y);end;
        end
    end
    --Конец управления первым персонажем.


    --начало управления вторым персонажем
    -- для танка добавить кнопочку разрешающую брать или не брать вещи. ыыы
    --move_the_manpla2(dt);
    xpla2,ypla2,man_xpla2,man_ypla2,man_is_movingpla2,wrog_speed=move_the_man(dt,xpla2,ypla2, man_xpla2, man_ypla2 ,man_is_movingpla2,wrog_speed)

    allowmovepla2=1;

    if ((ammoKEYPL2=="ammo")and(editor==0)) then allowmovepla2=0;end;
    --   если это поствавить то почему то у танка только один выстрел какого то. ..  НЕ СДЕЛАНО
    if (pause==1) then allowmovepla2=0;end;
    redirectmovepla2=0;
    accelmovepla2=1;
    move="undefined";
    plusxpla2=0; plusypla2=0;
    xnowpla2=xpla2;ynowpla2=ypla2;

    if ((not man_is_movingpla2)) then
        -- обрабатываем кнопки только, если чувак не двигается уже
        if (((movePL2=="right"))and(1==1)and(gamex(xpla2)<mapsize_horizontal-1)) then
            movepla2="right";plusxpla2=1;
            zz_id_teraz=(screens (gamey (ypla2),gamex (xpla2)));-- определяем од ног
            zzx2=(screens (gamey (ypla2),gamex (xpla2)+1));-- определяем куда движется чувак
            if (allowmovepla2==1) then man_is_movingpla2,man_xpla2,man_ypla2=do_a_step(dt, man_step*accelmovepla2, 0,xpla2,ypla2);end;
        end

        if (((movePL2=="left"))and(1==1)and(gamey(xpla2)>0)) then
            movepla2="left";plusxpla2=-1;
            zzx2=(screens (gamey (ypla2),gamex (xpla2)-1));
            if (allowmovepla2==1) then man_is_movingpla2,man_xpla2,man_ypla2=do_a_step(dt, -man_step*accelmovepla2, 0,xpla2,ypla2);end;
        end

        if (((movePL2=="down"))and(1==1)and(gamey(ypla2)<mapsize_vertical+20*editor)) then
            movepla2="down";plusypla2=1;
            zzx2=(screens (gamey (ypla2)+1,gamex (xpla2)));
            if (allowmovepla2==1) then man_is_movingpla2,man_xpla2,man_ypla2=do_a_step(dt, 0, man_step*accelmovepla2,xpla2,ypla2) ;end;
        end
        if (((movePL2=="up"))and(1==1)and(gamey(ypla2)>1)) then
            movepla2="up";plusypla2=-1;
            zzx2=(screens (gamey (ypla2)-1,gamex (xpla2)));
            if (allowmovepla2==1) then man_is_movingpla2,man_xpla2,man_ypla2=do_a_step(dt, 0, -man_step*accelmovepla2,xpla2,ypla2);end;
        end
    end
    --конец управления вторым персонажем.
    function getpath ()
        return arg[1]:gsub('\\', '/'):match'(.-/)'
    end

    function standardowecoordfix (x_f,y_f)  --game(x) ceiled  affected
        gluckcheckY,gluckcheckYYY=gamey (y_f);  --gluckcheckYYY=math.ceil(gluckcheckY);
        gluckcheckX,gluckcheckXXX=gamex (x_f);-- gluckcheckXXX=math.ceil(gluckcheckX);
        if (gluckcheckX~=gluckcheckXXX)or(gluckcheckY~=gluckcheckYYY) then
            x_f,y_f= xgametorealpositionbezbyte (gluckcheckY,gluckcheckX-1);
            --smsg1="G x:"..gluckcheckX.."==="..gluckcheckXXX.." () Y="..gluckcheckY.."=="..gluckcheckYYY;
            return x_f,y_f ;
        end
    end
    --работа в редакторе
    if (editor==1) then
        if (ammoKEYPL2=="ammo") then   --ИГНОРИРУЕТ НАЖАТие!!!!!ыы
            printat (gamey (ypla2),gamex (xpla2), selectedobject);
        end
        if love.keyboard.isDown("kp7") then
            printat (gamey (ypla2),gamex (xpla2), selectedobject);

        end
        if love.keyboard.isDown("kp9") then  -- базовые функции редактора
            ypla2=(1)*rozmiarznak;xpla2=(1)*rozmiarznak;

        end
        -- if (GAMEWINDOWCANVAS) then lg.draw(GAMEWINDOWCANVAS,postCANVASobjectX,postCANVASobjectY) ; end; -- canvas test  e
        -- откуда начинает печататся вся графика в игре - левый верхний угол карты. left upper left_upper для поиска  ремарка.
        if love.mouse.isDown("1")then
            mysz_x, mysz_y = love.mouse.getPosition( );
            my=math.ceil (gamey (mysz_y)-1); mx=math.ceil (gamex (mysz_x)-1);
            --smsg1="mysz_x "..mysz_x..">"..postCANVASobjectX..") and (my "..mysz_y..">"..postCANVASobjectY.."";
            if (mysz_x>postCANVASobjectX) and (mysz_y>postCANVASobjectY) then

                paintmou=0;camerakey="";
                if (mx-cameraleftpos_x_hor<visual_mapsize_horizontal) and (mx+cameraleftpos_x_hor>-1) then paintmou=1; end
                if (my-camerauppos_y_vert<visual_mapsize_vertical) and (my+camerauppos_y_vert>-1) then paintmou=1; end
                if (mx-cameraleftpos_x_hor<0) then camerakey="["; end;
                if (mx-cameraleftpos_x_hor+1>visual_mapsize_horizontal-1) then camerakey="]"; end;
                if (my-camerauppos_y_vert<1) then camerakey="p"; end;
                if (my-camerauppos_y_vert>visual_mapsize_vertical) then camerakey=";"; end;
                --smsg1= ("mouse paint mx="..mx.." c"..cameraleftpos_x_hor.."(ma="..visual_mapsize_horizontal..") my="..my.." c"..camerauppos_y_vert.."(ma="..visual_mapsize_vertical..") Object 1 taken");
                if (paintmou==1)and(camerakey=="") then  printat (my,mx, selectedobject);  paintmou=0;end;
            end
        end

        if love.mouse.isDown("4")then
            mysz_x, mysz_y = love.mouse.getPosition( );
            my=mysz_y; mx=mysz_x;
            printat (math.ceil (gamey (my)-1),math.ceil (gamex (mx)-1), selectedobject2);
        end

        if love.mouse.isDown("2") then
            mysz_x, mysz_y = love.mouse.getPosition( );
            my=mysz_y; mx=mysz_x;
            if (mysz_x>postCANVASobjectX) and (mysz_y>postCANVASobjectY) then
                --selectedobject=(screens (math.ceil (gamey (my)-1),math.ceil (gamex (mx)-1)));
                selectedobject= (screens (math.ceil (gamey (my)-1),math.ceil (gamex (mx)-1)));
                smsg1= ("Object 1 taken");
            end
        end

        if love.mouse.isDown("3") then --Поправка координаты для сетки. Образец. Использование. fix coord error
            mysz_x, mysz_y = love.mouse.getPosition( );
            x,y=standardowecoordfix (mysz_x,mysz_y) ;
            xpla2,ypla2=standardowecoordfix (mysz_x,mysz_y) ;
        end

        if love.keyboard.isDown("2")or(ammoKEYPL1=="bomb") then
            huded=2;
            selectedobject=screens (gamey (y),gamex (x));
            smsg1= ("Object 1 taken");
        end

        if love.keyboard.isDown("3")or(ammoKEYPL1=="placeitem") then
            selectedobject2=screens (gamey (y),gamex (x));
            smsg1= ("Object 2 taken");
        end

        if love.keyboard.isDown("f6")and not (love.keyboard.isDown("lshift")) and not (love.keyboard.isDown("lctrl")) then
            xdata_copy={};
            xdata_copy=clone (xdata);
            xdataarchived=1;
        end
        if (xdataarchived==1)and(love.keyboard.isDown("f7")and not (love.keyboard.isDown("lshift")) and not (love.keyboard.isDown("lctrl"))) then
            xdata=clone (xdata_copy);
            map_changed=1;
        end

        if love.keyboard.isDown("end") then
            if (levelnumber<200) then levelnumber=levelnumber+1; end;
            levelname="Levels/LEVEL"..levelnumber..".$C";
        end;

        if love.keyboard.isDown("e")then
            ammokeyPL1="loadexternallevel";
        end

        if love.keyboard.isDown("f8")and not (love.keyboard.isDown("lshift")) and not (love.keyboard.isDown("lctrl")) or(ammokeyPL1=="loadexternallevel") then
            smsg1= ("Loading selected level.");
            editorloadlevel=1;
            love.load()
        end
        --  xdatapreparetowrite ();  ANALOG MAP SAVE MAP WRITE ЗАПИСЬ КАРТЫ НА ДИСК
        if love.keyboard.isDown("f5")and not (love.keyboard.isDown("lshift")) and not (love.keyboard.isDown("lctrl"))and(pietro>1)   then
          smsg1="Pietro 2 . MAP NOT SAVED ."; 
        end

        if love.keyboard.isDown("f5")and not (love.keyboard.isDown("lshift")) and not (love.keyboard.isDown("lctrl"))and(pietro==1)   then
          
            pathtosavemap=love.filesystem.getSourceBaseDirectory().."/Levels/LEVEL"..levelnumber..".$C";
            -- в этом месте в уровень надо передать коды уровня + всех параметров в формате M2K включая новые.
            -- важно всего 4 места для загрузки и передачи параметров, но для сохранения и карты они немного различаются,не могут быть просто скопированы целиком.
          -- redaktor pozioma robi tutaj. альтернатива function xdatapreparetowrite ()
            xdata[55623]=poke (greenshitdelay);
            xdata[55624]=poke(darkzone);
            xdata[55625]=poke (gamey(y)+1);
            xdata[55626]=poke (gamex(x));
            xdata[55631]=poke (bombs);
            xdata[55632]=poke(ice);
            xdata[55633]=poke (lives);
            xdata[55634]=poke (0);-- количество уничтоженных танков.
            xdata[55635]=poke(ammo);
            xdata[55637]=poke (keys);-- keys вместо бонуса за уровень
            xdata[55638]=poke(targetremains);
            if (gamex(xpla2)<mapsize_horizontal)and(gamey(ypla2)<mapsize_horizontal) then xdata[55640]=poke (math.ceil(gamex(xpla2)));
                xdata[55639]=poke (math.ceil(1+gamey(ypla2))); end
            xdata[55641]=poke (0); -- savegamecounter не должен сохранятся редактором
            xdata[55642]=poke (parameter80);
            xdata[55643]=poke (parameter81);
            xdata[55644]=poke (parameter82);
            xdata[55645]=poke (parameter83);
            xdata[55646]=poke (powerstate);--БУГ  sost lazerow
            xdata[55647]=poke (0);  -- не для карты ! инвентарь 5 tx координаты телепортов сохранять ненадо. есть маркер. билд 4000.
            xdata[55648]=poke (0);  -- не для карты ! инвентарь 6 ty
            xdata[55649]= poke (water);
            xdata[55653]=poke(tank);
            xdata[55654]=poke (protect);
            xdata[55655]=poke(reservedaids);
            xdata[55656]=poke (puszkistate);
            --SAVE GAME  дополнительные параметры - повторно использовать всё для F5
            xdata[55622]=poke (greenshithastetime);
            xdata[55621]=poke (seed);
            xdata[55620]=poke (slot0);
            xdata[55675]=poke (slot1);
            xdata[55676]=poke (slot2);
            xdata[55677]=poke (slot3);
            xdata[55678]=poke (slot4);
            xdata[55679]=poke (slot5);
            xdata[55680]=poke (slot6);

            xdata[55610]=poke (enemytank);  --dodactrundyczolgi=enemytank; 
            xdata[55611]=poke (starttanks);
            xdata[55612]=poke (hardlevel);
            xdata[55614]=poke (minimumtanks);
            xdata[55619]=poke (paralysatorammo);
            xdata[55661]=poke (backgroundcolorlevel);
            xdata[55662]=poke (colorizepole);
            xdata[55663]=poke (colorizeboulder);
            xdata[55664]=poke (0);--(multikills); не должен сохранятся редактором
            xdata[55665]=poke (0);--(ultrakills);
            xdata[55666]=poke (parameter66);
            xdata[55667]=poke (parameter67);
            xdata[55668]=poke (parameter68);
              xdata[55705]=poke (enableredtank);
             xdata[55706]=poke (enableauratank);
             xdata[55707]=poke (enablewtank);
             xdata[55708]=poke (parameter73);
             xdata[55709]=poke (parameter74);
                 xdata[55710]=poke (parameter75);
             xdata[55711]=poke (parameter76);
             xdata[55712]=poke (parameter77);
             xdata[55713]=poke (parameter78);
             xdata[55714]=poke (parameter79);
            xdata[55669]=poke (system_saveversion);
            xdata[55670]=poke (system_mapversion);
            bui1,bui2=split2bytes (build_numeric);

            xdata[55671]=poke (bui1);
            xdata[55674]=poke (bui2);
            xdata[55673]=poke (123); --?  parameter69 ???? 
            --inventorybelt 55613 НЕ записывается в код карты.
            writeMAP(pathtosavemap,xdata);
            smsg1="Map "..levelnumber.." saved to "..pathtosavemap;
        end
        -- конец функции

        if love.keyboard.isDown("f10") then
            menu=3;renderer=0;
        end

        if love.keyboard.isDown("f9")and (otladka==1) then
            freezetimerPL1=0; invisibletimerPL1=0; score=0; feartimerPL1=0;
            titlegame="Reskue";
            speedtimer=0; slowPL1=0; painreflectionPL1=0; protect=0; damagetimerPL1=0;
        end

        if (love.keyboard.isDown("escape")and (menu==3)and(timerz>5))then
            menu=0; renderer=1 ; stattitle=0;
        end

        if love.keyboard.isDown("f11")and not (love.keyboard.isDown("lshift")) and not (love.keyboard.isDown("lctrl")) then  -- remove all class of enemies
            enemies={};
            selectedtankid_fortanks=0;
            totalenemies=0;
            sledzione_hp_tankid=0;
            wsego_tank_teleporterow=0;
            livedtanks=0;
            selectedtankid=nil;
            huded=0;
            totalammo=0;
            ammoX={};
            selectedammoid=nil;

        end

        if love.keyboard.isDown("home") then
            if (levelnumber>2) then levelnumber=levelnumber-1; end;
            levelname="Levels/LEVEL"..levelnumber..".$C";
        end
        --управление рисованием в редакторе
        --if (love.keyboard.isDown("1")) then setspeed (10); end
        if (love.keyboard.isDown("lshift"))and(editor==1) then setspeed (12); end;

        if (editor==1) and love.keyboard.isDown("pageup") and (pietro==1) then
            pietro=pietro+1;
            map_changed=1;
            changepietro (1,2);    
        end
        if (editor==1) and love.keyboard.isDown("pagedown") and (pietro==2) then
            pietro=pietro-1;
            map_changed=1;
            changepietro (2,1);    
        end
        if (love.keyboard.isDown("capslock"))and(editor==1) then setspeed (14); end;

        if (weaponPL1~="")and(editorcallselectobject==0)or(love.keyboard.isDown("1")) then  -- базовые функции редактора
            if (ammoKEYPL1=="ammo")or (love.keyboard.isDown("1")) then printat (gamey (y),gamex (x), selectedobject);   end
            if (icekeyPL1=="ice") then printat (gamey (y),gamex (x), selectedobject2);  end
            if (selectedobject==135) then -- Редактор:: Многоклеточные обьекты как стальные двери теперь печатаются сразу целиком (все 3 обьекта разом)
                printat (gamey (y)+1,gamex (x), 133);
                printat (gamey (y)+2,gamex (x), 134);
            end
            if (selectedobject==141) then -- Редактор:: Многоклеточные обьекты как стальные двери теперь печатаются сразу целиком (все 3 обьекта разом)
                printat (gamey (y),gamex (x)+1, 28);
                printat (gamey (y),gamex (x)+2, 142);
            end
        end



        if love.keyboard.isDown("5")and(xdataarchived==1) then  --
            selectedobject=(screensq (gamey (y),gamex (x)));
            printat (gamey (y),gamex (x), selectedobject);
        end
        if love.keyboard.isDown("6")then  --
            qe=selectedobject2;
            selectedobject2=selectedobject
            selectedobject=qe;
        end

        --управление рисованием в редакторе         --закраска
        if love.keyboard.isDown("f1") and love.keyboard.isDown("lctrl")then        huded=-2;    end
        if love.keyboard.isDown("f2") and love.keyboard.isDown("lctrl")then        huded=-1;    end
        if love.keyboard.isDown("f3") and love.keyboard.isDown("lctrl")then        huded=0;    end
        if love.keyboard.isDown("f4") and love.keyboard.isDown("lctrl")then        huded=1;    end
        if love.keyboard.isDown("f5") and love.keyboard.isDown("lctrl")and (selectedtankid>0) then huded=3;    end
        if love.keyboard.isDown("f6") and love.keyboard.isDown("lctrl") then        huded=2;    end
                if love.keyboard.isDown("f1") and love.keyboard.isDown("rctrl")then        huded=-2;    end
        if love.keyboard.isDown("f2") and love.keyboard.isDown("rctrl")then        huded=-1;    end
        if love.keyboard.isDown("f3") and love.keyboard.isDown("rctrl")then        huded=0;    end
        if love.keyboard.isDown("f4") and love.keyboard.isDown("rctrl")then        huded=1;    end
        if love.keyboard.isDown("f5") and love.keyboard.isDown("rctrl")and (selectedtankid>0) then huded=3;    end
        if love.keyboard.isDown("f6") and love.keyboard.isDown("rctrl") then        huded=2;    end

        if love.keyboard.isDown("f2") and love.keyboard.isDown("lshift")then
            for b=gamey(y),gamey(ypla2),1 do
                for a=gamex(x),gamex(xpla2),1 do
                    printat (b,a,(selectedobject));
                end
            end
            smsg1= ("Fill completed");
        end
        --закраска2
        if love.keyboard.isDown("f3") and love.keyboard.isDown("lshift") then
            for b=gamey(y),gamey(ypla2),1 do
                for a=gamex(x),gamex(xpla2),1 do
                    printat (b,a,(selectedobject2));
                end
            end
            smsg1= ("Fill completed");
        end

        --замена
        if love.keyboard.isDown("7") then
            for b=gamey(y),gamey(ypla2),1 do
                for a=gamex(x),gamex(xpla2),1 do
                    c=(screens (b,a));
                    if ((c==selectedobject2)) then printat (b,a,(selectedobject)); end
                end
            end
            smsg1= ("Exchange completed");
        end
        --замена2
        if love.keyboard.isDown("8") then
            for b=gamey(y),gamey(ypla2),1 do
                for a=gamex(x),gamex(xpla2),1 do
                    c=(screens (b,a));
                    if ((c==selectedobject)) then printat (b,a,(selectedobject2)); end
                end
            end
            smsg1= ("Exchange completed");
        end

        if love.keyboard.isDown("9") then
           editorticket_scan=1;
            skanx,skany=scanobject (selectedobject,-1) ;
            if (skanx>-1) then x,y=xgametorealpositionbezbyte (1+skany,skanx) ; end
            smsg1= ("Object Found: X="..skanx.." Y="..skany);-- skanx="..skanx.."skany=="..skany);
             editorticket_scan=0;
        end

        if love.keyboard.isDown("0") then
          editorticket_scan=1;
            scanobject (selectedobject,-2) ;
            smsg1= ("Object Found, Total:"..wsego);-- skanx="..skanx.."skany=="..skany);
             editorticket_scan=0;
        end

        if love.keyboard.isDown("=") then   --CLS
            for b=gamey(1),gamey(31),1 do
                for a=gamex(1),gamex(24),1 do
                    printat (b,a,(selectedobject));
                end
            end
            smsg1= ("Exchange completed");
        end
    end

    if (editor==0) then editorticket_scan=0; end;
    -- Пушки включаются и выключаются через таймер -- and (puszkistate==1)
    cannonchances=(math.random(100));
    cannonon=(math.random(100));
    if (cannonon>70)and(pause==0)and(editor==0)and(freezetimerPL3<1)and(puszkistate>0) then timerz=timerz+0.2;
        cannleftx=0;  cannrightx=0; canny=0;
        locx=x; locy=y;
        if (signaltraptimer>0) then         locx=signal_x; locy=signal_y;                end

        cannrightx,cannRIGHTy=scanobject (10,gamey(locy));  -- пушка стреляющая  слева вправо опять ищет не там  пришлось поменять gamex(x) на y
        cannleftx,cannLEFTy=scanobject (11,gamey(locy)); -- пушка стреляющая справа влево.  --  Y должен быть одинаков. для простоты.

        if (player_touch_cannon_switch>1) then
            player_touch_cannon_switch=player_touch_cannon_switch-1;       --       smsg1="cannon_x^"..cannon_x.." "..cannon_y.."";
            cannrightx=cannon_x;cannRIGHTy=cannon_y;  -- пушка стреляющая  слева вправо опять ищет не там  пришлось поменять gamex(x) на y
            cannleftx=cannon_x2;cannLEFTy=cannon_y2; -- пушка стреляющая справа влево.  --  Y должен быть одинаков. для простоты.
        end

        if (cannonchances<50) then
            startshootcoordinatex=cannleftx;
            startshootcoordinatey=cannLEFTy;
        end -- справа влево.
        if (cannonchances>50) then --y3pla2am,x3pla2am=xgametorealposition (cannrightx,canny);
            startshootcoordinatex=cannrightx;
            startshootcoordinatey=cannRIGHTy;
        end -- пушка стреляющая  слева вправо

    end

    if (renderammoshot==2)and(man_is_moving2==true)and(puszkistate>0) then --
        if (otladka==1) then smsg2="FREEZExpuszki="..startshootcoordinatex.."==x2ice="..gamex(x2).."and(ypuszki="..startshootcoordinatey.."==y2ice="..gamey(y2).."";
            print ("FREEZExpuszki="..startshootcoordinatex.."==x2ice="..gamex(x2).."and(ypuszki="..startshootcoordinatey.."==y2ice="..gamey(y2)..""); end;
        if (isnear2(startshootcoordinatex,gamex(x2))and(isnear2(startshootcoordinatey,gamey(y2)))) then
            freezetimerPL3=freezetimerPL3+2;  end;
    end
    --выяснилось   x по вертикали у первого игрока и второго всегда совпадает если они на одной линии  - ширина
    if ((not cannon_shoot3)) then -- обрабатываем кнопки только, если чувак и пуля не двигается уже
        if (((startshootcoordinatex>-1)and(puszkistate>0)and(editor<1)and(pause<1)and(hp>0))and(freezetimerPL3<1)) then
            zzx3ammo=0;allowshotpla3=1;steps=0;
            renderammoshotpla3=1;
            -- просчет числа шагов анимации и  пролёт анимации
            x3now2am=startshootcoordinatex; -- x3pla - это конечная координата цели, может быть использована для анимации.
            x3pla2am=startshootcoordinatex;
            y3pla2am=startshootcoordinatey ;
            if (cannonchances<15)and(startshootcoordinatex~=-1) then  --left  -- пушка стреляющая справа влево.  --
                while ((allowshotpla3==1)and(x3pla2am>0)) do
                    love.audio.play(wystrelsnd);
                    x3pla2am=x3pla2am-1;  --вычитаем из реальной координаты по 1 знакоместу (х20)
                    steps=steps+1; -- считаем шаги пролетевшей пули в знакоместах.
                    zzz3ammo=(screens (startshootcoordinatey,x3pla2am));-- определяем куда движется пуля  (горизонталь влево по -1)

                    if (zzz3ammo) then
                        zzx3ammo=(zzz3ammo);
                        if (allowshotpla3==1) then
                            allowshotpla3=reactammo3 (zzx3ammo,x3pla2am,y3pla2am,allowshotpla3);
                            if (allowshotpla3==0) then
                                cannondrawx,cannondrawy= xgametorealpositionbezbyte (y3pla2am,x3pla2am);
                                cannondrawx=cannondrawx+rozmiarznak;
                                cannondrawy=cannondrawy+rozmiarznak;
                                cannondrawstartshot=(steps-1)*rozmiarznak;
                                --выстрел пушки справа налево
                                if (otladka==1) then
                                    smsg1="love.gr(fill, "..cannondrawx.." ,"..cannondrawy..","..cannondrawstartshot..",10);";
                                    smsg2="steps="..steps.."x3now2am="..x3now2am.."  x3pla2am="..x3pla2am.." startshootcoordinatex="..startshootcoordinatex; end;
                            end
                            cannons_damage_all (); end
                    end
                end
                -- от  startshootcoordinatex  до x3pla2am по оси startshootcoordinatey должна лететь анимация выстрела
            end;
            --===========================s
            if (cannonchances>85)and(startshootcoordinatex~=-1) then --right  -- пушка стреляющая  слева вправо

                while ((allowshotpla3==1)and(x3pla2am<visual_mapsize_horizontal)) do
                    love.audio.play(wystrelsnd);
                    x3pla2am=x3pla2am+1;
                    steps=steps+1;
                    zzz3ammo=(screens(startshootcoordinatey,x3pla2am));-- определяем куда движется пуля  (горизонталь влево по -1)
                    if (otladka==1) then smsg2="reactammo3 (zzx3ammo="..zzx3ammo..",x3pla2am="..x3pla2am..",y3pla2am="..y3pla2am..") steps="..steps..";" ;
                        print ("reactammo3 (zzx3ammo="..zzx3ammo..",x3pla2am="..x3pla2am..",y3pla2am="..y3pla2am..") steps="..steps..";");end;
                    if (zzz3ammo) then
                        zzx3ammo= (zzz3ammo);
                        if (otladka==1) then smsg2="FOUNDammo3 (zzx3ammo="..zzx3ammo..",x3pla2am="..x3pla2am..",y3pla2am="..y3pla2am..") steps="..steps..";";
                            print ("FOUNDammo3 (zzx3ammo="..zzx3ammo..",x3pla2am="..x3pla2am..",y3pla2am="..y3pla2am..") steps="..steps..";"); end;
                        if (allowshotpla3==1) then
                            allowshotpla3=reactammo3 (zzx3ammo,x3pla2am,y3pla2am,allowshotpla3);
                            if (allowshotpla3==0) then
                                cannondrawx2,cannondrawy2= xgametorealpositionbezbyte (y3pla2am,x3pla2am);
                                cannondrawy2=cannondrawy2+rozmiarznak;
                                --выстрел пушки слева направо
                                cannondrawstartshot2=-(steps-1)*rozmiarznak;
                            end
                            cannons_damage_all (); end -- gtht переставил end ыы
                    end
                end
            end;
            --=====================================
        end
    end

    -- это всего лишь вычисление шанса потери защиты или скафандра
    -- пока что вычисление уменьшения вреда от носимых предметов не сделано
    function player_change_lost_protect ()
        chances=math.ceil (math.random(62+7*tank+1*protect));
        if (acidprotect>0)and (chances<15) then acidprotect=0 ; end;
        if (protect>0)and (chances<2) then protect=0 ; end;
    end

    function cannons_damage_all ()
        -- это функция обстрела от пушек.
        if (freezetimerPL3>0) then allowshotpla3=0; return ; end;
        -- выстрелы пушек обрабатываются тут
        -- если координаты 1 игрока совпадают с координатой пули 3 (cannon) - отнимаются HP у Р1
        if (otladka==1) then print ("if ((isnear(x="..x3pla2am..",x="..gamex(x)..")and(y="..y3pla2am.."==y="..gamey(y)..""); end;
        if ((x3pla2am==gamex(x))and(y3pla2am==gamey(y))and(allowshotpla3==1)and(puszkistate==1)and(editor==0)) then
            if (protect<1) then
                if (tank==0) then hp=hp-10; end;
                if (tank==1) then hp=hp-5; end;
                if (hardlevel==1) then hp=hp-15; end;
                if (poziom==1) then hp=hp-10; end;

            end
            if (titlegame~="M2K") then player_change_lost_protect ();  end;
            allowshotpla3=0;-- пушки не вредят совсем при защите.
            love.audio.play(patronysnd) ;
        end
        -- если координаты 2 игрока совпадают с координатой пули 3 (cannon) - отнимаются HP у Р2
        if (totalenemies>0) then --and(livedtanks>0)
            xx2,yy2= xgametorealpositionbezbyte (y3pla2am,x3pla2am) ;--  yy2=yy2; -- +rozmiarznak;  возможно именно отсюда растёт этот фикс ?
            -- Это всего лишь 2 из 2 мест где используется tanksgetdamage? куда отправляются координаты пули
            tanksgetdamage (xx2,yy2,"",80,"cannons",0,0);
        end
    end
    

    fasttimer=ubywanie (fasttimer);
    --smsg1="fasttimer="..fasttimer;
    if (fasttimer<1) then fasttimer=75; --(byl 45)
      --smsg1="reset fasttimer"; 
    zabicie=0; zabicie_ilosc=0; 
    end  
    -- вызывается tankareexploded уже нанёсшей вред танку, а также , Cannons и автопатрон. последние могут прислать directdamage
    -- прислать сюда сторону в которую летит пуля ! из всех 3 возможных источников!!!
    function tanksgetdamage (x2_TGD,y2_TGD,command_TGD,damage_TGD,sourceammo_TGD,src_tankid_TGD,command_power_TGD,tor_pocisku)  --  в случае icebomb  тут бывает ошибка. tankfuck
        TGD_CALLS=TGD_CALLS+1;
        smsg4="ME"..ME_CALLS.." TAE="..TAE_CALLS.." TGD="..TGD_CALLS.." TGD_PR="..TGD_PR;
        if (command_TGD==nil) then command_TGD=""; smsg1=" command_TGD = NIL !!! " ; end;
        trafienie=0;
        zabicie=0; 
        if (command_power_TGD==nil) then command_power_TGD=0; --smsg1=" command_power_TGD= NIL !!! komanda była ".. command_TGD ; 
          end;
        if (damage_TGD=="") then damage_TGD=0; end;
        if (totalenemies>0) then
            senddeadmsg=0;
            for enemynum=1,totalenemies,1 do
                nowenemy=enemynum;
                typt_TGD,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,ta,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8=enemies[nowenemy]:get(); --,rotate[a]    attempt to index global rotate  (a nil value)          --smsg1="AAAAAAAAA xx2="..xx2.." xtn="..xt.." yy2=".. yy2.." yt="..yt;
                if (hpt<1)and(deadanim~="tankdead")then
                  cooldowntanks=200;  -- обычно не срабатывает никогда .  по какой то причине.  hptank==0
                    love.audio.play (tankdeadsnd);
                    if (titlegame~="Kolonista") then score=score+70; end
                    if (typt_TGD~="scientist")and(typt_TGD~="wtank") then newloot=droploot(10);      printat_if_empty (xt,yt,newloot);             end
                    if (typt_TGD=="wtank") then  printat_if_empty (xt,yt,124);   end
                    hpt=0; senddeadmsg=1;tanksdestroyed=tanksdestroyed+1;
                    deadanim="tankdead";
                end;
                if (src_tankid_TGD==enemynum) then notarget=1; else notarget=0;  end;  -- реализовано для того чтобы танки не уничтожали сами себя при выстреле.
                if (src_tankid_TGD==-1) then notarget=1; end; -- and(typt_TGD=="btank") не сработает пока белый танк не станет одним из элементов таблицы, а он не является им.
                if (src_tankid_TGD==-2) then notarget=0; end; -- эффект explodeice , masseffect  требуется обслужить обязательно
                -- вот оно тут происходит точное сравнение координаты танка xt,yt с координатой патрона x2_TGD,y2_TGD
                if(otladka==1)and(sourceammo_TGD=="PC1") then --
                    smsg1="TGD_FUNC:"..command_TGD.." damg="..damage_TGD.." src="..sourceammo_TGD.." src_tankid="..src_tankid_TGD.." pow="..command_power_TGD.."SND="..delayed_snd;
                end;
                if ((isnear (xt,x2_TGD,1))and(isnear (yt,y2_TGD,1))and(hpt>0)and(notarget==0)) then   -- man_is_moving2  --and(tanks_mov)
                    trafienie=trafienie+1;
                    allowshotpla3=0;  --  блок Pain reflection не пишется BUILD 9000 , allowshotpla3 nie ma związku z tankami
                    if (painreflecttanks>0)and (sourceammo_TGD~="cannons") and(tor_pocisku~=nil) then ----W3  оcновное отражение боли которое реально работает в игре, все другие версии обслуживают отключенные или удаленные блоки  и должны быть удалены
                    TGD_PR=TGD_PR+1;  -- coś nie tak z tymi pociskami? nie zawsze robię effekta
                        if (tor_pocisku=="left") then reflectname="right"; angle=0; end
                        if (tor_pocisku=="right") then reflectname="left"; angle=180; end
                        if (tor_pocisku=="up") then reflectname="down"; angle=90; end;
                        if (tor_pocisku=="down") then reflectname="up" ; angle=270; end;
                        damage_pain_reflection=damage_TGD; --math.ceil (directdamage/2);
                        love.audio.play (reflectsnd); -- мы слышим звук выстрела и в логе есть патрон однако он никуда не летит и его вообще часто не видно - по каким причинам вообще непонятно
                        if (otladka==1) then smsg1="TGD_PR:ammoX["..totalammo.."] =("..reflectname..","..x..","..y..",command_ammo="..command_TGD.." dmg="..damage_pain_reflection..",enemynum="..enemynum..","..msg_to_func..","..command_power_TGD..","..delayed_cmd.." "; end;
                        -- та команда что присылает патрон  в принципе оно и сейчас верно работает но так по идее лучше.
                        start_x=x2_TGD; start_y=y2_TGD;ammo_moving=true;--if (ammoicon=="right") нам прилетает пуля и надо установить в какую сторону её развернуть.
                        --xt i yt это если Player имеет отражение боли
                        renderammoshot_ammos=true;
                        ammoX[totalammo] = class_ammo:new(reflectname,start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,angle,renderammoshot_ammos,rikoszets,1,default_ammo_speed,"painreflection",command_TGD,wzmacniacz,damage_pain_reflection,enemynum,msg_to_func,command_power_TGD,delayed_cmd,delayed_snd);
                    end ;
                    hpt=hpt-damage_TGD;
                    if (hpt<0) then zabicie=zabicie+1; end; 
                     smsg2="zabicie="..zabicie;
                    if (zabicie>1)and (smsg1~="ultrakill !") then smsg1="doublekill !"; end 
                    if (zabicie>3) then smsg1="multikill !";   multikills=multikills+1; check_nagrode (); end 
                    if (zabicie>5) then smsg1="ultrakill !";  ultrakills=ultrakills+1;  end 
                    -- if (sourceammo_TGD=="jezyk") then command_power_TGD=1000; end ;  -- Jezyk wysyła power=0; 
                 if (sourceammo_TGD=="PC1") then
                      hplasttank=hpt; -- TO DISPLAY AS PLAYER GUI!!!
                      sledzione_hp_tankid=enemynum; 
                      hplt_command=command_TGD;
                      hplasttank_power=command_power_TGD;
                     end 
                        --if (sourceammo_TGD=="PC1")and(typt_TGD=="wtank") then hplasttank=hpt/4;   sledzione_hp_tankid=enemynum; end
                    potrafil=true;
                    if (command_TGD=="")or(command_TGD=="c_a_update") then   if (protecttanks<1) then hpt=hpt-damage_TGD/2; end;               end;
                    --STUN????
                    if (command_power_TGD==nil) then command_power_TGD=1000; 
                      smsg2="command_power_TGD = NIL, teraz 1000, komanda była "..command_TGD; 
                    end
                    if (command_TGD=="freeze")and(protecttanks<1)  then freezetanks=freezetanks+command_power_TGD; end
                    if (command_TGD=="speed")and(speedtanks<1)  then speedtanks=speedtanks+command_power_TGD; end
                    if (command_TGD=="slow")and(protecttanks<1)  then slowPL1tanks=slowPL1tanks+command_power_TGD; end
                    if (command_TGD=="kierowca")and(protecttanks<1)  then kierowcaczolgow=kierowcaczolgow+command_power_TGD; end
                    if (command_TGD=="signal")and(protecttanks<1)  then tankwithsignal=enemynum; signaltraptimer=signaltraptimer+command_power_TGD; end
                    if (command_TGD=="disarm")and (typt_TGD=="tank") then hpt=0;  printat_if_empty (xt,yt,121);  end;
                    if (command_TGD=="disarm")and (typt_TGD=="wtank") then hpt=0;  printat_if_empty (xt,yt,121);  end;
                    if (command_TGD=="bombplace") then printat_if_empty (xt,yt,124);  end; -- when stuck enemy places bomb
                    if (command_TGD=="mineplace") then printat_if_empty (xt,yt,146);  end; -- kiedy spotyka wroga zużywa miny 
                       if (command_TGD=="nowywrog") then 
                          typeobject="migalka";
                          hpt_new=command_power_TGD;
                            enemies[totalenemies+1] = class_enemy:new(typeobject,xt,yt,hpt_new,0,0,0,0,0,addspeed,10+addprotect,0,0,0,0,0,0,addfear,0,addslowdown,0,0,addkulemet,0,0,addinvis,addpain,addaura,0,0,0,0);
                                  totalenemies=totalenemies+1;
                          end
                    if (command_TGD=="stun")or(command_TGD=="bombplace")  then -- W3 Stun  старый stun если найти - удалить.
                      protecttanks=protecttanks-command_power_TGD; 
                      protecttanks=protecttanks-damage_TGD;
                        if (tor_pocisku=="left") then xt=xt-rozmiarznak; man_xpla3=xt; tanks_mov=false; end
                        if (tor_pocisku=="right") then xt=xt+rozmiarznak; man_xpla3=xt; tanks_mov=false;end
                        if (tor_pocisku=="up") then yt=yt-rozmiarznak; man_ypla3=yt; tanks_mov=false;end;
                        if (tor_pocisku=="down") then yt=yt+rozmiarznak; man_ypla3=yt;tanks_mov=false; end;
                    end
                    --if (tankwithsignal~=nil) then smsg1="tankwithsignal="..tankwithsignal.." signaltraptimer:"..signaltraptimer;end;
                    if (signaltraptimer==0) then tankwithsignal=0; end; 
                    if (command_TGD=="fear")and(protecttanks<1)  then feartanks=feartanks+command_power_TGD; end
                    if (command_TGD=="corrosion")and(protecttanks<1)  then damagetimertanks=damagetimertanks+command_power_TGD;  end
                    if (command_TGD=="szkoda")and(protecttanks<1)  then hpt=hpt-getstandartdamage;  end
                    if (command_TGD=="protect") then protecttanks=protecttanks+command_power_TGD; end
                    if (command_TGD=="dispel")and(protecttanks<1) then
                        freezetanks=0; feartanks=0; damagetimertanks=0; slowPL1tanks=0;speedtanks=0;  painreflecttanks=0; invisibletanks=0;  haveaura=""; end;
                    if (command_TGD=="painreflect") then painreflecttanks=painreflecttanks+command_power_TGD; end

                           if (command_TGD=="explodebomb") then by=math.ceil (gamey(yt));bx=math.ceil(gamex(xt)); --by=x; bx=y;
                        delayed_cmd="explodebomb"; delayed_snd="dynamitesnd"; delayed_power=500; delayed_id=0; delayed_src="explodebomb_ammo";
                    end
                    if (command_TGD=="explodeshards") then -- explode shards used
                        start_x=xt; start_y=yt+3; command_ammo="";ammo_moving=true; renderammoshot_ammos=true; -- не назначать тут explodeshards будет слишком уж круто.
                        totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("left",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,180,renderammoshot_ammos,rikoszets,0,300,"shards",command_ammo,1,43,src_tankid_TGD);
                        totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("right",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,0,renderammoshot_ammos,rikoszets,0,300,"shards",command_ammo,1,43,src_tankid_TGD);
                        totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("up",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,270,renderammoshot_ammos,rikoszets,0,300,"shards",command_ammo,1,43,src_tankid_TGD);
                        totalammo=totalammo+1;ammoX[totalammo] = class_ammo:new("down",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,90,renderammoshot_ammos,rikoszets,0,300,"shards",command_ammo,1,43,src_tankid_TGD);
                    end;
                    if (command_TGD=="heal")and(hpt<600) then hpt=hpt+command_power_TGD+10; end

                    if (delayed_cmd~="")and(delayed_snd~="") then playsoundifvisible ((_G[delayed_snd]),xt,yt);delayed_snd=""; end;

                    --love.audio.play(patronysnd) ;       пощёлкивание ауры убрано   здесь должен быть звук ауры но его нет.
                    --if (senddeadmsg==1) then deadanim="tankdead";  senddeadmsg=0; end;
                    enemies[nowenemy]:set(typt_TGD, xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,ta,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8); -- NIL  kak tak?
                    -- удаление этой строки удаляет вред танкам от взрывов бомб и ловушек но убирает и телепортацию.  проблема двойной записи в таблицу с танками.
                    -- в данный момент танки всё ещё телепортируются к бомбам в которые они стреляли
                    return potrafil,zabicie;
                end



            end; end;
    end

    --обрабатываем команды контрольного центра СС
    if (incontrolcentre==1) then
        countinventory=#inventoryitemtable
        mushroom=0
        if (countinventory>0) then
            for aii=countinventory,1,-1 do
                inventoryitemtoremove=inventoryitemtable[aii];
                if (inventoryitemtoremove==83) then removeinventoryitem(aii); mushroom=mushroom+1; end
            end
        end

        if (mushroom>0) then score=score+mushroom*145; smsg1="You autosell mushrooms 145x"..mushroom;
            mushroom=0;
        end

        if (love.keyboard.isDown("space"))or(love.keyboard.isDown("return")) then spacepressed=1; end; --love.keyboard.isDown(" "))
        if ((spacepressed==1)or(ammoKEYPL1=="space"))or(joystickKEYPL1=="O") then  --выход
            incontrolcentre=0;  android_ui_changed_state=1;        ammoKEYPL1="";
        end

        if love.keyboard.isDown("e")or(ammoKEYPL1=="e")or(keyCC=="e") then  --выход
            if(repairroad==0) then  repairroad=1; score=score-100; end
            esx,esy=xgametorealpositionbezbyte (sx,sy);   -- вычисляем рамки железной дороги.
            esx2,esy2=xgametorealpositionbezbyte (sx,ey); -- не работает если в системных данных уровня экспресс не прописан
            for b=gamey(esy),gamey(esy2),1 do   --чиним дорогу.
                for a=gamex(esx),gamex(esx2),1 do
                    printat (b,a,125);
                end
            end
            printat (sx-1,ey,"130");       printat (sx-1,sy,"129");        printat (sx-2,exp,"128");--печатаем экспресс,
            keyCC=""; 
        end

        if love.keyboard.isDown("x")or(ammoKEYPL1=="x") then  --выход
            if(tank>0) then   tank=0; score=score+1000; end end
        if love.keyboard.isDown("c")or(ammoKEYPL1=="c") then  --выход
            if (protect>0)  then  protect=0; score=score+700;  end end
        if love.keyboard.isDown("l")or(ammoKEYPL1=="l") then  --выход
            if (score>0) then    lives=lives+1; score=score-100;end;    end
        if love.keyboard.isDown("k")or(ammoKEYPL1=="k") then  --выход
            if (score>0) then   keys=keys+1; score=score-40;end;    end
        if love.keyboard.isDown("b")or(ammoKEYPL1=="b") then  --выход
            if (score>0) then   bombs=bombs+3; score=score-40;end;    end
        if love.keyboard.isDown("a")or(ammoKEYPL1=="a") then  --выход
            if (score>0) then   ammo=ammo+5; score=score-20;end;    end
        if love.keyboard.isDown("i")or(ammoKEYPL1=="i") then  --выход
            if (score>0) then   ice=ice+5; score=score-20;end;    end
        if love.keyboard.isDown(";")or(ammoKEYPL1==";") then  --выход
            if (lives>2) then lives=lives-1; score=score+100; end;    end
        if love.keyboard.isDown("z")or(ammoKEYPL1=="z") then  --выход
            if (reservedaids>2) then reservedaids=reservedaids-1; score=score+50;end;    end
    end
    camlock=2;
    if (oldstyle_camera_move==0) then  camlock=1; end;
    if (oldstyle_camera_move==1) then if (not man_is_moving) then camlock=1; else camlock=0; end;  end;
    --камера может перемещатся где угодно кроме контрольного центра (одинаковые кнопки)   cameRA CODE
    --nen тут надо прекратить перемещения и действия танка противника (not man_is_movingpla2)and(not man_is_movingpla2am)
    if cameratimer==nil then cameratimer=0; end; 
    if (incontrolcentre==0)and(renderer==1)and(not man_is_moving2)and(camlock==1) or(express==1)and(renderer==1)and(incontrolcentre==0)  then

        if (editor==0)or((spacepressed==1))or(love.keyboard.isDown("l")) then --or(love.keyboard.isDown("9c"))
            windowsczujnosc=2;
            if (ObjectSIZE==1) then windowsczujnosc=1; end; 
            if (ObjectSIZE>1) then windowsczujnosc=3; end; 
            if (editor==1) then windowsczujnosc=1; end;
            if (gamex(x)-cameraleftpos_x_hor>visual_mapsize_horizontal-(windowsczujnosc+1))and (cameraleftpos_x_hor<mapsize_horizontal-visual_mapsize_horizontal) then 
             camerakey="]";if (cameratimer==0)and(kamerasrc~="czlowiek") then cameratimer=20;
             if (ObjectSIZE==1) then cameratimer=12; end; 
              reqmovecamera="right";  end; 
               end;
            if (gamex(x)-cameraleftpos_x_hor<windowsczujnosc)and (cameraleftpos_x_hor>0) then
             camerakey="[";if (cameratimer==0)and(kamerasrc~="czlowiek") then cameratimer=20;
               if (ObjectSIZE==1) then cameratimer=12; end; 
              reqmovecamera="left"; end;
             end; -- tut mamy problem
            if (gamey(y)-camerauppos_y_vert>visual_mapsize_vertical-windowsczujnosc)and (camerauppos_y_vert<mapsize_vertical-visual_mapsize_vertical)then
             camerakey=";"; 
             if (cameratimer==0)and(kamerasrc~="czlowiek") then cameratimer=10; 
                 if (ObjectSIZE==1) then cameratimer=7; end; 
              reqmovecamera="down";  end; 
             end; -- tut mamy problem
            if (gamey(y)-camerauppos_y_vert<windowsczujnosc)and  (camerauppos_y_vert>0)  then 
              camerakey="p"; 
              if (cameratimer==0)and(kamerasrc~="czlowiek") then cameratimer=10; 
                if (ObjectSIZE==1) then cameratimer=7; end; 
                reqmovecamera="up";  end; 
              end;
        end
        
        if (reqmovecamera=="left")and (cameratimer>0)and (editor==0) then  cameratimer=ubywanie (cameratimer); camerakey="["; end
        if (reqmovecamera=="right")and (cameratimer>0)and (editor==0) then cameratimer=ubywanie (cameratimer);  camerakey="]";end
        if (reqmovecamera=="up")and (cameratimer>0)and (editor==0) then  cameratimer=ubywanie (cameratimer); camerakey="p"; end
        if (reqmovecamera=="down")and (cameratimer>0)and (editor==0) then  cameratimer=ubywanie (cameratimer); camerakey=";"; end
        if (cameratimer==0) then reqmovecamera=""; end; 

        xpla3fix=0 ;ypla3fix=0;
        if (camera_time_move>9)and (ossys=="Android") then ammoKEYPL1=""; camerakey="";end;

        if (camerakey=="p")or(camerakey==";")or(camerakey=="[")or(camerakey=="]")  --(ammoKEYPL1=="p")or(ammoKEYPL1==";")or(ammoKEYPL1=="[")or(ammoKEYPL1=="]")or
        then camera_time_move=camera_time_move+1;
            if(map_changed==0) then map_changed=1;   end;
            try_to_fix_tankPC2=1;
            --if (man_is_moving) then  try_to_fix_tankPC1=1; end;
            try_to_fix__tanks=1;
            man_is_movingpla2 = false; -- проигрывается ли анимация движения
            allowshotpla2=0;allowmovepla2=0;
            freezetimerPL2=0;
            ammoKEYPL2=""; movePL2="";renderammoshotpla3=0;
        end;

        if (camerakey=="") then camera_time_move=0;end;
        if (camerakey=="p")and(camera_time_move>3) then
            if (camerauppos_y_vert>0) then camerauppos_y_vert=camerauppos_y_vert-1;
                if (editor==0) then y=y+rozmiarznak;
                    man_y=man_y+rozmiarznak; man_y2=man_y2+rozmiarznak;
                end ;
                y2=y2+rozmiarznak;
                ypla2=ypla2+rozmiarznak; y2pla2am=y2pla2am+rozmiarznak; y3pla2am=y3pla2am+rozmiarznak;
                man_ypla2=man_ypla2+rozmiarznak; man_y2pla2am=man_y2pla2am+rozmiarznak;

                ypla3fix=rozmiarznak;

            end;
        end
        if (camerakey==";")and(camera_time_move>3) then
            if (camerauppos_y_vert<(mapsize_vertical-visual_mapsize_vertical)) then camerauppos_y_vert=camerauppos_y_vert+1;
                if (editor==0) then y=y-rozmiarznak;
                    man_y=man_y-rozmiarznak; man_y2=man_y2-rozmiarznak;
                end ;
                y2=y2-rozmiarznak;
                ypla2=ypla2-rozmiarznak; y2pla2am=y2pla2am-rozmiarznak; y3pla2am=y3pla2am-rozmiarznak;
                man_ypla2=man_ypla2-rozmiarznak; man_y2pla2am=man_y2pla2am-rozmiarznak;
                ypla3fix=-rozmiarznak;

            end;
        end
        if (camerakey=="[")and(camera_time_move>3)then  --or((express==1)and(camerakey=="["))
            if (cameraleftpos_x_hor>0) then cameraleftpos_x_hor=cameraleftpos_x_hor-1;
                if (ossys=="Android") then raznica=cameraleftpos_x_hor-0;  else raznica=0; end;
                if (raznica>7) then cameraleftpos_x_hor=cameraleftpos_x_hor-7; end;
                if (editor==0) then x=x+rozmiarznak; if (raznica>7) then x=x+rozmiarznak*7; end ;
                    man_x=man_x+rozmiarznak; if (raznica>7) then man_x=man_x+rozmiarznak*7; end ;
                    man_x2=man_x2+rozmiarznak; if (raznica>7) then man_x=man_x2+rozmiarznak*7; end ;
                end ;
                x2=x2+rozmiarznak;
                xpla2=xpla2+rozmiarznak; if (raznica>7) then xpla2=xpla2+rozmiarznak*7; end ;
                x2pla2am=x2pla2am+rozmiarznak;if (raznica>7) then x2pla2am=x2pla2am+rozmiarznak*7; end ;
                man_xpla2=man_xpla2+rozmiarznak; man_x2pla2am=man_x2pla2am+rozmiarznak; if (raznica>7) then man_xpla2=man_xpla2+rozmiarznak*7; man_x2pla2am=man_x2pla2am+rozmiarznak*7; end ;
                x3pla2am=x3pla2am+rozmiarznak;if (raznica>7) then x3pla2am=x3pla2am+rozmiarznak*7; end ;
                xpla3fix=rozmiarznak; if (raznica>7) then xpla3fix=rozmiarznak*8; end ;

            end;
        end
        if (camerakey=="]")and(camera_time_move>3)  then  --or((express==1)and(camerakey=="]"))
            if (cameraleftpos_x_hor<(mapsize_horizontal-visual_mapsize_horizontal)) then cameraleftpos_x_hor=cameraleftpos_x_hor+1;
                if (ossys=="Android") then raznica=mapsize_horizontal-visual_mapsize_horizontal-cameraleftpos_x_hor else raznica=0; end;
                if (raznica>7) then cameraleftpos_x_hor=cameraleftpos_x_hor+7; end;
                if (editor==0) then x=x-rozmiarznak;if (raznica>7) then x=x-rozmiarznak*7; end ;
                    man_x=man_x-rozmiarznak; if (raznica>7) then man_x=man_x-rozmiarznak*7; end ;
                    man_x2=man_x2-rozmiarznak; if (raznica>7) then man_x=man_x2-rozmiarznak*7; end ;

                end ;
                x2=x2-rozmiarznak;if (raznica>7) then x2=x2-rozmiarznak*7; end ;
                xpla2=xpla2-rozmiarznak; if (raznica>7) then xpla2=xpla2-rozmiarznak*7; end ;
                x2pla2am=x2pla2am-rozmiarznak;if (raznica>7) then x2pla2am=x2pla2am-rozmiarznak*7; end ;
                man_xpla2=man_xpla2-rozmiarznak; man_x2pla2am=man_x2pla2am-rozmiarznak; if (raznica>7) then man_xpla2=man_xpla2-rozmiarznak*7; man_x2pla2am=man_x2pla2am-rozmiarznak*7; end ;
                x3pla2am=x3pla2am-rozmiarznak;if (raznica>7) then x3pla2am=x3pla2am-rozmiarznak*7; end ;
                xpla3fix=-rozmiarznak; if (raznica>7) then xpla3fix=-rozmiarznak*8; end ;

            end;
        end
        -- ]
        if ((totalenemies>0)) then  --and(wsego_tank_teleporterow>0)
            totalenemies=#enemies; -- фикс вылета из за неверного числа totalenemies
            for enemynum=1,totalenemies,1 do
                typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am,rotate_t,feartanks=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value)
                if (try_to_fix__tanks==1) then -- affects game(x) ceiled
                    xt_stfi,yt_stfi=standardowecoordfix (xt,yt) ; try_to_fix__tanks=0;
                    if (xt_stfi~=nil) then xt=xt_stfi   ; yt=yt_stfi+rozmiarznak;end;
                end
                xt=xt+xpla3fix;  man_xpla3=man_xpla3+xpla3fix;
                yt=yt+ypla3fix; man_ypla3=man_ypla3+ypla3fix;
                --jedzenietimer=jedzenietimer+xpla3fix;  timer_alt_anim=timer_alt_anim+xpla3fix;  -- для выстрелов
                --zebrany_item_id=zebrany_item_id+ypla3fix; cooldowntanks=cooldowntanks+ypla3fix;
                enemies[enemynum]:set(typt, xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am,rotate_t,feartanks); -- NIL  kak tak?
                --smsg4=" enemies[enemynum]:set(typt,"..xt..","..yt..","..hpt..",rotate,"..man_xpla3..","..man_ypla3.."); ";
            end; end;
        --enemynum--
    end


    -- Unpack items - распаковка предметов
    camerakey="";
    if (getkeyforpause~=0) then ammoKEYPL1=getkeyforpause; getkeyforpause=0; end;

    if (countinventory==1) then if (ammoKEYPL1=="unpack")or (menu==9) and (firekeyPL1=="fire") then  ammoKEYPL1="";
        codeitem=inventoryitemtable[1];  unpackedobject=ext_objs_param (codeitem,15); o_kod_repair=ext_objs_param (codeitem,24);
        if (unpackedobject~=nil) then removeinventoryitem(1);

          maximumunpackitem=5;
          if inventorybelt==1 then maximumunpackitem=7; end; 
            for a=0,maximumunpackitem,1 do addinventoryitem (unpackedobject);end
        end;
    end


    end
    --  Починка вещей героем.
    if (countinventory==2)and(ammoKEYPL1=="unpack")then        ammoKEYPL1="";
        codeitem=inventoryitemtable[1];  unpackedobject=ext_objs_param (codeitem,15); o_kod_repair=ext_objs_param (codeitem,24);
        if(o_kod_repair~=nil)and(o_kod_repair<255)and(molotok==true)and(timerz>2) then timerz=0;  --(chancesrandomsound>(62-levelnumber))and(timerz>50)
            removeinventoryitem(1);
            addinventoryitem (o_kod_repair);
            removeinventoryitem(1);
            addinventoryitem (50);
        end
    end


    if (ammoKEYPL1=="unpack")and (countinventory==0)and(slot0>0)and(timerz>2) then  --u
        addinventoryitem(slot0);
        timerz=0;
        slot0=0;

    end
       --  Use items - Использование предметов
    if  (ammoKEYPL1~="itemselect")and(ammoKEYPL1~="itemuse")then itemkey=0; end;

    if (editor==0) then
        if (menu==9)and(joystickKEYPL1=="X") or (menu==9)and(love.keyboard.isDown(uammokey)) then if  (ekwipunekid~=nil)and (PC1_select_module=="inventory") then 
          if (ekwipunekid==nil) then ekwipunekid=0;itemkey=-1; end; 
          if (countinventory>1) and (ammoKEYPL1=="unpack") then ammoKEYPL1=""; ekwipunekid=0;itemkey=0;end; 
          if (countinventory==0) then itemkey=-1; end; 
          itemkey=ekwipunekid; -- klawiatura emulation
          timerz=-1;PC1_select_module="0";
          end; end; 
        
        if (menu==9)and(joystickKEYPL1=="TR") or (menu==9)and(love.keyboard.isDown(ubombkey)) then if  (ekwipunekid~=nil)and (PC1_select_module=="inventory")and (timerz>0) then 
          if (ekwipunekid==nil) then ekwipunekid=0;itemkey=-1; end; 
          itemkey=-1;joystickKEYPL1=""; -- klawiatura emulation
          if (hp>0)and(countinventory>0)and(editor<1)and(kufrcountinventory<kufrmaximuminventorysize) then
        inventoryitemtoremove=inventoryitemtable[ekwipunekid];
       -- smsg1="ekwipunekid="..ekwipunekid.." inv item to remove//"..inventoryitemtoremove
        dropableitem=ext_objs_string (inventoryitemtoremove,21);
        addinventoryitemwkufrze(inventoryitemtoremove);
        removeinventoryitem(ekwipunekid);
        countinventory=countinventory-1; --предмет можно удалить только если он успешно поставится.
          end
          timerz=-5;--PC1_select_module="0";
          end; end; 

        if (menu==9)and(joystickKEYPL1=="SQR") or (menu==9)and(love.keyboard.isDown(udropkey)) then if  (ekwipunekid~=nil)and (PC1_select_module=="inventory")and (timerz>0) then 
          if (ekwipunekid==nil) then ekwipunekid=0;itemkey=-1; end; 
          itemkey=-1;joystickKEYPL1=""; -- klawiatura emulation
          if (hp>0)and(countinventory>0)and(editor<1)and(kufrcountinventory<kufrmaximuminventorysize) then
        inventoryitemtoremove=inventoryitemtable[ekwipunekid];
      --  smsg1="ekwipunekid="..ekwipunekid.." inv item to remove//"..inventoryitemtoremove
        dropableitem=ext_objs_string (inventoryitemtoremove,21);
         zzzzz=printat_if_empty (x,y,inventoryitemtoremove);
        if (zzzzz==1) then removeinventoryitem(ekwipunekid);
                             countinventory=countinventory-1; 
                    timerz=-5;--PC1_select_module="0";

          end 
          end
          end; end; 

        if (menu==9)and(joystickKEYPL1=="X")and (PC1_select_module=="wear") or (menu==9)and(love.keyboard.isDown(uammokey))and (PC1_select_module=="wear") then 
          if (ekwipunekid==nil) then ekwipunekid=0; end; 
           slotid=ekwipunekid-1;
          if  (slotid~=nil)and (_G[ekwipunekidslottype]~=0)and (countinventory<maximuminventorysize) then 
            --smsg1="selected="..slotid.." type="..ekwipunekidslottype.." contains ".._G[ekwipunekidslottype];
            if ( _G[ekwipunekidslottype]~=0) then  addinventoryitem (_G[ekwipunekidslottype]);  end;  --"slot"..slotid
           _G[ekwipunekidslottype]=0;
           timerz=-1;PC1_select_module="0";
          -- Если слот 0 занят, 1 свободен и 2 занят, то 2 не нажмётся . так и будет слот 0 .. какого ????????
             end; end; 
             
        if (PC1_select_module~="0")and (ammoKEYPL1=="unpack") then ammoKEYPL1="";end; 
        if (love.keyboard.isDown("1"))or(ammoKEYPL1=="unpack")and (timerz>2)or(ammoKEYPL1=="ITEM1")and (timerz>2) then PC1_select_module="0";itemkey=1; end; -- fast using items  countinventory
        if (love.keyboard.isDown("2")) then itemkey=2; end; if (love.keyboard.isDown("3")) then itemkey=3; end;
        if (love.keyboard.isDown("4")) then itemkey=4; end; if (love.keyboard.isDown("5")) then itemkey=5; end;
        if (love.keyboard.isDown("6")) then itemkey=6; end; if (love.keyboard.isDown("7")) then itemkey=7; end;
        if (love.keyboard.isDown("8")) then itemkey=8; end; if (love.keyboard.isDown("9")) then itemkey=9; end;
        if (love.keyboard.isDown("0")) then itemkey=10; end;if (love.keyboard.isDown("-")) then itemkey=11; end;
        if (love.keyboard.isDown("=")) then itemkey=12; end;if (love.keyboard.isDown("backspace")) then itemkey=13;
    end;
    end;

--  szybkie wykonanie obiekta
    if (countinventory>(itemkey-1)) and (itemkey>0)and ((timerz>15)or(menu==9)) then
       if (menu==9) then 
        if (ammoKEYPL1=="unpack") then ammoKEYPL1=""; itemkey=nil; end
        --stattitle=0; menu=0; renderer=1;pause=0; 
        end; 
        codeitem= inventoryitemtable[itemkey];
        if (itemkey~=nil) then
            a,item_name1=smsg_string (objs[((codeitem+1))][13]); --=selectedobject_name_SMSG_code);
            if (item_name1~=nil) then smsg1="Using "..item_name1; timerz=-10; end;
        end

--smsg1="slot0="..slot0.." codeitem="..codeitem.." itemkey="..itemkey.. "countinventory="..countinventory; 

        if (codeitem~=nil) then
            usable=ext_objs_string (codeitem,22);
            rifleenh=ext_objs_string (codeitem,23);
            remove_inv_after_using_item=ext_objs_string (zzx,27);
            alreadyaction=0;
            if (usable=="usable")and(rifleenh=="slot0")and (slot0==0) then
                slot0=codeitem;
                playsoundifvisible (newarsenalsnd,x,y);
                removeinventoryitem(itemkey);
                alreadyaction=1;
            end
            if (usable=="usable")and(rifleenh=="slot0")and (slot0~=0)and (alreadyaction==0) then
                saveditem=slot0;
                slot0=codeitem;
                playsoundifvisible (newarsenalsnd,x,y);
                removeinventoryitem(itemkey);
                addinventoryitem (saveditem);
            end
            if (usable=="usable")and(rifleenh=="slot1")and (slot1==0) then
                slot1=codeitem;
                playsoundifvisible (newarsenalsnd,x,y);
                removeinventoryitem(itemkey);
                alreadyaction=1;
            end
            if (usable=="usable")and(rifleenh=="slot1")and (slot0~=0)and (alreadyaction==0) then
                saveditem=slot1;
                slot1=codeitem;
                playsoundifvisible (newarsenalsnd,x,y);
                removeinventoryitem(itemkey);
                addinventoryitem (saveditem);
            end
            if (usable=="usable")and(rifleenh=="slot2")and (slot2==0) then
                slot2=codeitem;
                playsoundifvisible (newarsenalsnd,x,y);
                removeinventoryitem(itemkey);
                alreadyaction=1;
            end
            if (usable=="usable")and(rifleenh=="slot2")and (slot2~=0)and (alreadyaction==0) then
                saveditem=slot2;
                slot2=codeitem;
                playsoundifvisible (newarsenalsnd,x,y);
                removeinventoryitem(itemkey);
                addinventoryitem (saveditem);
            end

            if (usable=="usable")and(rifleenh=="slot3")and (slot3==0) then
                slot3=codeitem;
                playsoundifvisible (newarsenalsnd,x,y);
                removeinventoryitem(itemkey);
            end
               if (usable=="usable")and(rifleenh=="slot4")and (slot4==0) then
                slot4=codeitem;
                playsoundifvisible (newarsenalsnd,x,y);
                removeinventoryitem(itemkey);
            end
               if (usable=="usable")and(rifleenh=="slot5")and (slot5==0) then
                slot5=codeitem;
                playsoundifvisible (newarsenalsnd,x,y);
                removeinventoryitem(itemkey);
            end
               if (usable=="usable")and(rifleenh=="slot6")and (slot6==0) then
                slot6=codeitem;
                playsoundifvisible (newarsenalsnd,x,y);
                removeinventoryitem(itemkey);
            end
            
            if (usable=="usable")and(rifleenh=="") then  -- Others item using    używanie itemów "c" ekwipunek
                plusx=0; plusy=0;
                removeinventoryitem(itemkey); -- usuwanie robi jak należy . używanie jest problemem.
                --remove_inv_after_using_item=="removeinvafteruse"
                inventory_fast_and_full_remove_flag_enable=1; 
                reactmove (codeitem,inventory_fast_and_full_remove_flag_enable);

            end
            -- реакция на usable особые предметы. 
            if (usable=="usable")and(codeitem==95) then
                plusx=0; plusy=0;
                removeinventoryitem(itemkey);
                 hptank=0;enemytank=0;
                love.audio.play(tankdeadsnd);
              if (totalenemies>0) then
              for enemynum=1,totalenemies,1 do
                  typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am=enemies[enemynum]:get();
                  if (typt~="scientist") then hpt=0; end; 
                  enemies[enemynum]:set(typt, xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am); -- NIL  kak tak?
              end;
            ammoKEYPL1=""; end;

            end

        end
        timerz=-10;
        inventory_changed=1;
        itemkey=0;
        itemkeypress=0;
        countinventory=#inventoryitemtable;
    end

    -- Окончание использования предметоw

    if  (love.keyboard.isDown(uzbrojakey)) and(editor==0)or(ammoKEYPL1=="ekwip") then
        stattitle=1;
        menu=9; selectedoptionmenu=1;
        disable_quickload_at_start=1; -- fix autoload problem
    end
      if  (love.keyboard.isDown(ustatkey)) and(editor==0)or(ammoKEYPL1=="prifle") then
        stattitle=1;
        menu=10; selectedoptionmenu=1;
        disable_quickload_at_start=1; -- fix autoload problem
    end


    if love.keyboard.isDown("d")and(editor==0)and(tank==1)or (ammoKEYPL1=="droptank")and(editor==0)and(tank==1)  then
        tank=0;
        printat (gamey(y)+plusy,gamex(x)+plusx,"121");
    end


  if (love.keyboard.isDown(urestkey)and love.keyboard.isDown("rctrl"))and(titlegame=="M2K") then
        levelnumber=132;
        smsg1="Sekretny poziom Kolonista!";
     
        music:stop(mtrack);
        levelname="Levels/LEVEL"..levelnumber..".$C";
        allowris=1;
        stage0_fps=FPSnow;
        love.load ();

    end

    if (love.keyboard.isDown(urestkey)and love.keyboard.isDown("=")) then
        levelnumber=999;
        smsg1="Benchmark mode activated.";
        x=0; y=0;
        music:stop(mtrack);
        levelname="Levels/LEVEL"..levelnumber..".$C";
        allowris=1;
        stage0_fps=FPSnow;
        benchmark_stage=1;timerz=0;

    end

    function rnd1 ()
        randomget=math.random(100);
        if (randomget<50) then randomget=0; else randomget=255; end;
        return randomget;
    end

    function rnd2 ()
        randomget=math.random(100);
        if (randomget>32)and(randomget<67) then zz=0;end;
        if (randomget>66) then zz=127;end;
        if (randomget<33) then zz=255; end;

        return zz;
    end

    if (ammoKEYPL1=="h") then -- uhealkey 
        if ((reservedaids>0)and(hp<hpmax)and(lives>0)and(hp>0)) then
            hp=hpmax; reservedaids=reservedaids-1;
            feartimerPL1=0; damagetimerPL1=0;
            pajaktimerPL1=0;
            love.audio.play(aptekasnd);
        end;
    end

    if (ammoKEYPL1=="r") then -- resurrect key 
         if ((reservedaids>0)and(hp<hpmax)and(lives>0)and(hp>0)) then
            hp=hpmax; reservedaids=reservedaids-2;
            feartimerPL1=0; damagetimerPL1=0;
            freezetimerPL1=0;  pajaktimerPL1=0;
            love.audio.play(aptekasnd);
        end;
        if ((lives>0)and(hp<1)) then
            damagetimerPL1=0;slowPL1=0; freezetimerPL1=0; invisibletimerPL1=0;
            feartimerPL1=0;resurrecttimer=300;cursedtimerPL1=0;
            pajaktimerPL1=0; 
            itemcooldown_PL1=0; 
            speedtimer=0 ; -- Теперь бонусы ускорения и усиления после смерти также отбираются.
            ammoKEYPL1="";
            if (titlegame=="Reskue") then
              score=math.ceil( score/4)* 3; 
            end
            if (titlegame~="M2K") then
                x,y=xgametorealposition (startX,startY)
                checkx,checky=scanobject (18,-1);--check player 1 start position
                if (checkx>-1) then x,y=xgametorealpositionbezbyte (1+checky,checkx) ; end
            end
            if (destroy_inventory_after_dead==1) then
                inventoryitemtable={}; countinventory=0;
            end
        if (titlegame=="Reskue")or(titlegame=="Kolonista") then
          --smsg1="try add"; 
          if (lives==1)and(slot5~=272)and(poziom==0) then addinventoryitem (272);
            lasthopeadded=1; 
          end   
        end

            if (titlegame=="Kolonista") then tank=0; end;
            hp=hpmax; lives=lives-1;
            anikadr=0;anitimer=0;anicycles=0;
            express=0; -- игрок вылезет из экспресса
            man_speed=default_man_speed;
            incontrolcentre=0; -- игрок вылезет из центра управления. ыы
            love.audio.play(aptekasnd);
        end;
        
    end

    chances=(math.random(52+7*tank+1*protect));
    if ((hp<1)or(chances>50))and (fasttimer==14) then
        extradroids=scanobject (169,-2);--check player 1 start position   NOT MAIN RESCAN 169 !!! 

    end

    if ((extradroids>0)and(hp<1)) then
        man_x=0; man_y=0;man_is_moving=false;
        printat (gamey (y),gamex (x), "27");
        if(countinventory>0) then
            if (randomget>50) then plusxy=1*rozmiarznak; else plusxy=-1*rozmiarznak; end
            miejscezajeto=( screens (gamey (y),gamex (x+plusxy)-1));
            if (miejscezajeto) then printat (gamey (y),gamex (x+plusxy), inventoryitemtable[1]); end
        end
        damagetimerPL1=0;slowPL1=0; freezetimerPL1=0;
        feartimerPL1=0;invisibletimerPL1=0; cursedtimerPL1=0; resurrecttimer=300;
        hp=hpmax;
        anikadr=0;anitimer=0;anicycles=0;
        if (destroy_inventory_after_dead==1) then
            inventoryitemtable={}; countinventory=0;
        end
        express=0; -- игрок вылезет из экспресса
        man_speed=default_man_speed;
        incontrolcentre=0; -- игрок вылезет из центра управления. ыы

        checkx,checky=scanobject (169,-1);--check player 1 start position
        if (checkx>-1) then x,y=xgametorealpositionbezbyte (1+checky,checkx) ;
            extradroids=extradroids-1;  end;
        printat (gamey (y),gamex (x), "56");
        love.audio.play(szpricsnd);
        smsg1="Reserve copy activated. Memory loaded. ";
    end



    if (incontrolcentre==0)and(ammoKEYPL1=="tostart")and(gamex(x)~=startX)and(gamey(y)~=startY)and(hp>1)and(editor==0) then
        x,y=xgametorealposition (startX,startY)
        checkx,checky=scanobject (18,-1);--check player 1 start position
        if (checkx>-1) then x,y=xgametorealpositionbezbyte (1+checky,checkx) ; end
        hp=1;
    end


    if (editor==1)and((ammoKEYPL1=="tostart")) then
        x,y=xgametorealposition (startX,startY)
        xpla2,ypla2=xgametorealposition (startX,startY);
        checkx,checky=scanobject (18,-1);--check player 1 start position
        if (checkx>-1) then x,y=xgametorealpositionbezbyte (1+checky,checkx) ; end
        xpla2,ypla2=xgametorealposition (startX,startY);
        checkx,checky=scanobject (17,-1);--check player 1 start position
        if (checkx>-1) then xpla2,ypla2=xgametorealpositionbezbyte (1+checky,checkx) ; end

    end

    if love.keyboard.isDown("f1")and (love.keyboard.isDown("lshift"))and (love.keyboard.isDown("lctrl"))  then  --выход
        level=135;
    end


    if love.keyboard.isDown("f2") and (love.keyboard.isDown("lshift"))and (love.keyboard.isDown("lctrl")) then
        showandroidbar=not_numeric (showandroidbar);
    end
    if love.keyboard.isDown("f3")and(editor==1)and not (love.keyboard.isDown("lshift"))and not (love.keyboard.isDown("lctrl")) then
        codename=smsg_string (objs[((selectedobject+1))][13]);
        love.window.showMessageBox("Info",objs[((selectedobject+1))][12].."."..codename , {"OK"}, 'error');
    end
    if love.keyboard.isDown("f3")and(editor==0)and not (love.keyboard.isDown("lshift")) then
        codename=smsg_string (objs[((zzx+1))][13]);
        love.window.showMessageBox("Info",codename , {"OK"}, 'error');
        ammoKEYPL1="";
    end

    --уровень можно пропустить за 2000 очков.
    if (love.keyboard.isDown("n"))or(ammoKEYPL1=="n") then if (editor==0) and (hardlevel~=1)and(score>-1)and(titlegame=="M2K") then
        if (levelnumber<maximumlevels_ingame) then levelnumber=levelnumber+1; finaltitle=0; else finaltitle=1; end;
        score=score-2000;
        changemusic (mtrack);
        love.audio.play(levelnextsnd);
        --   finaltitle=1;
        love.load ();
    end
    end



    if (love.keyboard.isDown("space"))or(love.keyboard.isDown("return")) then spacepressed=1; end;
    if (lovever<11)and(love.keyboard.isDown(" ")) then spacepressed=1; end;
    if (joystickKEYPL1=="X") then spacepressed=1; end;
    if (joystickKEYPL1=="O") then escapepressed=1; end;

    if ((spacepressed==1)or(ammoKEYPL1=="space")) then if (targetremains<1)and(editor==0)and(titlegame=="M2K")then
        if (levelnumber<maximumlevels_ingame) then levelnumber=levelnumber+1; finaltitle=0; else finaltitle=1; end;
        score=score+lives*20+ammo+ice+bombs+keys*5+water*5;
        autosave_execute ();
        ammoKEYPL1="";
        levelname="Levels/LEVEL"..levelnumber..".$C";
        changemusic(mtrack);
        love.audio.play(levelnextsnd);
        love.load();

    end;
    end;

    if love.keyboard.isDown("f12")and(timerz>3)and love.keyboard.isDown("f11") then
        otladka=not_numeric (otladka);
        --love.filesystem.setIdentity('atlas');
        --ATLAS:newImageData():encode('png', "123.png");  -- сохраняем фотку атласа на память.

    end

    if love.keyboard.isDown("f10")and(timerz>3)and love.keyboard.isDown("f9") then
        modtextures=not_numeric (modtextures);
        create_atlas (); map_changed=2;
        --love.filesystem.setIdentity('atlas');
        --ATLAS:newImageData():encode('png', "123.png");  -- сохраняем фотку атласа на память.

    end


   pausedelay=0;
    
    if love.keyboard.isDown("f11")and(timerz>3) then
          collectgarbage("collect");
           timerz=1; 
        if (not man_is_moving) then ObjectSIZEchangeallow=1;  --266
            end
    end


    if (editor==0) then if love.keyboard.isDown("f1")or(ammoKEYPL1=="usermenu")or(movePL1=="menu") then
        menu=4; -- score=-100000; debug mode on
        selectedoptionmenu=1;
        renderer=0;pause=1;timerz=0;
    end
    end
    if (execute==true) then  smsg2="execute="..execute; end;


    -- Menu 6 zapisy_SAVES реализация выбора сохранений игр.

    if (execute=="quicksave") then ammoKEYPL1="savegame"; selectedoptionmenu=0;menu=0;end
    if (execute=="savegame") then ammoKEYPL1="savegame";  selectedoptionmenu=0;menu=0;end --savegamename
    if ((love.keyboard.isDown("f5"))and(pietro>1)) then 
      smsg1="Pietro 2 save not allowed.";
       end; 
    if ((love.keyboard.isDown("f5"))and(pietro==1)and(editor==0))and (gameover==0)or(ammoKEYPL1=="savegame")and(editor==0)and (gameover==0)and(pietro==1) then  --SAVE GAME
        if (score<1) then
          smsg1="Unable to save game. No score left."; execute=""; ammoKEYPL1=""; end
        if (demka==1) then 
          smsg1="For save and edit use full version."; execute=""; ammoKEYPL1=""; end
        if (execute=="savegame") then
            if (idcopy~=nil) then idcopyprint=idcopy; else idcopyprint="NIIIIIIIIIL" ; end;
            --smsg2="id="..id.." idcopy= "..idcopyprint.." savegame="..savegamename;
        end;
        if (score>0) then ammoKEYPL1="";
        smsg1="Game saved";  
        savegamecounter=savegamecounter+1; 
        xdatapreparetowrite ();
        -- в этом месте должны быть переданы наигранные параметры для сохранения игры.
        datatowrite=table.concat(xdata);
        if (saveslot==0) then levelname ='quicksave'; end ;   -- есть только 1 слот для сохранения пока что.
        if (saveslot==1) then levelname ='quicksavex'; end ;   -- есть только 1 слот для сохранения пока что.
        if (execute=="savegame") then levelname=savegamename ;
            execute="";
        end;
        if ((execute=="quicksave")) then execute="";  end;
        realfilename=sourcewrite(datatowrite,levelname); -- новый способ save уровня через IO LUA
        love.filesystem.setIdentity(titlegame);

        imagedata    = GAMEWINDOWCANVAS:newImageData();
        filedata     = imagedata:encode( "png" )
        -- local filepng = io.open(realfilename, 'wb') -- из за этого сохранения были размером 0 байт.  не возвращать.
        renderer=1; selectedoptionmenu=0;pause=0;
        realfilename = realfilename .. ".png"
        if (otladka==1) then smsg1="Screenshot realfilename:"..realfilename.." levelname: "..levelname; end;
        if (ossys ~= "Android") then
            local filepng = io.open(realfilename, 'wb')
            if (filepng ~= nil) then
                filepng:write(filedata:getString()) -- <- this right here; now it's a string.
                filepng:close()
            end
        else
            love.filesystem.write(realfilename, filedata) -- i have a feeling this won't work though, chief. :|
        end
        end --(of score>0)
    end
    -- не забыть проверить косые для разных ОС.


    --=============
    if (love.keyboard.isDown("space"))or(love.keyboard.isDown("return")) then spacepressed=1; end;
    if (lovever<11)and(love.keyboard.isDown(" ")) then spacepressed=1; end;

    if (menu==0)and(renderer==0)and(timerz>3) then

        if love.mouse.isDown("1")and(menu==99)and(firstload==0)then
            mysz_x, mysz_y = love.mouse.getPosition( );
            love.system.openURL("https://vk.com/mate_desktop");
            --my=math.ceil (gamey (mysz_y)-1); mx=math.ceil (gamex (mysz_x)-1);
        end

        maxselectforgame=1;steplevel=0;
        if (titlegame=="Reskue") then maxselectforgame=14;steplevel=1; NO_SCORE_MINES_MODE=1; end
        if (titlegame=="M2K") then maxselectforgame=35; steplevel=5;end
    

        if (timerz>3)and(selectedoptionmenu==5)and(movePL1=="right")and(prestartlevelselect<maxselectforgame) then
            timerz=0; prestartlevelselect=prestartlevelselect+steplevel;
        end
        if (timerz>3)and(selectedoptionmenu==5)and(movePL1=="left")and(prestartlevelselect>1) then
            timerz=0; prestartlevelselect=prestartlevelselect-steplevel;
            if (prestartlevelselect>120) then prestartlevelselect=31; end;
            --if (selectedoptionmenu==1) then setspeed (setspeedgame); end;
        end

        if (prestartlevelselect>32) then  prestartlevelselect=130 end
        if (prestartlevelselect>32) then  prestartlevelselect=130 end
        if love.keyboard.isDown("escape")or love.keyboard.isDown("1")or((selectedoptionmenu==1)and(spacepressed==1)or(ammoKEYPL1=="menu_startgame"))or (joystickKEYPL1=="O") then

            loading_process_flag=1;
            firstload_complete=1; 
            --smsg1="fck"..zapisy_SAVES[3][1].."!"..zapisy_SAVES[3][2].."!"..zapisy_SAVES[3][3].."!"..zapisy_SAVES[3][4].."!";   pp  --
            if (zapisy_SAVES[3][4]=="1")and(firstload==0)and(disable_quickload_at_start==0) then execute="quickload"; menu=0; renderer=1;pause=0; 
                loadsavegame="yes";--smsg1="autoload";
                disable_quickload_at_start=1;
                love.load (); end

            if (gameover==0) then renderer=1; -- START GAME OPTION  or(timerz>150)   меню на Android должно автоматически убиратся
                pause=0;-- timerz=0;
                menuoption=1; -- это флаг запуска игрового процесса как минимум один раз.
                if (firstload==0) then firstload=1 ; changemusic (2) ;
                    if (prestartlevelselect>1)and((titlegame=="Reskue")or(titlegame=="M2K")) then
                        levelnumber=prestartlevelselect;
                        loading_process_flag=1;
                        love.load (); end;
                    --if (titlegame=="Reskue") then love.audio.play(levelnextsnd); end --   стартовый звук игры отстутстует.

                end
                --=======FIXING BUG LOVE 11.3+ANDROID COMBINATION-====================
                if (loading_process_flag==1)and(fix_love_11_3_bug_atlas_android==0)and(ossys=="Android") then fix_love_11_3_bug_atlas_android=1;
                    loading_process_flag=0;  create_atlas (); android_ui_changed_state=1; create_atlas_mobile () ; oldstyle_camera_move=1;
                end
            end;
        end

        if (((selectedoptionmenu==2)and(spacepressed==1))and(demka==0)and(wsego_saves>0) or(ammoKEYPL1=="menu_loadgame"))and(demka==0)and(wsego_saves>0)  then
            renderer=0; pause=1
            menu=7;
            timerz=0;
            selectedoptionmenu=1;

        end

        if (((selectedoptionmenu==3)and(spacepressed==1))and(execute=="")and(demka==0) or(ammoKEYPL1=="menu_savegame"))and(demka==0)  then
           if (gameover==0)and(menuoption==1)and(score>0)and (firstload_complete==1)  then  renderer=0; pause=1
            menu=6;
            selectedoptionmenu=1;
            timerz=0;
            end
        end
        -- Menu 6 zapisy_SAVES реализация выбора сохранений игр.
        --if (execute=="quickload") =="loadgame") then ammoKEYPL1="menu_load";  end --savegamename
        --это обычное сохранение игры, не сохранение карты в редакторе.
        -- сохранение - подсчет свободных байтов в save файле - --всё поле - 863 клетки   +128 =991

        function split2bytes (byte)
            byte1= math.floor (byte/256)   -- 513/256=2
            byte2= math.floor (byte-byte1*256);     --513-2*256 = 513-512=1    возможно эта ошибка есть и в split3bytes.
            return byte1,byte2;
        end

        if ((selectedoptionmenu==4)and(spacepressed==1))or(ammoKEYPL1=="menu_authors") then
            menu=2;
        end

        --уровень можно пропустить за 2000 очков.

        if ((selectedoptionmenu==5)and(spacepressed==1))or(ammoKEYPL1=="menu_restart") then  -- NEW GAME
            levelnumber=1; score=0;reservedaids=0; tank=0;protect=0; enemytank=0; --чистим инвентарь и с чистой душой с нуля.
            renderer=1; -- START GAME OPTION  or(timerz>150)
            pause=0; deadsoundplayed=0;
            gracz2idpostaci=0; gracz3idpostaci=0;
            RolePL2="";
              livedtanks=0;
           -- wsego_tank_teleporterow=0; -- СБРОС ТАНКОВ  должен по идее всегда выполнятся.
           if (titlegame~="M2K") then 
             minimumtanks=11;  -- должен вообще-то указыватся уровнем .  однако заменяется им? 
             starttanks=1;
           end
            enemies={};
            --flagchecknewteleportersenemy=0;
            totalenemies=0;
            emulatedjoystick1as2=0; 

            disable_quickload_at_start=1;
            reskuegameoverstep=0; gameover=0;
            missionfailed=0; 
            damagetimerPL1=0;slowPL1=0; freezetimerPL1=0;
            feartimerPL1=0;invisibletimerPL1=0;
            menuoption=1;
            slot0=0;
            slot1=0; slot2=0;slot3=0;slot4=0;slot5=0;slot6=0;
            countinventory=0;
            tanksdestroyed=0;
            gameover=0;
            inventoryitemtable={};
            loading_process_flag=1;
            if (prestartlevelselect>1)and((titlegame=="Reskue")or(titlegame=="M2K")) then levelnumber=prestartlevelselect; love.load (); end;
            love.load ();
        end

        if ((selectedoptionmenu==6)and(spacepressed==1))or(ammoKEYPL1=="menu_settings") then
            menu=1;selectedoptionmenu=1;timerz=0;

        end

        if ((selectedoptionmenu==7)and(spacepressed==1))and(demka==0) or(ammoKEYPL1=="menu_editor")and(demka==0) then
            editor=1; renderer=1;
            pause=0;
            loading_process_flag=1;

        end

        if ((selectedoptionmenu==8)and(spacepressed==1))or(ammoKEYPL1=="menu_exit")or(ammoKEYPL1=="turboexitgame") then
            love.event.quit();
        end

        ammoKEYPL1="";

    end

    -- запасной выход, всегда должен быть активен в любой момент игры.
    if (ammoKEYPL1=="turboexitgame") then
        love.event.quit();
    end

    if love.keyboard.isDown("escape")or(ammoKEYPL1=="openmainmenu") then
        stattitle=0;
        renderer=0; -- START GAME OPTION
        if (menu==1) then writeactualsettings=1;writesettingsgame () ;end;
        menu=0;selectedoptionmenu=1;
        pause=1;
    end

     if (ammoKEYPL1=="menu_settings") then
        stattitle=0;
        renderer=0; -- SETTINGS GAME OPTION
        menu=1;selectedoptionmenu=1;
        pause=1;
    end



    -- Это меню Settings
    if (menu==1)and(renderer==0)and(timerz>9) then


        if ((selectedoptionmenu==1)and(spacepressed==1))or(ammoKEYPL1=="zero")or (joystickKEYPL1=="O") then
            menu=0;selectedoptionmenu=1;
            writeactualsettings=1;writesettingsgame () ;
        end


        
        keyword=menu_settings[selectedoptionmenu+1][2];typenumeric=menu_settings[selectedoptionmenu+1][5];
        if ((typenumeric=="l")and(spacepressed==1))or((typenumeric=="l")and(love.keyboard.isDown("right")))or(typenumeric=="l")and(movePL1=="right") then
            timerz=8; _G[keyword]=not_numeric (_G[keyword]); --универсальная логическая настройка

        end
        -- if (typenumeric=="m") then MENU end 
        if ((selectedoptionmenu==3)and(spacepressed==1))or(ammoKEYPL1=="ustawenia2") then
            ustawenia2=1;timerz=0; -- you cannot disable it
            menu=20; selectedoptionmenu=1; 
       end
        if ((selectedoptionmenu==5)and(spacepressed==1))or(ammoKEYPL1=="ustawenia3") then
            ustawenia3=1;timerz=0; -- you cannot disable it
            menu=21; selectedoptionmenu=1; 
       end

        if ((selectedoptionmenu==4)and(spacepressed==1))or(ammoKEYPL1=="nomusic") then
            nomusic= not_numeric (nomusic); timerz=0;
            if (nomusic==1) then changemusic (mtrack) ; end
            if (nomusic==0) then music:stop(mtrack); end
        end

        --if (ossys=="Android") then coop_join_disable=1; end;  pl2ai 
        if (1>0) then
            if ((selectedoptionmenu==9)and(spacepressed==1))or(ammoKEYPL1=="ObjectSIZE") then
                reschange (resolutionPC);
                setspeed (setspeedgame);
            end ;-- end;

            if ((selectedoptionmenu==21)and(spacepressed==1))or(ammoKEYPL1=="setspeedgame") then
                smsg1="Speed "..setspeedgame;
                setspeed (setspeedgame);
            end ;-- end;


            if ((typenumeric=="n")and(love.keyboard.isDown("right")))or(typenumeric=="n")and(movePL1=="right") then
                timerz=8; _G[keyword]=_G[keyword]+1;
                if (selectedoptionmenu==21) then setspeed (setspeedgame); end;
            end
            if ((typenumeric=="n")and(love.keyboard.isDown("left")))or(typenumeric=="n")and(movePL1=="left") then
                timerz=8; _G[keyword]=_G[keyword]-1;
                if (selectedoptionmenu==21) then setspeed (setspeedgame); end;
            end
            if ((typenumeric=="n")and(love.keyboard.isDown("0"))) then
                timerz=15; _G[keyword]=0;
            end

            if (mastervolume>10) then mastervolume=10; end;
            if (mastervolume<0) then mastervolume=0; end;
            if (mastervolume>10)and(ossys=="Android") then mastervolume=0; end;
            if (musicvolume>10) then musicvolume=10; end;
            if (musicvolume<0) then musicvolume=0; end;
            if (musicvolume>10)and(ossys=="Android") then musicvolume=0; end;
            if (effectvolume>10) then effectvolume=10; end;
            if (effectvolume<0) then effectvolume=0; end;
            if (setspeedgame>20) then setspeedgame=20; end;
            if (setspeedgame>20)and(ossys=="Android") then setspeedgame=6; end;
            if (setspeedgame<4) then setspeedgame=4; end;
            if (oldstyle_camera_move>1) then oldstyle_camera_move=1; end;
            if (oldstyle_camera_move<0) then oldstyle_camera_move=0; end;

            love.audio.setVolume( mastervolume/10 );

            if ((selectedoptionmenu==9)and(spacepressed==1))or(ammoKEYPL1=="ObjectSIZE") then
              ObjectSIZEchangeallow=1;
              renderer=1; selectedoptionmenu=0; menu=0; 
            end

            if ((selectedoptionmenu==12)and(spacepressed==1))or(ammoKEYPL1=="none") then
                gamescreenfixvertical=0; gamescreenfixhorizontal=-1; timerz=0;
                ObjectSIZE=0; option=0; 
            end;

            if ((selectedoptionmenu==20)and(spacepressed==1))or(ammoKEYPL1=="vsyncc") then
                timerz=0;  --vsyncc
                levelnumber=999;
                smsg1="Benchmark mode activated.";
                x=0;y=0;
                music:stop(mtrack);
                levelname="Levels/LEVEL"..levelnumber..".$C";
                allowris=1; pause=0;
                renderer=1;
                stage0_fps=FPSnow;
                benchmark_stage=1;timerz=-10;
            end ;

            if ((selectedoptionmenu==8)and(spacepressed==1))and(timerz>2)or(ammoKEYPL1=="language") then
                language=language+1 ;timerz=0;  end ;
        end;


        if (language>2) then language=2; end;
        if (language>2)and(ossys=="Android") then language=0; end;
        if (language<0) then language=0; end;
        ammoKEYPL1="";
    end


--  Zlamany pecet
   if (menu==98)and (renderer==0)and(timerz>3) then
        flag=0;
        if (string.len(text)>1)and (timerz>5)or(ammoKEYPL1=="zero")and (timerz>5) then
            text="";
        end
    if ((selectedoptionmenu==1)and(spacepressed==1))or(ammoKEYPL1=="zero")or (joystickKEYPL1=="O") then
            menu=0;selectedoptionmenu=1;
        end
end

 --   Kontrollers, używanie pada, ustawenia3 
   if (menu==21)and (renderer==0)and(timerz>3) then
        flag=0;
        if (string.len(text)>1)and (timerz>5)or(ammoKEYPL1=="zero")and (timerz>5) then
            text="";
        end
    if ((selectedoptionmenu==1)and(spacepressed==1))or(ammoKEYPL1=="zero")or (joystickKEYPL1=="O") then
            menu=0;selectedoptionmenu=1;
            writeactualsettings=1;writesettingsgame () ;
        end
end
    -- опрос клавиатуры и переназначение клавиш. keyboardsettings ustawenia2


    if (menu==20)and (renderer==0)and(timerz>3) then
        flag=0;
        if (string.len(text)>1)and (timerz>5)or(ammoKEYPL1=="zero")and (timerz>5) then
            text="";
        end

        if ((selectedoptionmenu==0)and(spacepressed==1)) then
            menu=1; selectedoptionmenu=1;
            uuammokey=uammokey ;uuicekey=uicekey;uubombkey=ubombkey;uudropkey=udropkey;uuleftkey=uleftkey;uurightkey=urightkey ;uuupkey=uupkey;uudownkey=udownkey;uuunpackkey=uunpackkey;
            uuhealkey=uhealkey; uurestkey=urestkey; uuzbrojakey=uzbrojakey; uustatkey=ustatkey; uutostartkey=utostartkey;
          
            uuxcamleftkey=uxcamleftkey; uuxcamrightkey=uxcamrightkey; uuxcamupkey=uxcamupkey; uuxcamdownkey=uxcamdownkey;
            timerz=0;            zero=0;
        end
        if ((selectedoptionmenu==1)and(spacepressed==1)) then
            menu=1; selectedoptionmenu=1;
            uammokey=uuammokey ;uicekey=uuicekey;ubombkey=uubombkey;udropkey=uudropkey;uleftkey=uuleftkey;urightkey=uurightkey ;uupkey=uuupkey;udownkey=uudownkey;uunpackkey=uuunpackkey;
            uhealkey=uuhealkey; urestkey=uurestkey; uzbrojakey=uuzbrojakey; ustatkey=uustatkey; utostartkey=uutostartkey;
           uxcamleftkey=uuxcamleftkey; uxcamrightkey=uuxcamrightkey; uxcamupkey=uuxcamupkey; uxcamdownkey=uuxcamdownkey;
            timerz=0;zero=0;
        end
        if ((selectedoptionmenu==2)and(spacepressed==1)) then

            uuammokey="lshift";uuicekey="capslock";uubombkey="z";uudropkey="x";uuleftkey="left";uurightkey="right";uuupkey="up";uudownkey="down";uuunpackkey="u";
           uuhealkey="h"; uurestkey="r";uuzbrojakey="c"; uustatkey="v";uutostartkey="l";
            uuxcamleftkey="["; uuxcamrightkey="]"; uuxcamupkey="p"; uuxcamdownkey=";";
            uxcamleftkey="["; uxcamrightkey="]"; uxcamupkey="p"; uxcamdownkey=";";
            timerz=0;zero=0;
        end

    end

    -- конец опроса клавиатуры

    if (menu==2)and(renderer==0)and(timerz>3) then
        if ((selectedoptionmenu==1)and(spacepressed==1))or(ammoKEYPL1=="zero")or(joystickKEYPL1=="O") then
            menu=0;renderer=1; selectedoptionmenu=1;
        end
        ammoKEYPL1="";    --print_r (inventoryitemtable);

        if (love.keyboard.isDown("1")or (ammoKEYPL1=="ammo")) then
            love.system.openURL("http://dj-alex.ru/")
            if (xxx==true) then smsg1="true"; end;
            if (xxx==false) then smsg1="true"; end;
        end
        if (love.keyboard.isDown("2"))  then
            love.system.openURL("https://vk.com/veliaraft")
        end
        if (love.keyboard.isDown("3"))  then
            love.system.openURL("https://kwork.ru/user/julia_minina")
        end
        if (love.keyboard.isDown("6"))  then
            love.system.openURL("file://"..love.filesystem.getSaveDirectory())
        end
        if (love.keyboard.isDown("4"))  then
            love.system.openURL("https://www.youtube.com/channel/UCgnD0i7KsNrumRtzPCuukdg?view_as=subscriber")
        end
        if (love.keyboard.isDown("5"))and(steam_state==0)  then
            love.system.openURL("https://www.patreon.com/m2kdev_djalex")
        end


    end


    if (menu==9)and(renderer==0)and(timerz>3) then

        if ((selectedoptionmenu==1)and(spacepressed==1))or(ammoKEYPL1=="zero")or(joystickKEYPL1=="O") then
            menu=0;renderer=1; selectedoptionmenu=1;stattitle=0; pause=0;
        end
        ammoKEYPL1="";
    end

    if (menu==10)and(renderer==0)and(timerz>3) then

        if ((selectedoptionmenu==1)and(spacepressed==1))or(ammoKEYPL1=="zero")or(joystickKEYPL1=="O") then
            menu=0;renderer=1; selectedoptionmenu=1;stattitle=0;pause=0; 
        end
        ammoKEYPL1="";
        --print_r (inventoryitemtable);

    end
    -- setting level i think
    if (menu==3)and(renderer==0)and(timerz>3) then
        if ((selectedoptionmenu==1)and(spacepressed==1))or(ammoKEYPL1=="zero")or(joystickKEYPL1=="O") then
            menu=0;renderer=1; selectedoptionmenu=1;
        end
        keyword=editor_settings[selectedoptionmenu+1][2];
        if ((selectedoptionmenu>1)and(love.keyboard.isDown("right")))or(movePL1=="right") then
            timerz=9; _G[keyword]=_G[keyword]+1;
        end
        if ((selectedoptionmenu>1)and(love.keyboard.isDown("left")))or(movePL1=="left") then
            timerz=9; if (_G[keyword]>0) then _G[keyword]=_G[keyword]-1; end;
        end
        if (love.keyboard.isDown("0")) then
            timerz=15; _G[keyword]=0;
        end
        ammoKEYPL1="";
    end

    -- shipping center menu - пример обработки меню с андроида и ПК.
    if (menu==5)and(timerz>3) then
        if (etatimer>0) then smsg1="You cannot order new ship until it returns." ; end;
        if ((selectedoptionmenu==1)and(spacepressed==1))or(ammoKEYPL1=="1") then
            menu=0;pause=0 ;  selectedoptionmenu=1;
            allowshot=1; cooldownPL1ammo=cooldownPL1ammo+10; 
            renderer=1;incontrolcentre=0; ammoKEYPL1="";
            --allowshot=1; cooldownPL1ammo=cooldownPL1ammo+100; 

            if (#itemshippinglist>5)and(etatimer<1) then etatimer=35+(poziom+hardlevel+countinventory_i)*15; smsg1="Ship started.";
              allowshot=1; cooldownPL1ammo=cooldownPL1ammo+10; 
              
                playsoundifvisible (order2snd,x,y);end ;
        end

        if ((typenumeric=="n")and(love.keyboard.isDown("right")))or(typenumeric=="n")and(movePL1=="right") then
            timerz=8; _G[keyword]=_G[keyword]+1;
            
        end
        if ((typenumeric=="n")and(love.keyboard.isDown("left")))or(typenumeric=="n")and(movePL1=="left") then
            timerz=8; _G[keyword]=_G[keyword]-1;
            
        end


        if ((selectedoptionmenu==0)and(spacepressed==1))or(ammoKEYPL1=="0")or(joystickKEYPL1=="O") then
            menu=0;pause=0 ;  selectedoptionmenu=1;
            allowshot=1; cooldownPL1ammo=cooldownPL1ammo+10; 
            renderer=1;incontrolcentre=0; ammoKEYPL1="";
            smsg1="Exit without ship ordering.";
        end

        for i=2, #centrum_dostawy_listSC,1 do
            id=centrum_dostawy_listSC[i][1];--это просто номер ключа в таблице
            iditem=centrum_dostawy_listSC[i][2]; --это просто номер id item
            nameitem=centrum_dostawy_listSC[i][3]; -- название переменной содержащей картинку загруженную ранее в love.load.
            costitem=tonumber (centrum_dostawy_listSC[i][4]);     --keypressmenu_glowna=centrum_dostawy_listSC[i][1];
            if (costitem==nil) then costitem=0; end;
            --if (id==nil) then id=0; end;

            if (#itemshippinglist<maximumshipcapacity)and(timerz>2)and (etatimer<1)and ((score+creditCCmaximum)>costitem) then  --or(ammoKEYPL1=="pause3-9")  kak?   -- (selectedoptionmenu>2)and(selectedoptionmenu<10)and
                if ((spacepressed==1))and(selectedoptionmenu>1)or(ammoKEYPL1==(id))   then --  selectedoption работает только с компьютера,  с андроида идет ammoKEYPL1

                    if (ammoKEYPL1==(id)and(id~="128")) then selectedoptionmenu=id;  -- ADDED LAST ONLY and (id>1))   and(id~="1")  and (id~="0")
                        --smsg1="A:i="..i.." id="..id..", iditem="..iditem.." nameitem="..nameitem.." selectedoptionmenu="..selectedoptionmenu;
                    end;
                    --love.audio.play(swapitem);

                    iditem=centrum_dostawy_listSC[selectedoptionmenu+1][2]; --это просто номер id item
                    costitem=tonumber (centrum_dostawy_listSC[selectedoptionmenu+1][4]);
                    additemshippinglist (iditem);
                    if (i~=3) then playsoundifvisible (order1snd,x,y); end

                    score=score-costitem;
                    timerz=0;
                    ammoKEYPL1="";


                end; end;

        end

    end

    -- END  shipping center menu - пример обработки меню с андроида и ПК.


    -- Control Center PC menu
    if (menu==15)and(timerz>3) then

    smsg1="Control center menu"; 

   if ((selectedoptionmenu==1)and(spacepressed==1))or(ammoKEYPL1=="zero")or(joystickKEYPL1=="O") then --EXIT
            menu=0;renderer=1; selectedoptionmenu=1;
        end

        if ((selectedoptionmenu==1)and(spacepressed==1))or(ammoKEYPL1=="1") then -- EXIT WITH ORDER
            menu=0;pause=0 ;  selectedoptionmenu=1;
            renderer=1;incontrolcentre=0; ammoKEYPL1="";
       end
 
        if ((selectedoptionmenu==0)and(spacepressed==1))or(ammoKEYPL1=="0")or(joystickKEYPL1=="O") then --EXIT AGAIN?
            menu=0;pause=0 ;  selectedoptionmenu=1;
            renderer=1;incontrolcentre=0; ammoKEYPL1="";
            smsg1="Exit without action.";
        end

        for i=2, #kontrolny_centrum_SC_CC-1,1 do
                            a=selectedoptionmenu+1;
                            if (selectedoptionmenu>#kontrolny_centrum_SC_CC-1) then iditem=0;a=2;  end; 
                            iditem=ext_param (kontrolny_centrum_SC_CC,a,1,"number");
                            smsg_code=ext_param (kontrolny_centrum_SC_CC,a,2,"string");-- textdatacontent,nameitem=smsg_string (objs[iditem+1][13])
                            act=ext_param (kontrolny_centrum_SC_CC,a,3,"string");
                            cena=ext_param (kontrolny_centrum_SC_CC,a,4,"number");
                            znizka=ext_param (kontrolny_centrum_SC_CC,a,5,"number");
                            sklepnazwa=ext_param (kontrolny_centrum_SC_CC,a,6,"string");
                            iloscitemow=ext_param (kontrolny_centrum_SC_CC,a,7,"number");
                            typeCC=ext_param (kontrolny_centrum_SC_CC,a,8,"string");
                            no_hardlevel=ext_param (kontrolny_centrum_SC_CC,a,9,"string");
                            reqGAME=ext_param (kontrolny_centrum_SC_CC,a,10,"string");
                            keyword=reqGAME;

            id=i;
             if ((typeCC=="var")and(spacepressed==1))and(act=="sprzedac")and(selectedoptionmenu>1)and(timerz>2) then
                  timerz=0; 
                  if (_G[keyword]>0) then 
                  _G[keyword]=_G[keyword]-1;
                  score=score+cena;
                  playsoundifvisible (order1snd,x,y); 
                  end
            end

            if ((spacepressed==1))and(selectedoptionmenu>1)and(typeCC=="CMD")and((score+creditCCmaximum)>cena)and(timerz>2) then            
              playsoundifvisible (order1snd,x,y); 
              keyCC=act; -- эмуляция кнопок старого СС. 
            end

            if ((spacepressed==1))and(selectedoptionmenu>1)and(act=="kupic")and((score+creditCCmaximum)>cena)and(timerz>2) then
                  addinventoryitem (iditem); score=score-cena;
                  timerz=0;
              end

              end

    end


    -- menu 6 Saving game select slot
    if (menu==6)and(timerz>15) then

        if ((selectedoptionmenu==2)and(spacepressed==1))or(ammoKEYPL1=="2") then
            menu=0;pause=0 ;  selectedoptionmenu=1;
            renderer=1;
            execute="quicksave";
            smsg1="Quicksave done.";
            timerz=0;
        end

        if ((selectedoptionmenu==1)and(spacepressed==1))or(ammoKEYPL1=="1")or(joystickKEYPL1=="O") then
            menu=0;pause=0 ;  selectedoptionmenu=1;
            renderer=1;incontrolcentre=0; ammoKEYPL1="";
            smsg1="Exit without save.";
            timerz=0;
        end

        for i=3, #zapisy_SAVES,1 do
            id=zapisy_SAVES[i][1];
            sa=0;   --PC ::  id 2 idcopy 2 quicksave f5 sa= exit without save (what? ) selected option menu =2
            if (#zapisy_SAVES)and(timerz>4)then
                if ((spacepressed==1))and(selectedoptionmenu>1)or(ammoKEYPL1==(id))   then --selectedoption работает только с компьютера,  с андроида идет ammoKEYPL1

                    if (ammoKEYPL1==(id)and(id~="128")) then selectedoptionmenu=id;
                        if (otladka==1) then smsg1="A:i="..i.." id="..id..", savegamename="..savegamename.." sa="..sa.." selectedoptionmenu="..selectedoptionmenu;      end;
                    end;
                    id=zapisy_SAVES[selectedoptionmenu+1][1];
                    savegamename=zapisy_SAVES[selectedoptionmenu+1][2];
                    idcopy=id; menu=0;
                    timerz=0;
                    execute="savegame";
                    if (otladka==1) then smsg1="PC:i="..i.." id="..id..", savegamename="..savegamename.." sa="..sa.." selectedoptionmenu="..selectedoptionmenu;       end;

                end; end;

        end

    end

    -- menu 7 Loading game select slot
    if (menu==7)and(timerz>15) then

        if ((selectedoptionmenu==2)and(spacepressed==1))or(ammoKEYPL1=="2") then
            menu=0;pause=0 ;  selectedoptionmenu=0;
            firstload_complete=1; 
            renderer=1;
            execute="";
            smsg1="Quickload done.";
            timerz=0;
            loadsavegame="yes";
            renderer=1;
            timerz=0;
            pause=0;
            menuoption=1;
            selectedoptionmenu=0; menu=0;
            reskuegameoverstep=0; gameover=0;
            missionfailed=0; 
            loading_process_flag=1;
            love.load();
        end

        if ((selectedoptionmenu==1)and(spacepressed==1))or(ammoKEYPL1=="1")or(joystickKEYPL1=="O") then
            menu=0;pause=0 ;  selectedoptionmenu=0;
            renderer=1;incontrolcentre=0; ammoKEYPL1="";
            execute="";
            smsg1="Exit.";
            timerz=0;
        end

        for i=3, #zapisy_SAVES,1 do
            id=zapisy_SAVES[i][1];
            sa=0;   --PC ::  id 2 idcopy 2 quicksave f5 sa= exit without save (what? ) selected option menu =2
            if (#zapisy_SAVES)and(timerz>4)then
                if ((spacepressed==1))and(selectedoptionmenu>1)or(ammoKEYPL1==(id))   then --selectedoption работает только с компьютера,  с андроида идет ammoKEYPL1

                    if (ammoKEYPL1==(id)and(id~="128")) then selectedoptionmenu=id;
                        smsg1="A:i="..i.." id="..id..", savegamename="..savegamename.." sa="..sa.." selectedoptionmenu="..selectedoptionmenu;
                    end;
                    id=zapisy_SAVES[selectedoptionmenu+1][1];
                    savegamename=zapisy_SAVES[selectedoptionmenu+1][2];
                    savetest=zapisy_SAVES[selectedoptionmenu+1][4];
                    idcopy=id;
                    timerz=0;
                    if (savetest=="0") then
                        love.audio.play(badsnd);
                        if (otladka==1) then    smsg1="File "..savegamename.." ["..id.."] not found. Try rerun game if save really exists." end;
                    end;
                    if (savetest=="1") then execute="loadgame";menu=0; renderer=1;pause=0;
                        loadsavegame="yes";
                        renderer=1;
                        timerz=0;
                        pause=0;
                        menuoption=1;
                        selectedoptionmenu=0; menu=0;
                        reskuegameoverstep=0; gameover=0;
                        missionfailed=0; 
                        loading_process_flag=1;
                        firstload_complete=1; 
                        love.load();
                    end;
                    if (otladka==1) then  smsg1="PC:i="..i.." id="..id..", savegamename="..savegamename.." sa="..sa.." selectedoptionmenu="..selectedoptionmenu;       end;

                end; end;

        end

    end

if (menu==16) and (disablechangemenuoptions>0) then 
      selectedoptionmenu=disablechangemenuoptions; 
    end
    if (menu==16)and(timerz>3) then
        --             help center   выход по любой опции
        if ((spacepressed==1))or(ammoKEYPL1=="pause1")or (joystickKEYPL1=="O") then
            menu=0;pause=0 ;  selectedoptionmenu=0;
            renderer=1;
        end

      end

    -- Меню Пауза, вызывается по F1
    if (menu==4)and(timerz>3) then
        --              keypressmenu_glowna
        if ((selectedoptionmenu==1)and(spacepressed==1))or(ammoKEYPL1=="pause1")or (joystickKEYPL1=="O") then
            menu=0;pause=0 ;  selectedoptionmenu=1;
            renderer=1;
        end

        if ((selectedoptionmenu==2)and(spacepressed==1))or(ammoKEYPL1=="pause2") then
           allowmove=0;
            --playsoundifvisible (computersnd,x,y);
            incontrolcentre=1;
            if (menu~=16) then selectedoptionmenu=1; end 
            menu=16; renderer=0;  
            prokrutka=0; 
             timerz=0;
        end


        for i=2, #menu_user-1,1 do
            pagemenuitemkey=menu_user[i][1]; --это просто номер ключа в таблице
            keyword=menu_user[i][2]; -- название переменной содержащей картинку загруженную ранее в love.load.
            keypressmenu_glowna=menu_user[i][5];-- action emulated by codename action
            keyreal=menu_user[i][4]; -- action emulated by key name , contain only key name variable, not real contain.
            keyreal2=_G[keyreal]; 
           --if ((spacepressed==1)) then smsg1="keyword="..keyword..", keypress="..keypressmenu_glowna.." selectedoptionmenu="..selectedoptionmenu.." pagemenuitemkey="..pagemenuitemkey;        end
            if (selectedoptionmenu>2) then  --or(ammoKEYPL1=="pause3-9")  kak?   -- (selectedoptionmenu>2)and(selectedoptionmenu<10)and
                if ((spacepressed==1)) then

                    keypressmenu_glowna=menu_user[selectedoptionmenu+1][5];
                    menu=0;ammoKEYPL1=keypressmenu_glowna; timerz=0;
                    renderer=1;getkeyforpause=keypressmenu_glowna;                        pause=0;
                end; end;

            if (ammoKEYPL1==keyword) then  --or  kak?   на Android сделанная менюшка работает. а на ПК - нет.
                menu=0;ammoKEYPL1=keypressmenu_glowna; timerz=0;
                renderer=1;getkeyforpause=keypressmenu_glowna;                        pause=0;
                smsg1="keyword="..keyword..", keypress="..keypressmenu_glowna.." selectedoptionmenu="..selectedoptionmenu.." pagemenuitemkey="..pagemenuitemkey;        
            end;
            if (ammoKEYPL1==keyreal2)and(ammoKEYPL1~=keyword) then  --or  kak?   на Android сделанная менюшка работает. а на ПК - нет.
                menu=0;ammoKEYPL1=keyreal2; timerz=0;
                renderer=1;getkeyforpause=keypressmenu_glowna;                        pause=0;
                smsg1="keyword="..keyword..", keypress="..keypressmenu_glowna.." selectedoptionmenu="..selectedoptionmenu.." pagemenuitemkey="..pagemenuitemkey;        
            end;
        end
      --if ((ammoKEYPL1=="pause14droid")or(keyword=="m_act_ustawenia")) then end; 

        if (ossys=="Android") and (((selectedoptionmenu==14)and(spacepressed==1))or(ammoKEYPL1=="pause14droid")or ((keyword=="m_act_ustawenia")and(spacepressed==1))) then
            menu=1;ammoKEYPL1="space"; timerz=0;
            renderer=0;getkeyforpause="space";
            pause=1;selectedoptionmenu=1;
        end
        if (ossys=="Android") and (((selectedoptionmenu==15)and(spacepressed==1))or(ammoKEYPL1=="pause15droid")or ((keyword=="m_act_menu")and(spacepressed==1))) then
            menu=0;ammoKEYPL1="space"; timerz=0;
            renderer=0;getkeyforpause="space";
            pause=1;selectedoptionmenu=1;
        end
    end

    if love.keyboard.isDown("escape")or(ammoKEYPL1=="openmainmenu") then
        stattitle=0;
        renderer=0; -- START GAME OPTION
        menu=0;selectedoptionmenu=1;
        pause=1;
    end

    if love.keyboard.isDown("pause")and(timerz>20)or love.keyboard.isDown("f13") or love.keyboard.isDown("f14")or love.keyboard.isDown("f15")  or love.keyboard.isDown("eject")or (movePL1=="pause")and(timerz>20) then
        if (editor==1) then pause=0; editor=0; return; end;
        if (pause==1) then 
          map_changed=1; --redraw; 
          pause=0; timerz=0;return ;end;
        if (pause==0) then pause=1; timerz=0;return ;end;

    end

    if (ammoKEYPL1=="pomoc_cc")or love.keyboard.isDown("f2")and(timerz>10)and (editor==0) then
              allowmove=0;
              disablechangemenuoptions=0; 
            --playsoundifvisible (computersnd,x,y);
            incontrolcentre=1;
            if (menu~=16) then selectedoptionmenu=1; end 
            menu=16; renderer=0;  
            prokrutka=0; 
             timerz=0;
        end


    if love.keyboard.isDown("`")and(timerz>2)and(gameover==0)and(demka==0) or (ammoKEYPL1=="`")and(timerz>3)and(gameover==0)and(demka==0) then

        hardened_ammo_get="";
        timerz=0;
        map_changed=1;
        music:stop(mtrack);
        man_speed=default_man_speed*2;
        express=0;
        xeditordata={}; --(22*editor) 54518 objectlist
        --при загрузке редактора массив каждый раз формируется автоматически на основе таблицы objects.ini
        if (editor==1) then editor=0; editorloadlevel=0;
            auramax=0; auras={}; auranum=0;
            flagchecknewteleportersenemy=1;
            setspeed (setspeedgame);
            if (editorcallselectobject==1) then x=ed_return_x; y=ed_return_y;editorcallselectobject=0;
                cameraleftpos_x_hor=ed_camera_x;camerauppos_y_vert=ed_camera_y;
            end
            return ;end;

        editor=1; -- score=-100000;
    end

   --if (titlegame=="Mozaic") then editor=1 ;   end; 

    if (editor==1)then -- печать обьектов редактора для редактирования. -- editor data 
        if (editorprepared>-1) then -- generating editor items 
            printat(217,14,56); 
            printat(217,15,56); 
            yy=218; xx=0;  
            for aa=1,#objs-1,1 do -- вот он сука этот 260.
                printobject_code_editor=aa-1; 
                if (objs[aa-0]==nil) then-- objs[aa-0]=0
                   skipnil=1; else skipnil=0;  end; 
                if ((skipnil==0) and (objs[aa-0][14]=="noeditor") and (editor_dont_show_broken_items==1)) then skipx="skip"; else skipx=""; end;  -- несуществующие обьекты в обьект ини
                if ((skipnil==0) and (objs[aa-0][3]~="1empty.png"))and (skipx~="skip") then
                    if (xx>(visual_mapsize_horizontal-2)) then xx=0; yy=yy+1; end;
                    printat (yy,xx,printobject_code_editor); 
                    xx=xx+1
                end;
            end ;
            editorprepared=2;
        end

        if ((ammoKEYPL1=="itemselect")and(editor==1)or (love.keyboard.isDown("tab"))or (love.keyboard.isDown("backspace"))) then tabpressed=1 else tabpressed=0 end;

        if ((tabpressed==1) and (editorcallselectobject==0)and(timerz>3) ) then
            if(map_changed==0) then map_changed=1;   end;
            ed_return_x=x; ed_return_y=y;editorcallselectobject=1;
            ed_camera_x=cameraleftpos_x_hor;  ed_camera_y=camerauppos_y_vert;
            if (visual_mapsize_vertical<21) then editorfix=5 else editorfix=0; end;

            camerauppos_y_vert=mapsize_vertical+0+visual_mapsize_vertical+(5*ObjectSIZE);
            cameraleftpos_x_hor=0;
            x,y=xgametorealpositionbezbyte (mapsize_vertical+18,14);--+editorfix

            timerz=0;
        end
        if ((tabpressed==1) and (editorcallselectobject==1)and(timerz>3) ) then
            if(map_changed==0) then map_changed=1;   end;
            x=ed_return_x; y=ed_return_y;editorcallselectobject=0;
            cameraleftpos_x_hor=ed_camera_x;camerauppos_y_vert=ed_camera_y;
            timerz=0;
        end
    end
    if (express==1) then if ((spacepressed==1)or(ammoKEYPL1=="space")) then express=0;
        man_speed=default_man_speed;
        printat (gamey(ynow),gamex(xnow),"128") ; end;  end;

end

function clone (t) -- deep-copy a table
    if type(t) ~= "table" then return t end
    local meta = getmetatable(t)
    local target = {}
    for k, v in pairs(t) do
        if type(v) == "table" then
            target[k] = clone(v)
        else
            target[k] = v
        end
    end
    setmetatable(target, meta)
    return target
end

t_id=-1;t_ax=0;t_ay=0;t_adx=0;t_ady=0;

function love.touchpressed( id, ax, ay, adx, ady, pressure )
touchpress=true
touchreleased=nil
--Основное Андроид Меню в игровом режиме.  + движение   Кнопки работают как переключатели постоянно зажатые.
   if (t_id==-1) then
     t_id=id;
      if (incontrolcentre==0)and(renderer>0)and(disable_android_touchscreen==0) then
               -- ЭТО НЕ МЕНЮ -- androidgui
         --androidcursorrightposition=maxwidth-((100*sc)*4);cursormaxwidth=androidcursorrightposition; cursormaxheight=maxheight/2;
        --cursorsizeuserandroid=100*sc; -- для элементов меню реакция на тачпаде.
      csa=cursorsizeuserandroid; --    ax>1400-400=1000     ax<1400-300 =1100         ay<300-100=200  ay> 300-200=100 standartsizeusermenu=100;
        if ((ax>cursormaxwidth+csa*1) and (ax<cursormaxwidth+csa*2)  and (ay<cursormaxheight+csa*1) and (ay>cursormaxheight-1*csa)) then movePL1="up"; end; -- 2 ay-вертикаль.
        if ((ax>cursormaxwidth+csa*0) and (ax<cursormaxwidth+csa*1)  and (ay<cursormaxheight+csa*3) and (ay>cursormaxheight+1*csa)) then movePL1="left"; end; --4
        if ((ax>cursormaxwidth+csa*1) and (ax<cursormaxwidth+csa*2)  and (ay<cursormaxheight+csa*3) and (ay>cursormaxheight+1*csa)) then movePL1="down"; end; --5
        if ((ax>cursormaxwidth+csa*2) and (ax<cursormaxwidth+csa*3)  and (ay<cursormaxheight+csa*3) and (ay>cursormaxheight+1*csa)) then movePL1="right"; end; --6
        if (feartimerPL1>0)and(editor==0)and(renderer==1) then movePL1=randommove_word; end
        if (new_x_block_fix~="") then movePL1=new_x_block_fix; end
        if (hardened_ammo_get~="") then movePL1=hardened_ammo_get; end
        --ax=1020 ay=313        --ax=920  ay=414        --ax=1020  ay=414        --ax=1120  ay=414
       end
    end
end

function love.touchmoved( id, ax, ay, adx, ady, pressure )
--touchmoved=true  Движение перемещением - важно для стрельбы.
touchreleased=nil
    function isnear (par1,par2) --suka заставил
        mn=man_step/2;
        for a=par1-mn,par1+mn,1 do
            if ((math.ceil (a))==par2) then return true end  --2271 возможно это улучшит или восстановит стрельбу?
            end
    return false;
    end

   if (t_id==id) then
    isy=isnear (ady,1);
    isx=isnear (adx,1);
        if (incontrolcentre==0)and(renderer>0)and(restoreoldcontrol==1)and(disable_android_touchscreen==0)  then
               if ((adx>0) and (isy) and (movePL1=="")) then movePL1="right" end;
               if ((adx<0) and (isy) and (movePL1=="")) then movePL1="left" end;
               if ((ady>0) and (isx) and (movePL1=="")) then movePL1="down" end;
               if ((ady<0) and (isx) and (movePL1=="")) then movePL1="up" end;
                end
    end
end

function love.touchreleased( id, ax, ay, adx, ady, pressure )
if ((ax>(maxwidth-90)) and (ay>(maxheight-90))) then ammoKEYPL1="turboexitgame"; end;
if ((ax>(maxwidth-90)) and (ay>0) and (ay<100)) then ammoKEYPL1="openmainmenu"; end;

if (hp>0)and(ammo>0)  then   --rozmiarznak*3,rozmiarznak*3   стрельба новая кнопка для Android  touchpad
if ((ax>(rozmiarznak*8)) and (ay>(rozmiarznak*2))) and ((ax<(rozmiarznak*12)) and (ay<(rozmiarznak*6)))then ammoKEYPL1="ammo"; end;
end

if (targetremains<1)and(editor==0) then   --rozmiarznak*3,rozmiarznak*3 переход на следующий уровень для Android touchpad
if ((ax>(rozmiarznak*2)) and (ay>(rozmiarznak*2))) and ((ax<(rozmiarznak*6)) and (ay<(rozmiarznak*6)))then ammoKEYPL1="space";spacepressed=1; end;
end
  if (hp<1)and(resurrecttimer<1) then   --rozmiarznak*3,rozmiarznak*3   воскрешение для Android  touchpad
if ((ax>(rozmiarznak*2)) and (ay>(rozmiarznak*2))) and ((ax<(rozmiarznak*6)) and (ay<(rozmiarznak*6)))then ammoKEYPL1="r"; end;
end

  
touchreleased=true  --touchmoved=nil   кнопки для планшета обработчик.
touchpress=nil
    printedmenu=1;
if (renderer==0) then movePL1=""; end

if (#inventoryitemtable>0)and(hp>0) then
      postINVCANVASobjectX=2*rozmiarznak+520*1.6+rozmiarznak/4;          
      postINVCANVASobjectY=0; 
  for ia=0,#inventoryitemtable,1 do
if (ax>postINVCANVASobjectX-2+ia*rozmiarznak)and(ay>postINVCANVASobjectY-2+ia*rozmiarznak)and(ax<postINVCANVASobjectX-2+rozmiarznak+ia*rozmiarznak)and(ay<postINVCANVASobjectY-2+rozmiarznak+ia*rozmiarznak)
  then ammoKEYPL1="unpack"; itemkey=0+ia; end;
end
end
    --основное игровое меню для Android ONLY  c тестовым рендерингом иконок   ANDROID GUI "player.ini") do
    --menu player_ini (основное меню игрока в режиме игры (слева)) ЭТО НЕ ГЛАВНОЕ МЕНЮ
      if (t_id~=-1)and(incontrolcentre==0)and(renderer>0)and(editor==0) then
       wysotamenu=standartsizeusermenu_android_0_cc;
        for i=2,10,1 do
          keyword=player_ini[i-1][2];
         if (otladka==1) then  smsg1="k="..keyword.." i="..i.." ay="..math.floor(ay).."<"..math.floor((wysotamenu)*(i-1)).." ay>"..math.floor((wysotamenu)*(i-2)).."ax="..math.floor(ax); end;           --player.ini
        --эти закоментированные пункты работают в подвыводе Androidgui в другом конце программы. --androidmenup = lg.newImage("Textures/a/androiduserguiicon"..i..".png");        --STALO lg.draw(androidmenup, 0,((wysotamenu*scaling)*(i-2)),0,scalingmenu,scalingmenu);
      if  (ay<(wysotamenu)*(i-1)) and (ay>(wysotamenu)*(i-2)) and (ax<wysotamenu) then
         ammoKEYPL1=keyword;
         android_ui_changed_state=1;
      end;
     end
    movePL1="";
    t_id=-1;

    end
    --окончание меню пагес0 (основное меню игрока в режиме игры (слева))
   --меню пагес1 (основное меню игрока в режиме игры (слева))  Меню игрока андроид - контрольный центр --   controlcentre.ini")
 if (t_id~=-1)and(incontrolcentre==1)and(renderer>0)and(editor==0) then
      wysotamenu=standartsizeusermenu_android_0_cc;
        for i=2,#sklepy,1 do
          keywordname=sklepy[i-1][2];-- получается это название
          keyword=sklepy[i-1][3];   -- а это поле что игнорируем на телефоне?
        --эти закоментированные пункты работают в подвыводе Androidgui в другом конце программы. --androidmenup = lg.newImage("Textures/a/androiduserguiicon"..i..".png");        --STALO lg.draw(androidmenup, 0,((wysotamenu*scaling)*(i-2)),0,scalingmenu,scalingmenu);     
      if  (ay<(wysotamenu)*(i-1)) and (ay>(wysotamenu)*(i-2)) and (ax<wysotamenu) then
         ammoKEYPL1=keyword; 
      end;
     end
    movePL1="";
    t_id=-1;

    end
    --окончание меню пагес1 (основное меню игрока в режиме игры (слева))
        -- Основное игровое меню (меню 0) Главное меню (0) menu_glowna.ini")  MAINMENU 
    if (t_id~=-1)and(menu==0)and(renderer==0) then
    --wysotamenu=mainmenusize+1; 
      h=80;
      for i=2, #menu_glowna-1,1 do
         keyword=menu_glowna[i][2]; 
          skip=menu_glowna[i][6]; 
      if  (ay<(h+mainmenusize*(i-1))) and (ay>(h+mainmenusize*(i-2))) then
       if (skip=="x") then ammoKEYPL1=""; 
        i=i+1; --это не работает на андроид. 
         else  ammoKEYPL1=keyword; end ;
       end;
     end
    movePL1="";
    t_id=-1;

    end

 --окончание меню menu_glownaea (основное меню игрока в режиме игры (слева))
        -- Основное игровое меню (меню 0) Главное меню (0) editor_android.ini")  MAINMENU 
    if (t_id~=-1)and(editor==1)and(renderer==1)and(1==0) then
    wysotamenu=standartsizeusermenu_android_0_cc; 
      h=80;
      
      for i=2, #menu_glownaea-1,1 do
         keyword=menu_glownaea[i][2]; 
         key=menu_glownaea[i][3]; 
          skip=menu_glownaea[i][6]; 
    --smsg1="i="..i..", skip="..skip.."if ((ay="..math.ceil (ay).."<h="..h.."+wysotamenu"..wysotamenu.."*(printedmenu"..printedmenu..")) and ("..math.ceil (ay)..".>"..h.."+"..wysotamenu.."*("..printedmenu.."-1))) then)";
      if  (ay<(h+wysotamenu*(i-1))) and (ay>(h+wysotamenu*(i-2))and(ax<100)) then
        if (ossys=="Android") then  ammoKEYPL1=key; end;
       end;
     end
    movePL1="";
    t_id=-1;
    end

    -- Меню параметры (меню 1) -- Меню настроек и параметров (1) menu_settings.ini")
   if (t_id~=-1)and(incontrolcentre==0)and(menu==1)and(renderer==0) then
    wysotamenu=standartwysotatextmenu; 
      h=0;
         for i=2, #menu_settings-1,1 do
         keyword=menu_settings[i][2]; 
          skip=menu_settings[i][6]; 
      if  (ay<(h+wysotamenu*(i-0))) and (ay>(h+wysotamenu*(i-1))) then
       if (skip=="x") then ammoKEYPL1=""; else  ammoKEYPL1=keyword; end ;
       end;
    --#menu_printed 
     end
    movePL1="";
    t_id=-1;

    end
-- Меню авторы!!!   На Андроид ненужно правок.
   if (t_id~=-1)and(incontrolcentre==0)and(menu==2)and(renderer==0) then
          if ((ax<10000) and (ay<10000)) then ammoKEYPL1="openmainmenu"; end;
          if ((ax<90) and (ay<maxheight) and (ay>maxheight-80)) then ammoKEYPL1="openmainmenu"; end; 
 end

 -- Меню авторы!!!   На Андроид ненужно правок.
   if (t_id~=-1)and(incontrolcentre==0)and(menu==9)and(renderer==0) then
    benchtitle=0; stattitle=0; finaltitle=0;  -- попытка добавить выход из бенчмарка для Android
          if ((ax<10000) and (ay<10000)) then ammoKEYPL1="openmainmenu"; end;
          if ((ax<90) and (ay<maxheight) and (ay>maxheight-80)) then ammoKEYPL1="openmainmenu"; end; 
 end
 -- Меню авторы!!!   На Андроид ненужно правок.
   if (t_id~=-1)and(incontrolcentre==0)and(menu==10)and(renderer==0) then
          if ((ax<10000) and (ay<10000)) then ammoKEYPL1="openmainmenu"; end;
          if ((ax<90) and (ay<maxheight) and (ay>maxheight-80)) then ammoKEYPL1="openmainmenu"; end; 
 end
     -- Меню паузы (меню 3)
     -- будет обслуживатся по принципу меню 1 и 4  -- меню редактора (3) На Андроид ненужно правок . editor_settings.ini"
     if (t_id~=-1)and(incontrolcentre==0)and(menu==3) then
       wysotamenu=standartwysotatextmenu;
      h=80; 
     for i=2, #editor_settings-1,1 do
         keyword=editor_settings[i][2]; 
          skip=editor_settings[i][6]; 
      if  (ay<(h+wysotamenu*(i-0))) and (ay>(h+wysotamenu*(i-1))) then
       if (skip=="x") then ammoKEYPL1=""; else  ammoKEYPL1=keyword; end ;
       end;
     end
    movePL1="";
    t_id=-1;
    end

    -- Меню паузы (меню 4)   ("menu_user.ini"
     if (t_id~=-1)and(incontrolcentre==0)and(menu==4) then
       wysotamenu=standartwysotatextmenu;
      h=80;
       for i=2, #menu_user-1,1 do
         keyword=menu_user[i][2]; 
         keypressmenu_glowna=menu_user[i][5]; 
          skip=menu_user[i][6]; 
      if  (ay<(h+wysotamenu*(i-0))) and (ay>(h+wysotamenu*(i-1))) then
       if (skip=="x") then ammoKEYPL1=""; else  ammoKEYPL1=keyword; end ;
       end;
      end
    movePL1="";
    t_id=-1;
    end


 -- Меню контрольный центр (меню 15)  control center
     if (t_id~=-1)and(menu==15) then
       wysotamenu=standartwysotatextmenu;
      h=-15; -- тут также 80 поменяли на 0
       for i=2, #kontrolny_centrum_SC_CC,1 do
         id=kontrolny_centrum_SC_CC[i][1]; 
      if  (ay<(h+wysotamenu*(i-0))) and (ay>(h+wysotamenu*(i-1))) then
       ammoKEYPL1=id; 
       end;
     end
    movePL1="";
    t_id=-1;
    end

 -- Меню  (меню 16)  help center
     if (t_id~=-1)and(menu==16) then
       wysotamenu=standartwysotatextmenu;
      h=-15; -- тут также 80 поменяли на 0
       for i=2, pomoc_punktow,1 do
        id=i ; 
         --???? массива же нет id=menu_glowna[i][1]; 
      if  (ay<(h+wysotamenu*(i-0))) and (ay>(h+wysotamenu*(i-1))) then
       ammoKEYPL1=id; 
       end;
     end
    movePL1="";
    t_id=-1;
    end



 -- Меню заказа товаров из корабля (меню 5)  shipping menu center
     if (t_id~=-1)and(menu==5) then
       wysotamenu=standartwysotatextmenu;
      h=-15; -- тут также 80 поменяли на 0
       for i=2, #centrum_dostawy_listSC,1 do
         id=centrum_dostawy_listSC[i][1]; 
      if  (ay<(h+wysotamenu*(i-0))) and (ay>(h+wysotamenu*(i-1))) then
       ammoKEYPL1=id; 
       end;
     end
    movePL1="";
    t_id=-1;
    end
 -- Меню savegame (меню 6)
    
     if (t_id~=-1)and(menu==6) then
       wysotamenu=standartwysotatextmenu;
      h=80;
       for i=2, #zapisy_SAVES,1 do
         id=zapisy_SAVES[i][1]; 
      if  (ay<(h+wysotamenu*(i-0))) and (ay>(h+wysotamenu*(i-1))) then
       ammoKEYPL1=id; 
       end;
     end
    movePL1="";
    t_id=-1;

    end

 -- Меню loadgame (меню 7)
    
     if (t_id~=-1)and(menu==7) then
       wysotamenu=standartwysotatextmenu;
      h=80;
       for i=2, #zapisy_SAVES,1 do
         id=zapisy_SAVES[i][1]; 
        -- keypressmenu_glowna=centrum_dostawy_listSC[i][5]; 
      if  (ay<(h+wysotamenu*(i-0))) and (ay>(h+wysotamenu*(i-1))) then
       ammoKEYPL1=id; 
       end;
     end
    movePL1="";
    t_id=-1;

    end
--scalingmenu=standartwysotagraphicmenu/70;
 --usermenu --заменяет H R L N PAUSE   Меню игрока андроид, основное, кнопки работают как нажатие
    if (t_id~=-1) then
     if ((ax<120) and (ay<maxheight) and (ay>maxheight-80)) then ammoKEYPL1="openmainmenu"; end; --write  paint  НЕ РАБОТАЕТ ЗАКРАСКА. НЕ СДЕЛАНО 
     if ((ax>(maxwidth-90)) and (ay>(maxheight-90))) then ammoKEYPL1="turboexitgame"; end; --write  paint  НЕ РАБОТАЕТ ЗАКРАСКА. НЕ СДЕЛАНО 
   
    movePL1="";
    t_id=-1;

    end
  -- pie:detach () ; 
   Prof:detach(true)
end
-- Android interface ( стрельба- заморозка- ездить - воскрешение - читы - редактор уровней)
function love.draw()
  
 --Pie:draw()
lg.setFont(font);
if (ossys=="Android") then 
    screen.w, screen.h = lg.getDimensions()
if screen.w > screen.h then
--landscape
resize.w, resize.h = screen.w/800 , screen.h/480
else --portrait
resize.w, resize.h = screen.w/480 , screen.h/800
end
--пока оставить вдруг пригодится.
for i, id in ipairs(love.touch.getTouches()) do
touch.ax, touch.ay = love.touch.getPosition(id)
end
end
timerz=timerz+0.2; -- потом вернуть в рендерер! как налажу андроид!!ы
  
-- рендеринг персонажей и игроков
function renderplayer ()
    if (ammoicon=="left") then rotateammo= math.rad(180); y2fix=rozmiarznak; else y2fix=0;end;
    if (ammoicon=="right") then rotateammo=0; end;
    if (ammoicon=="up") then rotateammo=math.rad(-90);end; 
    if (ammoicon=="down") then rotateammo=math.rad(90);x2fix=rozmiarznak; else x2fix=0;end;

    if (ammoiconpla2=="left") then rotateammopla2= math.rad(180); y2pfix=rozmiarznak; else y2pfix=0;end;
    if (ammoiconpla2=="right") then rotateammopla2=0;end;
    if (ammoiconpla2=="up") then rotateammopla2=math.rad(-90);end;
    if (ammoiconpla2=="down") then rotateammopla2=math.rad(90);x2pfix=rozmiarznak; else x2pfix=0;end;
-- добавлен фикс визуального отображения пули, формула почему то некорректно считала влево и внизfff
     if (renderammoshot==1)and(man_is_moving2==true) then lg.draw(ammoproj, x2+x2fix, y2+y2fix,rotateammo,scaling,scaling);end; -- потом поменять текстурку на пулю и условие вызова. ыыы
   -- тут рендерятся выстрелы пушек, обработка ротации им в принципе не нужна.
-- почему пушки после окончания стрельбы не выключают прицел - непонятно. видимо было стёрто.
  if (puszkistate==1)and(renderammoshotpla3==1) then 
  randomcolorbw ();
 lg.rectangle("fill", cannondrawx , cannondrawy+rozmiarznak/2+math.random(4), cannondrawstartshot, 1,0,0); --выстрел пушки справа налево
 lg.rectangle("fill", cannondrawx , cannondrawy+rozmiarznak/2+math.random(4), cannondrawstartshot, 1,0,0);
 lg.rectangle("fill", cannondrawx , cannondrawy+rozmiarznak/2+math.random(4), cannondrawstartshot, 1,0,0);
 red ();
 lg.rectangle("fill", cannondrawx2 , cannondrawy2+rozmiarznak/2+math.random(4), cannondrawstartshot2, 1,0,0); --выстрел пушки слева направо
 lg.rectangle("fill", cannondrawx2 , cannondrawy2+rozmiarznak/2+math.random(4), cannondrawstartshot2, 1,0,0);
 lg.rectangle("fill", cannondrawx2 , cannondrawy2+rozmiarznak/2+math.random(4), cannondrawstartshot2, 1,0,0);
 white ();
 end
          function ResetHeroAnimation () 
                                                hero_fire_left:gotoFrame(1)
                                                hero_fire_left:resume()
                                                hero_fire_right:gotoFrame(1)
                                                hero_fire_right:resume()
                                                hero_fire_up:gotoFrame(1)
                                                hero_fire_up:resume()
                                                hero_fire_down:gotoFrame(1)
                                                hero_fire_down:resume()
                                                hero_act_left:gotoFrame(1)
                                                hero_act_left:resume()
                                                hero_act_right:gotoFrame(1)
                                                hero_act_right:resume()
                                                hero_act_up:gotoFrame(1)
                                                hero_act_up:resume()
                                                hero_act_down:gotoFrame(1)
                                                hero_act_down:resume()
                                              end

               function StopHeroAnimation ()                                               
                                                hero_act_left:gotoFrame(10)
                                                hero_act_left:pause()
                                                hero_act_right:gotoFrame(10)
                                                hero_act_right:pause()
                                                hero_act_up:gotoFrame(10)
                                                hero_act_up:pause()
                                                hero_act_down:gotoFrame(10)
                                                hero_act_down:pause()
          end

              function MimicResetAnim ()
                                              mim_nowy_left:gotoFrame(1)
                                                mim_nowy_left:resume()
                                                mim_nowy_right:gotoFrame(1)
                                                mim_nowy_right:resume()
                                                mim_nowy_up:gotoFrame(1)
                                                mim_nowy_up:resume()
                                                mim_nowy_down:gotoFrame(1)
                                                mim_nowy_down:resume()
                                              end

               function MimicStopAnim ()                                               
                                                mim_nowy_left:gotoFrame(1)
                                                mim_nowy_left:pause()
                                                mim_nowy_right:gotoFrame(1)
                                                mim_nowy_right:pause()
                                                mim_nowy_up:gotoFrame(1)
                                                mim_nowy_up:pause()
                                                mim_nowy_down:gotoFrame(1)
                                                mim_nowy_down:pause()
                end;

animacja="idle";
 if (editor==0)and(gameover==0) then -- Tutaj obrazek uzytkownika jeden PL1 renderplayer render player
    if (tank==0)and (hp>0) then --lg.draw(player, x, y,0,scaling,scaling);
      if (invisibletimerPL1>0) then setColorX11(255,255,255,50);  end;
    if (ammoKEYPL1=="")and(movePL1=="")and(man_is_moving==false)and(tank==0) then 
                                                      animacja="idle";end;
    if (ammoKEYPL1=="")and(movePL1~="") then               
                                                      animacja="move"; end 
    if (ammoKEYPL1=="ammo")or((ammoKEYPL1=="ice")) then                                                       
                                                      animacja="fire";
                                                      if (kulemet_PC1_timer<3) then ResetHeroAnimation () ; end; 
                                                       end                                                         
         if (ammoKEYPL1=="unpack")or((ammoKEYPL1=="bomb"))or((ammoKEYPL1=="placeitem")) then 
                                                      animacja="act";
                                                      if (ammoKEYPL1=="placeitem")and(titlegame~="M2K") then  
                                                        if (item_PC1_timer==1) then ResetHeroAnimation () ; end; 
                                                        if (item_PC1_timer>40) then StopHeroAnimation () ; end; 
                                                        end; 
                                                    end 
   end; 

    --только Player использует старые иконки, танк2 уже их не использует. 
    if (movePL1=="left") then rotateplayer= 0; xpla1fix=0; ypla1fix=0; end;
    if (movePL1=="up") then rotateplayer=90; xpla1fix=rozmiarznak; ypla1fix=0; end; 
    if (movePL1=="right") then rotateplayer=180; xpla1fix=rozmiarznak; ypla1fix=rozmiarznak; end;  --tank0.png , playertank , tankright  --player1tank
    if (movePL1=="down") then rotateplayer=270; xpla1fix=0; ypla1fix=rozmiarznak; end; 

    if (hp>0)and(editor==0) then 
     -- if (tank==1)and(ossys=="Android") then lg.draw(tankplayerleft, x+xpla1fix, y+ypla1fix,math.rad(rotateplayer),scaling,scaling);end;
      if (tank==1)and(lastmovePL1=="left") then tank_anim_left:draw(image, x, y,0,scaling,scaling); end
      if (tank==1)and(lastmovePL1=="right") then tank_anim_right:draw(image, x, y,0,scaling,scaling); end
      if (tank==1)and(lastmovePL1=="up") then tank_anim_up:draw(image, x, y,0,scaling,scaling); end
      if (tank==1)and(lastmovePL1=="down") then tank_anim_down:draw(image, x, y,0,scaling,scaling); end

      i8=0; 
      --smsg1="animacja="..animacja;      
      if (pajaktimerPL1>0) then red (); end;
            if (titlegame=="Reskue")and(enablefix_PC1_80px==1) then i8=(math.ceil (rozmiarznak/5.5)); end;
            if (tank==0) then 
      if (lastmovePL1=="left")and(animacja=="move") then  hero_anim_left:draw(image, x, y-i8,0,scaling,scaling); end
      if (lastmovePL1=="right")and(animacja=="move") then hero_anim_right:draw(image, x, y-i8,0,scaling,scaling); end
      if (lastmovePL1=="up")and(animacja=="move") then hero_anim_up:draw(image, x, y-i8,0,scaling,scaling); end
      if (lastmovePL1=="down")and(animacja=="move") then hero_anim_down:draw(image, x, y-i8,0,scaling,scaling); end

      if (lastmovePL1=="left")and(animacja=="fire") then  hero_fire_left:draw(image, x, y-i8,0,scaling,scaling); end
      if (lastmovePL1=="right")and(animacja=="fire") then hero_fire_right:draw(image, x, y-i8,0,scaling,scaling); end
      if (lastmovePL1=="up")and(animacja=="fire") then hero_fire_up:draw(image, x, y-i8,0,scaling,scaling); end
      if (lastmovePL1=="down")and(animacja=="fire") then hero_fire_down:draw(image, x, y-i8,0,scaling,scaling); end
      if (lastmovePL1=="left")and(animacja=="act") then  hero_act_left:draw(image, x, y-i8,0,scaling,scaling); end
      if (lastmovePL1=="right")and(animacja=="act")  then hero_act_right:draw(image, x, y-i8,0,scaling,scaling); end
      if (lastmovePL1=="up")and(animacja=="act")  then hero_act_up:draw(image, x, y-i8,0,scaling,scaling); end
      if (lastmovePL1=="down")and(animacja=="act")  then hero_act_down:draw(image, x, y-i8,0,scaling,scaling); end
      if (lastmovePL1=="left")and(animacja=="idle") then  hero_idle_left:draw(image, x, y-i8,0,scaling,scaling); end
      if (lastmovePL1=="right")and(animacja=="idle")  then hero_idle_right:draw(image, x, y-i8,0,scaling,scaling); end
      if (lastmovePL1=="up")and(animacja=="idle")  then hero_idle_up:draw(image, x, y-i8,0,scaling,scaling); end
      if (lastmovePL1=="down")and(animacja=="idle")  then hero_idle_down:draw(image, x, y-i8,0,scaling,scaling); end
        end
        if (pajaktimerPL1>0) then white (); end;
      if (express==1) then lg.draw(express0, x, y,0,scaling,scaling);end;
      end; 
      if (invisibletimerPL1>0) then setColorX11(255,255,255,255);  end;
            if (hp<1) then  
                      if (anicycles==0) then vibration=1; end; 
                if (anitimer<300) then anim["236"]:draw(image, x, y,0,scaling,scaling);end;
                if (anitimer>300) then  anicycles=1; vibration=0;  end ;  --dead  -- lg.draw(destrplayer,x,y,0,scaling,scaling);
                anitimer=anitimer+1
                 end;   
           end

if (editor==1) then lg.draw(editor0, x, y,0,scaling,scaling);end;
if (editor==1) then lg.draw(editor0, xpla2, ypla2,0,scaling,scaling);end;

-- обработка класса монстров , рендеринг -- draw TANKS
-- по идее я должен был перевести хотя бы эту часть в класс. но не перевёл хотя это сделать легко и запрос на изменение
-- в таблице и классе синглтона не требуется.

    function class_enemy:draw() 
       for k, v in pairs(self.list) do  
          if v.draw then v:draw()
       end
     end
     end

-- draw ammoX
     function class_ammo:draw() 
      if (totalammo>0)and(editorcallselectobject==0)and(gameover==0) then  --ammofuck
   for ammonum=1,totalammo,1 do 
     typta,start_x,start_y,x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_moving,rotate_tt,renderammoshot_ammos,rikoszets,animset,spd_a,sourceammo,command_ammo,wzmacniacz,directdamage_autoammo,src_tankid,msg_to_func,command_power,delayed_cmd,delayed_snd=ammoX[ammonum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
        rxpla2fix=rozmiarznak; rypla2fix=0; -- wprawo  dodano
     if(rotate_tt==90) then rxpla2fix=rozmiarznak; rypla2fix=rozmiarznak; end;  --wniz w dól
     if(rotate_tt==180) then rxpla2fix=rozmiarznak; rypla2fix=rozmiarznak; end; 
     if(rotate_tt==270) then rxpla2fix=0; rypla2fix=rozmiarznak; end; --wwerh  góra
     visiblity_ammo=isvisible (x_ammo,y_ammo);
   
     visiblity_ammo=1;
     if (otladka==1) then smsg2="x_ammo="..x_ammo.."y_ammo="..y_ammo; end; 
     if (rotate_tt==nil) then rotate_tt=0;  smsg1="rotate_tt СОДЕРЖИТ NIL какого то хрена!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1111"; 
     end; -- -- ЗАТЫЧКА ОТ NIL   что за хрень как этот параметр может не прийти, или прийти от танков!!!????
     --if (ammo_moving==nil) then ammo_moving=false; end;  -- ЗАТЫЧКА ОТ NIL  and(renderammoshot_ammos==1)
     if (typta=="") then ammo_moving=false; end; 
     if (x_ammo>0)and(visiblity_ammo==1)and(typta~="")and(ammo_moving==true)and(rotate_tt>-1)  then  
            if (animset==0) then  randomcolorbw (); end; 
            if (rikoszets>0) then projectile_ammo=dymokproj; else  projectile_ammo=ammoproj; end; 
            -- (sourceammo=="PC1")and(tank==0) then projectile_ammo=ammoslowproj; end; 
            if (command_ammo=="corrosion") then projectile_ammo=dymokproj; end; 
            if (command_ammo=="freeze")or (msg_to_func=="PC1ice")  then projectile_ammo=ammoiceproj; end; 
            if (command_ammo=="dispel") then  projectile_ammo=ammohealproj; end; 
            if (command_ammo=="kierowca") then projectile_ammo=ammohealproj; green () ; end; 
            if (command_ammo=="kwas") then projectile_ammo=ammohealproj; green () ; end; 
            if (command_ammo=="pajakowy_zespol") then projectile_ammo=ammohealproj; green () ; end; 
            if (command_ammo=="invisible") then projectile_ammo=ammoinvisible; end; 
            if (command_ammo=="stun") then  projectile_ammo=ammohealproj; yellow ();  end; 
            if (command_ammo=="protect")then projectile_ammo=ammodispelproj; yellow (); end; 
            if  (command_ammo=="heal")  then projectile_ammo=ammodispelproj; green () ; end; 
            if (command_ammo=="slow") then projectile_ammo=ammoslowproj; end; 
            if (command_ammo=="bombplace") then projectile_ammo=ammobombproj; end; 
            if (command_ammo=="mineplace") then projectile_ammo=ammobombproj; end; 
            if (command_ammo=="fear") then projectile_ammo=ammofearproj; end; 
            lg.draw(projectile_ammo, x_ammo+rxpla2fix, y_ammo+rypla2fix,math.rad(rotate_tt),scaling,scaling); 
            if (selectedammoid==ammonum) then  lg.draw(editor0, x_ammo+rxpla2fix, y_ammo+rypla2fix,math.rad(rotate_tt),scaling,scaling); end
            white () ; 
              end 

    end
  end
     end

 class_ammo:draw ();

--renderer==1
--class_enemy:set(typt,x3,y3,hp,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am)
  if (totalenemies>0)and(editorcallselectobject==0)and(gameover==0)and(ObjectSIZEchangeallow==0) then 
   for enemynum=1,totalenemies,1 do 
     typt,xt,yt,hpt,rotate,a,a,a,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,ta,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
      movetk="";
     if (hpt<1) then rotate=0; rotate_t=0; 

      end; 
     if (typt=="gwozd")or ((typt=="migalka"))then rotate=0; end; 
     if (typt~="scientist")and ((typt~="droid"))and(typt~="migalka") then gtype="czolg";  end; 
     if (typt=="droid")or(typt=="enemydroid")then 
      if(rotate==0) then movesc="right"; end; --right movePL1
      if(rotate==90) then movesc="down"; end; --down
      if(rotate==180) then movesc="left"; end; --left
      if(rotate==270) then movesc="up";  end; --up
         end
     if (typt=="scientist")then 
      gtype="naukowec";
     if(rotate==0) then movesc="right"; end; --right movePL1
     if(rotate==90) then movesc="down"; end; --down
     if(rotate==180) then movesc="left"; end; --left
     if(rotate==270) then movesc="up";  end; --up
     if (freezetanks>0) then movesc="idle"; end; 
        rotate=0; end; 
     if (sledzione_hp_tankid~=nil)and (sledzione_hp_tankid==enemynum) then hplasttank=hpt;
    end; 
     xtt=xt;ytt=yt; 
     visiblity_tank=isvisible (xt,yt);
     --visiblity_ammo=isvisible (jedzenietimer,zebrany_item_id);-- u każdego czolga nie jeden pocisk!
     if (hpt>1)and (visiblity_tank==1)and (RolePL2==gtype)and(gracz2idpostaci==0)or (hpt>1)and (visiblity_tank==1)and (RolePL2==gtype)and(forcereselecttank==1) then
      gracz2idpostaci=enemynum; gracz2hp=hpt; forcereselecttank=0;
      smsg1="Gracz 2 login as "..enemynum.." ".. typt; 
      end; 
    if (hpt>1)and (visiblity_tank==1)and (RolePL3==gtype)and(gracz3idpostaci==0)or (hpt>1)and (visiblity_tank==1)and (RolePL3==gtype)and(forcereselecttank==1)  then
      gracz3idpostaci=enemynum; gracz3hp=hpt; forcereselecttank=0; 
      smsg1="Gracz 3 login as "..enemynum.." ".. typt; 
      end; 
      if (hpt<1) and (gracz3idpostaci==enemynum) then RolePL3=""; gracz3idpostaci=0; gracz3hp=0; end; 

     if(rotate==0) then movetk="right"; xpla2fix=0; ypla2fix=0; end;
     if(rotate==90) then  movetk="down"; xpla2fix=rozmiarznak; ypla2fix=0; end; 
     if(rotate==180) then movetk="left";xpla2fix=rozmiarznak; ypla2fix=rozmiarznak; end; 
     if(rotate==270) then movetk="up";xpla2fix=0; ypla2fix=rozmiarznak; end; 
      rxpla2fix=0; rypla2fix=0; 
     if(rotate_t==90) then rxpla2fix=rozmiarznak; rypla2fix=0; end; 
     if(rotate_t==180) then rxpla2fix=rozmiarznak; rypla2fix=rozmiarznak; end; 
     if(rotate_t==270) then rxpla2fix=0; rypla2fix=rozmiarznak; end; 
      if (hpt<1)and (cooldowntanks>2)and (typt~="scientist") then
       
       for a=1,110,1 do
        xxx0=math.random(150-cooldowntanks);
        yyy0=math.random(150-cooldowntanks);
        xxx02=(150-cooldowntanks)/2-rozmiarznak/2;

       lg.rectangle("fill", xtt-xxx02+xxx0 , ytt-xxx02+yyy0, 2, 2,0,0); --выстрел пушки справа налево
       end
       --lg.print(cooldowntanks,xtt+0, ytt-rozmiarznak/2); white ()  -- пример написания цифр прямо на существе. 
      end

     displayaura=""; 
     if (hpt>0) then
      if (freezetanks>0) then cyan (); end;
      if (protecttanks>0) then yellow (); end;
      if (kulemet>0) then blue (); end;
       if (slowPL1tanks>0) then magenta (); end;
       if (painreflecttanks>0) then orange (); end;
       
       if (haveaura=="protect") then sulfur (); displayaura=haveaura; end;
       if (haveaura=="painreflect") then qwezxc (); displayaura=haveaura;  end;
       if (haveaura=="curse") then randomcolor ();  displayaura=haveaura; end;
       if (haveaura=="heal") then sulfur ();  displayaura=haveaura; end;
       if (damagetimertanks>0) then randomcolorbw (); end;
      if (feartanks~=nil)and(feartanks>0) then green (); end;
      if (speedtanks>0) then red (); end;

       if (invisibletanks>0) then setColorX11(255,255,255,10);  end;  -- (titlegame~="Kolonista") - WYLET w 59 wiersze anim8.lua . 
      if (visiblity_tank==1)and(typt=="migalka") then anim["195"]:draw(image, xtt+0, ytt+0,math.rad(0),scaling,scaling);  end
       if (visiblity_tank==1)and(typt=="miner") then  lg.draw(minerleft, xtt+xpla2fix, ytt+ypla2fix,math.rad(rotate),scaling,scaling);  end;
       if (visiblity_tank==1) then
        --if (typt=="droid") then  lg.draw(repairdroid, xtt+xpla2fix, ytt+ypla2fix,math.rad(rotate),scaling,scaling);  end;
     -- if (typt=="droid") then anim["255"]:draw(image, xtt+0, ytt+0,math.rad(0),scaling,scaling);  end
      if (typt=="gwozd") then anim["235"]:draw(image, xtt+0, ytt+0,math.rad(0),scaling,scaling);  end
      if (typt=="scientist") and(movesc=="idle")and(0==0) then  sci_anim_idle:draw(image, xtt+0,ytt+0,0,scaling,scaling); end
      if (typt=="scientist") and(movesc=="left")and(0==0) then  sci_anim_left:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="scientist") and(movesc=="right")and(0==0) then sci_anim_right:draw(image, xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="scientist") and(movesc=="up")and(0==0) then sci_anim_up:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="scientist") and(movesc=="down")and(0==0) then sci_anim_down:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
--      if (typt=="droid") and(movesc=="idle")and(0==0) then dro_anim_idle:draw(image, xtt+0,ytt+0,0,scaling,scaling); end
      if (typt=="droid")or(typt=="enemydroid") and ((movesc=="left")) then  dro_anim_left:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="droid")or(typt=="enemydroid") and ((movesc=="right")) then dro_anim_right:draw(image, xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="droid")or(typt=="enemydroid") and ((movesc=="up")) then dro_anim_up:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="droid")or(typt=="enemydroid") and ((movesc=="down")) then dro_anim_down:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
      
      if (typt=="tank") and(movetk=="left")and(0==0) then  tank2_anim_left:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="tank") and(movetk=="right")and(0==0) then tank2_anim_right:draw(image, xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="tank") and(movetk=="up")and(0==0) then tank2_anim_up:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="tank") and(movetk=="down")and(0==0) then tank2_anim_down:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="wtank") and(movetk=="left")and(0==0) then  tank3_anim_left:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="wtank") and(movetk=="right")and(0==0) then tank3_anim_right:draw(image, xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="wtank") and(movetk=="up")and(0==0) then tank3_anim_up:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="wtank") and(movetk=="down")and(0==0) then tank3_anim_down:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end

      if (typt=="pajak") and(movetk=="left")and(0==0) then  pajak_left:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="pajak") and(movetk=="right")and(0==0) then pajak_right:draw(image, xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="pajak") and(movetk=="up")and(0==0) then pajak_up:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="pajak") and(movetk=="down")and(0==0) then pajak_down:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end

      if (typt=="mimic") and(movetk=="left")and(timer_alt_anim<1)and(jedzenietimer<1) then  mim_anim_left:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="mimic") and(movetk=="right")and(timer_alt_anim<1)and(jedzenietimer<1) then mim_anim_right:draw(image, xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="mimic") and(movetk=="up")and(timer_alt_anim<1)and(jedzenietimer<1) then mim_anim_up:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="mimic") and(movetk=="down")and(timer_alt_anim<1)and(jedzenietimer<1) then mim_anim_down:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end

      if (typt=="mimic") and(movetk=="left")and(timer_alt_anim>0)and(jedzenietimer<1) then  mim_fire_left:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="mimic") and(movetk=="right")and(timer_alt_anim>0)and(jedzenietimer<1) then mim_fire_right:draw(image, xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="mimic") and(movetk=="up")and(timer_alt_anim>0)and(jedzenietimer<1) then mim_fire_up:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="mimic") and(movetk=="down")and(timer_alt_anim>0)and(jedzenietimer<1) then mim_fire_down:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end

      if (jedzenietimer>20) then  MimicStopAnim () ; end 
      if (jedzenietimer==20) then  MimicResetAnim () ; end 
      if (typt=="mimic") and(movetk=="left")and(jedzenietimer>0) then mim_nowy_left:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="mimic") and(movetk=="right")and(jedzenietimer>0) then mim_nowy_right:draw(image, xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="mimic") and(movetk=="up")and(jedzenietimer>0)  then mim_nowy_up:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
      if (typt=="mimic") and(movetk=="down")and(jedzenietimer>0)  then mim_nowy_down:draw(image,  xtt+0, ytt+0,0,scaling,scaling); end
    end
   if (gracz2idpostaci==enemynum) then red (); lg.print("2",xtt+0, ytt-rozmiarznak/2); white () ;end; 
   if (gracz3idpostaci==enemynum) then red () ; lg.print("3",xtt+0, ytt-rozmiarznak/2); white () ; end; 
   if ( displayaura~="") then green (); lg.print(".",xtt+rozmiarznak/2, ytt-rozmiarznak/2); white () ;end; 
       if (visiblity_tank==1)and(selectedtankid==enemynum) then lg.draw(editor0, xtt+xpla2fix, ytt+ypla2fix,math.rad(rotate),scaling,scaling);  end;
       if (visiblity_tank==1)and(selectedtankid_fortanks==enemynum) then lg.draw(editor0, xtt+xpla2fix, ytt+ypla2fix,math.rad(rotate),scaling,scaling);  end;
      white (); 
       end
     if (hpt<1)and(visiblity_tank==1)and(deadanim~="tankdead") then lg.draw(ammodispelproj, xtt+xpla2fix, ytt+ypla2fix,math.rad(rotate),scaling,scaling); end
     --if (otladka==1) then smsg1="draw[1]="..typt.." xt="..xt.."yt="..yt.." hpt="..hpt.." rotate="..rotate.." totalenemies="..totalenemies;  --attempt to index global "enemies" (a nil value) хотя я сначала его задал!!!!!!
    end
  end
end  
--end of renderplayer
  if (renderer==1) then
      render2d (1); renderplayer (1); end;

--MAINMENU

if (renderer<1) then
-- ограничитель количества пунктов меню (для перемещения на ПК)
if (menu==-1) then  maximummenulevel=#menu_glowna-2; end
if (menu==0) then  maximummenulevel=#menu_glowna-2; end -- mainmenu
if (menu==1) then maximummenulevel=#menu_settings-2  ; end 
if (menu==2) then maximummenulevel=#menu_authors-2  ; end
if (menu==3) then maximummenulevel=#editor_settings-2  ; end
if (menu==4) then maximummenulevel=#menu_user-2  ; end
if (menu==5) then maximummenulevel=#centrum_dostawy_listSC-1  ; end
if (menu==6) then maximummenulevel=#zapisy_SAVES-1  ; end
if (menu==7) then maximummenulevel=#zapisy_SAVES-1  ; end
if (menu==15) then maximummenulevel=#kontrolny_centrum_SC_CC-1  ; end
if (menu==16) then maximummenulevel=pomoc_punktow-1  ; end
if (menu==20) then maximummenulevel=keyboardmenu_maximum_keys-1 ; end


--  общие кнопки для всех меню - вверх и вниз.
 if (timerz>2)and(ossys~="Android") then   -- пытаюсь исправить баг с меню на андроид, этот селектор на нем не нужен.
 if (menu==9) then if (movePL1=="right")or(ammoKEYPL1=="menuright") then --INVENTORY ONLY
  selectedoptionmenu=selectedoptionmenu+1;timerz=0; imagetest=0; 
end
end
if (menu==9) then if (movePL1=="left")or(ammoKEYPL1=="menuleft") then
  selectedoptionmenu=selectedoptionmenu-1;timerz=0; imagetest=0; 
  end
end



if (movePL1=="down")or(ammoKEYPL1=="menudown") then
  if (menu~=9) then  selectedoptionmenu=selectedoptionmenu+1;timerz=0; imagetest=0; end;
     if (menu==0) then  
      if (menu_glowna[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu+1; end; 
     if (menu_glowna[selectedoptionmenu+1][6]=="d") then selectedoptionmenu=selectedoptionmenu+1; end; 
        if (demka==1) or (firstload_complete==0) then
                if (menu==0) and(selectedoptionmenu==7)and(movePL1=="down")and(score<1) then
                  selectedoptionmenu=8;
                end
                if (menu==0) and(selectedoptionmenu==3)and(movePL1=="down") then
                  selectedoptionmenu=4;
                end
                end

     end; 
     if (menu==1) then  if (menu_settings[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu+1; end; end; 
     if (menu==2) then  if (menu_authors[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu+1; end; end; 
     if (menu==3) then  if (editor_settings[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu+1; end; end; 
     if (menu==4) then  if (menu_user[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu+1; end; end; 
  if (selectedoptionmenu>maximummenulevel) then selectedoptionmenu=1; end;
  if (selectedoptionmenu>maximummenulevel)and(menu==20) then selectedoptionmenu=0; end;
    if (selectedoptionmenu>maximummenulevel)and(menu==21) then selectedoptionmenu=0; end;
  --if (selectedoptionmenu>maximummenulevel-1)and(menu==16) then selectedoptionmenu=0; end;
  --if (selectedoptionmenu>maximummenulevel-1)and(menu==15) then selectedoptionmenu=0; end;
end
if (movePL1=="up")or(ammoKEYPL1=="menuup") then
  if (menu~=9) then selectedoptionmenu=selectedoptionmenu-1;timerz=0; imagetest=0;  end; 
        if (demka==1) or (firstload_complete==0) then
                if (menu==0) and(selectedoptionmenu==7)and(movePL1=="up")and(score<1) then
                  selectedoptionmenu=6;
                end
                if (menu==0) and(selectedoptionmenu==3)and(movePL1=="up") then
                 selectedoptionmenu=2;
                end

        end

  if (menu==0) then  if (menu_glowna[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu-1; end; end; 
  if (menu==0) then  if (menu_glowna[selectedoptionmenu+1][6]=="d") then selectedoptionmenu=selectedoptionmenu-1; end; end; 
  if (menu==1) then  if (menu_settings[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu-1; end; end; 
  if (menu==2) then  if (menu_authors[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu-1; end; end; 
  if (menu==3) then  if (editor_settings[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu-1; end; end; 
  if (menu==4) then  if (menu_user[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu-1; end; end; 
  if (selectedoptionmenu<0)and(menu==5)or(selectedoptionmenu<0)and(menu==20)or(selectedoptionmenu<0)and(menu==21)or(selectedoptionmenu<0)and(menu==16)or(selectedoptionmenu<0)and(menu==15)  then selectedoptionmenu=maximummenulevel; end;
  if (selectedoptionmenu<1)and(menu~=5)and(menu~=20)and(menu~=16)and(menu~=15) then selectedoptionmenu=maximummenulevel; end;
end
end
end
-- Здесь находится картинка показываемая при запуске игры. Стартовый экран. 
if (renderer==0)and (menu==0) then

lg.draw (titlemenuscreen, 0,0,0,(maxwidth/titlewidth),(maxheight/titleheight)); --titlescreen  
end

if (renderer<1)and(menu==-1)and(startscreenmode==0) then
 
  lg.setFont(fontVERYBIG);
   scalingwallpaperwidth= maxwidth/firstwidth;
   scalingwallpaperheight= maxheight/firstheight ;
   coordflag= maxwidth/6;
  if (titlegame=="Perestroika") then lg.draw(firstscreen, 0,0,0,scalingwallpaperwidth/2,scalingwallpaperheight/2); end
  if (titlegame~="Perestroika") then  --and(titlegame~="Reskue")
    lg.draw(firstscreen, 0,0,0,scalingwallpaperwidth,scalingwallpaperheight); end
  if (timerz>5)and(1==0) then lg.draw(EN_FLAG,coordflag*1 ,maxheight/2,0,scalingmenu,scalingmenu); 
  lg.draw(RU_FLAG,coordflag*3,maxheight/2,0,scalingmenu,scalingmenu); 
  end
  lg.print(""..titlegame.." game ", 150, 40);


  windowsplus=0;
  if (ossys=="Windows") then  windowsplus=20;
    if love.mouse.isDown("1")and(menu==90)and(firstload==0)then 
    mysz_x, mysz_y = love.mouse.getPosition( );
      love.system.openURL("http://vk.com/mate_desktop");
    --my=math.ceil (gamey (mysz_y)-1); mx=math.ceil (gamex (mysz_x)-1);
  end
     lg.print("Microsoft Windows detected", 50, 140);
     lg.setFont(fontSMALL);
     lg.print("You can always install Linux with safe and cool Mate desktop enviroment", 20, maxheight-80-rozmiarznak);
     lg.print("",0, maxheight-rozmiarznak);
     zap="";
 for a=0,timerz,1 do       zap=zap.."="; end  ---░░▓▓▓
 lg.print(zap,0, maxheight-rozmiarznak);

     lg.draw(MATE_LOGO,coordflag/3 ,maxheight/3,0,scalingmenu,scalingmenu); 
 end
  if (ossys~="XAndroid")and (timerz>6+windowsplus) then 
    startscreenmode=1;menu=0; 
    end
end

if (renderer<1)and(menu==0) then

function create_atlas_mainmenu ()
  quadsize=standartsizeusermenu_android_0_cc;
  height_atlas=quadsize*1;
  ATLASmenu = lg.newCanvas(4096, height_atlas,{} ); 
-- это создание пустой картинки для наполнения ее картой спрайтов.
nonetexture="1empty.png"; 
 IMAGES_MUI = {}; 
for a0=1,9,1 do  -- максимум временно 170 (6800 пикс), для 1 байтового режима - 256. 
IMAGES_MUI[a0]="mmenu_"..a0..".png"; 
end
  lg.setCanvas(ATLASmenu);

  for i = 1,9,1 do
    local img = lg.newImage("Textures/m/mmenu_"..i..".png");
    if (img==nil) then lg.newImage("Textures/"..nonetexture); end; 
    local x = i % 10;
  local y = math.floor(i / 10);

   if (drawmenuicons==1) then lg.draw(img, x*quadsize, y*quadsize);  end; 
    -- а вот именно здесь в атлас и записывается графическое изображение.
    local quad = lg.newQuad(x*quadsize, y*quadsize, quadsize, quadsize, 4096, height_atlas)
    --квад это всего лишь координата, это не сама картинка на данный момент
    IMAGES_MUI[i + 1]= quad; 
  end
  lg.setCanvas()
   return ATLASmenu;  
end

if (ATLASmenu==nil) then 
  
  mmenu_ui_firstload=1;
  ATLASmenu=create_atlas_mainmenu(); --ATLASmobile:newImageData():encode('png', "atlasm.png");   atlas_mobile works
end
lg.setFont(fontVERYBIG);
--lg.print(""..titlegame.." -- MAIN MENU", maxwidth/2, 10);
   -- wysotamenu=mainmenusize+1;
    h=rozmiarznak;
     if (MAINMENUCANVAS==nil)and(menu==0) then MAINMENUCANVAS= lg.newCanvas(mainmenusize*9, mainmenusize*#menu_glowna,{} );  end; 
                          I = {};
                          mainmenu_changed=0; 
                          menu_printed=0;
                          lg.setCanvas(MAINMENUCANVAS); --почему ломает?  fuck 
                          lg.clear (); 

   for i=2, #menu_glowna-1,1 do

    pagemenuitemkey=menu_glowna[i][1]; --это просто номер ключа в таблице
    keyword=menu_glowna[i][2]; -- название переменной содержащей картинку загруженную ранее в love.load. 
    name=smsg_string (menu_glowna[i][2]);  --  человекочитабельное название
    if ((menuoption==1)and(i==2)) then name=smsg_string (menu_glowna[i][4]); end; -- название меняется для продолжения игры
    if (zapisy_SAVES[3][4]=="1")and(firstload==0)and(disable_quickload_at_start==0) then autosave_present=1 ; end; 
    if ((autosave_present==1)and(menuoption~=1)and(i==2)) then name=smsg_string (menu_glowna[i][5]); end; -- название меняется для продолжения игры
    undefined=menu_glowna[i][5]; -- резерв
    skip=menu_glowna[i][6];  -- пропускать пункт если записан "х". переключатель также игнорирует пропускаемые пункты.
     postobjectX=2*rozmiarznak; -- это координаты внутри Canvas, про внешние коррдинаты ЗАБЫВАЕМ! 
     postobjectY=h+mainmenusize*menu_printed;
      I[menu_printed]=IMAGES_MUI[i];--a=_G[keyword]
      OBJECTPRINTNOW=I[menu_printed];
         
     if (OBJECTPRINTNOW~=nil) then
                   lg.draw(ATLASmenu,OBJECTPRINTNOW,postobjectX, postobjectY,0,scalingmenu,scalingmenu);
                   if (name==nil) then name=""; end; -- если в menu_glowna.ini ошибка параметр будет пропускатся
                   if ((titlegame=="Reskue") or (titlegame=="M2K"))and (menu_printed==4) then  name=name.." Level:"..prestartlevelselect;end;
                   if (titlegame=="Reskue") then blue ();  -- увы но так проще и быстрее. иначе подкладка будет видна.
                     if (i==3)and(wsego_saves==0) then black ();name="";  setcolorMNU="black" ; end;
                    --if (i==7)and(firstload_complete==0) then black ();name="";  setcolorMNU="black" ; end;-- Настройки
                    if (i==4)and(demka==1)or (i==4)and(firstload_complete==0) then black ();name=""; setcolorMNU="black" ;  end;
                    if (i==8)and(demka==1)or (i==8)and(firstload_complete==0) then black ();name="";  setcolorMNU="black" ; end;
            
                   lg.print(name, 102*scaling, 4+h+mainmenusize*menu_printed); 
                   white () ; 
                   end; 
                   if ((selectedoptionmenu+1)==i)then green (); setcolorMNU="green"; else white (); setcolorMNU="white"; end;
                    if ((selectedoptionmenu+1)==i)and(i==2)and(gameover==1) then red (); setcolorMNU="red" ; end;
                    if ((selectedoptionmenu+1)==i)and(i==3)and(demka==1) then yellow (); setcolorMNU="yellow"; end;
                    if (i==3)and(wsego_saves==0) then black ();name="";  setcolorMNU="black" ; end;
                    --if (i==7)and(firstload_complete==0) then black ();name="";  setcolorMNU="black" ; end;-- Настройки
                    if (i==4)and(demka==1)or (i==4)and(firstload_complete==0) then black ();name=""; setcolorMNU="black" ;  end;
                    if (i==8)and(demka==1)or (i==8)and(firstload_complete==0) then black ();name="";  setcolorMNU="black" ; end;
                    if ((selectedoptionmenu+1)==i)and(i==4)and(demka==1) then yellow ();  setcolorMNU="yellow" ; end;
                    if ((selectedoptionmenu+1)==i)and(i==4)and(menuoption~=1) then red ();  setcolorMNU="red" ; end;
                    if ((selectedoptionmenu+1)==i)and(i==4)and(gameover==1) then red ();  setcolorMNU="red" ; end;
                    if ((selectedoptionmenu+1)==i)and(i==8)and(demka==1) then yellow ();  setcolorMNU="yellow" ; end;
                   lg.print(name, 100*scaling, h+mainmenusize*menu_printed); 
                   menu_printed=menu_printed+1;
       end
    end
white ();
          lg.setCanvas() -- эта строчка возвращает рендерер в игровое поле. обязательная.
          if (MAINMENUCANVAS~=nil) then  lg.draw(MAINMENUCANVAS,0,0); end;  -- canvas if (countinventory>2) then
        --  if (otladka==1) then MAINMENUCANVAS:newImageData():encode('png', "ship"..countinventory..".png");  end; 

lg.setFont(font);
if (maxwidth<800) then red ();
  lprint ("TOO_LOW_RES",5,maxheight-rozmiarznak); 
  white ();
 else 
   --lprint ("DLA_TESTEROW",5,maxheight-rozmiarznak);
   white (); 
end
lg.print("***",(timerz), 2+math.random(3)) --***"..selectedoptionmenu.."*** 
if (timerz>1000) then timerz=0;end;
timerline=timerline+2;
if (timerline>10000) then timerline=0; end; 
end
if (love.keyboard.isDown("right")) then timerline=timerline+15; end;  
if (love.keyboard.isDown("left")) then timerline=timerline-15; end;  

part1msg= smsg_string ("WELCOM_LINE");
part2msg= smsg_string ("WELCOM_WINDOWS");
if (titlegame=="Reskue") then 
part1msg= smsg_string ("RWELCOM_LINE");
  end
  if (titlegame=="Kolonista") then 
part1msg= smsg_string ("KWELCOM_LINE");
  end


      if (ossys=="Windows") then win=part2msg; else win=""; end;
      pl1image=dlanubow;
      pl2image="";
      pl3image="";
    if ((renderer==0)and(menu==0)) then
   if (ossys~="Android")and(rzad=="kb") then  
    pl1image=dlanubow;
  end
   if (ossys~="Android")and(rzad=="pad") then 
        if  (imagePL1joystick=="sonyPS3") then 
    pl1image=PS3joystick; end; 
        if (imagePL1joystick=="xbox") then  
    pl1image=XONEjoystick ; end; 
      
         if  (imagePL2joystick=="sonyPS3") then 
    pl2image=PS3joystick; end
        if (imagePL2joystick=="xbox") then  
    pl2image=XONEjoystick;  end; 
       
         if  (imagePL3joystick=="sonyPS3") then 
    pl3image=PS3joystick; end; 
        if (imagePL3joystick=="xbox") then  
    pl3image=XONEjoystick;  end; 
      end
  --smsg1="imagePL2joystick.."..imagePL2joystick;
    lg.draw (pl1image, maxwidth-3*rozmiarznak-2*rozmiarznak*ObjectSIZE,1*rozmiarznak,0,scalingmenu/3,scalingmenu/3);
    pl1image_kopia=pl1image;
     if (pl2image~="") then 
      lg.draw (pl2image, maxwidth-3*rozmiarznak-2*rozmiarznak*ObjectSIZE,3*rozmiarznak,0,scalingmenu/3,scalingmenu/3);
     end
    if (pl3image~="") then 
      lg.draw (pl3image,  maxwidth-3*rozmiarznak-2*rozmiarznak*ObjectSIZE,5*rozmiarznak,0,scalingmenu/3,scalingmenu/3);
     end

    lg.setFont(fontVERYSMALL);
  if (loading_lock_message==0)and (rzad~="pad") then  
    lg.print(smsg_string "PL_7_", maxwidth/2-2*rozmiarznak, maxheight-2*rozmiarznak); end
  if (loading_lock_message==0)and (rzad=="pad") then    
    lg.print(smsg_string "PL_J_", maxwidth/2-2*rozmiarznak, maxheight-2*rozmiarznak); end
  if (loading_lock_message==1) then    red () ; lg.print(smsg_menu, maxwidth/2-5*rozmiarznak, maxheight-4*rozmiarznak);  white () ; end


      if (reklamawyl==nil) then lg.draw(gametitle_logo, maxwidth/2-0*rozmiarznak, 0,0,scaling,scaling);   end ; 
      if (titlegame=="Reskue")  then  blue () ; lg.print(part1msg..win,maxwidth-timerline,maxheight-rozmiarznak*1.2+5); white (); end ;  
      lg.print(part1msg..win,maxwidth-timerline,maxheight-rozmiarznak*1.2); white (); end ; 
lg.setFont(fontVERYSMALL);
  


   

function help_player_data_print () 
     lg.setFont(fontVERYSMALL);
          wED=standartwysotatextmenu-3; 
          menu_printed=0; 

for i=4, (keyboardmenu_maximum_keys+6),1 do
  SMSG_CODE="KEYB_U"..i.."_";
    name,keyword,PSkey,Xbox360key=smsg_string (SMSG_CODE);
    pagemenuitemkey=i; --это просто номер ключа в таблице
           if (pagemenuitemkey~=nil)then
                  a=_G[keyword];
                  if (a~=nil)and(rzad=="kb") then  lg.print(a, maxwidth/2+3*standartsizeusermenu, startpositionuserPCmenuY+wED*menu_printed-4*standartsizeusermenu-60*(ObjectSIZE-1)); 
                    
                    lg.print(name, maxwidth/2+6*standartsizeusermenu, startpositionuserPCmenuY+wED*menu_printed-4*standartsizeusermenu-60*(ObjectSIZE-1));
                    menu_printed=menu_printed+1;
                    end; 
                  if (rzad=="pad")and (PSkey~="") then
                    keyprint=""; 
                    if (typejoystick=="sonyPS3") then  keyprint=PSkey; end; 
                    if (typejoystick=="xbox360") then  keyprint=Xbox360key;end; 
                    lg.print(keyprint, maxwidth/2+3*standartsizeusermenu, startpositionuserPCmenuY+wED*menu_printed-4*standartsizeusermenu-60*(ObjectSIZE-1)); 
                    lg.print(name, maxwidth/2+6*standartsizeusermenu, startpositionuserPCmenuY+wED*menu_printed-4*standartsizeusermenu-60*(ObjectSIZE-1)); 
                    menu_printed=menu_printed+1;
                    end; 
                  
                        
       end
    end


      end;

  menulockpage= ubywanie (menulockpage);
if (finaltitle==1) then  -- FINALTITLE STATISTICS
   savedscientists=scanobject(33,-2);
   if (savedscientists<0) then savedscientists=0; end; 
   savedfuel=scanobject(42,-2)-2;
   renderer=0; 
  menu=9; selectedoptionmenu=1;
   pause=1;
   white ();
   lg.setFont(font);
   if (menulockpage==0) then menulockpage=300; end;
   lprint("WINTITLE",100, maxheight/3);
   lg.print ((smsg_string ("WINSCORE"))..score,  0, maxheight/3+rozmiarznak*2);
   lg.print ((smsg_string ("WINTANK"))..tanksdestroyed,  0, maxheight/3+rozmiarznak*3);
   if (titlegame=="Reskue") then
    lg.print ((smsg_string ("WINSC"))..savedscientists,  0, maxheight/3+rozmiarznak*4);
    lg.print ((smsg_string ("WINFUEL"))..savedfuel,  0, maxheight/3+rozmiarznak*5);
    end;

     if (menulockpage<40)and (timerz>5)and((spacepressed==1)or(menulockpage<40)and (ammoKEYPL1=="space"))and (timerz>5) then 
    menu=0;finaltitle=0;  pause=1; timerz=0;
    savedscientists=0; savedfuel=0; 
   end
 end

 if (stattitle==1) then  -- ingame STATISTICS
    lg.draw (inventoryscreen, maxwidth-(iwidth*scaling)-100,0,0,scaling+0.2,scaling+0.2); --titlescreen  
   wearitemtable={};
   wear_changed=1;
   countwear=0; 
   maximumwear=6; -- stattitle   a menu==9 ... etc to okladki
   for a=0,maximumwear,1 do 
    itemcode=_G["slot"..a]; 
    if (itemcode~=nil) and (itemcode~=0) then addwearitem (itemcode) end; 
   end
      renderer=0; pause=1;  --menu=9; --;
   -- ekwipunek i statystika 
  lg.setCanvas() ;
lg.setFont(font);
  menu_printed=0;
wysotamenu=standartwysotatextmenu; -- для увеличения количества отображаемых обьектов
h=-15;
if (menu==10) then  blue () ; end
lprint("KEYB_U15_",(maxwidth/2)+ rozmiarznak, 0); -- Инвентарь 
blue ();
if (menu==10) then  white () ; end
lprint("KEYB_U16_",(maxwidth/2)+ rozmiarznak, 0+rozmiarznak); -- Инвентарь 
white () ; 
parttext="";
 if  (PC1_select_module=="inventory") then parttext=smsg_string ("KEYB_U22_CPY");end;
 if  (PC1_select_module=="wear") then parttext=smsg_string ("KEYB_U28_CPY");end;
 if  (PC1_select_module=="kufr") then parttext=smsg_string ("wziac");end;

if (rzad=="pad")and(menu==9)  then 
   lg.setFont(fontBIG);
lg.print (smsg_string ("KEYB_U23_CPY").." - "..smsg_string ("Inv_Help_pad").." X(A) - "..parttext..", TR(Y) - "..smsg_string ("wsklad"), 110, downspaceonscreen-rozmiarznak*3);
end
if (rzad=="kb")and(menu==9)  then 
   lg.setFont(font);
lg.print (uuleftkey..","..uurightkey.." - "..smsg_string ("Inv_Help_pad").." "..uuammokey.. " - "..parttext..", "..ubombkey.." - "..smsg_string ("wsklad"), 110, downspaceonscreen-rozmiarznak*3);
end

-- lg.print (""..smsg1, 800, downspaceonscreen-rozmiarznak*2);
lg.setFont(fontSMALL);
-- menu_glowna INVENTORY  MENU   9 = MAIN+SLOTS , 10 STAT+ BUFFS
 
   if (menu==9) then 
    if (PC1_select_module==nil) then PC1_select_module="inventory";end; 
    if (rsKEYPL1=="[") or ((movePL1=="up" )and (rzad~="pad")) then PC1_select_module="inventory"; selectedoptionmenu=1; end
    if (rsKEYPL1=="]") or ((movePL1=="down" )and (rzad~="pad"))then PC1_select_module="wear"; selectedoptionmenu=1;  end;
    if (rsKEYPL1==";") then PC1_select_module="kufr"; selectedoptionmenu=1;  end;
    if (rsKEYPL1=="ekwipunek") then PC1_select_module=""; selectedoptionmenu=1; menu=10; timerz=0;   end; -- (left fire main na joystike)
    if (rsKEYPL1=="stattitle") then PC1_select_module=""; selectedoptionmenu=1; menu=9; timerz=0;   end; -- (left fire main na joystike)

          if (SHIPCANVAS==nil) then SHIPCANVAS= lg.newCanvas(maxwidth, rozmiarznak*#centrum_dostawy_listSC,{} );  end; 
                  if (1==1) then
                          IMAGESSHIPINV = {};
                          shipmenu_changed=0; 
                          object_to_rendering=0;
                          lg.setCanvas(SHIPCANVAS); --почему ломает?  fuck 
                          lg.clear (); 
   
                          --WEAR module
                          for a=1,#wearitemtable,1 do
                                 iditem=wearitemtable[a];
                                 aaa=#wearitemtable;
                           if (selectedoptionmenu<0)and(PC1_select_module=="wear")  then selectedoptionmenu=#wearitemtable-1;
                              smsg1="sel="..selectedoptionmenu.." <0 in wearitemtable ["..aaa;
                           end
                           if (selectedoptionmenu>#wearitemtable)and(PC1_select_module=="wear")  then selectedoptionmenu=1;
                              smsg1="sel="..selectedoptionmenu.." >"..aaa;
                           end
                         
                                if (iditem==nil) then iditem=0; end; 
                                  usable=ext_objs_string (iditem,22);
                                slottype=ext_objs_string (iditem,23);--slottype=objs[iditem+1][23];
                                kod_opis=ext_objs_string (iditem,13);
                                 unpackobiekt=ext_objs_param (iditem,15);
                                type_module="wear";
                                textdatacontent,nameitem=smsg_string (kod_opis);
                                 if ((selectedoptionmenu)==a)and(PC1_select_module=="wear") then 
                          if (titlegame=="M2K") then cyan () ; end;  if (titlegame=="Reskue") then green () ; end;  if (titlegame=="Kolonista") then yellow () ; end;
                          ekwipunekid=selectedoptionmenu;ekwipunekidslottype=slottype;
                              if (a>0) then  msgbox(nameitem,(maxwidth/2)-4*rozmiarznak , 40+1*rozmiarznak,wysotamenu); end --"["..slottype.."]"
                              if (a>0) and (slottype~="") then  msgbox(smsg_string ("REQ")..slottype,(maxwidth/2)-4*rozmiarznak , 40+2*rozmiarznak,wysotamenu); end
                              if (a>0) then  msgbox(textdatacontent,20,80+3*rozmiarznak,wysotamenu); end
                              if (a>0) then randomcolor (); lg.print ("*",maxwidth-(iwidth*scaling)-0*(rozmiarznak),rozmiarznak*((a+1)*1.7)+30); end;
                                 end;
                                 white (); 
                                      imgf2 =  objs[iditem+1][3]; -- просто берет название файла.
                                 inventoryvisualcode=iditem; 
                                  if (inventoryvisualcode==nil) then inventoryvisualcode=0; end; 
                           postobjectX=maxwidth-(iwidth*scaling)-0-2*(rozmiarznak); -- это координаты внутри Canvas, про внешние коррдинаты ЗАБЫВАЕМ! 
                           postobjectY=rozmiarznak*((a+0.5)*1.7)+30;
                          IMAGESSHIPINV[object_to_rendering]=IMAGES[inventoryvisualcode + 1];
                              OBJECTPRINTNOW_SHIPINV=IMAGESSHIPINV[object_to_rendering];
                           if (OBJECTPRINTNOW_SHIPINV~=nil) then 
                            if (nameitem==nil) then nameitem="NILLLLLLLLLLLLLLLLLLLLLLLLLL"; end; --["..slottype.."]".."
                         --вывод графики отображения продуктов в меню, выводится всё имеющее цену, других ограничений пока нет
                          if ((ekwipunekid)==a)and(PC1_select_module=="wear") then  green ();end; 
                         lg.draw(ATLAS,OBJECTPRINTNOW_SHIPINV,postobjectX, postobjectY,0,scaling+0.7,scaling+0.7);
                         white ();
                         object_to_rendering=object_to_rendering+1;
                             end;-- ENDIF (OBJECTPRINTNOW_SHIPINV~
                           end -- END WEAR MODULE
                         

                              --KUFR  module KUFR - NIE WEAR NIE INV !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1
                          for a=1,#kufrinventoryitemtable,1 do
                                 iditem=kufrinventoryitemtable[a];
                                 aaa=#kufrinventoryitemtable;
                           if (selectedoptionmenu<0)and(PC1_select_module=="kufr")  then selectedoptionmenu=#kufrinventoryitemtable-1;
                              smsg1="sel="..selectedoptionmenu.." <0 in wearitemtable ["..aaa;
                           end
                           if (selectedoptionmenu>#kufrinventoryitemtable)and(PC1_select_module=="kufr")  then selectedoptionmenu=1;
                              smsg1="sel="..selectedoptionmenu.." >"..aaa;
                           end
                         
                                if (iditem==nil) then iditem=0; end; 
                                  usable=ext_objs_string (iditem,22);
                                slottype=ext_objs_string (iditem,23);--slottype=objs[iditem+1][23];
                                kod_opis=ext_objs_string (iditem,13);
                                 unpackobiekt=ext_objs_param (iditem,15);
                                type_module="kufr";
                                textdatacontent,nameitem=smsg_string (kod_opis);
                                 if ((selectedoptionmenu)==a)and(PC1_select_module=="kufr") then 
                          if (titlegame=="M2K") then cyan () ; end;  if (titlegame=="Reskue") then green () ; end;  if (titlegame=="Kolonista") then yellow () ; end;
                          ekwipunekid=selectedoptionmenu;ekwipunekidslottype=slottype;
                              if (a>0) then  msgbox(nameitem,(maxwidth/2)-4*rozmiarznak , 40+1*rozmiarznak,wysotamenu); end --"["..slottype.."]"
                              if (a>0) and (slottype~="") then  msgbox(smsg_string ("REQ")..slottype,(maxwidth/2)-4*rozmiarznak , 40+2*rozmiarznak,wysotamenu); end
                              if (a>0) then  msgbox(textdatacontent,20,80+3*rozmiarznak,wysotamenu); end
                                 end;
                                 white (); 
                                      imgf2 =  objs[iditem+1][3]; -- просто берет название файла.
                                 inventoryvisualcode=iditem; 
                                  if (inventoryvisualcode==nil) then inventoryvisualcode=0; end; 
                        postobjectX=a*(rozmiarznak+20); -- это координаты внутри Canvas, про внешние коррдинаты ЗАБЫВАЕМ! 
                           postobjectY=(maxheight/2)+rozmiarznak*2;
                          IMAGESSHIPINV[object_to_rendering]=IMAGES[inventoryvisualcode + 1];
                              OBJECTPRINTNOW_SHIPINV=IMAGESSHIPINV[object_to_rendering];
                           if (OBJECTPRINTNOW_SHIPINV~=nil) then 
                            if (nameitem==nil) then nameitem="NILLLLLLLLLLLLLLLLLLLLLLLLLL"; end; --["..slottype.."]".."
                         --вывод графики отображения продуктов в меню, выводится всё имеющее цену, других ограничений пока нет
                          if ((ekwipunekid)==a)and(PC1_select_module=="kufr") then  green ();end; 
                         lg.draw(ATLAS,OBJECTPRINTNOW_SHIPINV,postobjectX, postobjectY,0,scaling+0.7,scaling+0.7);
                         white ();
                         object_to_rendering=object_to_rendering+1;
                             end;-- ENDIF (OBJECTPRINTNOW_SHIPINV~
                           end -- END WEAR MODULE
                         



                          for a=1,#inventoryitemtable,1 do
                            if (ossys=="Android") then selectedoptionmenu=0; end; -- исправление ошибки на Android там откуда то string (!) берется. 
                           if (selectedoptionmenu>21)and(PC1_select_module=="inventory")  then h=-15-(selectedoptionmenu-20)*wysotamenu;end
                           if (selectedoptionmenu>#inventoryitemtable)and(PC1_select_module=="inventory")  then selectedoptionmenu=1;end
                           if (selectedoptionmenu<0)and(PC1_select_module=="inventory")  then selectedoptionmenu=#inventoryitemtable-1;end
                           if (selectedoptionmenu<20)and(PC1_select_module=="inventory")  then h=-15; end
                            iditem=inventoryitemtable[a];
                            if (iditem==nil) then iditem=0; end; 
                            usable=ext_objs_string (iditem,22);
                            slottype=ext_objs_string (iditem,23);--slottype=objs[iditem+1][23];
                            kod_opis=ext_objs_string (iditem,13);
                            unpackobiekt=0;
                            type_module="inventory";
                            textdatacontent,nameitem=smsg_string (kod_opis);
                         if ((selectedoptionmenu)==a)and(PC1_select_module=="inventory")and(#inventoryitemtable>0)  then 
                         if (titlegame=="M2K") then cyan () ; end;  if (titlegame=="Reskue") then green () ; end;  if (titlegame=="Kolonista") then yellow () ; end; 
                             ekwipunekid=selectedoptionmenu;
                              if (a>0) then  msgbox(nameitem,(maxwidth/2)-4*rozmiarznak , 40+1*rozmiarznak,wysotamenu); end --"["..slottype.."]"
                              if (a>0) and (slottype~="") then  msgbox(smsg_string ("REQ")..slottype,(maxwidth/2)-4*rozmiarznak , 40+2*rozmiarznak,wysotamenu); end
                              if (a>0) then  msgbox(textdatacontent,20,80+3*rozmiarznak,wysotamenu); end
                              if (a>0) then randomcolor (); lg.print ("*",-30+rozmiarznak+a*(rozmiarznak+20), rozmiarznak*2+wysotamenu*2+h); end;
                              -- Это и есть ВЫВОД ОПИСАНИЯ ПРЕДМЕТА многострочным окошком в экране покупки заказ товара кораблём.
                              end;
                              white (); 
                            
                            imgf2 =  objs[iditem+1][3]; -- просто берет название файла.
                             inventoryvisualcode=iditem;        --keypressmenu_glowna=menu_user[i][5]; -- эмуляция нажатия кнопки через файл описания
                          if (inventoryvisualcode==nil) then inventoryvisualcode=0; end; 
                           postobjectX=a*(rozmiarznak+20); -- это координаты внутри Canvas, про внешние коррдинаты ЗАБЫВАЕМ! 
                           postobjectY=wysotamenu*object_to_rendering+h;
                              IMAGESSHIPINV[object_to_rendering]=IMAGES[inventoryvisualcode + 1];
                              OBJECTPRINTNOW_SHIPINV=IMAGESSHIPINV[object_to_rendering];
                          if (OBJECTPRINTNOW_SHIPINV~=nil) then 
                            if (nameitem==nil) then nameitem="NILLLLLLLLLLLLLLLLLLLLLLLLLL"; end; --["..slottype.."]".."
                         --вывод графики отображения продуктов в меню, выводится всё имеющее цену, других ограничений пока нет
                         if ((ekwipunekid)==a)and(PC1_select_module=="inventory") then  yellow ();end; 
                         lg.draw(ATLAS,OBJECTPRINTNOW_SHIPINV,postobjectX, 100,0,scaling+0.7,scaling+0.7);--
                         object_to_rendering=object_to_rendering+1;
                         white (); 
                             end;-- ENDIF (OBJECTPRINTNOW_SHIPINV~
                            end
                          end
                  
                            --"WEAR" PC1_select_module="wear"
                           postobjectX=maxwidth-(iwidth*scaling)-2*(rozmiarznak); -- это координаты внутри Canvas, про внешние коррдинаты ЗАБЫВАЕМ! 
                           postobjectY=rozmiarznak*(1.5*1.7)+30;
                            --lg.draw(ATLAS,OBJECTPRINTNOW_SHIPINV,postobjectX, postobjectY,0,scaling+0.7,scaling+0.7);
                   if (PC1_select_module=="wear") then  yellow (); end;
                    lprint ("WEAR",postobjectX, postobjectY-rozmiarznak); --..scaling+0.7  mamy problem z skaling. 
                      green (); if (PC1_select_module=="wear") then  randomcolor2 (); end;
                    lg.rectangle("line",postobjectX-1, postobjectY-2,(rozmiarznak+12)*(scaling),(rozmiarznak+1)*(5)*(scaling),0,0);
                    blue (); if (PC1_select_module=="wear") then  yellow (); end;
                    lg.rectangle("line",postobjectX-2, postobjectY-3,(rozmiarznak+12)*(scaling),(rozmiarznak+1)*5*(scaling),0,0);
                    white (); 

                    -- lg.draw(ATLAS,OBJECTPRINTNOW_SHIPINV,postobjectX, 100,0,scaling+0.7,scaling+0.7);--
                    if (PC1_select_module=="inventory") then  yellow (); end;
                    lprint ("m_act_ekwi",rozmiarznak+40, 20-3); --..scaling+0.7  mamy problem z skaling. 
                      green ();if (PC1_select_module=="inventory") then  randomcolor2 (); end;
                    lg.rectangle("line",rozmiarznak+20-1, 100-2,(rozmiarznak)*(maximuminventorysize)*(scaling),(rozmiarznak+12)*(scaling),0,0);
                    blue ();  if (PC1_select_module=="inventory") then  yellow (); end;
                    lg.rectangle("line",rozmiarznak+20-2, 100-3,(rozmiarznak)*(maximuminventorysize)*(scaling),(rozmiarznak+12)*(scaling),0,0);
                    white (); 
                    lg.setCanvas() -- эта строчка возвращает рендерер в игровое поле. обязательная.
                    if (SHIPCANVAS~=nil) then  lg.draw(SHIPCANVAS,0,0); end;  -- canvas if (countinventory>2) then
                     --if (otladka==1) then SHIPCANVAS:newImageData():encode('png', "ship"..countinventory..".png");  end; 
end
-- ekwipunek i statystika
white ();
  --smsg1="wm= "..PC1_select_module.." sel="..selectedoptionmenu.." iditem="..iditem ; 
   savedscientists=scanobject(33,-2);
   if (savedscientists<0) then savedscientists=0; end; 
    if (fasttimer==15) then savedfuel=scanobject(42,-2)-2; end; 
   white ();
   lg.setFont(font);
   eff="";
    if (protect>0) then eff=eff.."Protect,"; end   if (hp<1) then red () ; eff=eff.."DEAD,"; white () ; end
   if (speedtimer>0) then eff=eff.."Speed,Damage,"; end   if (feartimerPL1>0) then eff=eff.."Fear,"; end
   if (freezetimerPL1>0) then eff=eff.."Frozen,"; end   if (invisibletimerPL1>0) then eff=eff.."Invisible,"; end
   if (slowPL1>0) then eff=eff.."Slow,"; end   if (damagetimerPL1>0)and(tank==0) then eff=eff.."Wound,"; end
   if (damagetimerPL1>0)and(tank==1) then eff=eff.."Corrosion,"; end   if (painreflectionPL1>0) then eff=eff.."Pain reflection,"; end
   if (cursedtimerPL1>0) then eff=eff.."Cursed,"; end   if (nietykalnyPL1>0) then eff=eff.."Invincible,"; end
   if (signaltraptimer>0) then eff=eff.."Undetected,"; end   if (paralysatorrifle>0) then eff="Ice Bomb enhanced,"; end   if (antitankm>0) then eff="Item: Antitank missile,"; end
   selectedobject_name_SMSG_code=objs[(ostatni_obiekt+1)][13]; -- Последний обьект к которому вы прикоснулись. Это ещё нужно для кого то писать? 
   ignore_tekst=objs[(ostatni_obiekt+1)][12];
    message,item_name=smsg_string (selectedobject_name_SMSG_code); --message,varname
  if (item_name==nil) then item_name="";  end; 
   if (message~=nil) then objectinfo=item_name.." :: "..message;  end ; 
  if (ignore_tekst~="IGNORE") then printobjectinfo=objectinfo end ; --все неинтересные обьекты в таблице objects.ini должны быть по
   
    --lg.print ((smsg_string ("EFF"))..eff,  0, maxheight-rozmiarznak*0);
    if (menu==10) then

      lg.print ((smsg_string ("NOWDMG")).." "..standartdamage,  60, 0+rozmiarznak*1);
      lg.print ((smsg_string ("HPMAX")).." "..hp.."/"..hpmax,   60, 0+rozmiarznak*2);
      lg.print ((smsg_string ("AMMOMAX")).." "..ammo.."/"..maximumammo_PC1,  60, 0+rozmiarznak*3);
      lg.print ((smsg_string ("ICEMAX")).." "..ice.."/"..maximumammo_PC1,  60, 0+rozmiarznak*4);
      lg.print ((smsg_string ("DAMAGETYPE")).." "..damagetype_PC1,   60, 0+rozmiarznak*5);
      lg.print ((smsg_string ("ALTDAMAGE")).." "..alt_damage_PC1,   60, 0+rozmiarznak*6);
      lg.print ((smsg_string ("INVENTORYSIZE")).." "..maximuminventorysize,   60, 0+rozmiarznak*7);
      lg.print ((smsg_string ("SAVEDONE")).." "..savegamecounter,   60, 0+rozmiarznak*8);
      lg.print ((smsg_string ("EFF")).." "..eff, 60,  0+rozmiarznak*9);

    if (menu==10)and (titlegame~="M2K") then
      lg.print ((smsg_string ("MULTIKILLS")).." "..multikills,  60, 0+rozmiarznak*11);
      lg.print ((smsg_string ("ULTRAKILLS")).." "..ultrakills,  60, 0+rozmiarznak*12);
    end

    end
  
   
   
if (titlegame=="Reskue")and (menu==10) then 
   lg.print ((smsg_string ("WINTANK")).." :: "..tanksdestroyed,  60, 0+rozmiarznak*13);
   lg.print ((smsg_string ("WINSC")).." :: "..savedscientists,  60, 0+rozmiarznak*14);
 end;
    if (menu==12)and (editor==0)and(incontrolcentre==0)and(otladka==0)and(ossys~="Android")and (titlegame~="Perestroika") then 
  help_player_data_print () ;


    
end
   if (timerz>5)and((spacepressed==1)or(ammoKEYPL1=="space"))and (timerz>5) then 
    menu=0;stattitle=0;  timerz=50;ammoKEYPL1="";  --выход из stattitle==1
   end
 end

function love.textinput(t)
    text = text .. t
end

function love.keypressed(key)
    spacepressed=0; 
  KEYPRESSED = true;
 if key == "backspace" then
        -- get the byte offset to the last UTF-8 character in the string.
        local byteoffset = utf8.offset(text, -1)
 
        if byteoffset then
            -- remove the last UTF-8 character.
            -- string.sub operates on bytes rather than UTF-8 characters, so we couldn't do string.sub(text, 1, -2).
            text = string.sub(text, 1, byteoffset - 1)
        end
    end
    return key
end

if (benchtitle==1) then  -- ingame STATISTICS
  menu=9; selectedoptionmenu=1;renderer=0; 
   pause=1;
   white ();
   lg.setFont(font);
   lprint("BENCHTITLE",100, maxheight/3);
   lg.print ("Normal:"..stage0_fps,  0, maxheight/3+rozmiarznak*2);
   lg.print ("Redraw atlas:"..stage1_fps,  0, maxheight/3+rozmiarznak*3);
   lg.print ("Tanks:"..stage2_fps,  0, maxheight/3+rozmiarznak*4);
   lg.print ("Random obj:"..stage3_fps,  0, maxheight/3+rozmiarznak*5);
    lg.print (""..text,  0, maxheight/3+rozmiarznak*6);
    lprint("ANYKEY",100, maxheight-2*rozmiarznak);
  if (stage1_fps==stage2_fps)and(stage2_fps==stage3_fps) then 
  lprint("GOODBENCH",100, maxheight-3*rozmiarznak);
end

   if (string.len(text)>1)and (timerz>5)or(ammoKEYPL1=="space")and (timerz>5)or (joystickKEYPL1=="O")or (joystickKEYPL1=="X")  then 
    menu=0;benchtitle=0; --gameover=0;
      timerz=50;
    love.keyboard.setKeyRepeat(false); 
    text=""; 
   end
 end

if (renderer<1)and(menu==1) then -- ОБЫЧНОЕ МЕНЮ SETTINGS  не меню EDITOR SETTINGS !!!!!! Образец для других меню 
lg.setFont(fontVERYBIG);
lprint ("MENU1SETT", maxwidth/2, 20); 
lg.setFont(font);
menu_printed=0;
wysotamenu=standartwysotatextmenu; 
h=0;
 for i=2, #menu_settings-1,1 do
if ((selectedoptionmenu+1)==i) then  green () else white () end;
    pagemenuitemkey=menu_settings[i][1]; --это просто номер ключа в таблице
    keyword=menu_settings[i][2]; -- название переменной содержащей картинку загруженную ранее в love.load. 
    typenumeric=menu_settings[i][5];-- если N указывает что вместо переключателя опций будет смена чисел. --skip=menu_settings[i][6];  --пропускать если записан "х".
     name=smsg_string (menu_settings[i][2]); 
    if (pagemenuitemkey~=nil)and(skip~="x") then
                  if(keyword~="none") then a=_G[keyword];
                  if (selectedoptionmenu>21) then h=20-(selectedoptionmenu-20)*wysotamenu;end
                  if (selectedoptionmenu<20) then h=20; end
                 
                  if (i>2)and(typenumeric=="l")or(i>2)and(typenumeric=="m") then  
                    if (a>0) then lg.draw(settings_switch_on, 90,h+13*scaling+wysotamenu*menu_printed,0,scalingmenu,scalingmenu); end;
                    if (a==0) then lg.draw(settings_switch_off, 90,h+13*scaling+wysotamenu*menu_printed,0,scalingmenu,scalingmenu); end;
                  end
                  if (a~=nil)and(typenumeric=="n")  then  lg.print(a, 90, h+15+wysotamenu*menu_printed); end;
                   end
                   lg.print(name, 140+100*scaling, h+15+wysotamenu*menu_printed);
                        menu_printed=menu_printed+1;
       end
    end
white ();
if (timerz>800) then timerz=0;end;
end

  if(renderer<1)and(menu==2) then
lg.print("***Authors***", 450, 50);
lg.print("Coding, Idea, Base graphic - dj--alex.   Click mouse to open site. ", 350, 120);
lg.draw (ja, 20,60); 
lg.draw (authors1, maxwidth-400,50); 
lg.draw (authors2, maxwidth-400,450); 
mysz_x, mysz_y = love.mouse.getPosition( );
  if love.mouse.isDown("1")and (mysz_x>20) and  (mysz_y>60) and (mysz_y<300) and (mysz_x<300)  then 
    if (steam_state==0) then 
      love.system.openURL("https://dj-alex.itch.io");
      a=os.execute ("xdg-open https://dj-alex.itch.io") ; 
    end
    if (steam_state==1) then 
      love.system.openURL("https://dj-alex.ru");
      a=os.execute ("xdg-open https://dj-alex.ru") ; 
    end
    

    if (a~=nil) then lg.print(a, 850, 50); end; 
    end
lg.print("Part of sprites created by vk.com/veliaraft", 350, 120+wysotastroki*0.8);
if love.mouse.isDown("1") and (mysz_x>350) and  (mysz_y>120+wysotastroki*0.2) and (mysz_y<120+wysotastroki*1.7) then 
    love.system.openURL("https://vk.com/veliaraft");
  end

if (titlegame=="Reskue") then lg.print("Cover and hero animation created by Nami_Sei ", 350, 120+wysotastroki*1.7); end; 
if (titlegame=="M2K")or(titlegame=="Kolonista") then lg.print("Cover art created by Nami_Sei", 350, 120+wysotastroki*1.7); end; 
if love.mouse.isDown("1") and (mysz_x>350) and  (mysz_y>120+wysotastroki*1.7) and (mysz_y<120+wysotastroki*2.4)  then 
    love.system.openURL("https://kwork.ru/user/julia_minina");
  end
if (titlegame=="Reskue") then lg.print("Tanks animation created by Kolumbet", 350, 120+wysotastroki*2.4); end; 
  if love.mouse.isDown("1") and (mysz_x>350) and  (mysz_y>120+wysotastroki*2.4) and (mysz_y<120+wysotastroki*3.2)  then 
    love.system.openURL("404");
  end
if (titlegame=="M2K") then lg.print("Puzzle, goal:take items, destroy targets (trolls,mines),search way to next level. ", 350, 120+wysotastroki*4.4); end; 
if (titlegame=="Reskue") then lg.print("You can save scientists and must delivery fuel. ", 350, 120+wysotastroki*4.4); end
if (titlegame=="Kolonista") then lg.print("You must delivery more mushrooms to Earth, and protect colony.", 350, 120+wysotastroki*4.4); end
if (titlegame=="PERESTROIKA") then lg.print("Save resources and democracy from biurocrats", 350, 120+wysotastroki*4.4); end

if (steam_state==0) then 
  red () ; lg.print("You can support developing M2K Engine and enhance games", 350, 125+wysotastroki*3.2); white (); 
lg.print("You can support developing M2K Engine and enhance games", 350, 120+wysotastroki*3.2);
end

 
if (titlegame~="Reskue")and (titlegame~="M2K") then
if (language==2) then lg.print("Support methods: Yandex card 5106 2110 7013 9626",38+guifix,startpositionuserPCmenuY+wysotastroki*0); end 
 lg.print(" ETC donate 0x302f798bf9cf284a2f64953a883f78915c9aba6b ",38+guifix,startpositionuserPCmenuY+wysotastroki*0.8);
 lg.print(" Dogecoin donate  DRwDgAaBPqtBt8JttAjt5fSFZR2NJLxUpf",38+guifix,startpositionuserPCmenuY+wysotastroki*1.6); 
 if (language==2) then lg.print("Yandex Money 4100177805659 ",38+guifix,startpositionuserPCmenuY+wysotastroki*2.4); end ; 
 end; 
addc=""; if (steam_state==0) then addc=": dj-alex.itch.io  patreon.com/m2kdev_djalex  "; end;
 lg.print("(c) dj-alex.ru "..addc.." youtube.com/c/linux4domvid",38+guifix,maxheight-wysotastroki*5);
if love.mouse.isDown("1")and(steam_state==0) and (mysz_x>38+guifix) and  (mysz_y>startpositionuserPCmenuY+wysotastroki*2) and (mysz_y<startpositionuserPCmenuY+wysotastroki*5) then 
    love.system.openURL("https://patreon.com/m2kdev_djalex");
  end
lg.print(GLinfo,  maxwidth/2, maxheight-wysotastroki*2.6); 
lg.print("M2K engine powered by Lua and Love framework:"..lovever_full, 1, maxheight-wysotastroki*1.6); 
lg.print(system_all_data, 1, maxheight-wysotastroki*1); 
    lg.print("Press [esc] to return",38+guifix,startpositionuserPCmenuY+wysotastroki*12);       
  end

if (renderer<1)and(menu==3) then -- editor SETTINGS (MAP DATA)
lg.setFont(fontVERYBIG);
lprint ("MENU_EDITOR", maxwidth/2, 2);
lg.setFont(fontSMALL);
menu_printed=0;
wysotamenu=standartwysotatextmenu-10*scaling; 
lg.print ("map_ver:"..mapversion.." / system_mapver:"..system_mapversion, 800, downspaceonscreen-rozmiarznak*3);
lg.print ("save_ver:"..saveversion.." / system_savever:"..system_saveversion, 800, downspaceonscreen-rozmiarznak*2);
lg.print ("build used by map:"..map_builded_with_version.."/"..build_numeric, 800, downspaceonscreen-rozmiarznak*5);
h=20;
 for i=2, #editor_settings-1,1 do
if ((selectedoptionmenu+1)==i) then  green () else white () end;
    pagemenuitemkey=editor_settings[i][1]; --это просто номер ключа в таблице
    keyword=editor_settings[i][2]; -- название переменной содержащей картинку загруженную ранее в love.load. 
    name=editor_settings[i][3]; --  человекочитабельное название
    namerus=editor_settings[i][4]; -- название для русского перевода, резерв.
    if (language==2) then name=namerus; end;
    skip=editor_settings[i][6];  -- пропускать пункт если записан "х". переключатель также игнорирует пропускаемые пункты.
     if (language==1) then name=skip; end;
    
        if (pagemenuitemkey~=nil)and(skip~="x") then
               if (selectedoptionmenu>21) then h=20-(selectedoptionmenu-20)*wysotamenu;end
               if (selectedoptionmenu<20) then h=20; end
                  
                  a=_G[keyword];
                  if (a~=nil) then  lg.print(a, 50, h+0+wysotamenu*menu_printed); end; 
                  lg.print(name, 90, h+0+wysotamenu*menu_printed);
                        menu_printed=menu_printed+1;
       end
    end
white ();
if (timerz>800) then timerz=0;end;
end

if (renderer<1)and(menu==16) then -- HELP CENTER
lg.setFont(fontVERYBIG);
lprint ("O_HELP_CENTER", maxwidth/2, 2);
lg.print(""..text,(timerz), 400+math.random(10),0,3,3) --***"...."*** 
lg.setFont(fontSMALL);
menu_printed=0;
wysotamenu=standartwysotatextmenu-10*scaling; 
h=20;
--smgs1="menu="..menu.." selectedoptionmenu="..selectedoptionmenu.." spacepressed="..spacepressed; 
--if (Ukeycode~=nil) then lg.print ("Ukeycode:"..Ukeycode,550, maxheight/3+rozmiarznak*3); end;
-- lg.print ("Some other keys are hardcoded and cannot be changed."..Utext,150, maxheight/3+rozmiarznak*2); 
     
--0!KEYB_U3_2!Бомба!ubombkey
 pomoc_punktow=20; 
 green (); 
lg.rectangle("line",40+rozmiarznak, h,400*scaling, h+0+wysotamenu*pomoc_punktow+40,0,0);

 
 for i=0, pomoc_punktow,1 do
  if (titlegame=="Reskue") then SMSG_CODE="POMOCR"..i.."_"; end; 
  if (titlegame=="M2K") then SMSG_CODE="POMOCM"..i.."_"; end; 
  if (titlegame=="Kolonista") then SMSG_CODE="POMOCCL"..i.."_"; end; 
  if (titlegame=="Perestroika") then SMSG_CODE="POMOCM"..i.."_"; end; 
  -- назначаем присланную кнопку незамедлительно (пока нет проверки что нажал юзер) 
if ((selectedoptionmenu+2)==i) then  if (string.len (text)==1) then _G[keyword]=text; end; text=""; end; 
--if ((selectedoptionmenu+2)==i) then  if (string.len (text)==1) then _G[keyword]=Ukeycode; end; text=""; end; 
if ((selectedoptionmenu+1)==i) then  green ()      else white () end;
     nameitem,textdatacontent=smsg_string (SMSG_CODE);-- smsg_string (objs[iditem+1][13]);
     if (textdatacontent=="POMOCR") then  SMSG_CODE="POMOCR"..i.."_";  nameitem,textdatacontent=smsg_string (SMSG_CODE); end; 
     name=nameitem;                           -- cost=centrum_dostawy_listSC[a][4];
    randomget=math.ceil (math.random(10));        
 if (rsKEYPL1=="p")and randomget>5 then prokrutka=prokrutka-1; end;
 if (rsKEYPL1==";")and randomget>5 then prokrutka=prokrutka+1; end;
 if (ss.ay>0)and(ss.ay<deadzone/3)and randomget>5 and(disablerightstick==0)and (fasttimer==1) then  prokrutka=prokrutka-1; else ss.y=ss.ay; end
 if (ss.ay<0)and(ss.ay>-deadzone/3)and randomget>5 and(disablerightstick==0)and (fasttimer==1) then  prokrutka=prokrutka+1; else ss.y=ss.ay; end
 if (prokrutka>100) then prokrutka=100; end; 
 if (prokrutka<-1000) then prokrutka=-1500; end; 
 msgbox (prokrutka.."cam"..camerakey,0,0,0,0);
                             if ((selectedoptionmenu+1)==i) then green (); 
                              --if (i>1)and (nameitem~=nil)  then  msgbox(nameitem.."",(maxwidth/2)-4*rozmiarznak , 40+0*rozmiarznak,wysotamenu); end
                              if (i>1) and (nameitem~=nil) then  msgbox(textdatacontent,(maxwidth/2)-6*rozmiarznak , 80+prokrutka,0); end
                              -- Это и есть ВЫВОД ОПИСАНИЯ ПРЕДМЕТА многострочным окошком в экране покупки заказ товара кораблём.
                              else white () end;

    pagemenuitemkey=i; --это просто номер ключа в таблице
           if (pagemenuitemkey~=nil)then
              -- if (selectedoptionmenu>21) then h=20-(selectedoptionmenu-20)*wysotamenu;end
              -- if (selectedoptionmenu<20) then h=20; end
                  --a=_G[keyword];
                --      if (a~=nil) then  lg.print(a, 50, h+0+wysotamenu*menu_printed); end; 
                  lg.print(name, 50+rozmiarznak, h+0+wysotamenu*menu_printed);
                        menu_printed=menu_printed+1;
       end
    end
white ();
if (timerz>800) then timerz=0;end;
end

if (cycle==nil) then cycle=maxheight/3; end
if (cycle<-maxheight) then cycle=maxheight; end; 
cycle= cycle-12; 
if (renderer<1)and(menu==98) then -- BUGGED PC   ZŁAMANY PECET
lg.setFont(fontVERYBIG);
lg.setFont(fontSMALL);
menu_printed=0;
green ();

for i=0, 10,1 do
   SMSG_CODE="POMOCR"..i.."_";
  -- назначаем присланную кнопку незамедлительно (пока нет проверки что нажал юзер) 
if ((selectedoptionmenu+2)>i-1) then 
 if (string.len (text)==1) then _G[keyword]=text; end; text=""; end; 
     nameitem,textdatacontent=smsg_string (SMSG_CODE);-- smsg_string (objs[iditem+1][13]);
     name=nameitem;
     rx=1+math.ceil (math.random(15));     ry=1;--+math.ceil (math.random(1));
          if ((selectedoptionmenu+1)==i) then green (); 
       if (i>1) and (nameitem~=nil) then 
        for a=0,12,1 do 
          msgbox(textdatacontent,a+rx+(maxwidth/2)-7*rozmiarznak ,cycle,0);
        end
        for a=0,10,1 do 
          msgbox(textdatacontent,a+rx+(maxwidth/2)-7*rozmiarznak ,maxheight/3*2+cycle,0);
        end
         end
        else white () end;
    pagemenuitemkey=i; --это просто номер ключа в таблице
    end
end



if (renderer<1)and(menu==21) then -- JOYSTICKS INFO
lg.setFont(fontVERYBIG);
lprint ("ustawenia3", maxwidth/2, 2);
lg.print(""..text,(timerz), 400+math.random(10),0,3,3) --***"...."*** 
lg.setFont(fontSMALL);
menu_printed=0;
wysotamenu=standartwysotatextmenu-10*scaling; 

help_player_data_print () ; 

   if (ossys~="Android")and(joysticks~=nil) then 
    if (#joysticks>0)  then --if (1==0) then  lg.draw(, maxwidth/2+3*rozmiarznak, maxheight/2-1*rozmiarznak,0,scaling,scaling);   end; 
    lg.setFont(fontVERYSMALL);
    gray () ; 
    lg.print("1:"..joystickPL1name,(maxwidth/2)-0.5*rozmiarznak, maxheight/2+4*rozmiarznak,math.rad (270),scaling-0.2,scaling-0.2);
    lg.print("2:"..joystickPL2name,(maxwidth/2)-0*rozmiarznak, maxheight/2+4*rozmiarznak,math.rad (270),scaling-0.2,scaling-0.2);
    lg.print("3:"..joystickPL3name,(maxwidth/2)+0.5*rozmiarznak, maxheight/2+4*rozmiarznak,math.rad (270),scaling-0.2,scaling-0.2);
    white ();
      end; end;
if (pl1image_kopia~="") then 
   lg.draw (pl1image_kopia, maxwidth-3*rozmiarznak-2*rozmiarznak*ObjectSIZE,0*rozmiarznak,0,scalingmenu/3,scalingmenu/3);
 end
     if (pl2image~="") then 
      lg.draw (pl2image, maxwidth-3*rozmiarznak-2*rozmiarznak*ObjectSIZE,2*rozmiarznak,0,scalingmenu/3,scalingmenu/3);
     end
    if (pl3image~="") then 
      lg.draw (pl3image,  maxwidth-3*rozmiarznak-2*rozmiarznak*ObjectSIZE,4*rozmiarznak,0,scalingmenu/3,scalingmenu/3);
     end
     red ()
    lg.print ("1", maxwidth-3*rozmiarznak-2*rozmiarznak*ObjectSIZE,0*rozmiarznak,0,scalingmenu,scalingmenu);
    lg.print ("2", maxwidth-3*rozmiarznak-2*rozmiarznak*ObjectSIZE,2*rozmiarznak,0,scalingmenu,scalingmenu);
    lg.print ("3", maxwidth-3*rozmiarznak-2*rozmiarznak*ObjectSIZE,4*rozmiarznak,0,scalingmenu,scalingmenu);
    white (); 

    lg.print ("Joystick PL1 remapping to PL2:"..emulatedjoystick1as2, 2*rozmiarznak*ObjectSIZE,maxheight-5*rozmiarznak,0,scalingmenu,scalingmenu);
    lg.print (smsg4, 2*rozmiarznak*ObjectSIZE,maxheight-4*rozmiarznak,0,scalingmenu,scalingmenu);
end

if (renderer<1)and(menu==20) then -- REDEFINE KEYS PC ONLY
lg.setFont(fontVERYBIG);
lprint ("REDEFINE_KEYS", maxwidth/2, 2);
lg.print(""..text,(timerz), 400+math.random(10),0,3,3) --***"...."*** 
lg.setFont(fontSMALL);
menu_printed=0;
wysotamenu=standartwysotatextmenu-10*scaling; 
h=20;
--smgs1="menu="..menu.." selectedoptionmenu="..selectedoptionmenu.." spacepressed="..spacepressed; 
--if (Ukeycode~=nil) then lg.print ("Ukeycode:"..Ukeycode,550, maxheight/3+rozmiarznak*3); end;
-- lg.print ("Some other keys are hardcoded and cannot be changed."..Utext,150, maxheight/3+rozmiarznak*6); 

--0!KEYB_U3_2!Бомба!ubombkey
 keyboardmenu_maximum_keys=21; 
 for i=1, keyboardmenu_maximum_keys+1,1 do
  SMSG_CODE="KEYB_U"..i.."_";
  -- назначаем присланную кнопку незамедлительно (пока нет проверки что нажал юзер) 
if ((selectedoptionmenu+2)==i) then  if (string.len (text)==1) then _G[keyword]=text; end; text=""; end; 
if ((selectedoptionmenu+2)==i) then  if (string.len (text)==1) then _G[keyword]=Ukeycode; end; text=""; end; 
if ((selectedoptionmenu+1)==i) then  green () 
     else white () end;
    name,keyword=smsg_string (SMSG_CODE);
    pagemenuitemkey=i; --это просто номер ключа в таблице
           if (pagemenuitemkey~=nil)then
              -- if (selectedoptionmenu>21) then h=20-(selectedoptionmenu-20)*wysotamenu;end
              -- if (selectedoptionmenu<20) then h=20; end
                  a=_G[keyword];
                  if (a~=nil) then  lg.print(a, 50, h+0+wysotamenu*menu_printed); end; 
                  if (i<keyboardmenu_maximum_keys+1) then lg.print(name, 90+rozmiarznak, h+0+wysotamenu*menu_printed);end; 
                        menu_printed=menu_printed+1;
       end
    end
white ();
if (timerz>800) then timerz=0;end;
end

if (menu==4) then
lg.setFont(fontVERYBIG);
yellow ()  ;  
lprint("MENU_USER_PAUSE", maxwidth/2, 40); --"menu_user.ini"
if (otladka==1) then lg.print ("smsg1:"..smsg1, maxwidth/4, maxheight-rozmiarznak); end
lg.setFont(font);
menu_printed=0;

wysotamenu=standartwysotatextmenu; 
h=80;
 for i=2, #menu_user-1,1 do
if ((selectedoptionmenu+1)==i) then  green () else yellow () end;
    pagemenuitemkey=menu_user[i][1]; --это просто номер ключа в таблице
    keyword=menu_user[i][2]; -- название переменной содержащей картинку загруженную ранее в love.load. 
     name=smsg_string (menu_user[i][3]);  --  человекочитабельное название
    keypressmenu_glowna=menu_user[i][5]; -- эмуляция нажатия кнопки через файл описания
    skip=menu_user[i][6];  -- пропускать пункт если записан "х". переключатель также игнорирует пропускаемые пункты.
     --if (language==1) then name=skip; end;
    if (pagemenuitemkey~=nil)and(skip~="x") then
                   lg.print(name, 140, h+15+wysotamenu*menu_printed);
                        menu_printed=menu_printed+1;
       end
    end
white ();
if (timerz>800) then timerz=0;end;
end

    function controlcentercreate (sklepID)
  
        controlcenteritems={};
        kontrolny_centrum_SC_CC={};
        counttablekontrolny_centrum_SC_CC=0; 
          line="128!0!"..smsg_string ("SH_EXIT").."!0!0";           table.insert (kontrolny_centrum_SC_CC,line:split("!") );
           line="0!0!"..smsg_string ("SH_ORDER").."!0!0";           table.insert (kontrolny_centrum_SC_CC,line:split("!") );
           line="0!0!"..smsg_string ("SH_ORDER").."!0!0";           table.insert (kontrolny_centrum_SC_CC,line:split("!") );

            for sa=0,#sklepy-1,1 do 
              iditem=ext_param (sklepy,sa,1,"number");
              smsg_from_obj=ext_objs_string (iditem,13);-- textdatacontent,nameitem=smsg_string (objs[iditem+1][13])
              if (smsg_from_obj==nil) then smsg_from_obj="0"; end;
              act=ext_param (sklepy,sa,3,"string");
              cena=ext_param (sklepy,sa,4,"number");
              znizka=ext_param (sklepy,sa,5,"number");
              sklepnazwa=ext_param (sklepy,sa,6,"string");
              iloscitemow=ext_param (sklepy,sa,7,"number");
              typeCC=ext_param (sklepy,sa,8,"string");
              no_hardlevel=ext_param (sklepy,sa,9,"string");
              reqGAME=ext_param (sklepy,sa,10,"string");

             if (sklepnazwa==sklepID)and(iditem~=nil) then 
                counttablekontrolny_centrum_SC_CC=counttablekontrolny_centrum_SC_CC+1;
                line=iditem.."!"..smsg_from_obj.."!"..act.."!"..cena.."!"..znizka.."!"..sklepnazwa.."!"..iloscitemow.."!"..typeCC.."!"..no_hardlevel.."!"..reqGAME;
                --if (sa==2) then smsg1=line;  error (smsg1);end;  
                table.insert (kontrolny_centrum_SC_CC,line:split("!") );
                end
            end
            -- end of shipping list generating  (using objects.ini)
            return kontrolny_centrum_SC_CC; 
      end


--  Меню control center
if (menu==15) then
  
  kontrolny_centrum_SC_CC=controlcentercreate (sklepID); -- centrum towarów handlowych na poziome 
  lg.setCanvas() ;
lg.setFont(fontBIG);
  menu_printed=0;
wysotamenu=standartwysotatextmenu; -- для увеличения количества отображаемых обьектов
h=-15;
lprint(sklepID,(maxwidth/2)+ rozmiarznak, 40);
lg.print ("Score:"..score, 800, downspaceonscreen-rozmiarznak);
lg.print ("Smsg1:"..smsg1, 800, downspaceonscreen-rozmiarznak*2);
   if (kontrolny_centrum_SC_CC~=nil) then 
          if (SHIPCANVAS==nil) then SHIPCANVAS= lg.newCanvas(rozmiarznak*25, rozmiarznak*#centrum_dostawy_listSC,{} );  end; 
                  if (1==1) then
                          IMAGESSHIPINV = {};
                          shipmenu_changed=0; 
                          object_to_rendering=0;
                          lg.setCanvas(SHIPCANVAS); --почему ломает?  fuck 
                          lg.clear (); 
                          for a=1,#kontrolny_centrum_SC_CC-1,1 do
                            if (ossys=="Android") then selectedoptionmenu=0; end; -- исправление ошибки на Android там откуда то string (!) берется. 
                           if (selectedoptionmenu>21) then h=-15-(selectedoptionmenu-20)*wysotamenu;end
                           if (selectedoptionmenu<20) then h=-15; end

                            iditem=ext_param (kontrolny_centrum_SC_CC,a,1,"number");
                            smsg_code=ext_param (kontrolny_centrum_SC_CC,a,2,"string");-- textdatacontent,nameitem=smsg_string (objs[iditem+1][13])
                            act=ext_param (kontrolny_centrum_SC_CC,a,3,"string");
                            cena=ext_param (kontrolny_centrum_SC_CC,a,4,"number");
                            znizka=ext_param (kontrolny_centrum_SC_CC,a,5,"number");
                            sklepnazwa=ext_param (kontrolny_centrum_SC_CC,a,6,"string");
                            iloscitemow=ext_param (kontrolny_centrum_SC_CC,a,7,"number");
                            typeCC=ext_param (kontrolny_centrum_SC_CC,a,8,"string");
                            no_hardlevel=ext_param (kontrolny_centrum_SC_CC,a,9,"string");
                            reqGAME=ext_param (kontrolny_centrum_SC_CC,a,10,"string");

                            --iditem=kontrolny_centrum_SC_CC[a][1]; почему это рабботает  а то нет? ) 
                            slottype=objs[iditem+1][23];
                            textdatacontent,nameitem=smsg_string (smsg_code);
                            cost=cena; 
                            if ((selectedoptionmenu+1)==a) then  green ();
                              if (a>2) then  msgbox(nameitem.."["..cost.."]",(maxwidth/2)-4*rozmiarznak , 40+1*rozmiarznak,wysotamenu); end
                              if (a>2)and(act~="") then  msgbox(smsg_string ("ACT").. act.." "..iloscitemow,(maxwidth/2)-4*rozmiarznak , 40+1.5*rozmiarznak,wysotamenu); end
                              if (a>2)and(slottype~="") then  msgbox(smsg_string ("REQ")..slottype,(maxwidth/2)-4*rozmiarznak , 40+2*rozmiarznak,wysotamenu); end
                              if (a>2) then  msgbox(textdatacontent,(maxwidth/2)-4*rozmiarznak , 40+4*rozmiarznak,wysotamenu); end
                              -- Это и есть ВЫВОД ОПИСАНИЯ ПРЕДМЕТА многострочным окошком в экране покупки заказ товара кораблём.
                              else white () end;
                             id=kontrolny_centrum_SC_CC[a][1]; --это просто номер ключа в таблице
                            
                            imgf2 =  objs[iditem+1][3]; -- просто берет название файла.
                            
                            lg.setFont(fontVERYSMALL);
                          inventoryvisualcode=iditem;        --keypressmenu_glowna=menu_user[i][5]; -- эмуляция нажатия кнопки через файл описания
                          if (inventoryvisualcode==nil) then inventoryvisualcode=0; end; 
                           postobjectX=0*rozmiarznak; -- это координаты внутри Canvas, про внешние коррдинаты ЗАБЫВАЕМ! 
                           postobjectY=wysotamenu*object_to_rendering+h;
                              IMAGESSHIPINV[object_to_rendering]=IMAGES[inventoryvisualcode + 1];
                              OBJECTPRINTNOW_SHIPINV=IMAGESSHIPINV[object_to_rendering];
                          if (OBJECTPRINTNOW_SHIPINV~=nil) then 
                            if (nameitem==nil) then nameitem="NILLLLLLLLLLLLLLLLLLLLLLLLLL"; end;
                       if (a>2) then lg.print(""..nameitem.." ["..cost.."]".." ["..act.."]",20+ 3*rozmiarznak, postobjectY);end;
                        if (a==2) then lprint ("SH_ORDER", 20+3*rozmiarznak,postobjectY);end;
                        if (a==1) then lprint ("SH_EXIT", 20+3*rozmiarznak,postobjectY);end;
                        --вывод графики отображения продуктов в меню, выводится всё имеющее цену, других ограничений пока нет
                         lg.draw(ATLAS,OBJECTPRINTNOW_SHIPINV,120, postobjectY,0,scaling,scaling);
                           if ((selectedoptionmenu+1==a)) then white () ;
                          lg.draw(ATLAS,OBJECTPRINTNOW_SHIPINV, (maxwidth/2)-2*rozmiarznak,15,0,scaling+0.3,scaling+0.3);   
                            end   
                          object_to_rendering=object_to_rendering+1;
                           if (i>2) then lg.print(textdata,0, maxheight-rozmiarznak,wysotastroki); end; 
                          end;
                            end
                          end
                    lg.setCanvas() -- эта строчка возвращает рендерер в игровое поле. обязательная.
                    if (SHIPCANVAS~=nil) then  lg.draw(SHIPCANVAS,0,0); end;  -- canvas if (countinventory>2) then
                     --if (otladka==1) then SHIPCANVAS:newImageData():encode('png', "ship"..countinventory..".png");  end; 
end
-- тут заканчивается отрисовка блока инвентаря корабля + выбранного предмета
white ();

end

--  Меню Shipping menu center
if (menu==5) then
lg.setFont(fontBIG);

lprint("MENU_SHIP",(maxwidth/2)+ rozmiarznak, 40);
if (countinventory_i>0) then lg.print ("Order:"..(countinventory_i+1).." of 20 items.", 800, downspaceonscreen); end; 
lg.print ("Score:"..score, 800, downspaceonscreen-rozmiarznak);
lg.print ("Smsg1:"..smsg1, 800, downspaceonscreen-2*rozmiarznak);
lg.setFont(fontBIG);
menu_printed=0;
lg.setFont(fontVERYSMALL);
wysotamenu=standartwysotatextmenu; -- для увеличения количества отображаемых обьектов
h=-15;-- тут может что то полететь на андроиде если я 0 поставлю.
 --я отрисовка блока инвентаря корабля + выбранного предмета  yobit  образец для копирования кода инвентаря.
if (1==1) then 
          if (SHIPCANVAS==nil) then SHIPCANVAS= lg.newCanvas(rozmiarznak*25, rozmiarznak*#centrum_dostawy_listSC,{} );  end; 
                  if (1==1) then
                          IMAGESSHIPINV = {};
                          shipmenu_changed=0; 
                          object_to_rendering=0;
                          lg.setCanvas(SHIPCANVAS); --почему ломает?  fuck 
                          lg.clear (); 
                          for a=1,#centrum_dostawy_listSC,1 do
                            if (ossys=="Android") then selectedoptionmenu=0; end; -- исправление ошибки на Android там откуда то string (!) берется. 
                           if (selectedoptionmenu>21) then h=-15-(selectedoptionmenu-20)*wysotamenu;end
                           if (selectedoptionmenu<20) then h=-15; end
                            iditem=centrum_dostawy_listSC[a][2];
                            slottype=objs[iditem+1][23];
                            textdatacontent,nameitem=smsg_string (objs[iditem+1][13]);
                            cost=centrum_dostawy_listSC[a][4]; 
                            if ((selectedoptionmenu+1)==a) then  green ();
                              if (a>2) then  msgbox(nameitem.."["..cost.."]",(maxwidth/2)-4*rozmiarznak , 40+1*rozmiarznak,wysotamenu); end
                              if (a>2)and(slottype~="") then  msgbox(slottype,(maxwidth/2)-4*rozmiarznak , 40+2*rozmiarznak,wysotamenu); end
                              if (a>2) then  msgbox(textdatacontent,(maxwidth/2)-4*rozmiarznak , 40+4*rozmiarznak,wysotamenu); end
                              -- Это и есть ВЫВОД ОПИСАНИЯ ПРЕДМЕТА многострочным окошком в экране покупки заказ товара кораблём.
                              else white () end;
                             id=centrum_dostawy_listSC[a][1]; --это просто номер ключа в таблице
                            
                            imgf2 =  objs[iditem+1][3]; -- просто берет название файла.
                            
                            lg.setFont(fontVERYSMALL);
                          inventoryvisualcode=iditem;        --keypressmenu_glowna=menu_user[i][5]; -- эмуляция нажатия кнопки через файл описания
                          if (inventoryvisualcode==nil) then inventoryvisualcode=0; end; 
                           postobjectX=0*rozmiarznak; -- это координаты внутри Canvas, про внешние коррдинаты ЗАБЫВАЕМ! 
                           postobjectY=wysotamenu*object_to_rendering+h;
                              IMAGESSHIPINV[object_to_rendering]=IMAGES[inventoryvisualcode + 1];
                              OBJECTPRINTNOW_SHIPINV=IMAGESSHIPINV[object_to_rendering];
                          if (OBJECTPRINTNOW_SHIPINV~=nil) then 
                            if (nameitem==nil) then nameitem="NILLLLLLLLLLLLLLLLLLLLLLLLLL"; end;
                       if (a>2) then lg.print(""..nameitem.." ["..cost.."]",20+ 3*rozmiarznak, postobjectY);end;
                        if (a==2) then lprint ("SH_ORDER", 20+3*rozmiarznak,postobjectY);end;
                        if (a==1) then lprint ("SH_EXIT", 20+3*rozmiarznak,postobjectY);end;
                        --вывод графики отображения продуктов в меню, выводится всё имеющее цену, других ограничений пока нет
                         lg.draw(ATLAS,OBJECTPRINTNOW_SHIPINV,120, postobjectY,0,scaling,scaling);
                           if ((selectedoptionmenu+1==a)) then white () ;
                          lg.draw(ATLAS,OBJECTPRINTNOW_SHIPINV, (maxwidth/2)-2*rozmiarznak,15,0,scaling+0.3,scaling+0.3);   
                            end   
                          object_to_rendering=object_to_rendering+1;
                           if (i>2) then lg.print(textdata,0, maxheight-rozmiarznak,wysotastroki); end; 
                          end;
                            end
                          end
                    lg.setCanvas() -- эта строчка возвращает рендерер в игровое поле. обязательная.
                    if (SHIPCANVAS~=nil) then  lg.draw(SHIPCANVAS,0,0); end;  -- canvas if (countinventory>2) then
                     --if (otladka==1) then SHIPCANVAS:newImageData():encode('png', "ship"..countinventory..".png");  end; 
end
-- тут заканчивается отрисовка блока инвентаря корабля + выбранного предмета
white ();
if (timerz>800) then timerz=0;end;

end

 

-- тут начинается отрисовка блока shipping inventory (предметный) для СС не нужен, но для сундука - нужен. 
if (menu==5)and(editor==0) then 
  allowmove=0;
          if (INVENTORYWINDOWCANVAS_I==nil) then INVENTORYWINDOWCANVAS_I= lg.newCanvas(rozmiarznak*10, rozmiarznak*10,{} );  end; 
                  if (1==1) then
                          IMAGESINV_I = {};
                          inventory_ship_changed=0;
                          object_to_rendering=0;
                          lg.setCanvas(INVENTORYWINDOWCANVAS_I); --почему ломает?  fuck 
                          lg.clear (); 
                          for a=1,countinventory_i+1,1 do
                          inventoryvisualcode=itemshippinglist[a];
                          if (inventoryvisualcode==nil) then inventoryvisualcode=0; end; 
                                local px = a % 7
                                local py = math.floor(a / 7)+4; 
                           postobjectX=(px-1)*rozmiarznak; -- это координаты внутри Canvas, про внешние коррдинаты ЗАБЫВАЕМ! 
                           postobjectY=py*rozmiarznak;
                              IMAGESINV_I[object_to_rendering]=IMAGES[inventoryvisualcode + 1];
                              OBJECTPRINTNOW_IMAGESINV_I=IMAGESINV_I[object_to_rendering];
                          if (OBJECTPRINTNOW_IMAGESINV_I~=nil) then 
                          lg.draw(ATLAS,OBJECTPRINTNOW_IMAGESINV_I,postobjectX, postobjectY,0,scaling,scaling);
                          object_to_rendering=object_to_rendering+1;
                          end;
                            end
                          end
                    lg.setCanvas() -- эта строчка возвращает рендерер в игровое поле. обязательная.
                    lg.draw(INVENTORYWINDOWCANVAS_I,maxwidth-rozmiarznak*8,rozmiarznak*5) ;  -- canvas test  e
end

-- тут заканчивается отрисовка блока shipping inventory
-- Save game menu 

if (menu==6) then
lg.setFont(fontVERYBIG);

lprint("SAVEMENU", maxwidth/2, 40);
lg.setFont(fontSMALL);
lg.setFont(font);
menu_printed=-1;

wysotamenu=standartwysotatextmenu; 
h=80;
 for i=1, #zapisy_SAVES,1 do
if ((selectedoptionmenu+1)==i) then  green () else white () end;
    id=zapisy_SAVES[i][1]; --это просто номер ключа в таблице
    savegamename=zapisy_SAVES[i][2];
      savetest=zapisy_SAVES[i][4];
      --if(savetest~="-1")and(savetest~="0")and(savetest~="1") then savetest=1; end; --  фиксим баг 5963 с UTF-8  , значит sourceread ПРОИГНОРИРОВАЛ map_flag 2 и прислал файл вместо 1
       if (id~=nil) then --id"..id.."["..iditem.." ] 
              if (i>2) then lg.print(""..savegamename.." "..savetest, 170, h+15+wysotamenu*menu_printed);end;
              if (i==2) then lg.print(""..savegamename.." "..savetest, 170, h+15+wysotamenu*menu_printed);end;
              menu_printed=menu_printed+1;
       end
    end


white ();
if (timerz>800) then timerz=0;end;

end


-- load game menu 
function getrealpath_directIO()
   if (ossys~="Android") then p = love.filesystem.getSourceBaseDirectory() ; end;
   if (ossys=="Android") then p = love.filesystem.getSaveDirectory() ;end
    if (ossys=="Windows")then  filename=p..'\\saves\\'; end
    if (ossys=="Linux") then filename=p..'/saves/'; end
    if (ossys=="Mac") then  filename=p..'/saves/'; end
    return filename
end

local function loadImageFromPath( filePath )
    local f = io.open( filePath, "rb" )
    if f then
        local data = f:read( "*all" )
        f:close()
        if data then
            data = love.filesystem.newFileData( data, "tempname" )
            data = love.image.newImageData( data )
            local image = love.graphics.newImage( data )
            return image
        end
    end
end

function loading_canvas (imagename)
  if (LCANVAS==nil) then LCANVAS = lg.newCanvas(4096, 4096,{} );  end; 
  lg.setCanvas(LCANVAS);
  lg.clear (); 
 saveimage=loadImageFromPath (imagename); 
if (saveimage~=nil) then  lg.draw(saveimage, 0, 0); end; 
 lg.setCanvas(); 
 if (saveimage==true) then  return true ; end; 
 end 

if (menu==7) then
lg.setFont(fontVERYBIG);

lprint("LOADMENU", maxwidth/2, 40);
lg.setFont(fontSMALL);
lg.print ("Score:"..score, maxwidth-400, downspaceonscreen);
lg.print ("Smsg1:"..smsg1, 500, downspaceonscreen);
lg.setFont(font);
menu_printed=-1;

wysotamenu=standartwysotatextmenu; 
h=80;
 for i=1, #zapisy_SAVES,1 do
        
    id=zapisy_SAVES[i][1]; --это просто номер ключа в таблице
    savegamename=zapisy_SAVES[i][2];
    savetest=zapisy_SAVES[i][4];
    if ((selectedoptionmenu+1)==i) then  
              green ();
             if (imagetest~=1)and(i>2)and(savetest~="0")and(ossys~="Android")and ((selectedoptionmenu)~=14) then --последнее условие убирает вылет
              imagename=getrealpath_directIO ()..savegamename..".png";
              white () ; loading_canvas (imagename); 

             if (saveimage~=nil) then  smsg1="exist "..memory_texture; end;
                imagetest=1; 
             end
        else white () end;
     if (id~=nil) then --id"..id.."["..iditem.." ] 
              if (i>3) then lg.print(savegamename.." "..savetest, 170, h+15+wysotamenu*menu_printed);end;
              if (i==3) then lg.print("Load quicksave ", 170, h+15+wysotamenu*menu_printed);end;
              if (i==2) then lg.print("Exit to main menu [Esc] ", 170, h+15+wysotamenu*menu_printed);end;
              menu_printed=menu_printed+1;
       end
       if (imagetest==1) then white ();  lg.draw(LCANVAS, maxwidth/2-2*rozmiarznak, maxheight/4-4*rozmiarznak,0,scaling,scaling);  end;  --and(saveimage==true)

    end


white ();
if (timerz>800) then timerz=0;end;

end

lg.setFont(font);
-- =================Печать обьектов из старой кодировки уровней!====================
if (drawonceZZOLDLEVEL==0) then   -- fuckfuckfuck   просто тупо всегда игнорируется 1!!!! ему насрать на пост обьектов.
  if (typelevel=="ZX") then 
    printat (23,31,166);   -- метка докуда работать scanobject по умолчанию.
    end; 
  drawonceZZOLDLEVEL=1;
end
--===========================Печать обьектов из новой кодировки уровней, но только раз===========
-- Функция выполняющаяся 1 раз после загрузки уровня любого типа.    firstload real 
if (drawonce==0) then   -- fuck для 166 похоже выполняется вообще не каждый раз и вообще только после первой загрузки 
  -- (smsg1~=""..titlegame.." b"..build) сама эта надпись - флаг недавней загрузки =))
  if (levelnumber>1) then smsg1="Welcome to level "..levelnumber;  end --Score:"..score; end; 
  flagchecknewteleportersenemy=1;
   greenshittotal=scanobject (21,-2);
    savedscientists=scanobject (33,-2);
    frozenscientists=scanobject (34,-2);
        savedfuel=scanobject (42,-2);
  --smsg1="drawonce completed";    
  if (titlegame~="Kolonista") then skan_y_max,skan_x_max=scanobject (166,-1) ;end;  --object "166"   вот это вот нихера не выполняется  никогда 
    --7 левый штё  9 верхний штырёк.6 prawyj  8 niżnij 
    -- обработка штырьков с помощью scanobject который ищет обьект на карте и возвращает координаты.
    -- можно добавить по всей карте, только по вертикали и только по горизонтали. 
        if (hardlevel==1) then  --если танк задан в настройках уровня - поставить его. 
                if (zx>0)and(zy>0) then 
                    enemytank=1; hptank=3000;
                    hpt_new=3000; addpain=700;   
                    xt=zx; yt=zy; typeobject="wtank"; 
                    if (xt>0)and(yt>0) then 
                    enemies[totalenemies+1] = class_enemy:new(typeobject,xt,yt,hpt_new,0,0,0,0,0,addspeed,10+addprotect,0,0,0,0,0,0,addfear,0,addslowdown,0,0,addkulemet,0,0,addinvis,addpain,addaura,0,0,0,0); 
                    totalenemies=totalenemies+1; 
                 end
                    --xpla2=gamex(zx); ypla2=gamey(zy);   Обычно этот параметр уже передан через загрузку
                    --но если нйдется через scanobject то перезаписать полученные кординаты новымиы
                    --главное после получения координат обьекты 17 и 18 должны быть УНИЧТОЖЕНЫ на 56.
                end
        end
      shippingzone_y,shippingzone_x=scanobject (29,-5,1);
      if (shippingzone_y>0) then  -- тут у нас отрабатывается составление списка ценных обьектов из которых будет формироваться меню Shipping center
      end

    drawonce=1;
end

  
-- Зелёное дерьмо (Зёленая слизь, кислота и т.п.) 
chancesg=30;--math.ceil( math.random (100));
if (ossys=="Android") then chancesg=50; end;
if (timerz>1)and(editor==0)and(pause==0)and(menu<1)then 
  greenshitactivity=greenshitactivity+0.25;
  if (greenshithastetime>30) then greenshithastetime=30; end; 
  if (greenshitactivity>20) then greenshitactivity=50;end
  if (greenshitdelay>0) then greenshitdelay=greenshitdelay-1;end;
 greenshittotal=scanobject (21,-2); --smsg1="Greenshit.."..greenshittotal;
 watertotal=scanobject (183,-2); --water total on map
 sorniaktotal=scanobject (204,-2); --
 krysztalowtotal=scanobject (197,-2); --
 bouldertotal=scanobject (196,-2); 
 gravitytotal=krysztalowtotal+bouldertotal; -- нужно чтобы эта переменная содержала все списки Gravity кроме 197 196 
  if (greenshitdelay<2)and(greenshittotal>1)and(math.random(256)>220)and(typelevel~="ZX") then skanx,skany=scanobject (21,-3)  ; 
      for a=0,0+greenshithastetime,1 do  
       if (skanx<1) then  skanx,skany=scanobject (21,-3)  ; end; 
       end
       greenshit (skany,skanx,21);
 end

 if (watertotal>1)and(math.random(256)>210)and(typelevel~="ZX") then 
      xxx=math.ceil(math.random (6));
      skanx,skany=scanobject (183+xxx,-3)  ;  --183--189 for water
      for a=0,4+greenshithastetime,1 do  
       if (skanx<1) then  skanx,skany=scanobject (183+xxx,-3)  ; end; 
       end
        greenwater (skany,skanx,183);        -- if (xxx<1) then greenwater (skany,skanx,184); end
 end

if (gravitytotal>1)and(math.random(256)>190)and(typelevel~="ZX") then 
       for g=krysztalowtotal,0,-1 do  
       skanx,skany=scanobject (197,-5,g)  ; 
       if (skanx~=nil) then  sn=gravity_exec (skanx,skany,197);  
        if (sn==1) then love.audio.play(krysztalsnd) ;end;
        end; 
       end
      for g=bouldertotal,0,-1 do  
       skanx,skany=scanobject (196,-5,g)  ; 
       if (skanx~=nil) then  sn=gravity_exec (skanx,skany,196); 
       if (sn==1) then love.audio.play(bouldersnd) ;end;
       end; 

       end
      end
if (sorniaktotal>1)and(math.random(256)>190)and(typelevel~="ZX") then 
       skanx,skany=scanobject (204,-3)  ;  --183--189 for water
      for a=0,4+greenshithastetime,1 do  
       if (skanx<1) then  skanx,skany=scanobject (204,-3)  ; end; 
       end
        greenwater (skany,skanx,200,204); 
      end

 if (dasglukenfild>0)and(editor==0)and(pause==0)and(menu<1) then 
  if (greenshitdelay>0) then greenshitdelay=greenshitdelay-1;end;

  if (greenshitdelay<2) then skanx,skany=scanobject (76,-3)  ; 
   greenshit (skany,skanx,76);
 end
end
-- Мухоморы
if (timerz>1)and(editor==0)and(pause==0)and(menu<1) then 
 -- тут устанавливается скорость роста мухоморов.
  if(math.random(256)>220)and(typelevel~="ZX")and(typelevel~="Reskue") then 
    for m_a=0,0,1 do  skanx,skany=scanobject (79+(math.ceil(math.random(3))),-3); 
           mushroomupd (skany,skanx); end 
   for m_a=0,0,1 do  skanx,skany=scanobject (199+(math.ceil(math.random(4))),-3); 
           mushroomupd (skany,skanx); end 
 end
--cycle 1 end
--процедура поиска обьекта для телепортации. не известно по каким принципам организовывать.
 
 --есть подозрение что в коде телепортации вообще не учтен screenfix и что она не использует  xgametorealpositionbezbyte
-- checks panels and droids end. 
end
end

-- в играх типа rescue карта может состоять из нескольких полей между которыми можно переходить
-- тут находятся периодические проверки всего поля игры.-- rescan
        if (latarnia==1)and(math.random(256)>230)and (solarpower>5) then solarpower=solarpower-1 ;
          if (solarpower<5) then latarnia=0 ; smsg1=smsg_string "O_LATARNIA_NO_PWR"; end;  
        end; 

  if (powerstate==1)and(allowpowerrescan==1)and(editor<1)or(nowait==1) then 
    p2,p1=scanobject (9,-3) ; -- сканируем верхний штырёк
    p4,p3=scanobject (7,-3) ; -- сканируем левый штырёк. 
    for ap=1,2,1 do 
      if (p1<1) then 
    p2,p1=scanobject (9,-3) ; -- сканируем верхний штырёк   повторно
   
    end
    if (p3<1) then 
     p4,p3=scanobject (7,-3) ; -- сканируем левый штырёк. повторно. т.к. у нас нет функции запросить следующий.
   
    end
    end
    if (p1>0) then p1=p1+1; end;
    if (p3>0) then p3=p3+1; end;
    -- allowpowerrescan=0   ltkf  делать оказалось необязательно. 
        p1x2=0;p4x2=0; -- пересчитает.
    nowait=0;
   end

if (powerstate==0)and(timerz==2)and(editor<1) then
       powerclean ();
end

if ((powerstate==1)and(editor<1)) then
       if (p1>0) then
            -- з1з2 если штырьки заданы то включение только тех которые заданы.
          -- p1 - координата верхнего штырька по вертикали   p1x2  - вычисляемая координата нижнего штырька,только 1 раз. 
          -- p2 координата обоих штырьков по горизонтали.
          -- в случае возможности добавления многочисленных штырьков должен быть массив с такими же тремя переменными для каждой инстанции.
          -- p1,p2 - 9 werh,  p1x2,p2 - 8 niz,     p3,p4 - lewo  7  p3,p4x2 - prawo. 6
          -- при уничтожении штырька должна запускатся перепроверка линии электропередачи, чистка и её перезадача
         -- enxris=27 ;
          a,enxris=scanobject(8,-4,p2);  -- ищет нижний штырёк в указанной вертикали (ось Y)
          enxris=enxris-1;
           
          for aa=p1,enxris,1 do 
            zzz=screens (aa,p2); --текущая перепроверяемая координата
            zzzpower=(zzz);
            p1p2=(screens (p1-1,p2));--начальная координата штырька.
            if (p1p2~=9) then if (p1p2~=56)and(p1p2~=27)then allowpowerrescan=1; p1x2=0; aa=p1; break; end; end;
            if (zzzpower~=8)and(p1p2==9) then 
                       if (zzzpower~=45) then playsound=1; end; 
                        printat (aa,p2,45);
                        else  if (p1x2==0) then p1x2=aa;end; break ;end;
            if ((p1p2>10)and(zzzpower~=8))then 
                                  if (zzzpower==45) then printat (aa,p2,56);  end;

                                  end;
            if ((screens (p1x2,p2))~=8)then 
                              --удалил и вообще ничего не изменилось.  б.2041
                               -- if (zzzpower==45) then printat (aa,p2,56);  end;
                                allowpowerrescan=1; 
                                end;
            end
      end
   if (p3>0) then
            -- если штырьки заданы то включение только тех которые заданы.
            -- p4 - координата левого штырька по горизонталии   p4x2  - вычисляемая координата правого
            -- p3 - координата обоих штырьков по вертикали ыы
            --enxris=30; 
            enxris=scanobject(6,p3-1); -- ищет правый штырёк в указанной строке (ось Х)
            --if (enxris==-1) then allowpowerrescan=1; end;
        
            if (p4x2>0) then enxris=p4x2-1;end;
          for aa=p4+1,enxris,1 do 
            zzz=screens (p3-1,aa);--текущая перепроверяемая координата
            zzzpower=zzz;
            p1p2=(screens (p3-1,p4));--начальная координата штырька.
            if (p1p2~=7) then if (p1p2~=56)and (p1p2~=27)then  allowpowerrescan=1; p4x2=0;enxris=0;  aa=p4; break; end; end;
            if (zzzpower~=6)and(p1p2==7) then 
                          if (zzzpower~=46) then playsound=1; end; 
                          printat (p3-1,aa,46) ;
                          else if (p4x2==0) then p4x2=aa;end; break ;end;
             if ((p1p2>10)and(zzzpower~=6))then
                                    if (zzzpower==46) then printat (p3-1,aa,56);  end;

                                      end;
            if ((screens (p3-1,p4x2))~=6)then
                                --забавно удалил и вообще ничего не изменилось.
                                 --    if (zzzpower==46) then printat (p3-1,aa,56);  end;
                                     allowpowerrescan=1; 
                                    end;
            end
      end
        if (playsound==1) then 
          love.audio.play(powerstaticon);
          playsound=0;
        end
      if (p1==0) then
        --процедура поиска штырьков и включения электричества на всех целых.НЕ СДЕЛАНО
        print("");
        end
end

if (tempshutdownpowerstate==1) then powerstate=0; end;
-- а тут нет никакого определения вообще конечной координаты докуда рисовать или не рисовать.. просто идёт стирание.
-- для чего эта функция?  выключу ка я её на всякий случай -  поставлено невыполнимое условие.
-- оказывается выполняет зачистку выключенного электричества. интересно а зачем точно такой же код в модуле наверху тогда?
if ((powerstate==0)and(editor<1)and(a==0.1)) then

       if (p1>0) then
            -- если штырьки заданы то включение только тех которые заданы.
          for aa=p1,25,1 do 
            zzz=screens (aa,p2);
            if ((zzz)~=8) then
                              if ((zzz)==45) then    printat (aa,p2,56) 
                                        else break ;end;
            end
      end
    end
   if (p3>0) then
            -- если штырьки заданы то включение только тех которые заданы.
          for aa=p4+1,30,1 do 
            zzz=screens (p3-1,aa);
            if ((zzz)~=6) then
                               if ((zzz)==46) then   printat (p3-1,aa,56)
                                         else break ;end;
            end
      end

    end
    if (tempshutdownpowerstate==1) then powerstate=1;tempshutdownpowerstate=0; end;
end
--function removeobjectfrommap -- по powerstate=0  очистить только клетки с током до 56 
--=================================окончание==========================
end

function render2d() 
    objnowID=0;
    timer=timer+1;
    if (timer>125) then timer=0; end
    
function red () setColorX11(255, 0, 0, 255); end
function magenta () setColorX11(255, 0, 255, 255); end
function orange () setColorX11(255, 160, 0, 255); end
function sulfur () setColorX11(0, 255, 160, 255);end
function qwezxc () setColorX11(250, 125, 160, 255); end
function blue () setColorX11(0, 0, 255, 255); end
function green () setColorX11(0, 255, 0, 255);end
function cyan () setColorX11(0, 255, 255, 255); end
function cyanbledny () setColorX11(0, 128, 128, 255); end
function black ()  setColorX11(0, 0, 0, 255);end;
function white () setColorX11(255, 255, 255, 255);end;
function yellow ()  lg.setColor(255, 255, 0, 255);end;
function gray () setColorX11(200, 200, 200,255);end
function graybledny () setColorX11(50, 50, 50,255);end
function inwisible () setColorX11(255, 255, 255,128);end

function randomcolorbw ()
  colorshift=math.random(255); 
  if (darkzone==1) then colorshift=math.random(64); end;
  if (lovever>10) then colorshift=colorshift/256; 
   end; -- Love 11 version
 lg.setColor(colorshift,colorshift ,colorshift, 255);
end;

function randomcolor2 ()
  colorshift=colorshift+0.5;
  if (colorshift>255) then colorshift=0; end; 
 lg.setColor((colorshift), (255-colorshift), (255), 255);
end;

function randomcolor ()
  colorshift=colorshift+0.125;
  if (colorshift>255) then colorshift=0; end; 
  if (lovever>10)and(colorshift>1) then colorshift=0; end;  -- Love 11 version
 if (lovever>10) then lg.setColor(math.random(0,colorshift), (1-colorshift), (255), 255); end -- Love 11 version
 if (lovever<10) then lg.setColor(math.random(colorshift), (255-colorshift), (255), 255); end 
end;

function printparam (paramname,coordx,coordy,add)
    if (paramname>0) then black (); lg.print((paramname)..add, coordx, coordy); end
    if (paramname<1) then magenta (); lg.print((paramname)..add, coordx, coordy); black (); end;
    if (paramname>0) then white () lg.print((paramname)..add, coordx+2, coordy+2); end
    if (paramname<1) then red (); lg.print((paramname)..add, coordx+2, coordy+2); black (); end;
    if (paramname>hpmax)and(paramname~=lives) then black (); lg.print((paramname)..add, coordx, coordy); black (); end;
    if (paramname>hpmax)and(paramname~=lives) then green (); lg.print((paramname)..add, coordx+2, coordy+2); black (); end;
end

function ubywanie(znaczenije)
if (znaczenije==nil) then znaczenije=0; smsg2="NIL (znaczenije)"; end; 
if (znaczenije>0) then znaczenije=znaczenije-1;end;
if (znaczenije<0) then znaczenije=0;end;
return znaczenije;
end

function printp (paramname,coordx,coordy,add)
   lg.print((paramname)..add, coordx, coordy); 
   lg.print((paramname)..add, coordx+1, coordy); 
 end

if (timer<20) then if (editor==0)and(totalenemies>0)and (cachecleartime==0) then --or(timerz==40)
cachecleartime=2;
end
end

randomget=math.ceil (math.random(200));--and (randomget==1)
if (editor==0)and(timer>75)and(timerz>1) then 
  hardened_ammo_get=""; 
  timer=0;
  if (solarenergy>1)and(randomget>128) then 
      
          solarpower=solarpower+math.ceil ( solarenergy);
              if (solarpower>900) then solarpower=900;  end; 
       end

if (math.random(256)>230)then  --периодический поиск обьектов по карте переместить всё сюда если есть
  solarenergy=scanobject (102,-2) ; -- Это число панелей на карте
  extradroids=scanobject (169,-2) ; -- число автовоскрешений игрока. 
   savedscientists=scanobject (33,-2);
   frozenscientists=scanobject (34,-2);
   if (otladka==0)and(savedscientists+frozenscientists<2)and(titlegame=="Reskue")and(editor==0)and (renderer==1)and (timerz>10)and (benchmark_stage<1) then missionfailed=1;   end; 
        savedfuel=scanobject (42,-2);
   if (solarenergy<0) then solarenergy=0; end;
 end
  if (etatimer>0) then etatimer=etatimer-1;end
  if (etatimer<4)and(etatimer>1) then 
    itemshipped=1;
    etatimer=0;  -- shippingzone_y,=0,0;
    love.audio.play (shippingsnd) ;
    shippingzone_y,shippingzone_x=scanobject (29,-5,1);
    b_sh=0;
    for a_sh=1,4,1 do  
      for b_sh=1,5,1 do 
      itemcode=itemshippinglist[itemshipped];
      if (itemcode==nil) then itemcode="56" ;end; 
    printat (shippingzone_x+a_sh,shippingzone_y+b_sh,itemcode);
    xdeliverycompare=isnear2 (shippingzone_x+a_sh,gamey (y)); ydeliverycompare=isnear2 (shippingzone_y+b_sh,gamex(x));
    smsg1="Ship arrived."; 
    -- gamex - для преобразования больших реальных пиксельных координат в знакоместные,  не наоборот !!!!
     if (xdeliverycompare==true) and (ydeliverycompare==true) then hp=0;
       smsg1="You are smashed by a shipped baggage items."; 
        love.audio.play (deadsnd) ;
      end; 
    itemshipped=itemshipped+1;
    -- это не для танков!  а только для PL1 i PL 2  т.е. игрока и белого танка настройки параметров 1/!!
       end
     end
     itemshippinglist={};
     countinventory_i=0;
  end
  if (etatimer<1) then etatimer=0; end;
  if (speedtimer>0) then speedtimer=speedtimer-1; 
    end
  if (slowPL1>0)and(speedtimer<1) then slowPL1=slowPL1-1; 
    end
    if (slowPL1<1)and(speedtimer==0) then   slowPL1=0;
      end;
  pajaktimerPL1= ubywanie (pajaktimerPL1);
  painreflectionPL1= ubywanie(painreflectionPL1); --отмечены приходы NIL вместо значения Painreflection1PL1 где то видимо он любит терятся
  bombtimercompare= ubywanie (bombtimercompare); 
  cursedtimerPL1= ubywanie (cursedtimerPL1); 
  nietykalnyPL1= ubywanie (nietykalnyPL1); 
  painreflectionPL1= ubywanie (painreflectionPL1); 
  freezetimerPL1= ubywanie (freezetimerPL1); 
  invisibletimerPL1= ubywanie (invisibletimerPL1); 
  signaltraptimer= ubywanie (signaltraptimer); 
  damagetimerPL1= ubywanie (damagetimerPL1); 
  feartimerPL1= ubywanie (feartimerPL1); 
  cachecleartime= ubywanie (cachecleartime); 
  freezetimerPL3= ubywanie (freezetimerPL3); 
  protect=ubywanie (protect); 
  if (pajaktimerPL1<4)and (pajaktimerPL1>0) then 
    pajaktimerPL1=0; 
     playsoundifvisible (NOTUSEDsnd,x,y);
    for a=1,pajakilosc,1 do 
      enemies[totalenemies+1] = class_enemy:new("pajak",x,y,120,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
            totalenemies=totalenemies+1;
          end
  end


 if (cachecleartime==1) then 
      collisiondata={}; 
      for a=0,75924,1 do 
        collisiondata[a]=0; end;
      end
 end; add=""; --▓▓▓▓▓▓▓▓▓░░░░░░░░ 
 guifix=0;

    lg.setFont(fontVERYSMALLX);
   if (build) then 
        if (timerz==5) then green (); end
        local tim = love.timer
        tim.step();
    delta = tim.getDelta();
    local stats = lg.getStats();
    memory_texture=string.format("%.0fMb", stats.texturememory / 1024 / 1024);
    memory=stats.texturememory / 1024 / 1024  --consolelogg
    system_all_data=""..titlegame.." b"..build.." "..ossys.." "..maxwidth.."x"..maxheight.." 1:"..scaling.." dj-alex "..os.date ().." Mem:"..memory_texture.." Lua:"..string.format("%.0fMb", collectgarbage("count") / 1024).." O:"..object_to_rendering_game.." C:"..stats.canvases.." Lv:"..levelnumber.." ".."SCA:"..scanobject_used.." GTC:"..generator_tanks_called.." CR:"..totalenemies.." TA:"..totalammo;
    
     if (memory>100) then collectgarbage("collect"); end ; -- чистка мусора по переполнению памяти. в идеале не должна срабатывать 
     if (timerz==5) then white (); end
        end;
    lg.print("", 8+guifix, maxheight-wysotastroki*1);
    lg.setFont(fontSMALL);
     white (); 

 function print_with_shadows (text,leftspace, downspace,skalowanie)
 if (skalowanie==nil) then skalowanie=1; end; 
  black ();
 lg.print(text, leftspace ,downspace,0,skalowanie,skalowanie);   
 white () ; 
lg.print(text, 1+leftspace ,1+downspace,0,skalowanie,skalowanie);   
end

 function isnear3 (par1,par2)
                            mn=4*rozmiarznak;
                             if (hp<1) then mn=1;  end;
                             if (par2>par1) then rasst=(par2-par1)/rozmiarznak; end 
                             if (par1>par2) then rasst=(par1-par2)/rozmiarznak; end 
                            for a=par1-mn,par1+mn,1 do
                                if a==par2 then return true,rasst end
                                end    return false,false;
                        end
-- фрагмент для отображения экрана для второго игрока.  ?? 
function gamewindowscanvas_do () -- основное игровое окно на которое часто накладываются спецэффекты.

local fragment = [[
vec4 effect(vec4 color, Image image, vec2 uvs, vec2 screen_coords) {
    vec4 pixel = Texel(image, uvs);
    float avg = (pixel.r + pixel.g + pixel.b) / 3.0;
    pixel.r = avg;
    pixel.g = avg;
    pixel.b = avg;
    return pixel;
}
]]
local shaderX = love.graphics.newShader(fragment)
--RENDERER CODE  quads= {}; render2d scene; camera; głowny canvas
  xxxx=visual_mapsize_horizontal*rozmiarznak;
   yyyy=visual_mapsize_vertical*rozmiarznak;
     maximumlines=visual_mapsize_horizontal ;--  это код рендеринга т.е. то что будет визуально. отображать ВСЮ карту не требуется.
    a=18+cameraleftpos_x_hor+mapsize_horizontal*camerauppos_y_vert; -- пропускаем параметры уровня, они хранятся в xdata.
    virtobjecttable ={};  -- по xdata[a] получаем данные уровня и изначальные параметры.
    -- этот код показывает только видимую часть карты и наличие редактора не должно на него влиять. код редакторов ниже убдет.
randomget=math.ceil (math.random(1));--and (randomget==1)
if (map_changed>1) then map_changed=map_changed-1; end     --  map_changed==1;   
 if (darkzone==1) then map_changed=1; end ; 
 if (krysztalow>0) then map_changed=1; end ; 
if (map_changed>0) then lock_render_on_last_image=0; else lock_render_on_last_image=1; end; --smsg1="map_changed="..map_changed.." lock_render_on_last_image="..lock_render_on_last_image; 
if (renderer==1)and (lock_render_on_last_image==0)and(pause==0) then 
if (GAMEWINDOWCANVAS==nil) then GAMEWINDOWCANVAS = lg.newCanvas(xxxx, yyyy,{} ) -- x,y, это создание пустой картинки для наполнения ее картой спрайтов.
end
nonetexture="1empty.png"; 
IMAGESX = {};
object_to_rendering_game=0;   -- всё работает ТОЛЬКО если visual_mapsize_horizontal=250 чего НИКОГДА не должно быть
 lg.setCanvas(GAMEWINDOWCANVAS);
    lg.clear (); 
     if (backgroundcolorlevel~=nil) then 
    if (backgroundcolorlevel==0) then setColorX11(192, 192, 192, 255); end
    if (backgroundcolorlevel==1)or (titlegame=="Kolonista") then yellow () ; end
    if (backgroundcolorlevel==4) then green (); end
    if (backgroundcolorlevel==2) then black (); end;
   lg.rectangle("fill", MapRenderingCoordPostobjectX-2,postCANVASobjectY+rozmiarznak-2,(visual_mapsize_horizontal+1)*rozmiarznak+4, (visual_mapsize_vertical+1)*rozmiarznak+4);
    white ();
  end; 
     for yy=1,0+visual_mapsize_vertical,1 do   -- этот цикл делает рендеринг, он же должен сделать активную копию карты.    --5*editor+maximumvertical
        for xx=1,0+visual_mapsize_horizontal,1  do           --mapsize_horizontal заменен и этот блок не нужен.   
          if (xx>visual_mapsize_horizontal) then xx=mapsize_horizontal; end; --ограничивает зону видимости правилом  xdata никуда не исчезнет, но видно будет только эту область
           if(a<57279) then --editor generating items  editoritems --55824??
                 if (xdata[a+60000]==nil) then  xdata[a]=0; xdata[a+60000]=0;   objnow=5; smsg1="Błędny rozmiar mapy "..#xdata ; end;
                 if (xdata[a]~=nil) then 
                  objnow=string.byte ((xdata[a]))+256*string.byte ((xdata[a+60000]));
                  obj=objnow;
                  if (objnow==76)and(titlegame=="M2K")or (objnow==76)and(titlegame=="Mozaic")or(objnow==44)and(titlegame=="Reskue")or(objnow==44)and(titlegame=="Mozaic") then 
                    objLEFT=string.byte ((xdata[a-1]))+256*string.byte ((xdata[a+60000-1]));
                    objRIGHT=string.byte ((xdata[a+1]))+256*string.byte ((xdata[a+60000+1]));
                    if (a>250) then 
                      objUP=string.byte ((xdata[a-250]))+256*string.byte ((xdata[a+60000-250]));
                      objDOWN=string.byte ((xdata[a+250]))+256*string.byte ((xdata[a+60000+250]));
                      end
                  end
                  end;
                -- if (xdata[a]~=nil) then objnow1byte=string.byte ((xdata[a]));end;
                 else 
                 objnow=0;
                  end -- должно защитить от сбоев при увеличении visual_mapsize_horizontal
            if (objs[objnow+1]==nil) then objs[objnow+1]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}; smsg1="OBJS .."..(objnow+1).." NIL "; end; 
            IDobj=objs[objnow+1][1]; -- [1] ID обьекта [2] имя [3] файл  [4]Reactmove- DamageID/255-blockmove!5-Reactmove2(enemy) DamageID/255-blockmove!!7-reactbomb (1=подрываемый)>1-DAMAGETAGE! 8-reactice 1-замор/как предмет,ID/255-blockmove) 6-DAMAGEID,255 no shot ammo or bomb(def)!!9-reactammo(255 - blockmove)!10-reactammo2(enemy)255 - blockmove!!! 11-rikoszet(1-enable) 12RUS!13KOD_OPIS!14noedit!15unpack!16cenatowara!17reactammosnd-UNUSED!18-tankważność!19takeable!20realrikoszet

            if ((IDobj)) then  -- objs[objnow+1][3];      -- название файла текстуры
              if (editor==0)and(objnow==63)then objnow=56 ; end;  -- игрок не должен видеть обьекты предназначенные для редактора. У обьекта должен быть такой флаг в таблице  - пока не сделано? 
              if (editor==0)and(objs[objnow+1][14]=="Only_in_editor") then objnow=56; end;    
              --if (editor==0)and(objnow==17)then objnow=56 ; end;  
          if (modtextures==0)  then 
              if (titlegame~="Reskue")and(objnow==76)and (objLEFT~=76)and (objRIGHT==76)then objnow=260 ; end;  
              if (titlegame~="Reskue")and(objnow==76)and (objLEFT==76)and (objRIGHT==76)then objnow=261 ; end; 
              if (titlegame~="Reskue")and(objnow==76)and (objRIGHT~=76)and (objLEFT==76)then objnow=262 ; end; 
              if (titlegame~="Reskue")and(objnow==76)and (objUP~=76)and (objDOWN==76)then objnow=263 ; end;  
              if (titlegame~="Reskue")and(objnow==76)and (objDOWN==76)and (objUP==76)then objnow=265 ; end;  
              if (titlegame~="Reskue")and(objnow==76)and (objDOWN~=76)and (objUP==76)then objnow=264 ; end;  
              if (objnow==44)and (objLEFT~=44)and (objRIGHT==44)then objnow=260 ; end;  --(-1)
              if (objnow==44)and (objLEFT==44)and (objRIGHT==44)then objnow=207 ; end;  --(-1)
              if (objnow==44)and (objRIGHT~=44)and (objLEFT==44)then objnow=262 ; end;  --(-1)
              if (objnow==44)and (objUP~=44)and (objDOWN==44)then objnow=263 ; end; 
              if (objnow==44)and (objDOWN==44)and (objUP==44)then objnow=208 ; end; 
              if (objnow==44)and (objDOWN~=44)and (objUP==44)then objnow=264 ; end; 
          if (obj==44)and (objLEFT==44)and (objUP==44)then objnow=212 ;  end; 
          if (obj==44)and (objRIGHT==44)and (objUP==44)then objnow=210 ; end;  
          if (obj==44)and (objDOWN==44)and (objLEFT==44)then objnow=211 ; end;  
          if (obj==44)and (objDOWN==44)and (objRIGHT==44)then objnow=209 ; end;  
           end; 
              if (editor==0)and(titlegame=="Kolonista")and(objnow==28)then objnow=56 ; end;  --в колонии этот обьект невидим.
              if (editor==0)and(objnow==119)then objnow=56 ; end;  --(-1)
            usable="";
            if (obj~=nil) then usable=ext_objs_string (obj,22);end;
            if (usable==nil) then usable="";end; 
            IMAGESX[object_to_rendering_game]=IMAGES[objnow + 1];
            OBJECTPRINTNOW_IMAGESX=IMAGESX[object_to_rendering_game];
            postobjectX=xx*rozmiarznak;
            postobjectY=yy*rozmiarznak;
             if (defacescreen==1) then randomcolorbw () ;  if (timerz>3) then defacescreen=0; end; end;
             if (defacescreen==2) then randomcolor () ; if (timerz>3) then defacescreen=0; end; end; 
       if (OBJECTPRINTNOW_IMAGESX~=nil) then 
        if (darkzone==0) then cien=0; end; 
        if (darkzone==1)and(editor==0)then -- радиус светлости вокруг задается тут и должен зависет от знакоместа
             xdarkcompare=isnear3 (postobjectX,x-2*rozmiarznak); ydarkcompare=isnear3 (postobjectY,y);           
              if (xdarkcompare~=true) or (ydarkcompare~=true) then randomcolorbw (); cien=1; else white ();cien=0; end;
          end
        animset_detect=objs[((objnow+1))][12];
        if (tdata[a]==1)and(otladka==1) then red () ; end; 
        if (tdata[a]==2)and(otladka==1) then magenta () ; end; 
        if (collisiondata[a]==1)and(otladka==1) then orange () ; end; 
   if (animset_detect=="kolorowanie")and(cien==0) then 
    kolorowanie=objs[((objnow+1))][2]; --name kolor w object.ini (objs)
   if (kolorowanie=="colorizepole") then          Spektrum_Kolorowanie (colorizepole);  end
    if (kolorowanie=="colorizeboulder") then    Spektrum_Kolorowanie (colorizeboulder);   end
    if (kolorowanie==1) then blue () ; end;     if (kolorowanie==2) then red () ; end; 
    if (kolorowanie==3) then magenta () ; end;     if (kolorowanie==4) then green () ; end;     if (kolorowanie==5) then cyan () ; end;     if (kolorowanie==6) then yellow () ; end;     if (kolorowanie==7) then white () ; end; 
    end;             
      lg.draw(ATLAS,OBJECTPRINTNOW_IMAGESX,postobjectX, postobjectY,0,scaling,scaling);
       if (editor==1)and(usable=="usable")and(gamey (y)>220) then red (); lg.print("u",postobjectX, postobjectY,0,scaling,scaling); white (); end;
      if (objnow~=nil)and (animset_detect=="animset") then   --identifier animset
        animset_id_objs=objs[((objnow+1))][1]; --number object in object.ini (objs)
        animset_id=objs[((objnow+1))][2];  -- number animation in animset1.png        --anim[animset_id_objs]=animset_id;
        anim[animset_id_objs]:draw(image, postobjectX, postobjectY,0,scaling,scaling);
      end
        object_to_rendering_game=object_to_rendering_game+1; --+(yy*(mapsize_horizontal-visual_mapsize_horizontal)); 
        end;
           postCANVASobjectX=gamescreenfixhorizontal*rozmiarznak+0*xx*rozmiarznak;
           postCANVASobjectX=MapRenderingCoordPostobjectX; --написано же что по этой координате, значит будем рисовать по ней и перезапишем старое значние.
            postCANVASobjectY=gamescreenfixvertical*rozmiarznak+0*yy*rozmiarznak;
            upspaceonscreen=postCANVASobjectY; 
           white (); 
            end;
            a=a+1;
      end;
        a=a+mapsize_horizontal-visual_mapsize_horizontal;
    end;
  end

  lg.setCanvas() -- эта строчка возвращает рендерер в игровое поле. обязательная.


  --end
if (renderer==1) then  
if (GAMEWINDOWCANVAS~=nil) then 
 if (damagetimerPL1>0)and(defacescreen<1)  then  lg.setShader(shaderX); end;  
   effect(function()  -- ПОСТПРОЦЕССИНГ вызов moonshine effekt filmowy grain przy smierći
     -- вызов эффекта почему то выключает HUD  почему - неизвестно. 
    if (hp<1)and(editor==0)  then    
      effect.enable("vignette", "filmgrain"); else  
      effect.disable("vignette", "filmgrain"); 
      end; 
    if (hp>0)and(speedtimer>0)and(editor==0)and(ossys~="Android") then effect.enable("godsray"); end; 
    if (speedtimer<1)or(editor==1)  then          effect.disable("godsray"); end; 

  if (hp>0)and(feartimerPL1>0)and(editor==0) then effect.enable("pixelate"); end; 
  if (feartimerPL1<1)or(editor==1)  then          effect.disable("pixelate");    effect.disable("godsray"); end; 

  if (hp>0)and(glowtimer>0)and(editor==0)  then   effect.enable("glow");     end; 
  if (glowtimer<1)or(editor==1)  then             effect.disable("glow");    effect.disable("godsray"); end; 
      
      lg.draw(GAMEWINDOWCANVAS,postCANVASobjectX,postCANVASobjectY) ;
  end) --end of effect moonshine 
   if (hp>0)and(speedtimer>0)and(editor==0)and(ossys~="Android") then lg.draw(GAMEWINDOWCANVAS,postCANVASobjectX,postCANVASobjectY) ;    end;
   end; -- canvas test  e
 if (damagetimerPL1>0)  then  lg.setShader(); end;  
if(map_changed<2) then map_changed=0;end; 
    end; 
end


-- этот END заканчивает gamewindowscanvas_do (); 
function game_gui_pc_player_do () 
    leftpos=(rozmiarznak/6)+guifix;
    wysotamenu=wysotastroki+2;

menu_printed=0;

-- RADAR CODE 
if (x~=nil)and(GAMEWINDOWCANVAS~=nil)and(titlegame=="Reskue") then 
xmappc1=math.ceil (gamex (x)/10); ymappc1=math.ceil (gamey (y)/6); 
--objectpodnogami=(screens (gamey (y),gamex (x)));  -- реализация автоходьбы по стрелкам.
ymap=0; xmap=0; hxmap1=0; hymap1=0 ; migxmap1=0; migymap1=0;
if (hxmap~=nil) then 
  hxmap1=math.ceil (gamex (hxmap)/10); hymap1=math.ceil (gamey (hymap)/6); end; 
  if (migxmap~=nil) then 
  migxmap1=math.ceil (gamex (migxmap)/10); migymap1=math.ceil (gamey (migymap)/6); end; 
-- 9х9 комнат   10 размер комнаты по ширине, 6 по высоте.
size=3+17*scaling;
for ymap=1,9 do 
  sl=math.ceil (math.random(2));
  for xmap=1,11 do 
if (levelnumber==2) then   gray () ; else cyan () ; end; 
finalx=4+sl+maxwidth-13*size+xmap*size;  
finaly=0+ymap*size;
if (xmap==xmappc1)and (ymap==ymappc1) then yellow (); end;
if (hxmap~=nil)and (hxmap>0)and (xmap==hxmap1)and (ymap==hymap1) then green (); end;
if (migxmap~=nil) and (migxmap>0) and (xmap==migxmap1)and (ymap==migymap1) then orange (); end;
 lg.rectangle("fill", finalx , finaly,  size-4*scaling, size-4*scaling,5,2);
end 
end
--if (hxmap~=nil) then smsg1=" finalx="..finalx.." hxmap="..hxmap.." hxmap1=";  end; 
end
white () ; 

-- lg.setCanvas() -- эта строчка возвращает рендерер в игровое поле. обязательная. 


 if (editor==0)and(ossys~="Android")or (editor==1)and (huded==1) then  -- основное игровое PC GUI игрока 
-- отрисовка рисуем элемент GUI PC как код инвентаря  --(postGUI_PCCANVASobjectX~=nil)    PLAYER UI 
    --if (1==1) then  gray(); lg.rectangle("fill",0,0,4+rozmiarznak*1.4, (#menuplayitems)*rozmiarznak+4);white ();end
if (editor==0)and(renderer==1) then 
          if (GUI_PC_CANVAS==nil) then GUI_PC_CANVAS= lg.newCanvas(rozmiarznak, rozmiarznak*8,{} );  end; 
                  if (pc_gui_draw_create_status~=1) then
                          IMAGES_GUIPC = {};
                          object_to_rendering_gui=0;
                          lg.setCanvas(GUI_PC_CANVAS); --почему ломает?  fuck 
                          lg.clear (); 
                          for i=1,#menuplayitems,1 do
                            menuplayitems_visualcode=menuplayitems[i];
                          if (menuplayitems_visualcode==nil) then menuplayitems_visualcode=0; end; 
                           pc_gui_draw_create_status=1;
                           postobjectX=0*rozmiarznak; -- это координаты внутри Canvas, про внешние коррдинаты ЗАБЫВАЕМ! 
                           postobjectY=(i-1)*rozmiarznak;
                              IMAGES_GUIPC[object_to_rendering_gui]=IMAGES[menuplayitems_visualcode + 1];
                              OBJECTPRINTNOW_IMAGESINV=IMAGES_GUIPC[object_to_rendering_gui];
                              if (puknt_gui==1) then postGUI_PCCANVASobjectX=0*rozmiarznak; postGUI_PCCANVASobjectY=0*rozmiarznak; end; --тут внешние.
                          if (OBJECTPRINTNOW_IMAGESINV~=nil) then 
                          lg.draw(ATLAS,OBJECTPRINTNOW_IMAGESINV,postobjectX, postobjectY,0,scaling,scaling);
                          object_to_rendering_gui=object_to_rendering_gui+1;
                          end;
                            end
                          end
                    lg.setCanvas() -- эта строчка возвращает рендерер в игровое поле. обязательная.
                    if (titlegame=="Reskue") then lg.draw(GUI_PC_CANVAS,0,0,0,1,1) ;  end ; -- canvas test  e
                    if (titlegame~="Reskue") then  lg.draw(GUI_PC_CANVAS,0,0,0,1,1) ;  end ; -- canvas test  e
      
end --end of if (editor==0)and(renderer==1) INCL  if (GUI_PC_CANVAS==nil)  

-- тут заканчивается отрисовка GUI PC как инвентаря
    lg.setColor(128, 0, 0, 255)
                if (ossys~="Android") then 
                str=0;
                       if (titlegame~="Reskue")and (titlegame~="Kolonista")and (titlegame~="Perestroika") then
                      printparam (hp,leftpos,8,"/"..hpmax) ; str=str+1;
                      print_with_shadows (ammo,leftpos,8+str*wysotamenu) ;str=str+1;
                      end
                       if (titlegame~="Perestroika") then

                      print_with_shadows (bombs,leftpos,8+str*wysotamenu) ;str=str+1;
                      print_with_shadows (ice,leftpos,8+str*wysotamenu) ;str=str+1;
                      if (titlegame~="Kolonista") then printparam (reservedaids,leftpos,8+str*wysotamenu,"["..uhealkey.."]") ;str=str+1;end -- [h]
                      end
                        if (titlegame~="Kolonista") then printparam (lives,leftpos,8+str*wysotamenu,"["..urestkey.."]") ;str=str+1; end ;  -- [r] 
                        if (titlegame~="Reskue")and (titlegame~="Kolonista") then
                         if (keys>0) then print_with_shadows (keys,leftpos,8+str*wysotamenu) ;str=str+1; end;
                         if (water>0) then print_with_shadows (water,leftpos,8+str*wysotamenu) ;str=str+1;end;
                      end;
                
                 end --endof if (editor==0)and(ossys~="Android")or (editor==1)and (huded==1) then 
 end;   

end   

function android_main_gui_do ()

 if (ossys=="Android")or(showandroidbar==1) then 

function create_atlas_mobile ()
  quadsize=standartsizeusermenu_android_0_cc;
  height_atlas=quadsize*1;
  ATLASmobile = lg.newCanvas(4096, height_atlas,{} ); 
  -- это создание пустой картинки для наполнения ее картой спрайтов.
  nonetexture="1empty.png"; 
  IMAGES_UI = {}; 
  for a0=1,20,1 do  -- максимум временно 170 (6800 пикс), для 1 байтового режима - 256. 
    IMAGES_UI[a0]="androidUI"..a0..".png"; 
    end
  lg.setCanvas(ATLASmobile);

  for i = 1,20,1 do
    local img = lg.newImage("Textures/a/androidUI"..i..".png");
    if (img==nil) then lg.newImage("Textures/"..nonetexture); end; 
    local x = i % 60;
  local y = math.floor(i / 60);
   lg.draw(img, x*quadsize, y*quadsize)
    -- а вот именно здесь в атлас и записывается графическое изображение.
    local quad = lg.newQuad(x*quadsize, y*quadsize, quadsize, quadsize, 4096, height_atlas)
    --квад это всего лишь координата, это не сама картинка на данный момент
    IMAGES_UI[i + 1]= quad; 
  end
  lg.setCanvas()
   return ATLASmobile;  
    end  --endof  create_atlas_mobile ()
  
  if (ATLASmobile==nil) then 
  android_ui_changed_state=1;
   android_ui_firstload=1;
   ATLASmobile=create_atlas_mobile(); --ATLASmobile:newImageData():encode('png', "atlasm.png");   atlas_mobile works
  end
 wysotamenu=standartsizeusermenu_android_0_cc;
  guifix=standartsizeusermenu_android_0_cc+1; 
  nonetexture="1empty.png";   
 object_to_rendering=0;
 
  if (incontrolcentre==0)and(android_ui_changed_state>0) then   
  elementsmenu=9;
   if (ANDROID_UI_CANVAS==nil) then ANDROID_UI_CANVAS= lg.newCanvas(standartsizeusermenu_android_0_cc, standartsizeusermenu_android_0_cc*elementsmenu,{} ); end

  IMAGES_UI_X = {};
  lg.setCanvas(ANDROID_UI_CANVAS);
        lg.clear (); 
    for a=1,elementsmenu,1 do
         postobjectX=0*standartsizeusermenu_android_0_cc;
         postobjectY=a*standartsizeusermenu_android_0_cc-standartsizeusermenu_android_0_cc;
        if (ammoKEYPL1=="ammo")and (a==1) then green () ; end;        if (ammoKEYPL1=="ice")and (a==2) then green () ; end;
        if (ammoKEYPL1=="bomb")and (a==3)then green () ; end;        if (ammoKEYPL1=="")and (a==4) then green () ; end;
        if (ammoKEYPL1=="h")and (a==5) then green () ; end;        if (ammoKEYPL1=="usermenu")and (a==6) then green () ; end;
        if (ammoKEYPL1=="placeitem")and (a==7) then green () ; end;        if (ammoKEYPL1=="ekwip")and (a==8) then green () ; end;
        if (ammoKEYPL1=="unpack")and (a==9) then green () ; end;
        IMAGES_UI_X[object_to_rendering]= IMAGES_UI[a+1];
         OBJECTPRINTNOW_IMAGES_UI=IMAGES_UI_X[object_to_rendering];
        if (OBJECTPRINTNOW_IMAGES_UI~=nil) then  -- //scalingleftgui
        lg.setCanvas(ANDROID_UI_CANVAS);
        lg.draw(ATLASmobile,OBJECTPRINTNOW_IMAGES_UI,postobjectX, postobjectY,0,scalingleftgui,scalingleftgui);
        object_to_rendering=object_to_rendering+1; 
        white () ; 
        end;
        lg.setCanvas() -- эта строчка возвращает рендерер в игровое поле. обязательная.
          end
 end;

 if(incontrolcentre==1) then     --androidgui
  if (ANDROID_UI_CANVAS==nil) then ANDROID_UI_CANVAS= lg.newCanvas(standartsizeusermenu_android_0_cc, standartsizeusermenu_android_0_cc*8,{} ); end
     IMAGES_UI_X = {};
     lg.setCanvas(ANDROID_UI_CANVAS);
        lg.clear (); 
     for a=8,20,1 do
         postobjectX=0*standartsizeusermenu_android_0_cc;
         postobjectY=(a-9)*standartsizeusermenu_android_0_cc-standartsizeusermenu_android_0_cc;
        if (ammoKEYPL1=="ammo")and (a==12) then green () ; end;        if (ammoKEYPL1=="ice")and (a==13) then green () ; end;
        if (ammoKEYPL1=="bomb")and (a==14) then green () ; end;        if (ammoKEYPL1=="keys")and (a==15) then green () ; end;
        if (ammoKEYPL1=="express")and (a==16) then green () ; end;        if (ammoKEYPL1=="lives")and (a==17) then green () ; end;
        if (ammoKEYPL1=="exit")and (a==18) then green () ; end;        if (ammoKEYPL1=="sell lives")and (a==9) then green () ; end;
        if (ammoKEYPL1=="sell protect")and (a==10) then green () ; end;        if (ammoKEYPL1=="sell tank")and (a==11) then green () ; end;
        if (ammoKEYPL1=="sell healthpack")and (a==12) then green () ; end;            IMAGES_UI_X[object_to_rendering]= IMAGES_UI[a+1];
            OBJECTPRINTNOW_IMAGES_UI=IMAGES_UI_X[object_to_rendering];
        if (OBJECTPRINTNOW_IMAGES_UI~=nil) then  -- //scalingleftgui
          
        lg.draw(ATLASmobile,OBJECTPRINTNOW_IMAGES_UI,postobjectX, postobjectY,0,scalingleftgui,scalingleftgui);
        object_to_rendering=object_to_rendering+1; --+(yy*(mapsize_horizontal-visual_mapsize_horizontal)); 
        white () ; 
        end;
        lg.setCanvas() -- эта строчка возвращает рендерер в игровое поле. обязательная.
          end
  
  end;--endof incontrolcentre==1 android

  lg.draw(menuicon, maxwidth-80,0);  -- system menu icon  
  lg.draw(menu_exit, maxwidth-80,maxheight-80);  
 end;
  --smsg1="fuck! android_ui_changed_state"..android_ui_changed_state.. " ui "..android_ui_firstload; 
    if (android_ui_firstload==1) then 
        if love.keyboard.isDown("f12") then ANDROID_UI_CANVAS:newImageData():encode('png', "android_UI.png");  end;
        lg.draw(ANDROID_UI_CANVAS,0,0) ;
        if(android_ui_changed_state<2) then android_ui_changed_state=0;end; 
    end; 

    blue ()
    sdwig=(standartsizeusermenu_android_0_cc/3 )*1.6;
    printp (ammo,sdwig,sdwig+0*standartsizeusermenu_android_0_cc,"") ;
    printp (ice,sdwig,sdwig+1*standartsizeusermenu_android_0_cc,"") ;
    printp (bombs,sdwig,sdwig+2*standartsizeusermenu_android_0_cc,"") ;
    printparam (reservedaids,sdwig,sdwig+4*standartsizeusermenu_android_0_cc,"") ; 
    blue ();
    printparam (lives,sdwig,sdwig+5*standartsizeusermenu_android_0_cc,"") ; 
     black ();    
 end


function editor_gui_do ()       --startpositionuserPCmenuY   EDITOR 
    if ((huded==0)) then lg.setFont(fontVERYSMALL);  wED=wysotastroki/2;end;
    if ((huded>0)) then lg.setFont(fontSMALL); wED=wysotastroki/2; end;
    lg.print("X="..gamex (x).." realX="..x, 6*rozmiarznak,0 )
    lg.print("Y="..gamey (y).." realY="..y, 10*rozmiarznak,0);
    if(fasttimer==42) then ed_data_gui_do="PC1 xdata["..coord (gamey (y),gamex (x)).."]= o_kod="..(screens (gamey (y),gamex (x))); end; 
    lg.print(ed_data_gui_do, 18*rozmiarznak, 0);
    lprint("EDITOR",maxwidth-3*rozmiarznak,20);  
  if (editor==1)and (huded==-1) then lprint("HUD_DISABLED",8+guifix,wysotastroki*0);end; 
  if (editor==1)and (huded==0) then 
        maximumeditorpoint=26;
    for e=1,maximumeditorpoint,1 do 
        if (e~=11) then 
          black (); lprint("ED_"..e.."_",5+guifix,wED*(e-1)); 
          white (); lprint("ED_"..e.."_",8+guifix,3+wED*(e-1)); 
        end


        if(xdataarchived==1)and(e==11) then lprint("ED_11_",8+guifix,wED*10); end; --12
    end              
       lprint("ED_PS_LEVEL",8+guifix,wysotastroki*33);
end

if (editor==1)and (huded==-2)  then
  lg.setFont(fontVERYSMALL); -- потом сделать цикл и обработчик как ED_ для танков. с списком переменных на вывод.
      maximumeditorpoint=19;
      for e=0,maximumeditorpoint,1 do 
          blue (); varname=lprint("ED_P_"..e.."_",5+guifix,wED*e);  
          white (); varname=lprint("ED_P_"..e.."_",8+guifix,3+wED*e); 

       --  lprint("ED_P_"..e.."_",8+guifix,wED*(e-0)); 
         end
   end

  if (editor==1)and (huded==3)and(totalenemies>0)and(typt~=nil)and (selectedtankid~=nil)and (selectedtankid~=-1)  then
    lg.setFont(fontVERYSMALL); 
    typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,tanks_am,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8=enemies[selectedtankid]:get(); --,rotate[a]  
            maximumeditorpoint=17;
    for e=1,maximumeditorpoint,1 do 
       blue ();varname=lprint("EDTANKI_"..e.."_",5+guifix,wED*e); 
       white (); varname=lprint("EDTANKI_"..e.."_",8+guifix,3+wED*e); 
    end              
     lg.print("CreatID="..selectedtankid.."/"..totalenemies, 40, wED*0);
   lg.print("Xtnk="..gamex (xt).." rX="..xt, 0, wED*23)   lg.print("Ytnk="..gamey (yt).." rY="..yt, 0, wED*24);
   PCX=coord (gamey (yt),gamex (xt))
   lg.print("PC1 x["..PCX.."]= obj="..(screens (gamey (yt),gamex (xt))), 0, wED*25);
     tdata_ID=PCX; 
     visited=tdata[tdata_ID];collision=collisiondata[tdata_ID]; 
      if (visited~=nil) then lg.print("visited="..visited, 0, wED*26) ;end;
   --if (collision~=nil) then lg.print("collision="..collision, 0, wED*27);end
         end

if (editor==1)and (huded==5)and(totalammo>0)  then
  lg.setFont(fontVERYSMALL);
  if (selectedammoid==nil) then selectedammoid=0; end;
    typta,start_x,start_y,x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_moving,rotate_tt,renderammoshot_ammos,rikoszets,animset,spd_a,sourceammo,command_ammo,wzmacniacz,directdamage_autoammo,src_tankid,msg_to_func,command_power,delayed_cmd,delayed_snd=ammoX[selectedammoid]:get();
    if (typta=="") then ammo_moving=false; end; 
    if (ammo_moving==true) then ammo_bukwy_move="true" else ammo_bukwy_move="false" end; 
            maximumeditorpoint=18;
    for e=1,maximumeditorpoint,1 do 
       blue (); varname=lprint("EDAMMO_"..e.."_",5+guifix,wED*e); 
      white (); varname=lprint("EDAMMO_"..e.."_",8+guifix,3+wED*e); 
    end              
     lg.print("A ID="..selectedammoid.."/"..totalammo, 40, wED*0);
   lg.print("x_="..gamex (x_ammo).." rX="..x_ammo, 90, wED*23);   lg.print("y_="..gamey (y_ammo).." rY="..y_ammo, 90, wED*24);
   lg.print("PC1 x["..coord (gamey (y_ammo),gamex (x_ammo)).."]= obj="..(screens (gamey (y_ammo),gamex (x_ammo))), 90, wED*25);
         end

  lg.setFont (fontVERYSMALL);
  if (editor==1)and (huded==2)  then
        reactmove_code=ext_objs_param (selectedobject,4);
        reactmove_code_en=ext_objs_param (selectedobject,5);
        damagestageid=ext_objs_param (selectedobject,6);
        o_kod_bomb=ext_objs_param (selectedobject,7);
        o_kod_ice=ext_objs_param (selectedobject,8);
        o_kod_ammo=ext_objs_param (selectedobject,9);
        o_kod_ammo_en=ext_objs_param (selectedobject,10);
        unpackobiekt=ext_objs_param (selectedobject,15);
        cena=ext_objs_param (selectedobject,16);
        chances=ext_objs_param (selectedobject,11);
       
        rikoszet=ext_objs_string (selectedobject,20);
        realrikoszet=ext_objs_string (selectedobject,20);
        nodrop=ext_objs_string (selectedobject,21);
        tankwazn=ext_objs_string (selectedobject,18);

        rifleenh=ext_objs_string (selectedobject,23);
        repair=ext_objs_string (selectedobject,24);
        movable=ext_objs_string (selectedobject,25);
        gravity=ext_objs_string (selectedobject,26);
        kod_opis=ext_objs_string (selectedobject,13);

        takeable=ext_objs_string (selectedobject,19);
        usable=ext_objs_string (selectedobject,22);
        remove_inv_after_using_item=ext_objs_string (selectedobject,27);
        disable_take_action=ext_objs_string (zzx,28);
        for e=1,20,1 do 
          blue (); varname=lprint("EDPOBJ_"..e.."_",5+guifix,wED*e);  
          white (); varname=lprint("EDPOBJ_"..e.."_",8+guifix,3+wED*e); 
        end     
        lg.print("Object ID="..selectedobject, 0, wED*0);
        end
      end

white () ; -- ============ вызовы всех 4 функций рендеринга  gamewindow, PC_gui, editor_gui, android_gui======================
gamewindowscanvas_do (); --==========================================================================
if (ossys~="Android")and(showandroidbar==0) then game_gui_pc_player_do ();  end
if (editor==1) then editor_gui_do (); end; 
 if (ossys=="Android")or(showandroidbar==1) then android_main_gui_do ()  end; 

white () ;
lg.setFont (fontSMALL);
white () 
 if (hardlevel<1)or(hardlevel>2) then  lg.setBackgroundColor(0, 0, 0); end ; -- фон игры. 
if (hardlevel==1) then  lg.print("Hard",maxwidth-300,0);  setBGColorX11(55, 55, 55,128); end ; -- фон игры.
if (hardlevel==2) then  lg.print("Bonus",maxwidth-300,0); setBGColorX11(0, 100, 0,128); end ; -- фон игры.
white ();
wED=wysotastroki-17; 
  -- Сделать наконец нормальный ЦЦ как в доставке надоело это уже.  версию для андроид оставить, а для ПК переделать. 


if (titlegame~="Reskue") then -- Level LV   --  нИКОГДА НЕ ПИШЕТ НИ ПРИ КАКИХ УСЛОВИЯХ   ИГРОК НЕ ДОЛЖЕН ВИДИМО ЗНАТЬ номер своего 
      print_with_shadows ("L:"..levelnumber, maxwidth-rozmiarznak*1.3, 8);
    end;
    if (editor==0) then
      print_with_shadows (""..smsg_string ("SCORE")..""..score, leftspaceonscreen-0*rozmiarznak, downspaceonscreen-wysotastroki*3); 
    end

if (typelevel=="ZX")and(editor==0)  then  lg.print("M2K ZX Import",maxwidth-5*rozmiarznak,0);  end ; --hobeta
if (typelevel=="Reskue+")and(editor==0) then lg.print("Reskue+ ZX Import",maxwidth-8*rozmiarznak,0);  end ;
if (typelevel=="fix")and(editor==0) then lg.print("Old map v"..mapversion.."/"..system_mapversion ,maxwidth-8*rozmiarznak,0);  end ;
if (targetremains)and (targetremains>0) then 
  cyan ()
 if (titlegame=="M2K") then lg.print(targetremains,15+maxwidth-3*rozmiarznak,downspaceonscreen-rozmiarznak*1.5,0,2.5,2.5);  end; 
 if (titlegame=="Reskue") then 
   --frozenscientists=scanobject (34,-2);
   if (scientists>0) then lg.print(frozenscientists+scientists,15+maxwidth-3*rozmiarznak,downspaceonscreen-rozmiarznak*1.5,0,2.5,2.5);  end; 
 end
white () ;  
 end ;


-- отрисовка инвентаря методом Canvas

--yobit  образец для копирования кода инвентаря.  -- joystick inventory table 
if (countinventory>0)and(editor==0)and(renderer==1) then 
          if (INVENTORYWINDOWCANVAS==nil) then INVENTORYWINDOWCANVAS= lg.newCanvas(rozmiarznak*12, rozmiarznak,{} ); saved_maximum=maximuminventorysize;  end; 
          --if (saved_maximum~=maximuminventorysize) then INVENTORYWINDOWCANVAS= lg.newCanva(rozmiarznak*maximuminventorysize, rozmiarznak);  end; 
                  if (inventory_changed==1) then
                          IMAGESINV = {};
                          object_to_rendering=0;
                          lg.setCanvas(INVENTORYWINDOWCANVAS); --почему ломает?  fuck 
                          lg.clear (); 
                          for a=1,countinventory,1 do
                          inventoryvisualcode=inventoryitemtable[a];
                          if (inventoryvisualcode==nil) then inventoryvisualcode=0; end; 
                           postobjectX=(a-1)*rozmiarznak; -- это координаты внутри Canvas, про внешние коррдинаты ЗАБЫВАЕМ! 
                           postobjectY=0*rozmiarznak;
                              IMAGESINV[object_to_rendering]=IMAGES[inventoryvisualcode + 1];
                              OBJECTPRINTNOW_IMAGESINV=IMAGESINV[object_to_rendering];
                              if (a==1) then postINVCANVASobjectX=1.8*rozmiarznak; postINVCANVASobjectY=1.2*rozmiarznak; end; --тут внешние.
                              if (OBJECTPRINTNOW_IMAGESINV~=nil) then

                                  if (ammoKEYPL1=="itemselect")and(itemkeypress==a) then magenta () ;end
                                  if (ammoKEYPL1=="itemuse")and(itemkeypress==a) then green () ;end
                                  if (ammoKEYPL1=="drop")and(itemkeypress==a) then red () ;end
                                  lg.draw(ATLAS,OBJECTPRINTNOW_IMAGESINV,postobjectX, postobjectY,0,scaling,scaling);
                                  white () ;
                                  object_to_rendering=object_to_rendering+1;
                              end;
                            end
                          end
                    lg.setCanvas() -- эта строчка возвращает рендерер в игровое поле. обязательная.


                  --  if (countinventory>2) then INVENTORYWINDOWCANVAS:newImageData():encode('png', "inve"..countinventory..".png"); end                 
end
-- тут заканчивается отрисовка блока инвентаря
-- тут заканчивается отрисовка игрового поля и блока инвентаря (предметный)

-- отрисовка  блока оружия и баффов weapons методом Canvas  - broń
-- отрисовка инвентаря методом Canvas
if (postKUFRCANVASobjectX~=nil)and(kufrcountinventory>0)and(editor==0) then  
      yellow(); -- рисуем элемент GUI для инвентаря  
    lg.rectangle("fill",maxwidth-postKUFRCANVASobjectX-2,postINVCANVASobjectY-2, kufrcountinventory*rozmiarznak+4+randomget, 4+rozmiarznak+randomget);
      
      white ();
    end
--yobit  образец для копирования кода инвентаря.
if (kufrcountinventory>0)and(editor==0)and(renderer==1) then 
          if (KUFRWINDOWCANVAS==nil) then KUFRWINDOWCANVAS= lg.newCanvas(rozmiarznak*12, rozmiarznak,{} );  end; 
                  if (inventory_changed==1) then
                          IMAGESKUFR = {};
                          object_to_rendering=0;
                          lg.setCanvas(KUFRWINDOWCANVAS); --почему ломает?  fuck 
                          lg.clear (); 
                          for a=0,kufrcountinventory,1 do
                          inventoryvisualcode=kufrinventoryitemtable[a];
                          if (inventoryvisualcode==nil) then inventoryvisualcode=0; end; 
                           postobjectX=(a-1)*rozmiarznak; -- это координаты внутри Canvas, про внешние коррдинаты ЗАБЫВАЕМ! 
                           postobjectY=0*rozmiarznak;
                              IMAGESKUFR[object_to_rendering]=IMAGES[inventoryvisualcode + 1];
                              OBJECTPRINTNOW_KUFR=IMAGESKUFR[object_to_rendering];
                              if (a==1) then postKUFRCANVASobjectX=80+rozmiarznak*kufrcountinventory; postINVCANVASobjectY=1.2*rozmiarznak; end; --тут внешние.
                          if (OBJECTPRINTNOW_KUFR~=nil) then 
                          lg.draw(ATLAS,OBJECTPRINTNOW_KUFR,postobjectX, postobjectY,0,scaling,scaling);
                          object_to_rendering=object_to_rendering+1;
                          end;
                            end
                          end
                    lg.setCanvas() -- эта строчка возвращает рендерер в игровое поле. обязательная.
                    lg.draw(KUFRWINDOWCANVAS,maxwidth-postKUFRCANVASobjectX,postINVCANVASobjectY) ;  -- canvas test  e
                  --  if (kufrcountinventory>2) then KUFRWINDOWCANVAS:newImageData():encode('png', "inve"..kufrcountinventory..".png"); end                 
end
-- тут заканчивается отрисовка блока инвентаря
-- тут заканчивается отрисовка игрового поля и блока инвентаря (предметный)

-- отрисовка  блока оружия и баффов weapons методом Canvas  - broń
totalbuff=1;
increasesizeobject=2;
a=math.floor (cooldownPL1ammo/2); 
if (a>rozmiarznak*increasesizeobject) then a=rozmiarznak*increasesizeobject; end; 
cooldownweaponPC1show=a;

--  образец для копирования кода оружия.
if (editor==0)and(renderer==1)and (titlegame~="Perestroika") then 
          if (BRONCANVAS==nil) then BRONCANVAS= lg.newCanvas(rozmiarznak*8, rozmiarznak,{} );  end; 
                  if (inventory_changed==1) then
                          IMAGESBRON = {};
                          object_to_rendering=0;
                          lg.setCanvas(BRONCANVAS); --почему ломает?  fuck 
                          lg.clear (); 
                          for a=1,totalbuff,1 do
                          --=inventoryitemtable[a];
                          weaponvisualcode=slot0; 
                          if (weaponvisualcode==nil) then weaponvisualcode=0; end; 
                          if (weaponvisualcode==0) then weaponvisualcode=170; end;                         
                           postobjectX=(a-1)*rozmiarznak; -- это координаты внутри Canvas, про внешние коррдинаты ЗАБЫВАЕМ! 
                           postobjectY=0*rozmiarznak;
                              IMAGESBRON[object_to_rendering]=IMAGES[weaponvisualcode + 1];
                              OBJECTPRINTNOW_IMAGESBRON=IMAGESBRON[object_to_rendering];
                              if (a==1) then postBRONCANVASobjectX=1.8*rozmiarznak; postBRONCANVASobjectY=1.2*rozmiarznak; end; --тут внешние.
                          if (OBJECTPRINTNOW_IMAGESBRON~=nil) then 
                          lg.draw(ATLAS,OBJECTPRINTNOW_IMAGESBRON,postobjectX, postobjectY,0,scaling,scaling);
                          object_to_rendering=object_to_rendering+1;
                          end;
                            end
                          end
                    lg.setCanvas() -- эта строчка возвращает рендерер в игровое поле. обязательная.
                   
                
end
-- тут заканчивается отрисовка блока оружия и баффов
-- тут заканчивается отрисовка игрового поля и блока инвентаря (предметный)
 function bad_atlas ()
if (BADATLAS==nil) then BADATLAS = lg.newCanvas(8192, basetexturesize*8,{} ); end  -- это создание пустой картинки для наполнения ее картой спрайтов.
nonetexture="1empty.png"; 
BADIMAGES = {};
for a0=0,255,1 do  -- максимум временно 170 (6800 пикс), для 1 байтового режима - 256. 
  if (objs[a0+1]==nil) then objs[a0+1]=0; end; 
BADIMAGES[a0]=objs[a0+1][3]; -- загружаем список имён из таблицы обьектов. 
end
  lg.setCanvas(BADATLAS);
  lg.clear (); 
  for i = 0, #BADIMAGES - 1 do
    local img = generate_random_image ();
    if (img==nil) then lg.newImage("Textures/"..nonetexture); end; 
    local x = i % 64;
  local y = math.floor(i / 64);
   lg.draw(img, x*basetexturesize, y*basetexturesize,0,4,4)
    -- а вот именно здесь в атлас и записывается графическое изображение.
    local quad = lg.newQuad(x*basetexturesize, y*basetexturesize, basetexturesize, basetexturesize, 8192, basetexturesize*8)
    BADIMAGES[i + 1]= quad; 
  end
  lg.setCanvas()
end

function generate_random_image () 
  if (zdata==nil) then 
        zdata = love.image.newImageData(16,16); end; 
          gc11,gc12,gc13=rnd1 (),rnd1(),rnd1();
          gc21,gc22,gc23=rnd1 (),rnd1(),rnd1();
for i=0, 255 do   -- remember: start at 0
          a=rnd1 ();
               px = i % 16
               py = math.floor(i / 16); 
          if (a==0)then zdata:setPixel(px,py, gc11, gc12, gc13) ;end; 
          if (a~=0)then zdata:setPixel(px,py, gc21, gc22, gc23) ;end; 
        end
        imgbench = love.graphics.newImage(zdata);
        return imgbench; 
      --  love.graphics.draw(imgbench , 50+line*31,50+SC_MODE*31,0,4,4);
end;

  if (love.keyboard.isDown("f9") and  love.keyboard.isDown("lctrl")) then 
        bad_atlas (); 
        map_changed=10;
        if (ATLASsaved==nil) then ATLASsaved=ATLAS; end
          ATLAS=BADATLAS;
  end

  if (love.keyboard.isDown("f9") and  (ATLASsaved~=nil) and love.keyboard.isDown("lshift") ) then 
        map_changed=2;
              ATLAS=ATLASsaved;
  end



 if (allowris)and(benchmark_stage==1) then
        bad_atlas (); 
        map_changed=140;
        if (ATLASsaved==nil) then ATLASsaved=ATLAS; end
          ATLAS=BADATLAS;
        if (timerz>4) then benchmark_stage=2;timerz=0; stage1_fps=FPSnow;
            livedtanks=0
            wsego_tank_teleporterow=30
             minimumtanks=500; 
             starttanks=500; 
            enemies={};
            editor=0;
            pause=0;
            totalenemies=0;
            sledzione_hp_tankid=0; 
            selectedtankid=nil;
            huded=0;
            totalammo=0; 
            ammoX={}; 
            selectedammoid=nil;
              map_changed=0;
              ATLAS=ATLASsaved;
              flagchecknewteleportersenemy=1;
         end; 
        end

        if (benchmark_stage==2) then 
             for a=0,30,1 do 
          randomx=math.floor (math.random (35));
          randomy=math.floor (math.random (25));
           printat (randomx,randomy, 28); 
           if (totalenemies>1)and(totalenemies<500) then  
          enemies[totalenemies+1] = class_enemy:new("tank",xt,yt,500,0,0,0,0,0,addspeed,10+addprotect,0,0,0,0,0,0,addfear,0,addslowdown,0,0,1,0,0,0);           totalenemies=totalenemies+1;
                end
            end; 
          timerx=94;
          ammoKEYPL1="placeenemy";
        if (timerz>85) then benchmark_stage=3;timerz=0; stage2_fps=FPSnow;
           livedtanks=0;
            wsego_tank_teleporterow=0
             minimumtanks=0; 
             starttanks=0;
            enemies={};
            flagchecknewteleportersenemy=0;
            totalenemies=0;
          end; 
        end

   if (benchmark_stage==3) then 
          map_changed=0;
          for a=0,50,1 do 
            o_kod=math.floor (math.random (200));

          randomx=math.floor (math.random (35));
          randomy=math.floor (math.random (25));
          if (o_kod==28) then o_kod=0; end; 
           printat (randomx,randomy, o_kod);  end; 
           if (timerz>15) then benchmark_stage=4;timerz=0; timer=0;stage3_fps=FPSnow;
            map_changed=1;
          end; 
        end

        if (benchmark_stage==4) then 
         map_changed=0;
         for a=0,100,1 do 
          randomx=math.floor (math.random (35));
          randomy=math.floor (math.random (25));
          printat (randomx,randomy, 56);  
        end
          if (timerz>24) then benchmark_stage=5;timerz=0; timer=0; stage4_fps=FPSnow;
          love.keyboard.setKeyRepeat(true);
          gameover=1;benchtitle=1; text="" ; 
        end; 
        end

--    ============================================   for SC_MODE=0,visual_mapsize_vertical,1 do   
      --  for line=0,visual_mapsize_horizontal,1 do BADATLAS:newImageData():encode('png', 'badatlas.png'); end; end
     --==============================================
 lg.setFont(font);
androidhpshowfix=0;
  if (ossys=="Android")or(showandroidbar==1) then
  lg.draw(androidguicursor, androidcursorrightposition ,cursormaxheight,0,scalingandroidcursor,scalingandroidcursor); 
  if (scaling>1) then androidhpshowfix=130*scaling; end;
  end;
   
  
 
      -- PLAYER GUI 2
     if (editor==0) then 
     graybledny () ;
     protectshow=math.floor (protect/2); 
     lg.rectangle("fill", leftspaceonscreen-androidhpshowfix+rozmiarznak-1,0,515*1.6, rozmiarznak,0,0);
     cyanbledny (); 
     if (maximumammo_PC1==nil) then maximumammo_PC1=0; end; 
     hpmaxshow=hpmax*1.6;
     if (hpmax>510) then hpmaxshow=515*1.6; end;
     ammomaxshow=maximumammo_PC1*1.6;
     if (ammomaxshow>510) then maximumammo_PC1=515*1.6; end;
     lg.rectangle("fill", leftspaceonscreen-androidhpshowfix+rozmiarznak,1,hpmaxshow, rozmiarznak/2-4,0,0);
     lg.rectangle("fill", leftspaceonscreen-androidhpshowfix+rozmiarznak,1+rozmiarznak/2, ammomaxshow, rozmiarznak/2-4,0,0);
      if (hp>0) then  if (hp>90) then  green (); end;
                    if (hp<91) then yellow () ; end; 
                    if (hp<30) then red () ; end; 
                    hpshow=hp*1.6;
                    if (hp>510) then hpshow=510*1.6; end;
                    if (protectshow>816) then protectshow=816; end;
            lg.rectangle("fill", leftspaceonscreen-androidhpshowfix+rozmiarznak,1,hpshow, rozmiarznak/2-4,0,0);
            white () ; 
            lg.rectangle("fill", leftspaceonscreen-androidhpshowfix+rozmiarznak,1+rozmiarznak/2-8,protectshow, 4,0,0);
           
            
        white ();
      end
      plusss="+  ";
    for a=1,reservedaids,1 do
      plusss=plusss.."+"; 
    end
      lg.print (plusss, leftspaceonscreen-androidhpshowfix+5+rozmiarznak,6-rozmiarznak/2); 
  
      -- Здесь должен быть GUI оружия и переключение показа имеющихся патрон в наличии.
   if (weaponselected==3) then 
                    if (ammo>90) then  green (); end;
                    if (ammo<91) then yellow () ; end; 
                    if (ammo<30) then red () ; end; 
                    ammoshow=ammo*1.6;
                    if (ammo>510) then ammoshow=510*1.6; end;
              lg.rectangle("fill", leftspaceonscreen-androidhpshowfix+rozmiarznak,1+rozmiarznak/2, ammoshow, rozmiarznak/2-4,0,0);
             -- графики накладываются, некрасиво как то
              end

  if (editor==0)and(renderer==1)and (titlegame=="Reskue") then -- GUI ELEMENTS
  widthinventoryblock=20+rozmiarznak*(maximuminventorysize-1); 
 cyanbledny () ;
 lg.rectangle("fill", 2*rozmiarznak+520*1.6,upspaceonscreen+rozmiarznak-rozmiarznak/4,widthinventoryblock, rozmiarznak/8);
 lg.rectangle("fill", 2*rozmiarznak+520*1.6+rozmiarznak/8,0, rozmiarznak/8, rozmiarznak);
  cyan(); 
 lg.rectangle("fill", 2*rozmiarznak+520*1.6,upspaceonscreen+rozmiarznak-rozmiarznak/8,widthinventoryblock, rozmiarznak/8);
 lg.rectangle("fill", 2*rozmiarznak+520*1.6,0, rozmiarznak/8, rozmiarznak);
 cyan () ;
lg.rectangle("fill", widthinventoryblock+2*rozmiarznak+520*1.6,0, rozmiarznak/8, rozmiarznak);
 
  cyanbledny (); 
lg.rectangle("fill", widthinventoryblock+2*rozmiarznak+520*1.6+rozmiarznak/8,0, rozmiarznak/8, rozmiarznak);
 

  
  white () ; 



  end

  if (ossys~="Android") then --  lg.draw(GUI_PC_CANVAS,0,0) ;  -- canvas test  e
    --setColorX11(255,255,255,50); 
    cyanbledny () ; if (titlegame~="Reskue") then graybledny () ; end 
 lg.rectangle ("fill", 0 , object_to_rendering_gui*rozmiarznak+rozmiarznak/8 , rozmiarznak+rozmiarznak/8 , rozmiarznak/8);
 lg.rectangle ("fill", 1*rozmiarznak+rozmiarznak/8, 0,  rozmiarznak/8, rozmiarznak*object_to_rendering_gui+rozmiarznak/4);
  cyan(); if (titlegame~="Reskue") then gray () ; end 
 lg.rectangle ("fill", 0,object_to_rendering_gui*rozmiarznak,rozmiarznak+rozmiarznak/8, rozmiarznak/8);
 lg.rectangle ("fill", 1*rozmiarznak,0, rozmiarznak/8, rozmiarznak*object_to_rendering_gui);
 cyan () ;if (titlegame~="Reskue") then gray () ; end 
 --setColorX11(255,255,255,255); 
    end; 


if (INVENTORYWINDOWCANVAS~=nil)and(countinventory>0)and(editor==0) then  
      yellow(); -- рисуем элемент GUI для инвентаря  
      postINVCANVASobjectX=2*rozmiarznak+520*1.6+rozmiarznak/4;          
      postINVCANVASobjectY=0; 
  if (ossys~="Android") then  lg.rectangle("fill", postINVCANVASobjectX-2,postINVCANVASobjectY-2, countinventory*rozmiarznak*0.8+4+randomget, 4+rozmiarznak*0.8+randomget); end
  if (ossys=="Android") then lg.rectangle("fill", postINVCANVASobjectX-2,postINVCANVASobjectY-2, countinventory*rozmiarznak+4+randomget, 4+rozmiarznak+randomget); end 
      
      white ();
    
      --lg.rectangle("fill", 2*rozmiarznak+520*1.6+rozmiarznak/4,0, rozmiarznak/8, rozmiarznak); 
      postINVCANVASobjectX=   2*rozmiarznak+520*1.6+rozmiarznak/4-0;          
      postINVCANVASobjectX_joystick=   2*rozmiarznak+520*1.6+rozmiarznak/4-((maximuminventorysize-5)*rozmiarznak);          
      postINVCANVASobjectY=0; 

    if (ammoKEYPL1~="itemselect")and(ossys~="Android") then lg.draw(INVENTORYWINDOWCANVAS,postINVCANVASobjectX,postINVCANVASobjectY,0,0.8,0.8) ; end  -- canvas test  e
    if (ammoKEYPL1~="itemselect")and(ossys=="Android") then lg.draw(INVENTORYWINDOWCANVAS,postINVCANVASobjectX,postINVCANVASobjectY,0,1,1) ; end  -- canvas test  e
    if (ammoKEYPL1=="itemselect") then lg.draw(INVENTORYWINDOWCANVAS,postINVCANVASobjectX_joystick,postINVCANVASobjectY,0,2,2) ;  end
end

      if (hplasttank>0) then  if (hplasttank>300) then  gray (); end;
                    if (hplasttank<301) then yellow () ; end; 
                    if (hplasttank<80) then red () ; end; 
                    
    if ((hplasttank>0)) then 
      if hplasttank>1000 then hplasttank=1000;white () ;  end; 
      -- Это ЖИЗНЬ последнего выбранного ПРОТИВНИКА!!!!!! 
       lg.rectangle("fill", leftspaceonscreen+androidhpshowfix+rozmiarznak ,downspaceonscreen, hplasttank*1.6, rozmiarznak-10,0,0);
    
    end;
    white ();
         hplt_print="";   
    if (hplt_command~="") and (sledzione_hp_tankid~=nil) then
      typt_TGD,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,jedzenietimer,zebrany_item_id,timer_alt_anim,cooldowntanks,ta,rotate_t,feartanks,aitype,slowPL1tanks,damagetimertanks,pa_icon,kulemet,cel_hp,realmovetanknow,invisibletanks,painreflecttanks,haveaura,deadanim,kierowcaczolgow,slow_effect_power,pax2,pax3,pax4,pax5,pax6,pax7,pax8=enemies[sledzione_hp_tankid]:get(); 
      if (hplt_command=="corrosion") then hplt_print=damagetimertanks;      end
      if (hplt_command=="slow") then hplt_print=slowPL1tanks.."/power "..slow_effect_power;      end
      if (hplt_command=="freeze") then hplt_print=freezetanks;      end
      if (hplt_command=="kierowca") then hplt_print=kierowcaczolgow;      end
      if (hplt_command=="fear") then hplt_print=feartanks;      end
      if (hplt_print==0) then hplt_print=""; hplt_command=""; end; 
    end
   black () ; 
   printparam (hplasttank,leftspaceonscreen+androidhpshowfix+rozmiarznak,downspaceonscreen,"/"..hplt_command.."/"..hplt_print.."/");
   white (); 
      end


  if (postBRONCANVASobjectX~=nil)and (debufftable~=nil)and(cooldownPL1ammo>0)and(editor==0) then  
      red(); -- рисуем элемент GUI для инвентаря  
    lg.rectangle("fill",  maxwidth/2-rozmiarznak*increasesizeobject+0, downspaceonscreen-rozmiarznak+0, totalbuff*rozmiarznak*increasesizeobject+4+randomget,cooldownweaponPC1show*increasesizeobject,2,2);-- 4+rozmiarznak+randomget
    
    end
 if (postBRONCANVASobjectX~=nil)and (debufftable~=nil)and(editor==0) then  
    white ();
    if (cooldownweaponPC1show<2) then inwisible () ; end; 
 --lg.draw(BRONCANVAS, debufftable-rozmiarznak, 3,0,increasesizeobject,increasesizeobject) ;  -- canvas test  e  postBRONCANVASobjectX--lg.draw(GAMEWINDOWCANVAS,postCANVASobjectX,postCANVASobjectY) ;
 lg.draw(BRONCANVAS, maxwidth/2-rozmiarznak*increasesizeobject+3 , downspaceonscreen-rozmiarznak+3,0,increasesizeobject,increasesizeobject) ;  -- canvas test  e  postBRONCANVASobjectX--lg.draw(GAMEWINDOWCANVAS,postCANVASobjectX,postCANVASobjectY) ;
end
   end
    white ()
    --   electedobject  outdated -- Печать обьекта к которому прикоснулись в последний раз. 
    selectedobject_name_SMSG_code=objs[((zzx+1))][13];
    a,item_name=smsg_string (selectedobject_name_SMSG_code);
    if (item_name~=nil) then lg.print( item_name, 480, 0); end; -- Печать обьекта к которому прикоснулись в последний раз.  
    
      if (auramax>0)and(otladka==1) then 
      green (); lg.setFont(fontVERYSMALLX)  print_r (auras,0,0);  white () ; end; 

      
     
if (pause==1)and(gameover==0) then      lg.setFont(fontVERYBIG);   randomcolor ()  ;  lprint("PAUZA", maxwidth/4,maxheight/2);   lg.setFont(font);white (); end;

   if (targetremains<1)and(editor==0) then 
      lg.setFont(fontVERYBIG);green ();

      if (glowlock==0)and(glowtimer==0) then glowtimer=17; 
        love.audio.play(zwuk2snd);
      end
    if (glowtimer<2) then glowlock=1; end;       
    if (glowlock==1) then glowtimer=0; end; 
       if (ossys=="Android") then lprint("ANDR_NEXT_LEVEL", maxwidth/4,maxheight/2); end;
       addkeyprint="";
       if (ossys~="Android")and (titlegame~="Reskue")and (titlegame~="Kolonista") then
        if (rzad=="pad") and ( typejoystick=="xbox360") then addkeyprint="[A].";end;
        if (rzad=="pad") and ( typejoystick=="sonyPS3") then addkeyprint="[X].";end;
        if (rzad=="kb") then addkeyprint="[SPACE].";end;
        keyprint=smsg_string ("WIN")..addkeyprint;
        lg.print(keyprint, maxwidth/4,maxheight/2); end;
       lg.setFont(font) ; white ();
    end;
    if (glowtimer>0) then glowtimer=glowtimer-1; end
    if (timenadpisej~=0) then timenadpisej=timenadpisej+4; end; 
    if (timenadpisej>799)and(reskuegameoverstep==1) then timenadpisej=1; reskuegameoverstep=2;love.audio.play(dymok3snd);  end;  --pause=0; может не убирать паузу? 
    if (timenadpisej>799)and(reskuegameoverstep==2) then timenadpisej=0; reskuegameoverstep=3;love.audio.play(dymok4snd); renderer=0; end;  --pause=0; может не убирать паузу? 

    if ((targetremains<1))and(editor==0)and(ossys=="Android") then  -- иконка следующего уровня для Android
           yellow (); 
           lg.draw (RESURRECT_ANDROID_ICO,rozmiarznak*3,rozmiarznak*3,0,2,2); 
         end

   if ((ammo>0))and(editor==0)and(ossys=="Android") then  -- иконка следующего уровня для Android
           blue (); 
           lg.draw (RESURRECT_ANDROID_ICO,rozmiarznak*7,rozmiarznak*3,0,2,2); 
         end
     
if ((hp<1)and(lives>0))and(editor==0) then 
      lg.setFont(fontVERYBIG);  red () ; 
      
        if (ossys=="Android") then lprint("ANDR_DEAD", maxwidth/4,maxheight/2); -- иконка воскрешения с задержкой для Android
           green (); if (resurrecttimer>0) then red ();  end; 
           lg.draw (RESURRECT_ANDROID_ICO,rozmiarznak*3,rozmiarznak*3,0,2,2); 
      
           end;
       if (ossys~="Android") then 
        msg=smsg_string "DEAD".." ["..uurestkey.."] ".. smsg_string "2DEAD"; 
        if (rzad=="pad") then msg=smsg_string "DEAD".." [R3] ".. smsg_string "2DEAD"; end; 
        
         lg.print(msg, maxwidth/4,maxheight/2); end;
      lg.setFont(font); white ();
      resurrecttimer=resurrecttimer-1; 
      if (resurrecttimer>0) then   lg.print(resurrecttimer, rozmiarznak*2,rozmiarznak*2,0,3,3);  end; 
    end;

    
    if ((lives<1)and(hp<1))and(editor==0)or (missionfailed==1) then 
        if (titlegame~="Reskue") then randomcolorbw (); gameover=1; end

      lg.setFont(fontVERYBIG);     lprint("GAMEOVER", maxwidth/4,maxheight/2); lg.setFont(font);
if (titlegame~="Perestroika")and(titlegame~="Reskue")and( deadsoundplayed==0) then  love.audio.play(dymok1snd);  deadsoundplayed=1; end; 
    if(titlegame=="Reskue") then 
      
      if (gameover==0)and(timenadpisej==0) then 
        slot5=0; 
        reskuegameoverstep=1; gameover=1; timenadpisej=1;  dead_x={};dead_y={};dead_clr={}; pause=1;
        for a=1,800,1 do 
        rnd_x=math.ceil(math.random(visual_mapsize_horizontal*rozmiarznak));
        rnd_y=math.ceil(math.random(visual_mapsize_vertical*rozmiarznak));
        rnd_clr=math.ceil(math.random(7));
        dead_x[a],dead_y[a],dead_clr[a]=rnd_x,rnd_y,rnd_clr;
      end
        love.audio.play(dymok2snd); 
      end; 

    --Почему я не могу построить дом в воздухе? У меня кирпичи падают."  я своё сделаю С блекджеком и еррорами
        if (reskuegameoverstep>0)and(timenadpisej>0) then 
          if (reskuegameoverstep==1) then cycle=timenadpisej; end
          if (reskuegameoverstep==2) then cycle=800; end
    for trc=1,cycle,1 do 
            Spektrum_Kolorowanie (dead_clr[trc]);
        lprint("GAMEOVER",dead_x[trc],dead_y[trc],0,10,10);
    end      --smsg1="trc="..trc.." timenadpisej="..timenadpisej;
    end

   if (reskuegameoverstep==2)and(timenadpisej>0)  then 
    setColorX11 (250,250,250,250);

    --msgbox_tlo (maxwidth/4-4*rozmiarznak,maxheight/2-4*rozmiarznak,(visual_mapsize_horizontal/6*5)*rozmiarznak-0*rozmiarznak*ObjectSIZE, rozmiarznak*6-0*rozmiarznak*ObjectSIZE);
      --if (missionfailed==1) then lprint("NO_SCI_LEFT", maxwidth/4,maxheight/2-2*rozmiarznak); end;
      --if (missionfailed==0) then lprint("BELIEVE", maxwidth/4,maxheight/2-2*rozmiarznak); end;
      czas_wyswietlania=120;
      if (missionfailed==1) then teskt_wiadomosci_smsg="NO_SCI_LEFT"; end
      if (missionfailed==0) then teskt_wiadomosci_smsg="BELIEVE"; end

      end
      white ()
    end

    if (lives>0)and(gameover==0) then dead_x={};dead_y={}; dead_clr={};end

        white () ;
    end;
lg.setFont(font);

  if (WELCOME_WINDOW_FIRSTLOAD==1)and(renderer==1)or love.keyboard.isDown("f7") then 
   if (titlegame~="Mozaic") then teskt_wiadomosci_smsg="WELCOME_WINDOW_FIRSTLOAD2";  czas_wyswietlania=50; end;
   if (titlegame=="Mozaic") then teskt_wiadomosci_smsg="MOZAJKA2"; czas_wyswietlania=50 ;end;
     WELCOME_WINDOW_FIRSTLOAD=0;
    --if (timerz>6) then if (timerz>40)or  love.keyboard.isDown("escape")or (escapepressed==1)or (spacepressed==1) or (joystickKEYPL1=="O") then     -- end end 
 end
   czas_wyswietlania=ubywanie (czas_wyswietlania)
   --smsg1="czas="..czas_wyswietlania.." te"..teskt_wiadomosci_smsg;

   function wiadomosc_dla_gracza () 
    if (czas_wyswietlania==0)and (teskt_wiadomosci_smsg~="")  then incontrolcentre=0;  end
    if (czas_wyswietlania>0)and (teskt_wiadomosci_smsg~="")  then      --renderer=1; pause=0;
      incontrolcentre=1;
       setColorX11 (250,250,250,250);
    msgbox_tlo (maxwidth/4-4*rozmiarznak,maxheight/2-4*rozmiarznak,(visual_mapsize_horizontal/6*5)*rozmiarznak-0*rozmiarznak*ObjectSIZE, rozmiarznak*6-0*rozmiarznak*ObjectSIZE);
    msgbox (smsg_string (teskt_wiadomosci_smsg),maxwidth/4-3*rozmiarznak,maxheight/2-4*rozmiarznak,standartwysotatextmenu,55) 
     --lprint(teskt_wiadomosci_smsg, maxwidth/4-3*rozmiarznak,maxheight/2-4*rozmiarznak);      --function msgbox (textdata,x,y,wysotastroki,szerokosc) 
     white ();
     if (ammoKEYPL1~="")or love.keyboard.isDown("escape")or (escapepressed==1)or (spacepressed==1) or (joystickKEYPL1=="O")  then 
        czas_wyswietlania=0;  --(movePL1~="")  or 
        teskt_wiadomosci_smsg=""; pause=0; 
        escapepressed=0; spacepressed=0; 
        incontrolcentre=0;  timerz=0;map_changed=1;
        return 1;
       end ; 
       end ;
    return 0 ; 
  end
  readed=wiadomosc_dla_gracza () ;


    function msgbox_tlo (posx,posy,width,height)
      blue ();
    lg.rectangle("fill", posx,posy,width,height);  
    white ();
    lg.rectangle("fill", posx-1*rozmiarznak,posy-1*rozmiarznak,width,height);  
      blue (); 
      return 1; 
    end

  if (ObjectSIZEchangeallow==1) then  --==266 
    if (ObjectSIZE>5) then ObjectSIZE=5; end;  
    if (ObjectSIZE<0) then ObjectSIZE=0; end;
    renderer=1;
    pause=0;
    incontrolcentre=1;
    setColorX11 (250,250,250,250);
    msgbox_tlo (maxwidth/4-4*rozmiarznak,maxheight/2-4*rozmiarznak,(visual_mapsize_horizontal/6*5)*rozmiarznak-0*rozmiarznak*ObjectSIZE, rozmiarznak*6-0*rozmiarznak*ObjectSIZE);
    lprint("ObjectSIZEMSG", maxwidth/4-3*rozmiarznak,maxheight/2-4*rozmiarznak); 
     lg.print(ObjectSIZE, maxwidth/4-3*rozmiarznak,maxheight/2-3*rozmiarznak); 
        white ()
        if (timerz>4) then 
      if (ObjectSIZE>0) and (movePL1=="left") then
         love.audio.play(swapitem);
         ObjectSIZE=ObjectSIZE-1; timerz=0;
         reschange (resolutionPC);         map_changed=3;
       end
       if (ObjectSIZE<2)and movePL1=="right" or (ObjectSIZE<5)and movePL1=="right" and (editor==1)then
         love.audio.play(swapitem);
         ObjectSIZE=ObjectSIZE+1; timerz=0;
         reschange (resolutionPC);         map_changed=3;
       end
       if love.keyboard.isDown("escape")or (escapepressed==1)or (spacepressed==1) or (joystickKEYPL1=="O") then 
        ObjectSIZEchangeallow=0; escapepressed=0; spacepressed=0; 
        incontrolcentre=0;  timerz=0;
       end
     end 
    end

if ((zzx<500)and (objs[((selectedobject+1))]~=nil)) then  --selectedobject

     
   --if (editor==1) then red () ; lg.print("3",xtt+0, ytt-rozmiarznak/2); white () ; end; 

   a,item_name1=smsg_string (objs[((selectedobject+1))][13]); --=selectedobject_name_SMSG_code);    
   a,item_name2=smsg_string (objs[((selectedobject2+1))][13]); --=selectedobject_name_SMSG_code);    
 if (item_name1==nil) then item_name1="***ERROR FIELD***"; end;
 if (item_name2==nil) then item_name1="***ERROR FIELD***"; end;
      
      if (editor==1) then
        bukwy="";
       lg.print("Obj1:"..selectedobject..","..item_name1, maxwidth-1200, maxheight-wysotastroki*2);
       lg.print("Obj2:"..selectedobject2..","..item_name2, maxwidth-600, maxheight-wysotastroki*2);
        if (item_name1~=nil)and(object1image~=nil)and(textures[object1image]~=nil) then -- nowy bandery dla gry
        takeable=ext_objs_string (selectedobject,19);
        usable=ext_objs_string (selectedobject,22);
        remove_inv_after_using_item=ext_objs_string (selectedobject,27);
        disable_take_action=ext_objs_string (selectedobject,28);
        
        if (takeable=="take") then bukwy="tak"; end
        if (usable=="usable") then bukwy=bukwy.." use"; end
        if (remove_inv_after_using_item=="removeinvafteruse") then bukwy=bukwy.." rmv"; end
        if (disable_take_action=="disabletakeaction") then bukwy=bukwy.." drtk"; end -- disable retake when using flag 
       
       red (); lg.print(""..bukwy, 200, maxheight-wysotastroki*2); white (); 
        end
      
       object1image =  objs[selectedobject+1][3]; 
       object2image =  objs[selectedobject2+1][3];  
         if (object1image~=nil)and(object2image~=nil) then if (previousselect1image~=object1image)or(previousselect2image~=object2image) then 
          textures[object1image] = lg.newImage("Textures/"..object1image); 
          textures[object2image] = lg.newImage("Textures/"..object2image);
         end; end;  
      if (object1image~=nil)and(textures[object1image]~=nil) then lg.draw(textures[object1image], maxwidth-1300, maxheight-wysotastroki*2,0,scaling*1.3,scaling*1.3   );   end;
      if (object2image~=nil)and(textures[object2image]~=nil) then lg.draw(textures[object2image], maxwidth-700, maxheight-wysotastroki*2,0,scaling*1.3,scaling*1.3);   end;
        end;
        previousselect1image=object1image; 
        previousselect2image=object2image; 
                end;

if (ammoKEYPL1=="itemselect") then skalowanie_smsg1=2; else skalowanie_smsg1=1; end;

if (smsg1~=nil) then print_with_shadows (smsg1, leftspaceonscreen*0+ 1*rozmiarznak,downspaceonscreen-wysotastroki*1,skalowanie_smsg1);   end  -- "SMSG:"..  SMSG1:"..  uj najdziesz

if (smsg1==nil) then smsg1="SMSG nil"; end
randomget=math.ceil (math.random(200));--and (randomget==1)
 green (); if (randomget>90) then gray ();end; 
debufftable=maxwidth-rozmiarznak*2;
lg.setFont (fontVERYBIG); 
if (tank>0) then lg.print("T",debufftable-0,5+upspaceonscreen+wysotastroki*1); end --inventory
 if (extradroids>0) then lg.print("E",debufftable-30,5+upspaceonscreen+wysotastroki*1); end --inventory
 if (protect>0) then  lg.print("P",debufftable-40,5+upspaceonscreen+wysotastroki*1);end
 if (passthrurock>0) then  lg.print("R",debufftable-80,5+upspaceonscreen+wysotastroki*1);end
 if (acidprotect>0) then  lg.print("A",debufftable-120,5+upspaceonscreen+wysotastroki*1);end
 if (invisibletimerPL1>0) then  lg.print("I",debufftable-150,5+upspaceonscreen+wysotastroki*1);end
 if (latarnia>0) then  lg.print("B",debufftable-180,5+upspaceonscreen+wysotastroki*1);end
 red () ;if (randomget>90) then gray ();end; 
 if (freezetimerPL1>0) then  lg.print("F",debufftable-100,5+upspaceonscreen+wysotastroki*1); end
 if (damagetimerPL1>0) then  lg.print("W",debufftable-120,5+upspaceonscreen+wysotastroki*1); end
 if (feartimerPL1>0) then  lg.print("*",debufftable-120,5+upspaceonscreen+wysotastroki*1); end
 if (slowPL1>0) then  lg.print("S",debufftable-130,5+upspaceonscreen+wysotastroki*1); end
  if (darkzone>0) then  lg.print("D",debufftable-140,5+upspaceonscreen+wysotastroki*1);end

  if (cursedtimerPL1>0) then  lg.print("C",debufftable-160,5+upspaceonscreen+wysotastroki*1);end
white ()  
 lg.setFont (fontSMALL); SystextSMG="";
       if (solarenergy>0) then SystextSMG=SystextSMG.." Sol:"..solarpower.." ["..solarenergy.."]" ; end; 
    if (etatimer>0) then SystextSMG=SystextSMG.." ETA:"..etatimer;end;
    if (totalenemies>0)and(titlegame~="Perestroika") then SystextSMG=SystextSMG.." Tanks:"..livedtanks ; end; --"..livedtanks.."/"..
    if (scientists>0) then SystextSMG=SystextSMG.." Humans:"..scientists ; end; 


if (otladka==1) then lg.print("SMSG5:"..smsg5, 0,downspaceonscreen-wysotastroki*3);    
lg.print("SMSG6:"..smsg6, 0,downspaceonscreen-wysotastroki*4);   end

if (SystextSMG~="")and(editor==0) then print_with_shadows (SystextSMG, maxwidth-600,5+downspaceonscreen+wysotastroki*0); end; 
   lg.setFont(fontSMALL);
   setColorX11(255,255,255,50); 
   lg.print(system_all_data, 1, maxheight-wysotastroki+14); 
   setColorX11(255,255,255,255);  
       yellow ()
       if (fpslock==1) then red () ; end; 
    FPSnow=love.timer.getFPS();
    lg.print("FPS:"..FPSnow, maxwidth-rozmiarznak*2, maxheight-rozmiarznak*0.9);
    if (otladka==1) then red () ; lg.print("DEBUG", maxwidth-rozmiarznak*2, maxheight-rozmiarznak*2); white () ; end; 
 white () ; 
 if (menuoption>0) then 
if (otladka==1) then lg.print("Mode:"..ammoKEYPL1, leftspaceonscreen+650,downspaceonscreen+wysotastroki*2);   end;

if (otladka==1) then
 lg.print("SMSG2:"..smsg2, 0,downspaceonscreen+wysotastroki*0.5); 
 lg.print("SMSG3:"..smsg3, 0,downspaceonscreen+wysotastroki*0);   
 lg.print("SMSG4:"..smsg4, 0,downspaceonscreen+wysotastroki*-2);  
 lg.print("movePL1:"..movePL1, leftspaceonscreen,499+androidhpshowfix-11*wysotastroki); 
      end;
      end

    return 1;
end;



function love.mousepressed  (...)

--(x, y, button, istouch)
  Gesture_SwipeN.mousepressed(x, y, button, istouch);
  Gesture_SwipeS.mousepressed(x, y, button, istouch);
  Gesture_SwipeLDC.mousepressed(x, y, button, istouch);
  Gesture_LongPressGesture.mousepressed(x, y, button, istouch);
  Gesture_DoubleTap.mousepressed(x, y, button, istouch);
end

function love.mousereleased(x, y, button, istouch)
  Gesture_SwipeN.mousereleased(x, y, button, istouch)
  Gesture_SwipeS.mousereleased(x, y, button, istouch)
  Gesture_SwipeLDC.mousereleased(x, y, button, istouch);
  Gesture_LongPressGesture.mousereleased(x, y, button, istouch);
  Gesture_DoubleTap.mousereleased(x, y, button, istouch);
end

function love.resize (w,h)
  maxwidth=w; 
  maxheight=h;
  --maxwidth=lg.getWidth();   maxheight=lg.getHeight();
  reschange (6) ;
 end

-- Автосохранение при выходе из игры. (любым способом , хоть Alt-F4) 
function autosave_execute ()
   if (score>1) then 
   execute="savegame";ammoKEYPL1="savegame";  selectedoptionmenu=0;menu=0;
   savegamename="autosave-2";
   ammoKEYPL1="";
    xdatapreparetowrite (); 
      -- в этом месте должны быть переданы наигранные параметры для сохранения игры. 
         datatowrite=table.concat(xdata);
   levelname="autosave-2" ;
   sourcewrite(datatowrite,levelname); -- новый способ save уровня через IO LUA  
   renderer=1; selectedoptionmenu=0;pause=0;
    end; 
end

-- Автосохранение при выходе из игры. (любым способом , хоть Alt-F4) 
function love.quit ()

   if (score>1) then 
   execute="savegame";ammoKEYPL1="savegame";  selectedoptionmenu=0;menu=0;
   savegamename="autosave-exit";
   ammoKEYPL1="";
   xdatapreparetowrite ();
      -- в этом месте должны быть переданы наигранные параметры для сохранения игры. 
         datatowrite=table.concat(xdata);
   levelname="quicksave-autoexit" ;
          
    sourcewrite(datatowrite,levelname); -- новый способ save уровня через IO LUA  
        renderer=1; selectedoptionmenu=0;pause=0;
  end; 
  if Steam then   Steam.shutdown() ; end; 

end

 function love.run()
 --spacepressed=0; 
  if love.math then
    love.math.setRandomSeed(os.time())
  end
 
  if love.load then love.load(arg) end
 
  -- We don't want the first frame's dt to include time taken by love.load.
  if love.timer then love.timer.step() end
 
  local dt = 0
 
  -- Main loop time.
  while true do
    -- Process events.
    if love.event then
      love.event.pump()
      for name, a,b,c,d,e,f in love.event.poll() do
        if name == "quit" then
          if not love.quit or not love.quit() then
            return a
          end
        end
        love.handlers[name](a,b,c,d,e,f)
      end
    end
    -- Update dt, as we'll be passing it to update
    if love.timer then
      love.timer.step()
      dt = love.timer.getDelta()
    end
    -- Call update and draw
    if love.update then love.update(dt) end -- will pass 0 if love.timer is disabled

    if love.graphics and love.graphics.isActive() then
      love.graphics.clear(love.graphics.getBackgroundColor())
      love.graphics.origin()
      if love.draw then love.draw() end
      love.graphics.present()
    end
    if (fpslock==0) then if love.timer then love.timer.sleep(0.004) end end 
    if (fpslock==1) then if love.timer then love.timer.sleep(0.022) end end 
  end
end
-- Самобытное творчество игр и ремейков по мотивам Spectrum -- https://dtf.ru/retro/91476-ishchu-lyubiteley-igr-zx-spectrum
-- Слова которые важно знать.-- 1. Мирный Дюк-- 2. Мир делает мяч.-- 3. Твой кролик написал.
