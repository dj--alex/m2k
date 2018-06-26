if not love then 
    error('This plugin for LOVE2D framework, and not works with other lua-builds'..
                'Also it requires love.filesystem and love.thread modules', 2)
end
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
editorobjects=0;
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
inventoryitem1=0;
inventoryitem2=0;
inventoryitem3=0;
inventoryitem4=0;
countinventory=0;
maximuminventorysize=5;
inventoryitemtable={}; -- создание инвентаря из 4 или более слотов опционально.
allowpowerrescan=0;
gamescreenfixhorizontal=0;
gamescreenfixvertical=0;
solarpanel=0;
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
woodenwall=0;
battery=0; 
fencewall=0;
steelwall=0;
speedtimer=0
speedtimerpla2=0;
ostype=love.system.getOS()
loadsavegame=0;
saveslot=0;
selectmusic=0;
resolutionPC=0;
zero=0;
selectedoptionmenu=1;
wsego=0;
acidprotect=0;
-- [+] Добавлен антикислотный скафандр, одевается вместо защитного костюма,старый костюм оказывается в инвентаре. Можно свободно перемещатся по кислоте. Костюм легко повреждается при стрельбе.
-- [+] скафандр невозможно использовать одновременно с танком - он будет оставлен в том месте где находился скафандр.
-- [+] Разрешение теперь не будет менятся при каждой загрузке уровня.
-- [+] Через лаву теперь стрелять нельзя, но через кислоту - можно.
-- [+] Редактор:: Добавлено скрытие сломанных в ходе игры обьектов в составе меню обьектов для рисования уровня. Однако при желании их показ можно включить в настройках
-- [+] Программа:: Scanobject улучшен -5 - указывает что надо вернуть обьект который найдется № по списку, например второй или третий.
-- [+] Программа:: Сокращение и унификация кода, перемещение, выстрелы персонажей. Подготовка к версии Multiinstance monsters.
-- [+] Бомбы теперь не могут взорвать кнопку управления дверями и треснувшие стены.
-- [+] Полностью переработаны и обьединены модули стрельбы танков и пушек, теперь они уничтожают обьекты по одинаковым описаниям. 
-- [+] Исправлена анимация выстрелов пушек, теперь она не зависит от положения камеры.
-- [+] Monsters Запланировано: мультиинстанс - возможность создавать инстанции монстров - т.е. каждый монстр самостоятелен и не требует модуля в программе.
-- [+] Генерация класса и конкретных танков через ООП. Возможность легко запросить и установить параметры конкретному танку.
-- [+] Визуализация
-- [+] Плавное перемещение, препятствия, взаимодействие с предметами для доп. танков. 
-- [+] При перемещении поля танки должны оставатся на своих местах. а не на абсолютных.  (q) 
-- [+] Исправление: Танк 1 теперь использует только 1 иконку с ротацией, а не набор иконок.

-- После рестарта игры инвентарь не очищается и не заменяется.
-- область видимости для танков.  (желательно)
-- при смене разрешения танки оказываются сбитыми в позициям. 
-- область видимости для звуков.  (желательно)
-- Взаимодействие с игроком, реакция на выстрелы игрока, спецэффекты (заморозка, защита, ускорение)
-- Выстрелы
-- Старые баги: анимация телепорта отсутствует.
-- Старые баги: анимация огня отсутствует.
-- Рикошет - отсутствует.
-- Запланировано: нет сохраняемых настроек локально. - f = io.open(getScriptPath().."\\param.ini", "w")  
-- Запланировано: fire при попытке его взорвать должен занять все свободные рядом клетки. не сделано (всё готово - greenshit() )
  local textinput = {keys = {default = ''}, current = 'default'}
player2AI=1; --   1 перед релизом.
startshootcoordinatex=-1;
startshootcoordinatey=-1;
hpdetect=0;
skany=-1;
skanx=-1;
hpdetech=1;
add="";
t="";
ax=0;
menu=0;
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
ostype="uj";
defacescreen=0;
xdataarchived=0;
menuoption=0;
renderammoshot=0;
freezePL1=0;
freezePL2=0;
freezePL3=0;
freezePL4=0;
freeze=0;
freezetimer=2;
freezetimerPL1=2;
freezetimerPL2=2;
freezetimerPL3=2;
freezetimerPL4=2;
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
ey=10;
sy=10;
sx=10;
exp=10;
zx=10;
zy=10;
p1=10;
dr=10;
tx=10;
ty=10;
wt=10;
p2=10;
p3=10;
p4=10; 
targetremains=10;
   powerstate=10;
   puszkistate=10;
paralysatorrifle=0;
paralysatorammo=0;
--задаются переменные, да таким вот тупым методом, но по другому никак.
--иначе они не цифровые получаются. а хрен знает какие и одни ошибки сыплются.
--Все эти переменные задаются только один раз , некоторые потом будут в сохранёнке.
score=0;
drawonce=0; 
maxwidth=love.graphics.getWidth();
maxheight=love.graphics.getHeight();

rozmiarznak=40 ; -- контролирует размер знакоместа в игре. размер по умолчанию.ы
standartwysotagraphicmenu=70;
standartwysotatextmenu=30;
--standartwysotagraphicmenu=40;
--if (ostype=="Linux") then maxwidth=2420; end;  -- для меня, потом не забыть убрать!!!!!!!
-- height - wysota  width - szirina.


function setresolution (maxwidth) 
  if (ostype=="Android") then plusandr=0; else plusandr=5; end 
   if (maxwidth>0) then rozmiarznak=16 ; standartwysotagraphicmenu=40; standartwysotatextmenu=30; standartsizeusermenu=90;
    gamescreenfixhorizontal=-12; gamescreenfixvertical=0;
    visual_mapsize_horizontal=28+plusandr;
    visual_mapsize_vertical=19; end;  
    
   if (maxwidth>900) then rozmiarznak=16 ; standartwysotagraphicmenu=40; standartwysotatextmenu=30; standartsizeusermenu=90;
    gamescreenfixhorizontal=-6; gamescreenfixvertical=0;
    visual_mapsize_horizontal=30+plusandr;
    visual_mapsize_vertical=21;end;

if (maxwidth>1020) then rozmiarznak=20 ; standartwysotagraphicmenu=65; standartwysotatextmenu=35;standartsizeusermenu=90;
    gamescreenfixhorizontal=-4; gamescreenfixvertical=0;
    visual_mapsize_horizontal=31+plusandr;
    visual_mapsize_vertical=21;end;

if (maxwidth>1120) then rozmiarznak=24 ; standartwysotagraphicmenu=70;standartwysotatextmenu=35; standartsizeusermenu=100;
    gamescreenfixhorizontal=0; gamescreenfixvertical=0;
    visual_mapsize_horizontal=34+plusandr;
    visual_mapsize_vertical=23;end;

if (maxwidth>1919) then rozmiarznak=32; standartwysotagraphicmenu=100;standartwysotatextmenu=50; standartsizeusermenu=140;
    gamescreenfixhorizontal=6;    gamescreenfixvertical=0;
    visual_mapsize_horizontal=34+plusandr;
    visual_mapsize_vertical=23;end;

if (maxwidth>2300) then rozmiarznak=40; standartwysotagraphicmenu=120; standartwysotatextmenu=50; standartsizeusermenu=180;
  gamescreenfixhorizontal=8; gamescreenfixvertical=0;
  visual_mapsize_horizontal=34+plusandr;
  visual_mapsize_vertical=23;end;

if (maxwidth>2500) then rozmiarznak=50; standartwysotagraphicmenu=140; standartwysotatextmenu=50; standartsizeusermenu=250;
   gamescreenfixhorizontal=8; gamescreenfixvertical=0;
   visual_mapsize_horizontal=40+plusandr;
   visual_mapsize_vertical=30;end;

   if (maxwidth>3000) then rozmiarznak=50; standartwysotagraphicmenu=140; standartwysotatextmenu=50; standartsizeusermenu=250;
   gamescreenfixhorizontal=8; gamescreenfixvertical=0;
   visual_mapsize_horizontal=50+plusandr;
   visual_mapsize_vertical=36;end;


font = love.graphics.newFont("AvenueX-Regular.otf", rozmiarznak-4) -- 
fontBIG = love.graphics.newFont("AvenueX-Regular.otf", rozmiarznak+2) -- 
fontVERYBIG = love.graphics.newFont("AvenueX-Regular.otf", rozmiarznak+9) -- 
fontSMALL = love.graphics.newFont("AvenueX-Regular.otf", rozmiarznak-7) -- 
return 1;
end

--if (ostype=="Linux") then maxwidth=3001; end
visual_mapsize_horizontal=34;
visual_mapsize_vertical=22; --bylo 27
if (drawonce==0) then setresolution (maxwidth);  end;

-- важно - эти же параметры должны быть в ТОЧНОСТИ такие же при смене разрешения. решено.
scalingmenu=standartwysotagraphicmenu/70;
         --postobjectX=
mapsize_horizontal=250;
mapsize_vertical=201;
-- bylo 27 
rightspaceonscreen=gamescreenfixhorizontal*rozmiarznak+240+visual_mapsize_horizontal*rozmiarznak; -- первое свободное место права от поля игры.
leftspaceonscreen=gamescreenfixhorizontal*rozmiarznak+240+0*rozmiarznak; 
downspaceonscreen=visual_mapsize_vertical*rozmiarznak-rozmiarznak+gamescreenfixvertical*rozmiarznak; -- понадобится для обновленного модуля editor

love.graphics.setDefaultFilter('nearest'); -- улучшает SCALING

function love.load()

-- тут задаются переменные которые должны обнулятся до каждой загрузки уровня.
express=0;
repairroad=0;
editor=0;
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

if (bdata) then build=bdata[1][1]; end  --загружем версию билда.

smsg1="M2k (Mission2000 remake) b"..build;-- сообщение пользователю по умолчанию. 
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


man_step  = rozmiarznak;  -- шаг движения чувака (равен размеру клетки)  всегда и во всех случаях. Для всех переменных. 
scaling=rozmiarznak/40; -- пытается сам растянуть текстуры нв другое разрешение.
-- это коэффициент для работы с основными иконками и знакоместами 20х20
--scalingmenuicon=- FUCK FUCK 

x=0;
y=0;
x2=0;
y2=0;


  default_man_speed = 210+280*scaling;
  --smsg1 = "scaling factor="..scaling;
  man_speed= default_man_speed;

wysotastroki=rozmiarznak-2; -- шаг для строк отображения в меню ы
if (maxwidth>1900) then wysotastroki=rozmiarznak-4; end; -- шаг для строк отображения в меню ы
man_x2 = 0;  -- целевое положение пули
man_y2 = 0;  -- целевое положение пули
man_speed2 = 600+240*scaling; -- скорость движения пули в пикселях в секунду
man_is_moving2 = false; -- проигрывается ли анимация движения

man_xpla2 = 0;  -- целевое положение player2
man_ypla2 = 0;  -- целевое положение player2
man_speedpla2 = man_speed; -- скорость движения player2 в пикселях в секунду
man_is_movingpla2 = false; -- проигрывается ли анимация движения

man_x2pla2am = 0;  -- целевое положение player2 пуля
man_y2pla2am = 0;  -- целевое положение player2 пуля
man_speedpla2am = 600+240*scaling; -- скорость движения player2 пуля в пикселях в секунду
man_is_movingpla2am = false; -- проигрывается ли анимация движения

x3pla2am=0;
y3pla2am=0;
cannon_shoot3 = false; -- ne isp



function gamex (x)
     x=(x-240)-gamescreenfixhorizontal*rozmiarznak+cameraleftpos_x_hor*rozmiarznak;
     x=(x/rozmiarznak)-1; --  это поправка для любого размера
 return x; 
end

function gamey (y)
    y=(y/rozmiarznak)-gamescreenfixvertical+camerauppos_y_vert;
 return y;
end;
--gamex i gamey делят реальные координаты для получения простых координат совместимых с уровнем.
--обычно используются для печати обьекта в поле игры через printatы
--они не подходят для перемещения человечка, там нужно умножение.

function coord (x,y)-- x это вертикаль 0-18 y - gorizontałs  1,1 lw ugol
--if (x==nil) then x=0;end;
--if (y==nil) then y=0;end;
   write=(x)*mapsize_horizontal+(y)-mapsize_horizontal+18; --write=x*32+y-14; м  visual_mapsize_horizontal
   return write;
end;


-- самая минимальная координата которую она выдает почему то в режиме Bigmap=236
-- странно ничего не изменилось при прорисовке.
-- при рисовании из редактора все обьекты попадают на 232 правее чем надо. 
-- хотя координаты coord (x,y) pri  write=x*250+y-250; указывают на правильное ид для xdata. 
-- pri 250   x=30 рисуют  но реально стирается в х=12


--функция считывает код обьекта из карты и возвращает его, работает по знакоместам.
--что и обеспечивает использование gamey и gamex в вызове. возможно они будут вынесены в нее
--screens (gamey (y),gamex (x)-1));  обычно вызывается так.
function screens (x,y)
   getscreens=xdata[coord (x,y)];
   if (getscreens==nil) then getscreens=0;end;  --убираем вонючий nil
    return getscreens;
end;



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
  -- if (string.len (content)>1) then  -- временно убрано т.к. вызывало ошибки в работе функции если будет глючить - удалить.
  content=string.char (content); -- end;
   xdata[coord (x,y)]=content;
end;

function powerclean ()
  for b=1,mapsize_horizontal-1,1 do 
         for a=0,mapsize_vertical,1 do 
              c=string.byte(screens (b,a));
              if ((c==45)or(c==46)) then printat (b,a,56); end
           end
       end
     end

function xgametorealpositionbezbyte (X0,Y0)
    x0=240+(Y0)*rozmiarznak+rozmiarznak+gamescreenfixhorizontal*rozmiarznak-cameraleftpos_x_hor*rozmiarznak; 
    y0=(X0)*rozmiarznak-rozmiarznak+gamescreenfixvertical*rozmiarznak-camerauppos_y_vert*rozmiarznak; --учтено смешение 258 и -rozmiarznak
    return x0,y0;
end



function xgametorealposition (X0,Y0)
    x0=240+string.byte (Y0)*rozmiarznak+rozmiarznak+gamescreenfixhorizontal*rozmiarznak-cameraleftpos_x_hor*rozmiarznak; 
    y0=string.byte (X0)*rozmiarznak-rozmiarznak+gamescreenfixvertical*rozmiarznak-camerauppos_y_vert*rozmiarznak; --учтено смешение 258 и -rozmiarznak
    return x0,y0;
end


function print_r (name,x,y)

local serpent = require("serpent")  
love.graphics.print (serpent.block(name),x,y);
end


     function  ext_objs_param (id,column)
       param=tonumber (objs[id+1][column]);
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
    str = {};
    for b in string.gfind(data, ".") do
    --table.insert (str, (string.format("%03d", string.byte(b))));end;
        table.insert (str, b);end;
    return str;
end


-- Режимы работы Scanobject
-- stroke >0 указывает проверить указанную строку от 0 до 27. строка является номером вертикали (в игре это Y)
-- stroke -1 указывает сканировать весь экран и вернуть первый найденный от начала поля обьект.
-- -2 - указывает вернуть общее число найденных обьектов
-- -3 - указывает вернуть первый случайный обьект
-- возвращает только один найденный обьект. Если указана строка - то ищет только в ней.
-- -4 - указывает проверить указанную колонку или горизонталь от 0 до 31. (в игре это Х)
-- -5 - указывает что надо вернуть обьект который найдется № по списку, например второй или третий.
--  8,-4,22    28,-5,2 
function scanobject (code,stroke,coord2)  
  maximumscansize_vertical=mapsize_vertical;
  maximumscansize_horizontal=mapsize_horizontal;
  if (skan_x_max>0) then 
    maximumscansize_vertical=skan_y_max;
    maximumscansize_vertical=skan_x_max;
    --smsg2=skan_x_max;  
  end
     if (stroke>-3) then sthorizontal=0;enhorizontal=maximumscansize_horizontal; end
       if (stroke==-4) then stvertical=0; envertical=maximumscansize_vertical; sthorizontal=coord2; enhorizontal=coord2;  end; 
     if (stroke==-1) then stvertical=1; envertical=maximumscansize_vertical; end; 
     if (stroke>-1) then stvertical=stroke; envertical=stroke+1;  end;  -- по идее должно быть без +1 но где то что то сбивалось из за этого? 
     if (stroke==-2) then stvertical=1; envertical=maximumscansize_vertical;end; 
     if (stroke==-3) then stvertical=math.random(maximumscansize_vertical); envertical=maximumscansize_vertical; sthorizontal=math.random(maximumscansize_horizontal-1);enhorizontal=maximumscansize_horizontal; end; wsego=0;
     if (stroke==-5) then stvertical=1; envertical=maximumscansize_vertical; sthorizontal=0;enhorizontal=maximumscansize_horizontal; end; 
        for a=stvertical,envertical,1 do  -- вертикаль     -- не ищет совсем если stroke
         for b=sthorizontal,enhorizontal,1 do    --горизонталь.   так ищет только по вертикали что не так  если stroke
              c=string.byte(screens (a,b));
              --if(stroke==-4) then printat (a,b,1); end; -- Показывает в какой вертикали (по Y) был поиск.
              if ((c==code)) then 
                wsego=wsego+1;
                if (wsego==coord2)and (stroke==-5) then return b,a;end;
               -- if(stroke==-4) then --printat (a,b,1); 
           --smsg3=("FOUNDc="..c.." code="..code.."b(y)="..b.."a(x)="..a.."...!stroke!!!!!!!!="..stroke.." coord2="..coord2.." wsego="..wsego); 
           --end; --еуые
                 if (stroke>-2)and(wsego>0)or(stroke==-4)and(wsego>0) then return b,a; end; -- при первом же обнаружении в не -2 режиме отправляет назад результат
                 if (stroke==-3) then return b,a; end;   
                 end
           end
       end
       --if (stroke~=-2) then return -1,-1; end --это означает что обьекта нет. Неверное сравнение
       if (wsego<1) then return -1,-1; end --это означает что обьекта нет. 
       if (stroke==-2) then return wsego,wsego; end;   
      if (stroke==-4) then return b,a; end; --предположительно должно работать для второй оси координат.
    end

--love.filesystem.exists(name)  и куда её собственно присобачить?  все равно если не работает то только рестарт игры. 
function sourceread(realfilename)
   if (ostype~="Android") then p = love.filesystem.getSourceBaseDirectory() ; end;
   if (ostype=="Android") then p = love.filesystem.getSaveDirectory() ;end
    if (ostype=="Windows")then  filename=p..'\\saves\\'..realfilename; end
    if (ostype=="Linux") then filename=p..'/saves/'..realfilename; end
    if (ostype=="Mac") then  filename=p..'/saves/'..realfilename; end
   if (ostype~="Android") then local file = io.open(filename, 'rb'); 
                            if (file~=nil) then local str = file:read (55923) ;
                            file:close()
                            return str
                          end
                        end
   if (ostype=="Android") then str=love.filesystem.read(realfilename, love.filesystem.getSize(realfilename));
             return str
           end
          
  
end

function sourcewrite(data, realfilename)
   if (ostype~="Android") then p = love.filesystem.getSourceBaseDirectory() ; end;
   if (ostype=="Android") then p = love.filesystem.getSaveDirectory() ;end
    if (ostype=="Windows")then  filename=p..'\\saves\\'..realfilename; end
    if (ostype=="Linux") then filename=p..'/saves/'..realfilename; end
    if (ostype=="Mac") then  filename=p..'/saves/'..realfilename; end
       
   if (ostype~="Android") then 
        local file = io.open(filename, 'wb'); 
       if (file==nil) then  smsg1="ERROR: Save "..filename.." FAILED!. 1 Retrys. OS="..ostype.." (pathbase) = "..p.." real="..realfilename;  end;
      if (file~=nil) then  file:write(data)
      file:close()
      end         
     end
   if (ostype=="Android") then 
               file=love.filesystem.write(realfilename, data)
             if (file==nil) then  smsg1="Save "..realfilename.." FAILED!. 1 Retrys. OS="..ostype.." Used system love.fs.write"; end;
              
          end
  
end
  -- не используй  IO на андроиде!  работать будет плохо.
  --getSaveDirectory= /storage/emulated/0/Android/data/love.to.android1108152137/files/save/data    save and data not exist/
  --recommended in internet - /data/user/0/org.love2d.android/files/save/"..realfilename
  --love.filesystem.getAppdataDirectory() =   ==> /data/.local/share/   filename=p..''..realfilename; end; 
  --love.filesystem.mkdir ("/data/user/0/m2k/files/save");  NE RABOTAJET   
  --if (ostype=="Wedroid") p="/storage/emulated/legacy/Android/data/love.to.android1109230507/files/"; -- RABOTAJET

-- 
levelname="Levels/LEVEL"..levelnumber..".$C";
if (loadsavegame~="yes") then
--это единственный способ обьяснить LUA что это число а не byte  и не char и не строка.
    data, size = love.filesystem.read (levelname);
    if (size<1) then error ("Loading level failed:"..levelname);end
    leveldatacopy=freadbin (data); -- тут в массив загружается код уровня из архива .love самой игры
    xdata={};
end
if ( loadsavegame=="yes") then 
   -- тут в массив загружается код уровня из папки Saves в папке .love файла на устройстве.  LOAD GAME 
   -- часть комманд даётся в кнопке "2"
       --загрузка всех дополнительных данных из сохранёнки (save game)  
      if (saveslot==0) then levelname ='m2ksavex'; end ;   -- есть только 1 слот для сохранения пока что.
      if (saveslot==1) then levelname ='m2ksavexx'; end ;   -- есть только 1 слот для сохранения пока что.
      if (saveslot==-1) then levelname ='autosave'; end ;   -- есть только 1 слот для сохранения пока что.
      save=sourceread(levelname); -- sposob zagruzki czerez IO LUA  z z я надеюсь что  он годен не только для линукс но и для винды и андроид
      if (save==0) then error (" Loading "..levelname.." failed. File not found.  Requires restart game. "); end; 
        leveldatacopy=freadbin (save); -- тут в массив загружается
     xdata=leveldatacopy;

   -- Dasglukenfield должен заканчиватся при переходе на следующий уровень.   АГсл 
  end
       typelevel="m2k";
    if (leveldatacopy[2]=="E")and(leveldatacopy[3]=="V")and(loadsavegame~="yes") then 
        typelevel="ZX"; -- каждый файл в формате Hobeta  ZX надо предварительно конвертировать
        if (converted==0)and(loadsavegame~="yes") then   -- для будущей работы с ним 
          darkzone=0;
            --start converting  625-656 ->  rozmiarznak25 rozmiarznak56
              --начальное преобразование уровня и убирание с карты поля данных об уровне на новое место.
              oldlevelshift=0;newformatstroka=0
            for a=0,55924,1 do -- 1500 ->  1624
              if ((leveldatacopy[a])==nil) then leveldatacopy[a]=56;end --затычка от nil 
                if( a<55000) then xdata[a]=string.char (76);  end
                if( a>54999) then xdata[a]=string.char (0);  end
            end
            for a=0,55624,1 do -- 1500 ->  1624  Агсл  агсл fuck fuck

            
                   if(a<624)then 
                      b=a+16;
                     cc=(math.ceil (b/32)-1)*(mapsize_horizontal-32);
                      
                            xdata[a+cc-218]=(leveldatacopy[a]); 
                            --oldlevelshift=oldlevelshift+1;
                            --if (oldlevelshift>31) then oldlevelshift=0;newformatstroka=newformatstroka+mapsize_horizontal-32; end
                            --else oldlevelshift=oldlevelshift+1; 
                          end
                   end;
            
            for a=624,624+32,1 do                  xdata[a+55000]=(leveldatacopy[a]);             end
            --чистка данных и запись пустого места , обьект 76 - стена
            for a=0,22,1 do printat (a,0,76);                end;
      -- рисуем те стены которые были в меньшем поле оригинальной игры чтобы не портилась логика уровня.
            
            converted=1;
          --end converting
           else drawonceZZOLDLEVEL=1; -- задаём параметры если получили уже конвертированный уровень
                    --во первых надо пропустить рисование обьектов по координатам из старой zx версии.
            end
    end;
    if (typelevel=="m2k") then
      dasglukenfild=0;
       converted=1; drawonceZZOLDLEVEL=1;
       xdata=leveldatacopy;  
       darkzone=xdata[55624];
       greenshitdelay=xdata[55623];
       greenshithastetime=xdata[55622];
       seed=xdata[55621];
       battery=xdata[55620];
       --18-15 занято для вещей. 
      --otladka if ( loadsavegame=="yes") then error ("xdata="..#xdata.." xdata[0]="); end;
       battery= (string.byte (battery));
       seed= (string.byte (seed));
       darkzone= (string.byte (darkzone)); 
       greenshitdelay= (string.byte (greenshitdelay));
       greenshithastetime= (string.byte (greenshithastetime));
       --tx= (string.byte (tx)); ty= (string.byte (ty));
       solarenergy=0;
       enemies={};
       enemies={};
       totalenemies=0;
       wsego_tank_teleporterow=0;
    end

    -- тут надо проверять уровень и к xdata добавлять 1000 чтобы он читался из другого места.
if (loadedfirst==0) then
         xt=xdata[55629];
    bombs=xdata[55631];ice=xdata[55632];lives=xdata[55633]; ammo=xdata[55635];
targetremains=xdata[55638];
-- 76, 69, 86 , если три первых байте не равны кодам букв LEV, значит уровень не ZX. DECat 24310,639 bytes?? --нкт 29 50,51,52,53,54,55
--загружать старые карты по схеме, но на новых просто исп. будут новые коды для.
--DATA x2,y2,sx,sy,xt,ey,b0,i,l,p,u,exp,t,SE,zx,zy,p1,dr,p2,p3,p4,pw,tx,ty,wt,e,e,e,e,e,e,mv   HEADER
 hardlevel=xdata[55638]; exp=xdata[55636];      tt1=xdata[55637];-- bonus points per level
      ey=xdata[55630]; sy=xdata[55628]; sx=xdata[55627];--expressSX,SY start SX,EY-END
-- загрузка координат игрока
startX=xdata[55625];startY=xdata[55626];   --1
zx=string.byte (xdata[55639]); zy=string.byte (xdata[55640]); --2   

  x,y=xgametorealposition (startX,startY);
  xpla2,ypla2=xgametorealpositionbezbyte (zx,zy);  -- по идее zx  nikak не мог получить строковое значение для ошибки в каком то уровне.
if (loadsavegame~="yes") then -- загружатся координаты по обьектам 17 и 18 (стартовые) должны ТОЛЬКО не в случае сохранённой игры.
checkx,checky=scanobject (18,-1);--check player 1 start position

if (checkx>-1) then x,y=xgametorealpositionbezbyte (1+checky,checkx) ; end
--x=240+string.byte (startY)*(rozmiarznak)+1*rozmiarznak; --y=string.byte (startX)*rozmiarznak-rozmiarznak; --учтено смешение 258 и -rozmiarznak
-- загрузка координат второго игрока
  checkxpla2,checkypla2=scanobject (17,-1);--check player 2 (enemytank) start position
if (checkxpla2>-1) then xpla2,ypla2=xgametorealpositionbezbyte  (1+checkypla2,checkxpla2); end;
if (otladka==1) then smsg1="no savegame. tp. x= "..x.." checkx="..checkx.." y="..y.." chy="..checky.." zx="..zx.." zy="..zy.." xpla2="..xpla2.." ypla2="..ypla2; end;
end

    if ((hardlevel==1) and (zx>0)and (zy>0)) then enemytank=1;end

       p1=xdata[55641];dr=xdata[55642];
      p2=xdata[55643]; p3=xdata[55644];p4=xdata[55645]; powerstate=xdata[55646];--sost lazerow p1-p4 не сохранять. ненужно уже. 
      tx=xdata[55647]; ty=xdata[55648]; water=xdata[55649]; puszkistate=xdata[55656];--sost puszek
ammo= (string.byte (ammo));  
    --hpmax=xdata[55634] ;    IGNORING убрано т.к. hp тепрь всегда 200 + бонус 
    hpmax=200 ; -- максимум жизни теперь всегда будет равен 200 + возможность прокачать его или временно увеличить. 
    if (poziom==1) then hpmax=hpmax/2; end; 
ice= (string.byte (ice)); lives= (string.byte(lives));
bombs= (string.byte (bombs)); targetremains= (string.byte (targetremains));
hardlevel=(string.byte (hardlevel));
ey= (string.byte (ey)); sy= (string.byte (sy));
sx= (string.byte (sx)); exp= (string.byte (exp));
p1= (string.byte (p1)); dr= (string.byte (dr));
tx= (string.byte (tx)); ty= (string.byte (ty));
wt= (string.byte (wt)); p2= (string.byte (p2));
p3= (string.byte (p3)); p4= (string.byte (p4));
keys=0 ; -- всегда похоже количество ключей во всех уровнях равно нулю
water= (string.byte (water));-- wt это походу и есть стаканы. 
   powerstate= (string.byte (powerstate));
   puszkistate= (string.byte (puszkistate));

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
    score=string.byte(xdata[55650])+(string.byte(xdata[55651])*256);
    --levelnumber=string.byte(xdata[55634]); не загружать этот параметр. пока что.
        -- эти предметы могут быть ТОЛЬКО в сохранённой игре и не должны быть в коде уровней.
        mushroom=(string.byte (xdata[55619]));  
        solarpanel=(string.byte (xdata[55614]));
       woodenwall=(string.byte (xdata[55613]));
       fencewall=(string.byte (xdata[55612]));
      steelwall= (string.byte (xdata[55611]));
         inventoryitem4= (string.byte (xdata[55618]));
           inventoryitem3= (string.byte (xdata[55617]));
             inventoryitem2= (string.byte (xdata[55616]));
               inventoryitem1= (string.byte (xdata[55615]));
                      inventoryitemtable={}; -- очищаем таблицу.
                              if (inventoryitem1>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem1); end; 
                                  if (inventoryitem2>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem2); end; 
                                    if (inventoryitem3>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem3); end; 
                                  if (inventoryitem4>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem4); end; 
                   
                      countinventory=#inventoryitemtable;
               enemytank= (string.byte (xdata[55610]));
    -- номер уровня в сохранении присутствует, его можно использовать.
    --надо сохранять номер уровня в сохранении и загружать его тоже.
    loadsavegame=0;
    --в этом месте небольшая разница с сохранением игры исчезает. 
    --т.е. вся разница - это наличие инвентаря и счётчиков вот этих предметов
  end


end

--загрузка игровых текстур не связанных с уровнем.
    empty = love.graphics.newImage("Textures/1empty.png");
    ammoproj = love.graphics.newImage("Textures/ammoprojectile.png");
    displayinventoryobj = love.graphics.newImage("Textures/ramka.png");
    --androidgui = love.graphics.newImage("Textures/androidgui.png");
    androidguictl = love.graphics.newImage("Textures/androidctl.png");
    androidguicursor = love.graphics.newImage("Textures/androidcursor.png");
    iceproj = love.graphics.newImage("Textures/iceammoprojectile.png");
    player = love.graphics.newImage("Textures/player.png");
    playertank = love.graphics.newImage("Textures/tank0.png");
    tankright = love.graphics.newImage("Textures/tank0.png");
    tankleft = love.graphics.newImage("Textures/tank1.png");
    tankup = love.graphics.newImage("Textures/tank2.png");
    tankdown = love.graphics.newImage("Textures/tank3.png");
    playerprotect = love.graphics.newImage("Textures/playerp.png");
    editor0 = love.graphics.newImage("Textures/editor.png");
    express0 = love.graphics.newImage("Textures/express.png");
    destrplayer = love.graphics.newImage("Textures/destr4.png");
    destrplayer1 = love.graphics.newImage("Textures/destr1.png");
    destrplayer2 = love.graphics.newImage("Textures/destr2.png");
    destrplayer3 = love.graphics.newImage("Textures/destr3.png");
    destrplayer4 = love.graphics.newImage("Textures/destr4.png");
    menu_startgame = love.graphics.newImage("Textures/1-startgame.png");
    menu_loadgame = love.graphics.newImage("Textures/2-loadgame.png");
    menu_savegame = love.graphics.newImage("Textures/3-savegame.png");
    menu_authors = love.graphics.newImage("Textures/4-authors.png");
    menu_restart = love.graphics.newImage("Textures/5-restart.png");
    menu_settings = love.graphics.newImage("Textures/6-settings.png");
    menu_editor = love.graphics.newImage("Textures/7-editor.png");
    menu_exit = love.graphics.newImage("Textures/8-exit.png");
    menuicon = love.graphics.newImage("Textures/10-menu.png");
    settings_switch_on =  love.graphics.newImage("Textures/On.png");
    settings_switch_off =  love.graphics.newImage("Textures/Off.png");
    player2tank=0; 

--загрузка звуков игры.
    music1 = love.audio.newSource("Sounds/VIBE - Adventurer.it", "stream"); 
    music2 = love.audio.newSource("Sounds/A-twinkle.it", "stream"); 
   expresssnd = love.audio.newSource("Sounds/express.mp3", "stream"); 
    wystrelsnd = love.audio.newSource("Sounds/tankwystrel.mp3", "stream");
    patronysnd = love.audio.newSource("Sounds/patrony.mp3", "stream");
    levelnextsnd = love.audio.newSource("Sounds/0.mp3", "stream");
    ammotobadtargetsnd = love.audio.newSource("Sounds/ammotobadtarget.mp3", "stream");
    ammobrokeitemortargetsnd = love.audio.newSource("Sounds/ammobrokeitemortarget.mp3", "stream");
    iceeffectsnd = love.audio.newSource("Sounds/iceeffect.mp3", "stream");
        firesnd= love.audio.newSource("Sounds/fire.mp3", "stream");
    movableblocksnd =  love.audio.newSource("Sounds/blockmove.mp3", "stream");
    movableblockdestrsnd =  love.audio.newSource("Sounds/destrblock1.mp3", "stream");
  aptekasnd = love.audio.newSource("Sounds/apteczka.mp3", "stream");
    powerstaticon= love.audio.newSource("Sounds/powerstaticon.mp3", "stream");
   livessnd = love.audio.newSource("Sounds/lives.mp3", "stream");
   deadminesnd = love.audio.newSource("Sounds/deadmine.mp3", "stream");
  noammosnd = love.audio.newSource("Sounds/noammo.mp3", "stream");
    wallsnd = love.audio.newSource("Sounds/wall.mp3", "stream");
    icetakesnd = love.audio.newSource("Sounds/icetake.mp3", "stream");
    keysnd = love.audio.newSource("Sounds/key.mp3", "stream");
    bombsnd = love.audio.newSource("Sounds/bomb.mp3", "stream");
    deadsnd = love.audio.newSource("Sounds/dead.mp3", "stream");
    targsnd = love.audio.newSource("Sounds/targetdestrojed.mp3", "stream");
    tankzsnd = love.audio.newSource("Sounds/tankzdobyl.mp3", "stream");
    cannondestrsnd = love.audio.newSource("Sounds/cannondestr.mp3", "stream");
    protectsnd = love.audio.newSource("Sounds/protect.mp3", "stream");
    xsnd = love.audio.newSource("Sounds/x.mp3", "stream");
    strelkasnd = love.audio.newSource("Sounds/strelka.mp3", "stream");
    swapitem = love.audio.newSource("Sounds/swapitem.mp3", "stream");
    doorsnd = love.audio.newSource("Sounds/dooropened.mp3", "stream");
    switchpwsnd = love.audio.newSource("Sounds/switch.mp3", "stream");
    switchpwsnd2 = love.audio.newSource("Sounds/switchon.mp3", "stream");
    switchmsnd = love.audio.newSource("Sounds/alarm.mp3", "stream");
    telesnd = love.audio.newSource("Sounds/teleport.mp3", "stream");
    broken1 = love.audio.newSource("Sounds/broke1.mp3", "stream");
    broken2 = love.audio.newSource("Sounds/broke2.mp3", "stream");
    broken3 = love.audio.newSource("Sounds/broke3.mp3", "stream");
    broken4 = love.audio.newSource("Sounds/broke4.mp3", "stream");
    broken5 = love.audio.newSource("Sounds/broke5.mp3", "stream");
    brokendoorsnd = love.audio.newSource("Sounds/brokendoor.mp3", "stream");
    jedzeniesnd = love.audio.newSource("Sounds/jedzenie.mp3", "stream");
    mur = love.audio.newSource("Sounds/mur.mp3", "stream");
    tankdeadsnd = love.audio.newSource("Sounds/tankdead.mp3", "stream");
    tanknewsnd = love.audio.newSource("Sounds/tanknew.mp3", "stream");

    objs = {} ;-- тут загружается массив обьектов.
    for line in love.filesystem.lines ("objects.ini") do
      table.insert (objs, line:split("!"))
    end
    --тут создается двухмерный массив из objects.ini    -- аналогa readfullcsv
    --важно -  ид обьекта надо либо +1  делать либо использовать специальную новую функцию  ext_objs_param
    --hdr=objs[1][1];  --двухмерный масив задан правильно и работает
    --love.graphics.print("Obj1-1"..hdr,32,32); 
    --cs.print("Objsubstr 2,2"..string.sub (hdr,2,2),48,48);--мда попроще нельзя б xxx=objs[1][1]
    pages0 = {} ;-- Меню игрока андроид - 
    for line in love.filesystem.lines ("player.ini") do
      table.insert (pages0, line:split("!"))
    end

    pagesсс = {} ;-- Меню игрока андроид - контрольный центр
    for line in love.filesystem.lines ("controlcentre.ini") do
      table.insert (pagesсс, line:split("!"))
    end


    pages = {} ;-- Главное меню (0) тут загружается массив обьектов. 
    for line in love.filesystem.lines ("pages.ini") do
      table.insert (pages, line:split("!"))
    end
    pages2 = {} ;-- Меню настроек и параметров (1)
    for line in love.filesystem.lines ("pages_settings.ini") do
      table.insert (pages2, line:split("!"))
    end
    pages3 = {} ;-- меню авторы (2)
    for line in love.filesystem.lines ("authors.ini") do
      table.insert (pages3, line:split("!"))
    end
    pages4 = {} ;-- меню редактора (3)
    for line in love.filesystem.lines ("editor_settings.ini") do
      table.insert (pages4, line:split("!"))
    end
    pages5 = {} ;-- меню игрока (пауза) (4)
    for line in love.filesystem.lines ("actions.ini") do
      table.insert (pages5, line:split("!"))
    end


--[[подготовка массива данных редактора к работе
if (editorprepared==0) then  --xshift=maximumvertical*32;                xshift=0;
                xeditordata[1]=string.char (56); -- это уже новый массив данных специально для модуля редактора
                bb=1+xshift;
                for aa=1+xshift,200+xshift,1 do 
                editorobjects=string.char (aa-1-xshift);
                if ( objs[aa-0-xshift][3]~="1empty.png") then --xdata[bb]=(editorobjects);    
                        xeditordata[bb]=(editorobjects);                        bb=bb+1;
                        end;
                end ;--1empty.png
                editorprepared=1;
end ]]--окончание подготовки возможного включения редактора.


--zzx2,xpla2,ypla2,hptank,allowmovepla2,man_is_movingpla2,plusypla2,freezePL2,freezetimerPL2,man_speedpla2,speedtimerpla2
  class_enemy = {};
  --инициализируем поля класса
  function class_enemy:new(type,x3,y3,hp,rotate,man_xpla3,man_ypla3,man_is_movingpla3,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,man_is_movingpla3am)
      local object = {};  -- как я и думал это массив внутри массива.
      love.audio.play(tanknewsnd) ;
      --,x2,y2,hp,rotate,movekey,zzx2,allowmovepla2,x2pla2am,y2pla2am,zzx2ammo,allowshotpla2=0;
      object.type = type or "tank"; -- задача умолчания если не задан параметр
      object.x3 = x3 or 0;  -- real coord of tank
      object.y3 = y3 or 0;  -- real coord of tank
      object.hp = hp or 400;  -- hp  of tank
      object.rotate = rotate or "left"; -- now rotate of tank - возможно получится использовать для более частого движения в уже выбранную сторону.
      object.man_xpla3 = man_xpla3 or 0; -- temp coord of tank
      object.man_ypla3 = man_ypla3 or 0; -- temp coord of tank
      object.man_is_movingpla3 = man_is_movingpla3 or 0; -- is_moving датчик движения
      object.freezetanks = freezetanks or 0; 
      object.speedtanks = speedtanks or 0; 
      object.protecttanks = protecttanks or 0; 
      object.x_tanks = x_tanks or 0; --x2pla2am -- real coord of tank shoot
      object.y_tanks = y_tanks or 0; --y2pla2am -- real coord of tank shoot
      object.m_x_tanks = m_x_tanks or 0;  --man_x2pla2am temp coord
      object.m_y_tanks = m_y_tanks or 0;  --man_y2pla2am temp coord
      object.man_is_movingpla3am = man_is_movingpla3am or 0;  --man_is_movingpla3am temp coord
      object.res = res or 0; 
      
      setmetatable(object,self) --нужно для работы класса
      self.__index = self ;
      return object; -- возвращаем объект!
  end

  --функция изменения
  function class_enemy:set(type,x3,y3,hp,rotate,man_xpla3,man_ypla3,man_is_movingpla3,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,man_is_movingpla3am)
    local hp = hp or self.hp;
    local rotate = rotate or self.rotate;
    local man_xpla3 = man_xpla3 or self.man_xpla3;
    local man_ypla3 = man_ypla3 or self.man_ypla3;
    local man_is_movingpla3 = man_is_movingpla3 or self.man_is_movingpla3;
    local freezetanks = freezetanks or self.freezetanks;
    local speedtanks = speedtanks or self.speedtanks;
    local protecttanks = protecttanks or self.protecttanks;
    local x_tanks = x_tanks or self.x_tanks;
    local y_tanks = y_tanks or self.y_tanks;
    local m_x_tanks = m_x_tanks or self.m_x_tanks;
    local m_y_tanks = m_y_tanks or self.m_y_tanks;
    local man_is_movingpla3am = man_is_movingpla3am or self.man_is_movingpla3am;
    self.type = type;
    self.x3 = x3;
    self.y3 = y3;
    self.hp = hp;
    self.rotate = rotate;
    self.man_xpla3 = man_xpla3;
    self.man_ypla3 = man_ypla3;
    self.man_is_movingpla3 = man_is_movingpla3;
    self.freezetanks = freezetanks;
    self.speedtanks = speedtanks;
    self.protecttanks = protecttanks;
    self.x_tanks = x_tanks;
    self.y_tanks = y_tanks;
    self.m_x_tanks = m_x_tanks;
    self.m_y_tanks = m_y_tanks;
    self.man_is_movingpla3am = man_is_movingpla3am;
  end

  --функция получения результата
  function class_enemy:get()
    return self.type, self.x3, self.y3, self.hp, self.rotate, self.man_xpla3, self.man_ypla3, self.man_is_movingpla3 , self.freezetanks , self.speedtanks, self.protecttanks, self.x_tanks, self.y_tanks, self.m_x_tanks, self.m_y_tanks, self.man_is_movingpla3am;
  end

function class_enemy:remove(ID)
      love.audio.play(tankdeadsnd) ;
   if self.list[ID] then
     self.list[ID] = nil
     -- если удалили - вернуть true
     return true 
   end
end

--[[
function class_enemy:update(dt)
   for k, v in pairs(self.list) do
      if v.update then v:update(dt)

   end
end

]]--

    if (renderer==0) then render2d (1); end;
 
end

--inventoryitemtable


function addinventoryitem (itemcode)
  countinventory=#inventoryitemtable;
   love.audio.play(swapitem);
  if (countinventory<maximuminventorysize) then table.insert (inventoryitemtable,countinventory+1,itemcode);
   --smsg1="table.insert (inventoryitemtable,"..countinventory..","..itemcode..");";   --for a=1,countinventory,1 do smsg2=smsg2.." inv["..a.."]="..inventoryitemtable[a]..""; end
   
   else smsg1="Inventory Full"; ammoKEYPL1=""; return -1; end
end 

function removeinventoryitem (id)
  love.audio.play(swapitem);
   if (countinventory>0) then
  a=table.remove (inventoryitemtable,id);
  return a;
  end 
  return 0;
end

function sortinventoryitem ()
  table.sort (inventoryitemtable);
end

-- если координаты второго игрока совпадают с координаторй пули первого - отнимаются HP у Р2
-- если снова возникнет баг перестрелкой танков то надо просто учесть man_step  для расчётов. хrozmiarznak) 

 -- Анимирует движение, если оно имеется. Для чувака 1 i 2 universal function 
function move_the_man(dt,x,y, man_x, man_y ,man_is_moving,man_speed)
     -- local x,y,man_x,man_y,man_is_moving,man_speed ;  надеюсь все эти переменные достаточно локализованы внутри функции.
     if (man_x < 100) and (man_y) < 50 then  -- детектируем ложное движение  с отправкой по нулевой координате.
            man_is_moving = false;
            man_x=x; man_y=y; 
        end;
     if man_is_moving then
        -- шаг анимации
        local dd = math.floor(dt*man_speed);

        -- по X
        if dd >= math.abs(man_x - x)  then 
            -- если шаг анимации слишком большой, то кидаем сразу в конечную точку
            x = man_x;
        else
            -- иначе двигаем на вычисленный шаг в сторону конечной точки (man_x, man_y)
            x = x + dd*(man_x - x)/math.abs(man_x - x);
        end

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
         
        --ыreturn x,y,man_x,man_y,man_is_moving,man_speed

    end
    return x,y,man_x,man_y,man_is_moving,man_speed      
 end

-- Анимирует движение, если оно имеется. для выстрела чувака 1 и 2ы
function move_the_man2(dt,x2,y2, man_x2, man_y2 ,man_is_moving2,man_speed2)
    -- local x2,y2,man_x2,man_y2,man_is_moving2,man_speed2 ;
    x2,y2,man_x2,man_y2,man_is_moving2,man_speed2=move_the_man(dt,x2,y2, man_x2, man_y2 ,man_is_moving2,man_speed2)

    return x2,y2,man_x2,man_y2,man_is_moving2,man_speed2   
 end




-- Устанавливает новую цель движения чувака относительно текущего местоположения
function do_a_step(dt, dx, dy,x,y)
   if (x==nil) then x=0; end;  
   if (y==nil) then y=0; end; 
   -- man_is_moving = true; -- начинаем движение чувака
    -- новая цель движения
    --man_x = x + dx; 
    --man_y = y + dy; 
    return true,x + dx,y + dy; 
end


function love.update(dt)
    coordXbezmove=gamex(x);--почему так не рботает?
    coordYbezmove=gamey(y); 


-- Если координаты игроков совпадают у P1 будет отниматся HP
if ((xpla2==x)and(ypla2==y)and(enemytank==1)and(hp>0)) then
    if (protect<1) then hp=hp-5; end;
      if (tank<1) then hp=hp-10;  end; 
   love.audio.play(jedzeniesnd);
end

 if (totalenemies>1) then 
   for enemynum=1,wsego_tank_teleporterow,1 do 
         type,xt,yt,hpt,rotate,man_xpla3,man_ypla3,man_is_movingpla3,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,man_is_movingpla3am=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
  
  if ((xt==x)and(yt==y)and(hpt>0)and(hp>0)) then
    if (protect<1) then hp=hp-15;end; 
     if (tank<1) then hp=hp-15; end; 
   love.audio.play(jedzeniesnd);
end

        --enemies[enemynum]:set(type, xt,yt,hpt,rotate,man_xpla3,man_ypla3,man_is_movingpla3,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,man_is_movingpla3am); -- NIL  kak tak? 
     --smsg4=" enemies[enemynum]:set(type,"..xt..","..yt..","..hpt..",rotate,"..man_xpla3..","..man_ypla3.."); ";
    end; end; 

-- в оригинале выстрел влево и выстрел вниз были с багом по оси (из за ротации)
if (hptank<0) then score=score+1000;hptank=0;  enemytank=0;   -- просто удаляем второй танк если он умер. аним НЕ СДЕЛАНО.
end

  



    function isnear (par1,par2)
      if (par1==nil) then return false; end;
        mn=man_step/2;
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
-- Если игрок обстреливает танк противника
standartdamage=50;
if ((isnear (xpla2,x2))and(isnear (ypla2,y2))and(man_is_moving2)and(enemytank==1)) then
      if (protecttank>0) then standartdamage=15; end;
    if (ammoKEYPL1=="ammo") then hptank=hptank-standartdamage; if (tank==1) then hptank=hptank-(standartdamage*2); end;  end
    if (poziom==1) then hptank=hptank-standartdamage; end; 
    if (ammoKEYPL1=="ice") then freezePL2=1; freezetimerPL2=freezetimerPL2+3; 
       love.audio.play(iceeffectsnd);
       end;

    smsg1="tank HP="..hptank; 
    allowshot=0;
   love.audio.play(patronysnd) ;
end

standartdamage=50;
 if (totalenemies>1) then 
   for enemynum=1,wsego_tank_teleporterow,1 do 
         type,xt,yt,hpt,rotate,man_xpla3,man_ypla3,man_is_movingpla3,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,man_is_movingpla3am=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
  
 if ((isnear (xt,x2))and(isnear (yt,y2))and(man_is_moving2)and(hpt>0)) then
   
     if (ammoKEYPL1=="ammo") then hpt=hpt-standartdamage; if (tank==1) then hpt=hpt-standartdamage; end;  end;
    if (poziom==1) then hpt=hpt-standartdamage; end; 
    if (ammoKEYPL1=="ice") then freezetanks=freezetanks+35; 
       love.audio.play(iceeffectsnd);
       end;
    smsg1="tank HP="..hpt; 
   -- allowshot=0; ???
   love.audio.play(patronysnd) ;
end

    enemies[enemynum]:set(type, xt,yt,hpt,rotate,man_xpla3,man_ypla3,man_is_movingpla3,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,man_is_movingpla3am); -- NIL  kak tak? 
     --smsg4=" enemies[enemynum]:set(type,"..xt..","..yt..","..hpt..",rotate,"..man_xpla3..","..man_ypla3.."); ";
end; end;


-- если противник обстреливает игрока.
-- если координаты 1 игрока совпадают с координатой пули 2 - отнимаются HP у Р1 
if ((isnear(x2pla2am,x))and(isnear(y2pla2am,y))and(man_is_movingpla2am)and(enemytank==1)) then
    hp=hp-4;if (tank<1) then hp=hp-10; end;
    allowshotpla2=0;
    if (protect<1) then hp=hp-20; end; 
    if (hardlevel==1)and(protect<1) then hp=hp-20; end; 
    if (poziom==1) then hp=hp-20; end; 
    love.audio.play(patronysnd) ;
end





function sleep(ms)
    local b = os.clock() * 1
    while os.clock() * 1 - b <= ms do end
end
       
         

        function getobjcode (y,x)  -- заменить в коде все подобные конструкции на эту универсальную. НЕ СДЕЛАОН.ы
        zz=(screens (y,x));-- Gamey i gamex должен быть уже применён.
                    if (zz) then
                        objectcode=string.byte (zz); else objectcode=0; end;
            return objectcode; 
        end


 -- function checklistammo  ice  or table

      function checklistbomb (objectcode,mx,my)
        objectcode_bomb=ext_objs_param (objectcode,7);
        if (objectcode_bomb==1) then  result=1 else result=0; end; 

          if (objectcode==122)or(objectcode==123) then targetremains=targetremains-1;        end; 
    --    if (objectcode==124) then explodebomb (mx,my) ; end; 
           if (objectcode>5)and(objectcode<10)and(powerstate==1) then powerclean (); allowpowerrescan=1;end;
           return result; 

           
        end

        function explodebomb (by,bx)
            c1=getobjcode (by+1,bx); cc1=checklistbomb (c1,by+1,bx); -- тут мы получаем коды всего что лежит рядом.
            c2=getobjcode (by-1,bx); cc2=checklistbomb (c2,by-1,bx);
            c3=getobjcode (by,bx+1); cc3=checklistbomb (c3,by,bx+1);
            c4=getobjcode (by,bx-1); cc4=checklistbomb (c4,by,bx-1) ; 
            c5=getobjcode (by,bx+2); cc5=checklistbomb (c5,by,bx+2);
            c6=getobjcode (by,bx-2); cc6=checklistbomb (c6,by,bx-2);
            c7=getobjcode (bx+2,bx); cc7=checklistbomb (c7,by+2,bx) ; 
            c8=getobjcode (by-2,bx); cc8=checklistbomb (c8,by-2,bx) ;

            printat (by,bx,"27");
            defacescreen=1; timerz=0; -- для спецэффекта
            if (cc1>0)then printat (by+1,bx,"27"); end; --если что то есть из списка - взрываем.
            if (cc2>0) then printat (by-1,bx,"27");end;
            if (cc3>0) then printat (by,bx+1,"27");end;
            if (cc4>0) then printat (by,bx-1,"27");end;
            if (cc5>0)and(cc3==1) then printat (by,bx+2,"27");end;
            if (cc6>0)and(cc4==1) then printat (by,bx-2,"27");end;
            if (cc7>0)and(cc1==1) then printat (by+2,bx,"27");end;
            if (cc8>0)and(cc2==1) then printat (by-2,bx,"27");end;
        end

function mushroomupd (by,bx)
        
               c1=getobjcode (by,bx); -- тут мы получаем код
               finalobject="83";
               check2=wzroststage (c1);
               --smsg2=(startobject.." TO "..finalobject); 
               if (check2~="0") then finalobject=check2;printat (by,bx,finalobject);  end
        end

       function wzroststage (checkcode)  -- аналог  Damaged by ammo
                  if (checkcode==80) then return "81"; end;
                  if (checkcode==81) then return "82"; end;
                  if (checkcode==82) then return "83"; end;
                  return "0";
                  end


function greenshit (by,bx,placeobject)
            xxx=math.ceil(math.random (4));
            c1=getobjcode (by+1,bx); -- тут мы получаем коды всего что лежит рядом.
            c2=getobjcode (by-1,bx);
            c3=getobjcode (by,bx+1);
            c4=getobjcode (by,bx-1);
            --printat (by,bx,"21");
           -- defacescreen=1; timerz=0; -- для спецэффекта
           placeitembydefault="21"
            if (xxx>0)and(checklistbomb (c1)>0) then trytoplace (by+1,bx,c1,placeobject); end; --если что то есть из списка - взрываем.
            if (xxx>0)and(checklistbomb (c2)>0) then trytoplace (by-1,bx,c2,placeobject);end;
            if (xxx>0)and(checklistbomb (c3)>0) then trytoplace (by,bx+1,c3,placeobject);end;
            if (xxx>0)and(checklistbomb (c4)>0) then trytoplace (by,bx-1,c4,placeobject);end;


        end


            function trytoplace (dx,dy,startobject,finalobject)
               --smsg1=(startobject.." TO "..finalobject); 
               check2=damagestage (startobject);
               --smsg2=(startobject.." TO "..finalobject); 
               if (check2~="0") then finalobject=check2; end
                printat (dx,dy,finalobject); 
               
              end

              --функция содержит таблицу поведения для расстреливаемых обычными патронами предметов. 
              --может быть полезна для упрощения некоторых вычислений которые сейчас дублируют друг друга.
              --возвращает 0 если не знает можно ли что то делать с этим обьектом.
              function damagestage (checkcode)  -- аналог  Damaged by ammo
                  if (checkcode==104) then return "105"; end;
                  if (checkcode==105) then return "106"; end;
                  if (checkcode==106) then return "27"; end;
                  if (checkcode==107) then return "108"; end;
                  if (checkcode==108) then return "109"; end;
                  if (checkcode==109) then return "27"; end;
                  if (checkcode==110) then return "111"; end;
                  if (checkcode==111) then return "112"; end;
                  if (checkcode==112) then return "27"; end;
                  if (checkcode==97) then return "98"; end;
                  if (checkcode==98) then return "99"; end;
                  if (checkcode==99) then return "100"; end;
                  if (checkcode==100) then return "27"; end;
                  if (checkcode==19) then return "27"; end;
                  if (checkcode==22) then return "27"; end;
                  if (checkcode==47) then return "27"; end;
                  if (checkcode==55) then return "27"; end;
                  if (checkcode==58) then return "27"; end;
                  if (checkcode==59) then return "27"; end;
                  if (checkcode==60) then return "27"; end;
                  if (checkcode==61) then return "27"; end;
                  if (checkcode==80) then return "74"; end;
                  if (checkcode==81) then return "74"; end;
                  if (checkcode==82) then return "74"; end;
                  if (checkcode==83) then return "84"; end;
                  if (checkcode==84) then return "85"; end;
                  if (checkcode==85) then return "86"; end;
                  if (checkcode==86) then return "27"; end;
                  if (checkcode==91) then return "27"; end;
                  if (checkcode==92) then return "27"; end;
                  if (checkcode==93) then return "27"; end;
                  if (checkcode==94) then return "27"; end;
                  if (checkcode==95) then return "27"; end;
                  if (checkcode==116) then return "27"; end;
                  if (checkcode==101) then return "27"; end;
                  if (checkcode==102) then return "27"; end;
                  if (checkcode==103) then return "27"; end;
                  if (checkcode==113) then return "27"; end;
                  if (checkcode==114) then return "115"; end;
                  if (checkcode==122) then return "27"; end;
                  if (checkcode==123) then return "27"; end;
                  if (checkcode==124) then return "27"; end;
                  if (checkcode==125) then return "27"; end;
                  if (checkcode==126) then return "27"; end;
                  if (checkcode==127) then return "27"; end;
                  if (checkcode==128) then return "27"; end;
                  if (checkcode==129) then return "27"; end;
                  if (checkcode==130) then return "27"; end;
                  if (checkcode==133) then return "136"; end;
                  if (checkcode==136) then return "138"; end;
                  if (checkcode==138) then return "27"; end;
                  if (checkcode==134) then return "137"; end;
                  if (checkcode==137) then return "139"; end;
                  if (checkcode==139) then return "27"; end;
                  if (checkcode==135) then return "132"; end;
                  if (checkcode==140) then return "132"; end;
                  if (checkcode==132) then return "132"; end;
                  if (checkcode==27) then return "56"; end;
                  if (checkcode==96) then return "96"; end;
                  return "0";
              end

-- Т.к. второй игрок отличается от первого отработка обьектов и событий для них сильно различается
-- но  само перемещение персонажа похоже и можно его "функционализировать"   НЕ СДЕЛАНО
--speedtimerpla2  man_speedpla2   freezePL2=1; freezetimerPL2=2;
function reactmove2 (zzx2,xpla2,ypla2,hptank,allowmovepla2,plusxpla2,plusypla2,freezePL2,freezetimerPL2,man_speedpla2,speedtimerpla2)
    --hptank=0;
    if (editor==1)or(pause==1) then return allowmovepla2,hptank,freezetimerPL2,speedtimerpla2 ;  end;
    
     if (freezePL2==1)or(freezetimerPL2>0) then return allowmovepla2,hptank,freezetimerPL2,speedtimerpla2 ; end; -- БАГ --  как то по другому надо сделать реакцию на второго игрока, иначе все замерзать будут.

   if (zzx2==20) then allowmovepla2=0;  darkzone= not_numeric (darkzone);
               love.audio.play(patronysnd);  
                end;

  if (zzx2==19) then  man_speedpla2 = 500+240*scaling ; 
    speedtimerpla2=20; speedtanks=300;
     love.audio.play(patronysnd);
                 printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
         end;


     if (zzx2==30) then 
                printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"27");
                freezePL2=1; freezetimerPL2=100; freezetanks=100;
                love.audio.play(icetakesnd);
         end;

    if (zzx2==39) then protecttanks=1000; protecttank=1000;
      --if (acidprotect==1) then addinventoryitem (40); end; 
      --acidprotect=0;
     love.audio.play(protectsnd);
              printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
         end;

    if (zzx2==44) then
      dasglukenfild=1;
     love.audio.play(patronysnd);
             printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
         end;

    if (zzx2>5)and(zzx2<11) then allowmovepla2=0; 
                        end;


   
      if (zzx2==141) then allowmovepla2=0; 
                          end;
      if (zzx2==142) then allowmovepla2=0; 
                          end;


    if (zzx2==87) then allowmovepla2=0; 
                          end;

    if (zzx2==45) then allowmovepla2=0; 
                          end;

    if (zzx2==46) then allowmovepla2=0; 
                          end;

    if (zzx2==132) then allowmovepla2=0; 
                          end;
    if (zzx2==140) then allowmovepla2=0; 
                          end;
    if (zzx2==133) then allowmovepla2=0; 
                          end;
    if (zzx2>133)and(zzx2<140) then allowmovepla2=0; 
                          end;
    if (zzx2==135) then allowmovepla2=0; 
                          end;


   if ((zzx2==22)) then 
        --love.audio.play(icetakesnd);
         printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,ext_objs_param (zzx2,5));
        end

    
    if (zzx2==124) then 
         hptank=hptank-50;  
       love.audio.play(bombsnd);
         by=gamey(ypla2)+plusy;bx=gamex(xpla2)+plusx; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
       explodebomb (by,bx);
       end;
     


            if (zzx2==31) then 
              love.audio.play(deadminesnd);
              hptank=0; enemytank=0;
               -- printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"27");
                
         end;



     if ((zzx2==58)or(zzx2==61)or(zzx2==62)or(zzx2==59)or(zzx2==60)) then 
     love.audio.play(patronysnd);
             printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"27");
         end;
   chances=(math.random(60+7*tank+1*protect));
    if ((zzx2==76)or(zzx2==78)or(zzx2==0)or(zzx2==1)or(zzx2==2)or(zzx2==3)) then
     --love.audio.play(wallsnd);
                allowmovepla2=0;
       end;     

        if (zzx2==75)or(zzx2==96) then
                    allowmovepla2=0; 
                end; 
               
                 
                if (zzx2==73)or(zzx2==107)or(zzx2==108)or(zzx2==109)or(zzx2==110)or(zzx2==111)or(zzx2==112) then
                    allowmovepla2=0; 
                end; 
     if ((zzx2==77)) then 
        love.audio.play(icetakesnd);
         printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
        end

    if (zzx2==97) then
     love.audio.play(jedzeniesnd);
                allowmovepla2=0; 
           if (chances>50) then printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"98"); end;
                end;   

     if (zzx2==98) then
     love.audio.play(jedzeniesnd);
                allowmovepla2=0; 
           if (chances>50) then printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"99");end;
                end;   
     if (zzx2==99) then
     love.audio.play(jedzeniesnd);
                 allowmovepla2=0; 
           if (chances>50) then printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"100");end;
                end;   
   
     if (zzx2==100) then
     love.audio.play(jedzeniesnd);
               allowmovepla2=0; 
           if (chances>50) then printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"27");end;
                end;   

    if (zzx2==114) then allowmovepla2=0; 
              -- love.audio.play(aptekasnd);  hp=hpmax+50;
                end;

    if (zzx2==115) then allowmovepla2=0; 
                          end;

    if (zzx2>103)and(zzx2<113) then allowmovepla2=0; 
    love.audio.play(jedzeniesnd);
     finalobject="27";
     check2=damagestage (zzx2);
        if (check2~="0") then finalobject=check2; end
           if (chances>56) then  printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,finalobject);end;

                          end;
    

   if (zzx2>79)and(zzx2<87) then allowmovepla2=0; 
    love.audio.play(jedzeniesnd);
     finalobject="27";
     check2=damagestage (zzx2);
        if (check2~="0") then finalobject=check2; end
           if (chances>16) then  printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,finalobject);end;

    end

    if (zzx2==12)and(timerz>5) then
     love.audio.play(switchpwsnd);
                allowmovepla2=0; 
           printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"14");
            powerstate=1; timerz=3;
            allowpowerrescan=1; end 
    if (zzx2==12)and(timerz<6) then allowmovepla2=0;
                 end 
    if (zzx2==14)and(timerz>5) then
     love.audio.play(switchpwsnd2);

                allowmovepla2=0; 
           printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"12");
            powerstate=0;
            timerz=3; end 
    if (zzx2==14)and(timerz<6) then allowmovepla2=0;
                
        end 

    if (zzx2==120) then
     love.audio.play(switchmsnd);
                allowmovepla2=0; 
           printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"131");
            puszkistate=1;
                
        end 
    if (zzx2==131) then
     love.audio.play(switchmsnd);
                allowmovepla2=0; 
           printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"120");
            puszkistate=0;
                
        end 

     if ((zzx2==13)or(zzx2==79)or(zzx2==71)) then
            allowmovepla2=0;
       zzblock=string.byte (screens (gamey(ypla2)+2*plusypla2,gamex(xpla2)+2*plusxpla2));
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
         end;
         return allowmovepla2,hptank,freezetimerPL2,speedtimerpla2 ; 
end

function reactmove (zzx)
    if (editor==1) then return; end;
    if (pause==1) then return; end;
    if (freezePL1==1) then return; end;
    --реакция на движение второго игрока - возможно потом придётся вынести как отдельную функцию.
     --по умолчанию второй игрок отправляет обьект на который наступил, однако для Player 2 надо особый обработчик.
    --реакция на движение, может изменять параметры,или запрещать движение или корректировать его.
     
     if (zzx==19) then  man_speed = 500+240*scaling
      speedtimer=10;
     love.audio.play(patronysnd);
             printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;

    if (zzx==44) then
      dasglukenfild=1;
     love.audio.play(patronysnd);
             printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;

       if (zzx==74)and(seed>1) then  
           seed=seed-1; 
     love.audio.play(patronysnd);
             printat (gamey(y)+plusy,gamex(x)+plusx,"80");
         end;
    
    if (zzx==132) then allowmove=0; 
                          end;
    if (zzx==133) then allowmove=0; 
                          end;
    if (zzx>133)and(zzx<140) then allowmove=0; 
                          end;
    if (zzx==135) then allowmove=0; 
        --if  then allowmove=0; end нужен таймер не позволяющий любому обьекту многократно применятся по 50 раз за прикосновение.
        if (plusy==0) then
      cd1= string.byte (screens (gamey(y)+plusy+1,gamex(x)+plusx));
      cd2= string.byte (screens (gamey(y)+plusy+2,gamex(x)+plusx));
      --smsg1="cd1="..cd1.." cd2="..cd2;
      if (timerz>10) then if (cd1==133)and(cd2==134)then 
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
        
        if (plusy==0) then
      cd1= string.byte (screens (gamey(y)+plusy+1,gamex(x)+plusx));
      cd2= string.byte (screens (gamey(y)+plusy+2,gamex(x)+plusx));
      --smsg1="cd1="..cd1.." cd2="..cd2;
      if (timerz>10) then if (cd1==56)and(cd2==56) then 
        printat (gamey(y),gamex(x)+plusx,"135");
        printat (gamey(y)+1,gamex(x)+plusx,"133");
        printat (gamey(y)+2,gamex(x)+plusx,"134");
        love.audio.play(swapitem);
        timerz=0; else love.audio.play(brokendoorsnd); 
        return;
      end; end
     
                          end;
                          end;


    if (zzx==55) then
         if (levelnumber<128) then levelnumber=levelnumber+1; end;
         score=score+1000+lives*20+ammo+ice+bombs+keys*5+water*5;
      levelname="Levels/LEVEL"..levelnumber..".$C";  
         love.load();
    love.audio.play(levelnextsnd); 
        end;     


    if (zzx==22) then passthrurock=passthrurock+2;
     --love.audio.play(patronysnd);
             printat (gamey(y)+plusy,gamex(x)+plusx, ext_objs_param (zzx,4));  -- приходит уже string
         end;




     if (zzx==58) then ammo=ammo+15;
     love.audio.play(patronysnd);
             printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;

    if (zzx==94) then
      if (seed<80) then  seed=seed+40;
     love.audio.play(patronysnd);
             printat (gamey(y)+plusy,gamex(x)+plusx,"56");
           else
            allowmove=0;
          end
         end;
    if (zzx==83) then 
            if (mushroom<slotlimit) then mushroom=mushroom+1;
              love.audio.play(patronysnd);
             printat (gamey(y)+plusy,gamex(x)+plusx,"74");
                 else
              --allowmove=0;
             end
         end;


     if (zzx==91)or(zzx==101)or(zzx==102)or(zzx==92)or(zzx==93)or(zzx==116) then --steelwall=steelwall+5;
      if (countinventory<maximuminventorysize) then
      addinventoryitem (zzx);
     love.audio.play(patronysnd);
             printat (gamey(y)+plusy,gamex(x)+plusx,"56");
                else
              allowmove=0;
             end
         end;
   

     if (zzx==61) then ice=ice+15;         
     love.audio.play(patronysnd);
             printat (gamey(y)+plusy,gamex(x)+plusx,"56");
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

     if (zzx==95) then paralysatorrifle=1;        
     love.audio.play(patronysnd);
              printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;

     if (zzx==103) then paralysatorammo=paralysatorammo+1;        
     love.audio.play(patronysnd);
              printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;

     if ((zzx==13)or(zzx==79)or(zzx==71)) then
    
       allowmove=0;
       zzblock=string.byte (screens (gamey(y)+2*plusy,gamex(x)+2*plusx));
                if (zzblock==56) then 
                     love.audio.play(movableblocksnd);
                    printat (gamey(y)+plusy,gamex(x)+plusx,"56");
                    printat (gamey(y)+2*plusy,gamex(x)+2*plusx,zzx);
                end
                if (zzblock==13)and(zzx==79) then 
                     love.audio.play(movableblockdestrsnd);
                    printat (gamey(y)+plusy,gamex(x)+plusx,"56");
                    --printat (gamey(y)+2*plusy,gamex(x)+2*plusx,zzx);
                end
         end;



     if (zzx==87) then
     love.audio.play(movableblocksnd);
       allowmove=0;
       if (water>0) then water=water-1;
       zzblock=string.byte (screens (gamey(y)+2*plusy,gamex(x)+2*plusx));
                if (zzblock==56) then 
                    printat (gamey(y)+plusy,gamex(x)+plusx,"56");
                    printat (gamey(y)+2*plusy,gamex(x)+2*plusx,zzx);
                end
                if ((zzblock==76)or(zzblock==77)) then 
                    printat (gamey(y)+plusy,gamex(x)+plusx,"27");
                    --printat (gamey(y)+2*plusy,gamex(x)+2*plusx,zzx);
                end;
            else 
                if (tank==0) then  hp=0; end
                if (tank==1) then hp=hp-100; end;
            love.audio.play(firesnd);end;
         end;


  
     if ((zzx==121)and(tank>0)) then  --при попытке взять ещё один танк появляется враг.ы
        enemytank=1; hptank=3000;
        xpla2=x; ypla2=y;
        freezePL2=1; freezetimerPL2=1;
        printat (gamey(y)+plusy,gamex(x)+plusx,"56");

              
              if (acidprotect==1) then addinventoryitem(40); acidprotect=0; end;

        end

     if (zzx==121)and(tank<1) then tank=1;        
     love.audio.play(tankzsnd);
        printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;


     if (zzx==125) then  --railroad
            print ("");
         end;

    if (zzx==128) then express=1;        
     love.audio.play(expresssnd);
              printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;


     if (zzx==39) then protect=1; 
      if (acidprotect==1) then addinventoryitem (40); end; 
      acidprotect=0;
     love.audio.play(protectsnd);
              printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;

    if (zzx==40) then acidprotect=1;
        if (protect==1) then addinventoryitem (39); end; 
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
     if (math.random(50)>45) then hp=hp+10; 
            smsg1="You found an bonus hp";
                end;  --уведомить игрока о действиях.ыыыыы
     if (math.random(70)>55) then antitankm=1; 
            smsg1="You found an antitank missile";
                end;  --уведомить игрока о действиях.ыыыыы
      if (math.random(70)>55) then 
        addinventoryitem (58);
            smsg1="You found ammobox";
                end;  --уведомить игрока о действиях.ыыыыы
      if (math.random(70)>65) then 
        addinventoryitem (60);
            smsg1="You found an medikit";
                end;  --уведомить игрока о действиях.ыыыыы
     love.audio.play(patronysnd);
              printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;

          --функция для взрыва бомбы,  наступания на бомбы и выстрела в нее любым игроком одна и та же.
     if (zzx==124) then 
        if (tank<1) then hp=hp-25; end;
        if (protect<1) then hp=hp-5; end; 
       love.audio.play(bombsnd);
         by=gamey(y)+plusy;bx=gamex(x)+plusx; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
       explodebomb (by,bx);
       end;
            
       

      if (zzx==30) then 
          -- выключено ибо непонятно что происходит всвязи с увеличением клетки  - dla zmiany rozmiaru 
          love.audio.play(icetakesnd);
                printat (gamey(y)+plusy,gamex(x)+plusx,"27");
               freezePL1=1; freezetimerPL1=1;
                if (protect<1) then freezetimerPL1=2;end
               if (tank<1) then freezetimerPL1=2;end
         end;




     if (zzx==60) then if (hp==hpmax) then reservedaids=reservedaids+1; 
                         love.audio.play(patronysnd);
                        end;       
                if (hp<hpmax ) then      love.audio.play(aptekasnd);  hp=hpmax;end;
                

                     printat (gamey(y)+plusy,gamex(x)+plusx,"56");
                end;

    if (zzx==114) then allowmove=0; 
               love.audio.play(aptekasnd);  hp=hpmax+50;
                end;

   if (zzx==20) then allowmove=0;  darkzone= not_numeric (darkzone);
               love.audio.play(patronysnd);  
                end;


    if (zzx==115) then allowmove=0; 
                          end;

    if (zzx>103)and(zzx<113) then   --104
          --battery=battery+1;
            if (countinventory<maximuminventorysize) then
              addinventoryitem (zzx);
          love.audio.play(patronysnd);
             printat (gamey(y)+plusy,gamex(x)+plusx,"56");
             else
              allowmove=0;
           end
         end;


   if (zzx==86) then allowmove=0; 
                        end;
    if (zzx==84) then allowmove=0; 
                         end;
    if (zzx==85) then allowmove=0; 
                          end;
     if (zzx==141) then allowmove=0; 
                          end;
      if (zzx==142) then allowmove=0; 
                          end;



    if (zzx==31) then tank=0;  protect=0; end; --обьект не должен уничтожатся как и стена.

    if (passthrurock<1) then
                if (zzx==76) then
                    love.audio.play(wallsnd);
                    if (express<1) then allowmove=0; end -- на экпрессе можно сломать стену.  FUCK 
                    if ((protect<1)and(tank<1)and(ostype~="Android")) then hp=hp-1; end
                end;    
                if (zzx==75)or(zzx==96) then
                    allowmove=0; 
                end; 
                
                if (zzx==73)or(zzx==107)or(zzx==108)or(zzx==109)or(zzx==110)or(zzx==111)or(zzx==112) then
                    allowmove=0; 
                end; 
                if (zzx==55) then
            --     love.audio.play(wallsnd);
                   allowmove=0; 
                end; 
                if (zzx==63) then
                    allowmove=0; 
                end; 
              

        end  --end of passthrurock spell

    if (passthrurock>0) then
                if (zzx==76) then
                    passthrurock=passthrurock-1;
                end;    

           if (zzx==55) then
                   passthrurock=passthrurock-1;
                end; 
                if (zzx==63) then
                   passthrurock=passthrurock-1;
                end; 
              
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
            allowpowerrescan=1; end 
    if (zzx==12)and(timerz<16) then allowmove=0;
                
        end 
    if (zzx==14)and(timerz>15) then
     love.audio.play(switchpwsnd2);
                allowmove=0; 
           printat (gamey(y)+plusy,gamex(x)+plusx,"12");
            powerstate=0; timerz=0;
                allowpowerrescan=1; end 
    if (zzx==14)and(timerz<16) then allowmove=0;
        end 

    if (zzx==120) then
     love.audio.play(switchmsnd);
                allowmove=0; 
           printat (gamey(y)+plusy,gamex(x)+plusx,"131");
            puszkistate=1;
                
        end 
    if (zzx==131) then
     love.audio.play(switchmsnd);
                allowmove=0; 
           printat (gamey(y)+plusy,gamex(x)+plusx,"120");
            puszkistate=0;
                
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
  if (zzx==5) then
    -- love.audio.play(deadminesnd);
          incontrolcentre=1;
          allowmove=0; 
        end


    if (incontrolcentre==1) then allowmove=0; end;  -- блокирует перемещение персонажа пока тот затаривается покупками.ы
    if (pause==1) then allowmove=0; end;  -- блокирует перемещение персонажа пока pause
   if ((zzx==23)or(zzx==45)or(zzx==46)) then
     love.audio.play(deadminesnd);
     hp=0;
               allowmove=0; 
        end
 
   if (zzx==21) then 
    if (acidprotect==1) then  end;
    if (acidprotect==0) then      love.audio.play(deadminesnd);
                    hp=0;
               allowmove=0;  end;

      end

     if (zzx==122) then
        --     love.audio.play(deadminesnd);
      tank=0; targetremains=targetremains-1;hp=0;
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

 
     if (zzx==15) then  --teleport object   -- АНИМАЦИЯ НЕ СДЕЛАНО
              --  accelmove=2;  
                --правильно было бы так - найти на карте все коды 119, переместится случайно в любой из них рядом с 
                --которым есть свободная клетка.

                --allowmove=0;
              removeteleportmarker=1;
               love.audio.play(telesnd);
               allowmove=0;
                          --      plusx=0;  plusy=0;
            --   pri=coord (gamey(y)+plusy,gamex(x)+plusx);
            printat (tx,ty,"15");
                  ttx=gamex(x)+plusx;tty=gamey(y)+plusy;
                    --на данную секунду обьекты меняются кооректно местами, но сам человечек часто попадает не туда.
                --y=(tx+plusx)*rozmiarznak;x=240+(ty+plusy)*rozmiarznak;  -- задаём новые координаты по адресу полученного телепорта,
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
                accelmove=2;
               love.audio.play(xsnd);
                printat (gamey(y)+plusy,gamex(x)+plusx,"76");
                pri=coord (gamey(y)+plusy,gamex(x)+plusx);
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
end

-- выстрел Player 1  Игрок 1 выстрел, анимация полёта пули.
if (pause==1) then allowmove=0;end;
   
 x2,y2,man_x2,man_y2,man_is_moving2,man_speed2=move_the_man2(dt,x2,y2, man_x2, man_y2 ,man_is_moving2,man_speed2);  




if ((not man_is_moving2)and(not man_is_moving)) then -- обрабатываем кнопки только, если чувак и пуля не двигается уже
    if ((((ammoKEYPL1=="ammo")or(ammoKEYPL1=="paint"))and(hp>0)and(ammo>0)and(editor<1)and(pause<1))) then 
            
            zzxammo=0; 
            allowshot=1;steps=0;renderammoshot=1;
            y2=y; x2=x;y2now=y2; x2now=x2;
            if (movePL1=="left") then 
              love.audio.play(wystrelsnd);
            ammoicon="left";
            ammo=ammo-1;  
            while ((allowshot==1)and(gamex(x2)>0)) do 
            
            x2=x2-rozmiarznak; 
            steps=steps+1;  --тут подсчитываются шаги полёта пули. 
         zzzammo=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzzammo) then
                        zzxammo=string.byte (zzzammo);
                        reactammo (zzxammo); -- проверяем в что попали
                    end
            
                    if (allowshot==0) then 
                          plusx=-steps+2;plusy=0; 
                         x2=x2now; --y2=y2now+rozmiarznak; --подправляем координаты чтобы пуля была где нужно.
                        --если убрать фикс,попадание в танк будет работать но анимация будет неверной.
                            man_is_moving2,man_x2,man_y2=do_a_step(dt, -man_step+plusx*rozmiarznak,0,x2,y2); end;
                       end
            end; 
            --===========================
            if (movePL1=="right") then 
                       love.audio.play(wystrelsnd);
            ammo=ammo-1;
            ammoicon="right";
            while ((allowshot==1)and(gamex(x2)<mapsize_horizontal-1)) do 
                     
            x2=x2+rozmiarznak;
            steps=steps+1;
         zzzammo=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzzammo) then
                        zzxammo=string.byte (zzzammo);
                        reactammo (zzxammo); ---- проверяем в что попали
                    end
                if (allowshot==0) then 
                          plusx=steps-1;plusy=0;
                         x2=x2now; y2=y2now;
                            man_is_moving2,man_x2,man_y2=do_a_step(dt, man_step+plusx*rozmiarznak, 0,x2,y2); 
                       end
                        end
            end; 
            --=====================================
            if (movePL1=="down") then 
                freezePL3=0;
                       love.audio.play(wystrelsnd);
            ammo=ammo-1;
            ammoicon="down";
            while ((allowshot==1)and(gamey(y2)<mapsize_vertical-1)) do 
            
               y2=y2+rozmiarznak;
            steps=steps+1;
         zzzammo=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzzammo) then
                        zzxammo=string.byte (zzzammo);
                        reactammo (zzxammo); -- проверяем в что попали
                    end
                if (allowshot==0) then 
                          plusx=0;plusy=steps-1; 
                         --x2=x2now+rozmiarznak;  --если убрать фикс,попадание в танк будет работать но анимация будет неверной.
                         y2=y2now;
                            man_is_moving2,man_x2,man_y2=do_a_step(dt, 0, man_step+plusy*rozmiarznak,x2,y2); 
                       end
                        end
            end; 
            --=====================================
       if (movePL1=="up") then 
        freezePL3=0;
                       love.audio.play(wystrelsnd);
            ammo=ammo-1;
            ammoicon="up";
            while ((allowshot==1)and(gamey(y2)>0)) do 
         
            y2=y2-rozmiarznak;
            steps=steps+1;
         zzzammo=(screens (gamey (y2),gamex (x2)));
                    if (zzzammo) then
                        zzxammo=string.byte (zzzammo);
                        reactammo (zzxammo); -- -- проверяем в что попали
                    end
                    if (allowshot==0) then 
                          plusx=0;plusy=-steps+2; 
                         x2=x2now; y2=y2now;
                            man_is_moving2,man_x2,man_y2=do_a_step(dt, 0, -man_step+plusy*rozmiarznak,x2,y2);  
                       end
                        end
            end; 
            --=====================================
            end

end;

if ((player2AI>0)and(editor==0)and(enemytank>0)) then   -- movePL2="";
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
        if (timerz<155)and(timer>150) then hpdetect2=hp; end;
        if (1>0)and(hpdetect==hpdetect2) then 
             
                if x==xpla2 and y<ypla2 then movePL2="up";end
                if x==xpla2 and y>ypla2 then movePL2="down";end
                if x>xpla2 and y==ypla2 then movePL2="right";end
                if x<xpla2 and y==ypla2 then movePL2="left";end
                end
         if (timerz==200) then hpdetect=1; hpdetect2=1; end;
    end
    -- анимация движения 
-- выстрел Player2

--move_the_manpla2am(dt)
x2pla2am,y2pla2am,man_x2pla2am,man_y2pla2am,man_is_movingpla2am,man_speedpla2am=move_the_man2(dt,x2pla2am,y2pla2am,man_x2pla2am, man_y2pla2am,man_is_movingpla2am,man_speedpla2am);  





if ((not man_is_movingpla2)and(not man_is_movingpla2am)) then -- обрабатываем кнопки только, если чувак и пуля не двигается уже
  if (((ammoKEYPL2=="ammo")and(enemytank>0)and(editor<1)and(pause<1))) then 
            --xpla2 i ypla2 не должны менятся никаким образом! это координаты игрока!!
            zzx2ammo=0;allowshotpla2=1;steps=0;
            y2pla2am=ypla2; x2pla2am=xpla2; -- начальная координата полёта пули
            x2now2am=x2pla2am; y2now2am=y2pla2am -- копируем координату 
            renderammoshotpla2=1;  
            if (movePL2=="left") then 
              love.audio.play(wystrelsnd);
            ammoiconpla2="left";
            while ((allowshotpla2==1)and(gamex(x2pla2am)>0)) do 
            x2pla2am=x2pla2am-rozmiarznak; 
            steps=steps+1;
         zzz2ammo=(screens (gamey (y2pla2am),gamex (x2pla2am)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz2ammo) then
                        zzx2ammo=string.byte (zzz2ammo);
                        allowshotpla2=reactammo2 (zzx2ammo,x2pla2am,y2pla2am,allowshotpla2,ammoiconpla2); -- тут БУДЕТ вызов функции обработки пули. пока условие невыполнимо.
                    end
                    if (allowshotpla2==0) then 
                          plusx=-steps+1;plusy=0;   --максимальная конечная координата
                         x2pla2am=x2now2am; 
                      --   y2pla2am=y2now2am+rozmiarznak; --подправляем координаты чтобы пуля была где нужно.
                            man_is_movingpla2am,man_x2pla2am,man_y2pla2am=do_a_step(dt, -man_step+plusx*rozmiarznak,0,x2pla2am,y2pla2am); 
                       end

                        end
            end; 
            --===========================
            if (movePL2=="right") then 
                       love.audio.play(wystrelsnd);
            ammoiconpla2="right";
            while ((allowshotpla2==1)and(gamex(x2pla2am)<mapsize_horizontal-1)) do 
            x2pla2am=x2pla2am+rozmiarznak;
            steps=steps+1;
         zzz2ammo=(screens (gamey (y2pla2am),gamex (x2pla2am)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz2ammo) then
                        zzx2ammo=string.byte (zzz2ammo);
                        allowshotpla2=reactammo2 (zzx2ammo,x2pla2am,y2pla2am,allowshotpla2,ammoiconpla2); -- тут БУДЕТ вызов функции обработки пули. пока условие невыполнимо.
                    end
                        if (allowshotpla2==0) then 
                          plusx=steps-1;plusy=0;
                         x2pla2am=x2now2am; y2pla2am=y2now2am;
                            man_is_movingpla2am,man_x2pla2am,man_y2pla2am=do_a_step(dt, man_step+plusx*rozmiarznak, 0,x2pla2am,y2pla2am); 
                       end
                        end
            end; 
            --=====================================
            if (movePL2=="down") then 
                       love.audio.play(wystrelsnd);
            ammoiconpla2="down";
            while ((allowshotpla2==1)and(gamey(y2pla2am)<mapsize_vertical-1)) do 
            y2pla2am=y2pla2am+rozmiarznak;
            steps=steps+1;
         zzz2ammo=(screens (gamey (y2pla2am),gamex (x2pla2am)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz2ammo) then
                        zzx2ammo=string.byte (zzz2ammo);
                        allowshotpla2=reactammo2 (zzx2ammo,x2pla2am,y2pla2am,allowshotpla2,ammoiconpla2); -- тут БУДЕТ вызов функции обработки пули. пока условие невыполнимо.
                    end
                      if (allowshotpla2==0) then 
                          plusx=0;plusy=steps-1; 
                         --x2pla2am=x2now2am+rozmiarznak; 
                         y2pla2am=y2now2am;
                            man_is_movingpla2am,man_x2pla2am,man_y2pla2am=do_a_step(dt, 0, man_step+plusy*rozmiarznak,x2pla2am,y2pla2am); 
                       end
                        end
            end; 
            --=====================================
       if (movePL2=="up") then 
                       love.audio.play(wystrelsnd);
            ammoiconpla2="up";
            while ((allowshotpla2==1)and(gamey(y2pla2am)>0)) do 
            y2pla2am=y2pla2am-rozmiarznak;
            steps=steps+1;
         zzz2ammo=(screens (gamey (y2pla2am),gamex (x2pla2am)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz2ammo) then
                        zzx2ammo=string.byte (zzz2ammo);
                        allowshotpla2=reactammo2 (zzx2ammo,x2pla2am,y2pla2am,allowshotpla2,ammoiconpla2); -- тут БУДЕТ вызов функции обработки пули. пока условие невыполнимо.
                    end
               if (allowshotpla2==0) then 
                          plusx=0;plusy=-steps+2; 
                         x2pla2am=x2now2am; y2pla2am=y2now2am;
                          man_is_movingpla2am,man_x2pla2am,man_y2pla2am=do_a_step(dt, 0, -man_step+plusy*rozmiarznak,x2pla2am,y2pla2am);  
                        end
                        end
            end; 
            --=====================================
            end

end;
    -- анимация движения

--в кого попадают выстрелы. при совпадении будет убывание HP у 1 или второго игрока.



-- ICE выстрел Player1 ICE , использует переменные от ammo ssss
if ((not man_is_moving2)and(not man_is_moving)) then -- обрабатываем кнопки только, если чувак и пуля не двигается уже
  if (((ammoKEYPL1=="ice")and(hp>0)and(ice>0)and(editor<1)and(pause<1))) then 
            -- персонаж перемещается при выстреле льда,поправить как нибудь.  
            zzxice=0;accelmove=0;allowshot=1;steps=0;
            y2=y; x2=x;y2now=y2; x2now=x2;renderammoshot=2; 
            if movePL1=="left" then 
              love.audio.play(wystrelsnd);
            ammoicon="left";
            ice=ice-1; 
            while ((allowshot==1)and(gamex(x2)>0)) do 
            x2=x2-rozmiarznak; 
            steps=steps+1;
         zzzice=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzzice) then
                        zzxice=string.byte (zzzice);
                        reactice (zzxice); -- функции обработки пули.
                    end
                      if (allowshot==0) then 
                          plusx=-steps+2;plusy=0; 
                         x2=x2now; --y2=y2now+rozmiarznak; --подправляем координаты чтобы пуля была где нужно.
                            man_is_moving2,man_x2,man_y2=do_a_step(dt, -man_step+plusx*rozmiarznak,0,x2,y2); 
                            end
                        end
            end; 
            --===========================
            if movePL1=="right" then 
                       love.audio.play(wystrelsnd);
            ice=ice-1;
            ammoicon="right";
            while ((allowshot==1)and(gamex(x2)<mapsize_horizontal-1)) do 
            x2=x2+rozmiarznak;
            steps=steps+1;
         zzzice=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzzice) then
                        zzxice=string.byte (zzzice);
                        reactice (zzxice); -- fункции обработки пули
                    end
            
                       if (allowshot==0) then 
                          plusx=steps-1;plusy=0;
                         x2=x2now; y2=y2now;
                          man_is_moving2,man_x2,man_y2=do_a_step(dt, man_step+plusx*rozmiarznak, 0,x2,y2); 
                       end
                        end
            end; 
            --=====================================
            if (movePL1=="down") then 
                       love.audio.play(wystrelsnd);
            ice=ice-1;
            ammoicon="down";
            while ((allowshot==1)and(gamey(y2)<mapsize_horizontal-1)) do 
            y2=y2+rozmiarznak;
            steps=steps+1;
         zzzice=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzzice) then
                        zzxice=string.byte (zzzice);
                        reactice (zzxice); -- обработки пули. п
                    end
            
                     if (allowshot==0) then 
                          plusx=0;plusy=steps-1; 
                         --x2=x2now+rozmiarznak; 
                         y2=y2now;
                            man_is_moving2,man_x2,man_y2=do_a_step(dt, 0, man_step+plusy*rozmiarznak,x2,y2); 
                       end
                        end
            end; 
            --=====================================
       if movePL1=="up" then 
                       love.audio.play(wystrelsnd);
            ice=ice-1;
            ammoicon="up";
            while ((allowshot==1)and(gamey(y2)>0)) do 
            y2=y2-rozmiarznak;
            steps=steps+1;
         zzzice=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzzice) then
                        zzxice=string.byte (zzzice);
                        reactice (zzxice); -- функции обработки пули. 
                    end
            
                         if (allowshot==0) then 
                          plusx=0;plusy=-steps+2; 
                         x2=x2now; y2=y2now;
                            man_is_moving2,man_x2,man_y2=do_a_step(dt, 0, -man_step+plusy*rozmiarznak,x2,y2);  
                       end
                        end
            end; 
            --=====================================
            end

end;

-- END ICEfffffffffff



-- BOMB выстрел Player1  , использует переменные от ammo ssss
if ((not man_is_moving2)and(not man_is_moving)) then -- обрабатываем кнопки только, если чувак и пуля не двигается уже
  if (((ammoKEYPL1=="bomb")and(hp>0)and(bombs>0)and(editor<1)and(pause<1))) then 
            -- персонаж перемещается при выстреле льда,поправить как нибудь.  
            zzx=0;steps=0;
            y2=y; x2=x;y2now=y2; x2now=x2;
            if movePL1=="left" then 
              --love.audio.play(wystrelsnd);
            bombs=bombs-1; 
            x2=x2-rozmiarznak; 
         zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz) then
                        zzx=string.byte (zzz);
                        if (zzx==56) then printat (gamey (y2),gamex (x2),"124"); end;
                    end
            end; 

            --===========================
         if movePL1=="right" then 
              --love.audio.play(wystrelsnd);
            bombs=bombs-1; 
            x2=x2+rozmiarznak; 
         zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz) then
                        zzx=string.byte (zzz);
                        if (zzx==56) then printat (gamey (y2),gamex (x2),"124"); end;
                    end
            end; 
            --=====================================
   
      if movePL1=="down" then 
              --love.audio.play(wystrelsnd);
            bombs=bombs-1; 
                    y2=y2+rozmiarznak;
         zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz) then
                        zzx=string.byte (zzz);
                        if (zzx==56) then printat (gamey (y2),gamex (x2),"124"); end;
                    end
            end; 
            --=====================================
        if movePL1=="up" then 
              --love.audio.play(wystrelsnd);
            bombs=bombs-1; 
                    y2=y2-rozmiarznak;
         zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz) then
                        zzx=string.byte (zzz);
                        if (zzx==56) then printat (gamey (y2),gamex (x2),"124"); end;
                    end
            end; 
            --=====================================
            end

end;

-- END BOMB

if (ammoKEYPL1=="selectitem") then 
  sortinventoryitem ();
end


-- искуственный "интеллект" танков 

function AI (xpla3,ypla3,movePL3,ammoKEYPL3,speedtanks)    -- movePL2="";  
           chances=(math.random(75+10*tank+10*protect+10*poziom));  -- +3*hardlevel
            if (chances>80)and(hp>1)and(xpla3>200) then ammoKEYPL3="ammo"; end
            if (chances<50) then ammoKEYPL3="";end
            if (chances>29)and(chances<50) then hpdetect=1; hpdetect2=1; end;
        if ((chances<7) and (chances>0)) then movePL3="left";end
        if ((chances<14) and (chances>7)) then movePL3="right";end
        if ((chances<21) and (chances>14)) then movePL3="up";end
        if ((chances<29) and (chances>21)) then movePL3="down";end
        if (speedtanks<1) then  if ((chances<45) and (chances>29)) then movePL3="";end ;end ;
        if (timerz<10) then hpdetect=hp; end;
        if (timerz<155)and(timer>150) then hpdetect2=hp; end;
        if (speedtanks>0)and(timerx>2) then hpdetect2=hp; end;
        if (1>0)and(hpdetect==hpdetect2) then 
             
                if x==xpla3 and y<ypla3 then movePL3="up";end
                if x==xpla3 and y>ypla3 then movePL3="down";end
                if x>xpla3 and y==ypla3 then movePL3="right";end
                if x<xpla3 and y==ypla3 then movePL3="left";end
                end
         if (timerz==200) then hpdetect=1; hpdetect2=1; end;
         return xpla3,ypla3,movePL3,ammoKEYPL3; 
    end
 timerx=timerx+1;
-- обработка перемещения танков  fuck  FUCK 
if (1==1) then  -- (not man_is_moving2)and(not man_is_moving)
  if (((editor<1)and(pause<1))) then  --(ammoKEYPL1=="placeenemy")
           -- flagchecknewteleportersenemy=1;
        
             if (totalenemies>1) then 
   for enemynum=1,wsego_tank_teleporterow,1 do 
         type,xt,yt,hpt,rotate,man_xpla3,man_ypla3,man_is_movingpla3,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,man_is_movingpla3am=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
         -- больше негде в принципе сохранить параметры текущего перемещения кроме как в массиве. а где же ещё то . man_xpla2 

if (timerx>100) then timerx=0;end;
  if (speedtanks>0) then speedtanks=speedtanks-1;man_speedpla3 = 500+240*scaling;  end
  if (speedtanks<1) then man_speedpla3= default_man_speed; end;
 if (freezetanks>0) then freezetanks=freezetanks-1; end;
 if (protecttanks>0) then protecttanks=protecttanks-1; end;
 

         xt,yt,move,ammoKEYtanks=AI (xt,yt,movePL3,ammoKEYPL3,speedtanks) ;  --- ,rotate[enemynum]
      -- man_is_movingpla2  а откуда собственно берется это значение и почему не сохраняется? оно что одно на всех? 
      -- А что это за параметры такие интересные - move? ammoKEYtanks ? 
      xt,yt,hpt,rotate,man_xpla3,man_ypla3=tankmove (xt,yt,man_xpla3,man_ypla3,man_is_movingpla3,man_speedpla3,move,ammoKEYtanks,hpt,freezetanks,speedtanks,protecttanks);
        if ((ammoKEYPL3=="ammo")and(movePL3=="")and (not man_is_movingpla3)) then 
          tankammo (xt,yt,man_xpla3,man_ypla3,man_is_movingpla3,man_speedpla3,move,ammoKEYtanks,hpt,freezetanks,speedtanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,man_is_movingpla3am); 
        end
        enemies[enemynum]:set(type, xt,yt,hpt,rotate,man_xpla3,man_ypla3,man_is_movingpla3,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,man_is_movingpla3am); -- NIL  kak tak? 
     --smsg4=" enemies[enemynum]:set(type,"..xt..","..yt..","..hpt..",rotate,"..man_xpla3..","..man_ypla3.."); ";
    end
  end
            end
        end;

    -- END временный модуль для расстановки танков

-- обработка выстрелов танков
--class_enemy:set(type,x3,y3,hp,rotate,man_xpla3,man_ypla3,man_is_movingpla3,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,man_is_movingpla3am)
function tankammo (xpla3,ypla3,man_xpla3,man_ypla3,man_is_movingpla3,man_speedpla3,movePL3,ammoKEYPL3,hptank,freezetanks,speedtanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,man_is_movingpla3am)
  

 return xpla3,ypla3,hptank,rotate,man_xpla3,man_ypla3,freezetanks,speedtanks;
end
-- END окончание обработки выстрелов танков
-- обработка перемещений танков, требует перевода на попиксельные координаты и заключение внутрь цикла
-- первый танк имеет ккординату x=4 (360) y=9 (760)    move переходит сюда как movePL2
function tankmove (xpla3,ypla3,man_xpla3,man_ypla3,man_is_movingpla3,man_speedpla3,movePL3,ammoKEYPL3,hptank,freezetanks,speedtanks)
 
xpla3,ypla3,man_xpla3,man_ypla3,man_is_movingpla3,man_speedpla3=move_the_man(dt,xpla3,ypla3, man_xpla3, man_ypla3 ,man_is_movingpla3,man_speedpla3)

 allowmovepla3=1; 
 --smsg1="freezetanks="..freezetanks.."";
 --if (freezetanks==nil) then freezetanks=0; end;
  if (freezetanks>0) then allowmovepla3=0; end; 
        --if (freezetimerPL3<1) then freezetanks=0; end
        
   -- if (freeze==1) then allowmovepla3=0; 
     --   if (freezetimer<1) then freezetanks=0; freeze=0; end
      --  end;

if ((ammoKEYPL3=="ammo")) then allowmovepla3=0;end;
  
   if (pause==1) then allowmovepla3=0;end;
   redirectmovepla2=0;
    
    move="undefined";
    plusxpla2=0; plusypla2=0;
    xnowpla3=xpla3;ynowpla3=ypla3; -- сохраняем настоящие текущие координаты.

    if ((not man_is_movingpla3)and(allowmovepla3>0)) then
        -- обрабатываем кнопки только, если чувак не двигается уже
         if (((movePL3=="right"))and(not (ammoKEYPL3=="ammo"))and(gamex(xpla2)<mapsize_horizontal-1)) then
         movepla2="right";plusxpla2=1;rotate=180;
         zzz2=(screens (gamey (ypla3),gamex (xpla3)+1));-- определяем куда движется чувак
                           if (zzz2) then
                zzx2=string.byte (zzz2);
                   if  (hptank>200) then allowmovepla3,hptank,freezetanks,speedtanks=reactmove2 (zzx2,xpla3,ypla3,hptank,allowmovepla3,plusxpla2,plusypla2,0,freezetanks,0,speedtanks) else if (editor==0) then allowmovepla3=0; end end;
             end
        if (allowmovepla3==1) then man_is_movingpla3,man_xpla3,man_ypla3=do_a_step(dt, man_step*1, 0,xpla3,ypla3);end;
        --if (allowmovepla3==1) then smsg2=" man_is_movingpla2,"..man_xpla2..","..man_ypla2.."=do_a_step(dt, "..man_step.."*"..accelmovepla2..", 0,"..xpla2..","..ypla2..");end;"; end;         --smsg3="allowmovepla3="..allowmovepla3.." reactmove (zzx2="..zzx2..")";  -- man_is_movingpla2 is boolean  cannot be printed
        end
          -- FUCKFUCKFUCK  
        if (((movePL3=="left"))and(not (ammoKEYPL3=="ammo"))and(gamey(xpla2)>0)) then
         movepla2="left";plusxpla2=-1;rotate=0;
         zzz2=(screens (gamey (ypla3),gamex (xpla3)-1)); 
                              if (zzz2) then 
                   zzx2=string.byte (zzz2);
                if  (hptank>200) then allowmovepla3,hptank,freezetanks,speedtanks=reactmove2 (zzx2,xpla3,ypla3,hptank,allowmovepla3,plusxpla2,plusypla2,0,freezetanks,0,speedtanks) else if (editor==0) then allowmovepla3=0; end end;
              end     
         if (allowmovepla3==1) then man_is_movingpla3,man_xpla3,man_ypla3=do_a_step(dt, -man_step*1, 0,xpla3,ypla3);end;
        end

     if (((movePL3=="down"))and(not (ammoKEYPL3=="ammo"))and(gamey(ypla3)<mapsize_vertical+20*editor)) then
         movepla2="down";plusypla2=1;rotate=270;
         zzz2=(screens (gamey (ypla3)+1,gamex (xpla3))); 
              if (zzz2) then 
                   zzx2=string.byte (zzz2);
                    if  (hptank>200) then allowmovepla3,hptank,freezetanks,speedtanks=reactmove2 (zzx2,xpla3,ypla3,hptank,allowmovepla3,plusxpla2,plusypla2,0,freezetanks,0,speedtanks) else if (editor==0) then allowmovepla3=0; end end;
              end   
         if (allowmovepla3==1) then man_is_movingpla3,man_xpla3,man_ypla3=do_a_step(dt, 0, man_step*1,xpla3,ypla3) ;end;
        end
        if (((movePL3=="up"))and(not (ammoKEYPL3=="ammo"))and(gamey(ypla3)>1)) then
         movepla2="up";plusypla2=-1; rotate=90;
         zzz2=(screens (gamey (ypla3)-1,gamex (xpla3))); 
              if (zzz2) then 
                   zzx2=string.byte (zzz2);
                  if  (hptank>200) then allowmovepla3,hptank,freezetanks,speedtanks=reactmove2 (zzx2,xpla3,ypla3,hptank,allowmovepla3,plusxpla2,plusypla2,0,freezetanks,0,speedtanks) else if (editor==0) then allowmovepla3=0; end end;
              end   
         if (allowmovepla3==1) then man_is_movingpla3,man_xpla3,man_ypla3=do_a_step(dt, 0, -man_step*1,xpla3,ypla3);end;
        end

    end
 --конец управления танками
  if (man_xpla3<200)or (man_ypla3<200) then xpla3=xnowpla3; ypla3=ynowpla3; end; 
 -- Затычка выключена  if (allowmovepla2==1)and (man_xpla2>200)and (man_ypla2>200) then xpla2=man_xpla2; ypla2=man_ypla2; end; 
 return xpla3,ypla3,hptank,rotate,man_xpla3,man_ypla3,freezetanks,speedtanks;
end



    -- временный модуль для расстановки танков  fuck 
if ((not man_is_moving2)and(not man_is_moving)) then
  if ((love.keyboard.isDown("w")and(editor<1)and(pause<1))) then 
        -- просто читаем данные первых двух танков и выводим их на печать
        type,xt,yt,hpt,rotate=enemies[1]:get();
        type2,xt2,yt2,hpt2,rotate2=enemies[2]:get();
        smsg1="enemy[1]="..type.." xt="..xt.."yt="..yt.." hpt="..hpt.." [2]="..type2.." xt="..xt2.."yt="..yt2.." hpt="..hpt2  ;  --attempt to index global "enemies" (a nil value) хотя я сначала его задал!!!!!!

               end
        end;

if ((not man_is_moving2)and(not man_is_moving)) then 
 
 if ((love.keyboard.isDown("e")and(editor<1)and(pause<1)))  then 
          --вызов смены параметров
       enemies[1]:set("tank", xt,yt,399,90,xt,yt,0,0,500); -- NIL  kak tak? 
        --function class_enemy:set(type,x3,y3,hp,rotate,man_xpla3,man_ypla3,man_is_movingpla3,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,man_is_movingpla3am)
               end
    
     if ((ammoKEYPL1=="placeenemy")and(editor<1)and(pause<1))  then 
          --вызов смены параметров
        enemies[1]:set("tank", xt,yt,399,90,xt,yt,0,200,1); -- NIL  kak tak? 
        
               end

        end;


--zzx2, II , jedzenie 
   if (flagchecknewteleportersenemy==1) then 
          xt,yt=x,y;
          aaa=1;
          wsego_tank_teleporterow=scanobject (28,-2);--check player 1 start position
           if (wsego_tank_teleporterow>0) then 
            for aaa=1,wsego_tank_teleporterow,1 do 
            checkx,checky=scanobject (28,-5,aaa);--check player 1 start position
            if (checkx==-1) then smsg2="Tanks teleporters not found.";end;
            if (checkx>-1) then xt,yt=xgametorealpositionbezbyte (1+checky,checkx) ; 
             -- yt=checky; xt=checkx; -- 
                          end -- пока что печатаем по реальным координатам принтат. 
            enemies[aaa] = class_enemy:new("tank",xt,yt,400,0);  
            totalenemies=totalenemies+1;
            --smsg1="a="..aaa.."class_enemy:new(tank,"..xt..","..yt..",400) wsego_tank_teleporterow="..wsego_tank_teleporterow..";";
              end
          
       flagchecknewteleportersenemy=0;
       end;
     end
    if (timerx>90)and(wsego_tank_teleporterow>0) then timerx=0;
      randomteleporterselect=   math.ceil (math.random (wsego_tank_teleporterow)); 
     checkx,checky=scanobject (28,-5,randomteleporterselect);
     xt,yt=xgametorealpositionbezbyte (1+checky,checkx) ; 
     enemies[totalenemies+1] = class_enemy:new("tank",xt,yt,400,0); 
       totalenemies=totalenemies+1;
    end


-- END временный модуль для расстановки танков

-- =======================================================================


-- выкладывание вещей из инвентаря Player1  , использует переменные от ammo ssss
if ((not man_is_moving2)and(not man_is_moving)) then -- обрабатываем кнопки только, если чувак и пуля не двигается уже
  if (((ammoKEYPL1=="placeitem")and(hp>0)and(countinventory>0)and(editor<1)and(pause<1))) then 
            -- персонаж перемещается при выстреле льда,поправить как нибудь.  
            zzx=0;steps=0;
            y2=y; x2=x;y2now=y2; x2now=x2;
            --if (inventoryitemtoremove==nil) then return ; end;
            inventoryitemtoremove=inventoryitemtable[countinventory];
            
            smsg2="inventoryitemtoremove="..inventoryitemtoremove;
            --if (inventoryitemtoremovex==nil) then inventoryitemtoremovex=inventoryitemtoremove; end; 
            if movePL1=="left" then 
              --love.audio.play(wystrelsnd);
              
            x2=x2-rozmiarznak; 
         zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz) then
                        zzx=string.byte (zzz);
                        if (zzx==56) then printat (gamey (y2),gamex (x2),inventoryitemtoremove); 
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
                        zzx=string.byte (zzz);
                        if (zzx==56) then printat (gamey (y2),gamex (x2),inventoryitemtoremove);
                         removeinventoryitem(countinventory);  
                         countinventory=countinventory-1; 
                         end;
                    end
            end; 
            --=====================================
   
      if movePL1=="down" then 
              --love.audio.play(wystrelsnd);
                    y2=y2+rozmiarznak;
         zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz) then
                        zzx=string.byte (zzz);
                        if (zzx==56) then printat (gamey (y2),gamex (x2),inventoryitemtoremove);
                            removeinventoryitem(countinventory);  
                             countinventory=countinventory-1; 
                         end;
                    end
            end; 
            --=====================================
        if movePL1=="up" then 
              --love.audio.play(wystrelsnd);
                    y2=y2-rozmiarznak;
         zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz) then
                        zzx=string.byte (zzz);
                        if (zzx==56) then printat (gamey (y2),gamex (x2),inventoryitemtoremove);
                        removeinventoryitem(countinventory);  
                          countinventory=countinventory-1; 
                         end;
                    end
            end; 
            --=====================================
            end

end;

-- END инвентарь игрока 1


-- У всех реакций на выстрел 1 неиспр баг, если держать выстрел удаляются несколько целей

--реакция на выстрел льда  Работает на 50%
 function reactice (zzxice)
 if (zzxice==27) then return;end;
 objectcode_ice=ext_objs_param (zzxice,8);
 if (objectcode_ice==255) then  allowshot=0; end; 

 if (zzxice==76) then 
     love.audio.play(ammotobadtargetsnd);
     --hp=hp-1; if (tank<1) then hp=hp-3; end;
        allowshot=0;
         end;
 if (zzxice==77) then 
     love.audio.play(ammotobadtargetsnd); 
        --    hp=hp-1;
        allowshot=0;
         end;
 if (zzxice==78) then 
     love.audio.play(ammotobadtargetsnd);
        allowshot=0;
         end;

   if (zzxice==58)or(zzxice==59)or(zzxice==60)or(zzxice==61)or(zzxice==62) then 
     love.audio.play(iceeffectsnd);
     printat (gamey(y2)+plusy,gamex(x2)+plusx,"30");
        allowshot=0;
         end;
 if (zzxice==63) then 
     love.audio.play(iceeffectsnd);
     printat (gamey(y2)+plusy,gamex(x2)+plusx,"77");
        allowshot=0;
         end;
    if (zzxice==124) then 
     love.audio.play(iceeffectsnd);
     printat (gamey(y2)+plusy,gamex(x2)+plusx,"77");
        allowshot=0;
         end;
    if (zzxice==113) then 
     love.audio.play(iceeffectsnd);
     printat (gamey(y2)+plusy,gamex(x2)+plusx,"77");
        allowshot=0;
         end;



    if (zzxice==97) then
            --стена от ледяново выстрела мгновенно рушится. но только в упор.
            if (steps<2) then printat (gamey(y2)+plusy,gamex(x2)+plusx,"27"); end;
                allowshot=0;
                end;   
    if (zzxice==98) then
            --стена от ледяново выстрела мгновенно рушится. но только в упор.
            if (steps<2) then printat (gamey(y2)+plusy,gamex(x2)+plusx,"27"); end;
                allowshot=0;
                end;   
    if (zzxice==99) then
            --стена от ледяново выстрела мгновенно рушится. но только в упор.
            if (steps<2) then printat (gamey(y2)+plusy,gamex(x2)+plusx,"27"); end;
                allowshot=0;
                end;   
  if (zzxice<5) then 
     --love.audio.play(ammotobadtargetsnd);
                  allowshot=0;
         end;
    if (zzxice==30) then 
     --love.audio.play(ammotobadtargetsnd);
                  allowshot=0;
         end;


end

--реакция на выстрел пули  игрока 2 Работает на 100%  является копией reactammo , также как и reactmove2 - копия reactmove
--zzx3ammo,x3pla2amrealtovisual,y3pla2amrealtovisual,allowshotpla3,"cannons"
function reactammo2 (zzx2ammo,x2pla2am,y2pla2am,allowshotpla2,ammoiconpla2)
  --smsg3="really we get reactammo2 ("..zzx2ammo..","..x2pla2am..","..y2pla2am..",allowshotpla2,ammoiconpla2)";
 objectcode_ammo=ext_objs_param (zzx2ammo,10);
 if (objectcode_ammo==255) then  allowshotpla2=0; end; 

   if (zzx2ammo==27) then return allowshotpla2,ammoiconpla2 ;end; -- ???  3799 ошибка  y2pla2am  может быть из за этого? 
    if (ammoiconpla2=="cannons") then plusx=0; plusy=0; 
    --py=gamey(x2pla2am);    px=gamex(y2pla2am);   --a=y2pla2am;   y2pla2am=x2pla2am; x2pla2am=a;    --else     py=gamey(y2pla2am);     px=gamex(x2pla2am);      
    end;
    if (ammoiconpla2=="left") then plusx=-1; end
    if (ammoiconpla2=="right") then  plusx=1; end
    if (ammoiconpla2=="up") then  plusy=-1; end
    if (ammoiconpla2=="down") then plusy=1; end


    if (zzx2ammo==23) then 
    --love.audio.play(ammotobadtargetsnd);     -- hp=hp-1; if (tank<1) then hp=hp-3; end;
        allowshotpla2=0;
         end;

          if (zzx2ammo==71) then 
     love.audio.play(bombsnd);
             printat (gamey(y2pla2am),gamex(x2pla2am),"27");
             printat (gamey(y2pla2am)+plusy,gamex(x2pla2am)+plusx,"27");
                          allowshotpla2=0;
         end;

      if (zzx2ammo==75) then 
     love.audio.play(ammotobadtargetsnd);
                  allowshotpla2=0;
         end;

           if (zzx2ammo==75) then 
              playrandombrokensound (70);
               printat (gamey(y2pla2am),gamex(x2pla2am),"96");
                  allowshotpla2=0;
         end;
      if (zzx2ammo==96) then 
        love.audio.play(ammotobadtargetsnd);
                  allowshotpla2=0;
         end;




       if (zzx2ammo>5)and(zzx2ammo<12) then 
             allowshotpla2=0;
         end;


       if (zzx2ammo>79)and(zzx2ammo<87) then 
  
     finalobject="27";
     check2=damagestage (zzx2ammo);
        if (check2~="0") then finalobject=check2; end
             printat (gamey(y2pla2am),gamex(x2pla2am),finalobject);
                          allowshotpla2=0;
         end;


      if (zzx2ammo>90)and(zzx2ammo<96)or(zzx2ammo==116) then  --zzx2ammo==91
  
     finalobject="27";
     check2=damagestage (zzx2ammo);
        if (check2~="0") then finalobject=check2; end
             printat (gamey(y2pla2am),gamex(x2pla2am),finalobject);
                          allowshotpla2=0;
         end;

      chances=(math.random(60));
    if (zzx2ammo>103)and(zzx2ammo<113) then  --------------------------------------------------------------------------
  
     finalobject="27";
     check2=damagestage (zzx2ammo);
        if (check2~="0") then finalobject=check2; end
           if (chances>56) then  printat (gamey(y2pla2am),gamex(x2pla2am),finalobject);end;
                          allowshotpla2=0;
         end;


    if (zzx2ammo>96)and(zzx2ammo<101) then --zzx2ammo==97
       love.audio.play(ammotobadtargetsnd);
     finalobject="27";
     check2=damagestage (zzx2ammo);
        if (check2~="0") then finalobject=check2; end
             printat (gamey(y2pla2am),gamex(x2pla2am),finalobject);
                          allowshotpla2=0;
         end;

       if (zzx2ammo==132) then 
   allowshotpla2=0;
         end;

         if (zzx2ammo>132)and(zzx2ammo<141) then 
    
     finalobject="27";
     check2=damagestage (zzx2ammo);
        if (check2~="0") then finalobject=check2; end
           if (chances>56) then  
                          printat (gamey(y2pla2am),gamex(x2pla2am),finalobject);
                          if (zzx2ammo==135) then  playrandombrokensound (50); end; 
                          end;
                          allowshotpla2=0;
         end;

           if (zzx2ammo==124) then 
       love.audio.play(bombsnd);
        by=gamey(y2pla2am);bx=gamex(x2pla2am); --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
       explodebomb (by,bx);
       allowshotpla2=0;
       end;

       if ((zzx2ammo==58)or(zzx2ammo==5)or(zzx2ammo==59)or(zzx2ammo==60)or(zzx2ammo==61)or(zzx2ammo==62)or(zzx2ammo==58)or(zzx2ammo==58)or(zzx2ammo==58)) then 
     love.audio.play(ammobrokeitemortargetsnd);
             printat (gamey(y2pla2am),gamex(x2pla2am),"27");
        allowshotpla2=0;-- при попадании в любую цель пуля должна остановится, иначе она будет лететь дальше.
         end;

      if (hardlevel>0) then -- в усложнённом уровне танк может уничтожать цели основного игрока портя ему прохождение.
    if ((zzx2ammo==122)or(zzx2ammo==123)) then  -- в дружественном режиме танк может помогать ему.
     love.audio.play(ammobrokeitemortargetsnd);
     if (poziom==0) then targetremains=targetremains-1;end;-- при базовом уровне сложности счет идёт игроку 1.
             printat (gamey(y2pla2am),gamex(x2pla2am),"27");
        allowshotpla2=0;-- при попадании в любую цель пуля должна остановится, иначе она будет лететь дальше.
         end;
     end


   if (zzx2ammo==76) then 
     love.audio.play(ammotobadtargetsnd);
           -- hp=hp-1; if (tank<1) then hp=hp-3; end;   gjn  потом можно сделать 10000 HP второму игроку и перерасчет  пока НЕ СДЕЛАНО.
        allowshotpla2=0;
         end;


   if (zzx2ammo==77) then 
     love.audio.play(ammotobadtargetsnd); 
                  allowshotpla2=0;
         end;
   if (zzx2ammo==78) then 
     love.audio.play(ammotobadtargetsnd);
           allowshotpla2=0;
         end;
    if (zzx2ammo==76) then 
     love.audio.play(ammotobadtargetsnd);
                  allowshot=0;
         end;

    if (zzx2ammo==114) then 
     --love.audio.play(ammotobadtargetsnd);
       if (chances>50) then printat (gamey(y2pla2am),gamex(x2pla2am),"115"); end 
                          allowshotpla2=0;
         end;

    if (zzx2ammo==120) then
     love.audio.play(switchmsnd);
              allowshotpla2=0;
           printat (gamey(y2pla2am),gamex(x2pla2am),"118");
    end 
    if (zzx2ammo==131) then
     love.audio.play(switchmsnd);
                       allowshotpla2=0;
           printat (gamey(y2pla2am),gamex(x2pla2am),"118");
    end 
if  (y2pla2am==nil) then y2pla2am=0; end -- затычка от ошибки 3807 global y2pla2am == nil !!!! 
if  (x2pla2am==nil) then x2pla2am=0; end -- затычка от ошибки 3807 global y2pla2am == nil !!!! 

return allowshotpla2;
end
-- обработка выстрелов игрока 2 s


--нужно отправить реальные координаты карты в визуальные и обратно.
function reactammo3 (zzx3ammo,x3pla2am,y3pla2am,allowshotpla3) 
   x3pla2amrealtovisual,y3pla2amrealtovisual= xgametorealpositionbezbyte (y3pla2am,x3pla2am);
   y3pla2amrealtovisual=y3pla2amrealtovisual+rozmiarznak;
   --gytest=0*gamey(x3pla2amrealtovisual); gxtest=0*gamex(y3pla2amrealtovisual);
   --smsg1="gy="..gytest.."gx="..gxtest.." Y3xX3="..y3pla2amrealtovisual..","..x3pla2amrealtovisual.."= xgametorealpositionbezbyte ("..x3pla2am..","..y3pla2am..");";
  allowshotpla3=reactammo2 (zzx3ammo,x3pla2amrealtovisual,y3pla2amrealtovisual,allowshotpla3,"cannons"); --x3pla2am,y3pla2am,
  --smsg2=allowshotpla3.."=reactammo2 ("..zzx3ammo..",x3pla2amrealtovisual,y3pla2amrealtovisual,allowshotpla3,);";
  return allowshotpla3; --gamex(x3pla2am),gamey(y3pla2am),
      --by=gamey(y2pla2am);bx=gamex(x2pla2am); --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
end

--реакция на выстрел пули  игрока 3  является копией reactammo2  
--работает только с знакоместными координатами а не преобразует реальные в знакоместные через gamex/gamey 

function playrandombrokensound (chances) 
     if (chances>50) then love.audio.play(broken1); return; end;
     if (chances>40) then love.audio.play(broken2);return; end;
     if (chances>30) then love.audio.play(broken3);return; end;
     if (chances>20) then love.audio.play(broken4);return; end;
     if (chances>10) then love.audio.play(broken5);return; end;
     end
     

--реакция на выстрел пули  Работает на 100%
function reactammo (zzxammo)
  objectcode_ammo=ext_objs_param (zzxammo,9);
 if (objectcode_ammo==255) then  allowshot=0; end; 

 if (zzxammo==27) then return;end;
 -- есть подозрение что plusx  i plusy  не помогают а лишь добавляют баг с случайным разрушением некоторых обьектов.
 -- по вызову функции приходит левое значение plusx i plusy. оно было удалено кроме функций где действовтаь через клетку.
    if (ammoicon=="left") then plusx=-1; end
    if (ammoicon=="right") then plusx=1; end
    if (ammoicon=="up") then plusy=-1; end
    if (ammoicon=="down") then plusy=1; end

    chances=(math.random(54+17*tank+3*protect));
          if (zzxammo==71) then 
     love.audio.play(bombsnd);
             printat (gamey(y2),gamex(x2),"27");
             printat (gamey(y2)+plusy,gamex(x2)+plusx,"27");
                          allowshot=0;
         end;

     if (zzxammo==22) then 
     love.audio.play(ammotobadtargetsnd);
             printat (gamey(y2),gamex(x2),ext_objs_param (zzxammo,9));
                          allowshot=0;
         end;

     if (zzxammo==124) then 
       love.audio.play(bombsnd);
        by=gamey(y2);bx=gamex(x2); --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
       explodebomb (by,bx);
       allowshot=0;
       end;


 if ((zzxammo==58)or(zzxammo==5)or(zzxammo==59)or(zzxammo==60)or(zzxammo==61)or(zzxammo==62)or(zzxammo==58)or(zzxammo==58)or(zzxammo==58)) then 
     love.audio.play(ammobrokeitemortargetsnd);
             printat (gamey(y2),gamex(x2),"27");
        allowshot=0;-- при попадании в любую цель пуля должна остановится, иначе она будет лететь дальше.
         end;

 if (zzxammo==23) then 
    --love.audio.play(ammotobadtargetsnd);
     -- hp=hp-1; if (tank<1) then hp=hp-3; end;
        allowshot=0;
         end;

 if (zzxammo==76) then 
    love.audio.play(ammotobadtargetsnd);
      hp=hp-1; if (tank<1) then hp=hp-3; end;
        allowshot=0;
         end;
  if (zzxammo==133)or(zzxammo==134) then 
    love.audio.play(ammotobadtargetsnd);
      hp=hp-1; if (tank<1) then hp=hp-3; end;
        allowshot=0;
         end;

 if (zzxammo>135)and(zzxammo<140) then 
    
     finalobject="27";
     check2=damagestage (zzxammo);
        if (check2~="0") then finalobject=check2; end
           if (chances>34) then  
                          printat (gamey(y2),gamex(x2),finalobject);
                          --if (zzxammo==135) then  playrandombrokensound (50); end; 
                          end;
                          allowshot=0;
         end;
            

 if (zzxammo==77) then 
     love.audio.play(ammotobadtargetsnd); 
       hp=hp-1;
                       allowshot=0;
         end;
 if (zzxammo==78) then 
     love.audio.play(ammotobadtargetsnd);
                  allowshot=0;
         end;

  if (zzxammo==75) then 
     playrandombrokensound (70);
      printat (gamey(y2),gamex(x2),"96");
                  allowshot=0;
         end;
  if (zzxammo==96) then 
     love.audio.play(ammotobadtargetsnd);
                  allowshot=0;
         end;


  if (zzxammo<5)or(zzxammo==6)or(zzxammo==7)or(zzxammo==8)or(zzxammo==9)or(zzxammo==10)or(zzxammo==11)or(zzxammo==63)or(zzxammo==132) then 
     --love.audio.play(ammotobadtargetsnd);
                  allowshot=0;
         end;

 if (zzxammo==135) then 
     playrandombrokensound (50);
             printat (gamey(y2),gamex(x2),"132");
                          allowshot=0;  
         end;

 if (zzxammo==140) then 
     playrandombrokensound (50);
             printat (gamey(y2),gamex(x2),"132");
                          allowshot=0;
         end;


 if (zzxammo==97) then 
     love.audio.play(ammotobadtargetsnd);
             printat (gamey(y2),gamex(x2),"98");
                          allowshot=0;
         end;
 -- добавить шанс для патрон танка вредить сильнее.

 if (zzxammo==98) then 
     love.audio.play(ammotobadtargetsnd);
             printat (gamey(y2),gamex(x2),"99");
                          allowshot=0;
         end;
 if (zzxammo==99) then 
     love.audio.play(ammotobadtargetsnd);
             printat (gamey(y2),gamex(x2),"100");
                          allowshot=0;
         end;
 if (zzxammo==100) then 
     love.audio.play(ammotobadtargetsnd);
             printat (gamey(y2),gamex(x2),"27");
                          allowshot=0;
         end;

 if (zzxammo>79)and(zzxammo<87) then 
     
     finalobject="27";
     check2=damagestage (zzxammo);
        if (check2~="0") then finalobject=check2; end
             printat (gamey(y2),gamex(x2),finalobject);
                          allowshot=0;
         end;

      chances=(math.random(60));
    
    if (zzxammo>103)and(zzxammo<113) then  --zzxammo==104------------------------------------------------------------------------
       --love.audio.play(ammotobadtargetsnd);
     finalobject="27";
     check2=damagestage (zzxammo);
        if (check2~="0") then finalobject=check2; end
           if (chances>56) then  printat (gamey(y2),gamex(x2),finalobject);end;
                          allowshot=0;
         end;





  if (zzxammo==114) then 
     --love.audio.play(ammotobadtargetsnd);
       if (chances>50) then printat (gamey(y2),gamex(x2),"115"); end 
                          allowshot=0;
         end;



 if (zzxammo==123) then 
     love.audio.play(ammobrokeitemortargetsnd); targetremains=targetremains-1;
            score=score+10;
             printat (gamey(y2),gamex(x2),"27");
             allowshot=0;
         end;

 if (zzxammo==122) then 
     love.audio.play(ammobrokeitemortargetsnd); targetremains=targetremains-1;
        score=score+10;
             printat (gamey(y2),gamex(x2),"27");
             allowshot=0;
         end;
    if (zzxammo==120) then
     love.audio.play(switchmsnd);
                allowmove=0; 
           printat (gamey(y2),gamex(x2),"118");
                        allowshot=0;
    end 
 if (zzxammo==131) then
     love.audio.play(switchmsnd);
                allowmove=0; 
           printat (gamey(y2),gamex(x2),"118");
                        allowshot=0;
    end 
return
end
-- окончание обработки выстрелов игрок 2

ostype=love.system.getOS()

    
-- слой для переопределения клавиш для разных ОС. и возможности их легкого переопределения.
if (ostype=="Linux")or(ostype=="Windows") then 
    movePL1="";
    if (player2AI==0)or(editor==1) then movePL2=""; end
    if (renderer==1) then ammoKEYPL1=""; end  -- пытаюсь устранить баг в Андроид - не выбираются пункты меню!!!1655 добавил IF
    if (player2AI==0)or(editor==1) then ammoKEYPL2=""; end; 
   if love.keyboard.isDown("right") then movePL1="right" end;
   if love.keyboard.isDown("left") then movePL1="left" end;
   if love.keyboard.isDown("up") then movePL1="up" end;
   if love.keyboard.isDown("down") then movePL1="down" end;
   if love.keyboard.isDown("lshift") then ammoKEYPL1="ammo" end;
   if love.keyboard.isDown("p") then ammoKEYPL1="p" end; --camera move keys
   if love.keyboard.isDown("[") then ammoKEYPL1="[" end;
   if love.keyboard.isDown("]") then ammoKEYPL1="]" end;
   if love.keyboard.isDown(";") then ammoKEYPL1=";" end;
   if ((love.keyboard.isDown("lgui"))or (love.keyboard.isDown("capslock"))) then ammoKEYPL1="ice" end;
   if love.keyboard.isDown("z") then ammoKEYPL1="bomb" end;
   if love.keyboard.isDown("x") then ammoKEYPL1="placeitem" end;
   if love.keyboard.isDown("c") then ammoKEYPL1="selectitem" end;
   if love.keyboard.isDown("q") then ammoKEYPL1="placeenemy" end;  -- Используется для отработки мультиинстансных танков.
   if love.keyboard.isDown("w") then ammoKEYPL1="removeenemy" end;
   if love.keyboard.isDown("kp0") then ammoKEYPL2="ammo" end;
   if love.keyboard.isDown("kp6") then movePL2="right" end;
   if love.keyboard.isDown("kp4") then movePL2="left" end;
   if love.keyboard.isDown("kp8") then movePL2="up" end;
   if love.keyboard.isDown("kp5") then movePL2="down" end;
   
    end

if (ostype=="Android") then 
 --Look  touchmoved section
   if love.keyboard.isDown("kp0") then ammoKEYPL2="ammo" end;
end


if (ostype=="ios") then 
    print ("");
end
-- перемещение Player 1  , если не стреляет.s
    --move_the_man(dt);
    x,y,man_x,man_y,man_is_moving,man_speed=move_the_man(dt,x,y, man_x, man_y ,man_is_moving,man_speed);
    allowmove=1;


    if (freezePL1>0) then allowmove=0;
                if (freezetimerPL1<1) then freezePL1=0; end
                end;

    

    
-- Бонус уровни при смерти перебрасывают в следующий уровень.
    if ((hardlevel==2)and(hp<1)and(lives<1)) then 
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
      objectpodnogami=string.byte (screens (gamey (y),gamex (x)));  -- реализация автоходьбы по стрелкам.
      if (editor==0) then if (objectpodnogami==0) then movePL1="left"; end;
                        if (objectpodnogami==1) then movePL1="right"; end;
                        if (objectpodnogami==2) then movePL1="up"; end;
                        if (objectpodnogami==3) then movePL1="down"; end;
                        end
        -- обрабатываем кнопки только, если чувак не двигается уже
         if ((movePL1=="right")and(ammoKEYPL1=="")and (gamex(x)<mapsize_horizontal-1)) then
        if (tank>0) then playertank=tankright;end;
         move="right";plusx=1;
         zzz=(screens (gamey (y),gamex (x)+1));-- определяем куда движется чувак
                if (express==1) then zzzdown=string.byte(screens (gamey (y)+1,gamex (x)+1));-- определяем куда движется чувак
                if (zzzdown<125) then allowmove=0; end;

                end
                
             if (zzz) then
                zzx=string.byte (zzz);
                --if (editor==0) then if (objectpodnogami==0)or(objectpodnogami==2)or(objectpodnogami==3) then allowmove=0;plusx=0;end; end;
                   if  (hp>0) then reactmove (zzx) else if (editor==0) then allowmove=0; end end;
             end
        if (allowmove==1) then man_is_moving,man_x,man_y=do_a_step(dt, man_step*accelmove, 0,x,y);end;
        end

        if ((movePL1=="left")and(ammoKEYPL1=="")and (gamex(x)>0)) then
        if (tank>0) then playertank=tankleft;end;
         move="left";plusx=-1;
         zzz=(screens (gamey (y),gamex (x)-1)); 
                if (express==1) then zzzdown=string.byte (screens (gamey (y)+1,gamex (x)-1)); 
                if (zzzdown<125) then allowmove=0; end;
                end
        
              if (zzz) then 
                   zzx=string.byte (zzz);
                  --if (editor==0) then if (objectpodnogami==1)or(objectpodnogami==2)or(objectpodnogami==3) then allowmove=0;plusx=0;end; end;
                   if  (hp>0) then reactmove (zzx) else if (editor==0) then allowmove=0; end end;
              end     
        if (allowmove==1) then man_is_moving,man_x,man_y=do_a_step(dt, -man_step*accelmove, 0,x,y);end;
        end

     if (((movePL1=="down"))and(ammoKEYPL1=="")and (gamey(y)<mapsize_vertical+21*editor)) then
        if (express==1) then allowmove=0; end;
        if (tank>0) then playertank=tankdown;end
         move="down";plusy=1;
         zzz=(screens (gamey (y)+1,gamex (x))); 
         
              if (zzz) then 
                   zzx=string.byte (zzz);
                  -- if (zzx==0)or(zzx==1)or(zzx==2) then allowmove=0;end;
                   if  (hp>0) then reactmove (zzx) else if (editor==0) then allowmove=0; end end;
              end   
        if (allowmove==1) then man_is_moving,man_x,man_y=do_a_step(dt, 0, man_step*accelmove,x,y) ;end;
        end
        if ((movePL1=="up")and(ammoKEYPL1=="")and (gamey(y)>1)) then
        if (express==1) then allowmove=0;end;
        if (tank>0) then playertank=tankup;end;
         move="up";plusy=-1;
         zzz=(screens (gamey (y)-1,gamex (x))); 
         
              if (zzz) then 
                   zzx=string.byte (zzz);
                  -- if (zzx==0)or(zzx==1)or(zzx==3) then allowmove=0;end;
                    if  (hp>0) then reactmove (zzx) else if (editor==0) then allowmove=0; end end;
              end   
        if (allowmove==1) then man_is_moving,man_x,man_y=do_a_step(dt, 0, -man_step*accelmove,x,y);end;
        end

            if (editor==1) then  --управление рисованием в редакторе
                    if love.keyboard.isDown("1")or(ammoKEYPL1=="paint")and(editorcallselectobject==0) then  -- базовые функции редактора
                    printat (gamey (y),gamex (x), selectedobject);
                    end
       

                if (ammoKEYPL1=="ice")and(editorcallselectobject==0) then  
                    printat (gamey (y),gamex (x), selectedobject2);
                    end
                if (ammoKEYPL1=="ammo")and(editorcallselectobject==0) then  
                    printat (gamey (y),gamex (x), selectedobject);
                    end
         
                end
        

    end
 --Конец управления первым персонажем.


--начало управления вторым персонажем  
   -- для танка добавить кнопочку разрешающую брать или не брать вещи. ыыы
--move_the_manpla2(dt); 
xpla2,ypla2,man_xpla2,man_ypla2,man_is_movingpla2,man_speedpla2=move_the_man(dt,xpla2,ypla2, man_xpla2, man_ypla2 ,man_is_movingpla2,man_speedpla2)

 allowmovepla2=1; 
 if (freezePL2==1) then allowmovepla2=0; 
        if (freezetimerPL2<1) then freezePL2=0; freeze=0; end
        end;
    if (freeze==1) then allowmovepla2=0; 
        if (freezetimer<1) then freezePL2=0; freeze=0; end
        end;

if ((ammoKEYPL2=="ammo")) then allowmovepla2=0;end;
  --   если это поствавить то почему то у танка только один выстрел какого то. ..  НЕ СДЕЛАНО 
   if (pause==1) then allowmovepla2=0;end;
   redirectmovepla2=0;
    accelmovepla2=1;
    move="undefined";
    plusxpla2=0; plusypla2=0;
    xnowpla2=xpla2;ynowpla2=ypla2;

    if ((not man_is_movingpla2)and(allowmovepla2>0)) then
        -- обрабатываем кнопки только, если чувак не двигается уже
         if (((movePL2=="right"))and(not (ammoKEYPL2=="ammo"))and(gamex(xpla2)<mapsize_horizontal-1)) then
        if (enemytank>0) then player2tank=tankright; player2tank=180 ; end;
         movepla2="right";plusxpla2=1;
         zzz2=(screens (gamey (ypla2),gamex (xpla2)+1));-- определяем куда движется чувак
                           if (zzz2) then
                zzx2=string.byte (zzz2);
                   if  (hptank>300) then allowmovepla2,hptank=reactmove2 (zzx2,xpla2,ypla2,hptank,allowmovepla2,plusxpla2,plusypla2,freezePL2,freezetimerPL2,man_speedpla2,speedtimerpla2) else if (editor==0) then allowmovepla2=0; end end;
             end
        if (allowmovepla2==1) then man_is_movingpla2,man_xpla2,man_ypla2=do_a_step(dt, man_step*accelmovepla2, 0,xpla2,ypla2);end;
        end

        if (((movePL2=="left"))and(not (ammoKEYPL2=="ammo"))and(gamey(xpla2)>0)) then
        if (enemytank>0) then player2tank=tankleft; player2tank=0; end;
         movepla2="left";plusxpla2=-1;
         zzz2=(screens (gamey (ypla2),gamex (xpla2)-1)); 
                              if (zzz2) then 
                   zzx2=string.byte (zzz2);
                   if  (hptank>300) then allowmovepla2,hptank=reactmove2 (zzx2,xpla2,ypla2,hptank,allowmovepla2,plusxpla2,plusypla2,freezePL2,freezetimerPL2,man_speedpla2,speedtimerpla2) else if (editor==0) then allowmovepla2=0; end end;
              end     
        if (allowmovepla2==1) then man_is_movingpla2,man_xpla2,man_ypla2=do_a_step(dt, -man_step*accelmovepla2, 0,xpla2,ypla2);end;
        end

     if (((movePL2=="down"))and(not (ammoKEYPL2=="ammo"))and(gamey(ypla2)<mapsize_vertical+20*editor)) then
        if (enemytank>0) then player2tank=tankdown;player2tank=270; end
         movepla2="down";plusypla2=1;
         zzz2=(screens (gamey (ypla2)+1,gamex (xpla2))); 
              if (zzz2) then 
                   zzx2=string.byte (zzz2);
                   if  (hptank>300) then allowmovepla2,hptank=reactmove2 (zzx2,xpla2,ypla2,hptank,allowmovepla2,plusxpla2,plusypla2,freezePL2,freezetimerPL2,man_speedpla2,speedtimerpla2) else if (editor==0) then allowmovepla2=0; end end;
              end   
        if (allowmovepla2==1) then man_is_movingpla2,man_xpla2,man_ypla2=do_a_step(dt, 0, man_step*accelmovepla2,xpla2,ypla2) ;end;
        end
        if (((movePL2=="up"))and(not (ammoKEYPL2=="ammo"))and(gamey(ypla2)>1)) then
        if (enemytank>0) then player2tank=tankup;player2tank=90; end;
         movepla2="up";plusypla2=-1;
         zzz2=(screens (gamey (ypla2)-1,gamex (xpla2))); 
              if (zzz2) then 
                   zzx2=string.byte (zzz2);
                    if  (hptank>300) then allowmovepla2,hptank=reactmove2 (zzx2,xpla2,ypla2,hptank,allowmovepla2,plusxpla2,plusypla2,freezePL2,freezetimerPL2,man_speedpla2,speedtimerpla2) else if (editor==0) then allowmovepla2=0; end end;
              end   
        if (allowmovepla2==1) then man_is_movingpla2,man_xpla2,man_ypla2=do_a_step(dt, 0, -man_step*accelmovepla2,xpla2,ypla2);end;
        end

      
            if (editor==1) then  --управление рисованием в редакторе
                    if love.keyboard.isDown("4") then  -- базовые функции редактора
                    printat (gamey (ypla2),gamex (xpla2), selectedobject);
                    
                    end
                
                end

    end
 --конец управления вторым персонажем.


   function getpath () 
    return arg[1]:gsub('\\', '/'):match'(.-/)'
  end
 --работа в редакторе 
if (editor==1) then

    if (ammoKEYPL2=="ammo") then   --ИГНОРИРУЕТ НАЖАТие!!!!!ыы
          printat (gamey (ypla2),gamex (xpla2), selectedobject);
          end
                    if love.keyboard.isDown("rshift") then 
                    printat (gamey (ypla2),gamex (xpla2), selectedobject);
                    
                    end
                    if love.keyboard.isDown("kp9") then  -- базовые функции редактора
                       ypla2=(1)*rozmiarznak;xpla2=240+(1)*rozmiarznak; 
                    
                    end

    if love.keyboard.isDown("2")or(ammoKEYPL1=="bomb") then 
        selectedobject=string.byte (screens (gamey (y),gamex (x)));
        --printat (24+maximumvertical,30,(selectedobject));
        smsg1= ("Object 1 taken");
    end

    if love.keyboard.isDown("3")or(ammoKEYPL1=="walk") then 
        selectedobject2=string.byte (screens (gamey (y),gamex (x)));
        --printat (24+maximumvertical,31,selectedobject2);
        smsg1= ("Object 2 taken");
    end


    if love.keyboard.isDown("f6") then 
       xdata_copy={};
       xdata_copy=clone (xdata);
        xdataarchived=1;
    end

    if (xdataarchived==1)and(love.keyboard.isDown("f7")) then
        xdata=clone (xdata_copy);
    end

       
    if love.keyboard.isDown("end") then 
         if (levelnumber<129) then levelnumber=levelnumber+1; end;
      levelname="Levels/LEVEL"..levelnumber..".$C";  
     end;     

     if love.keyboard.isDown("f8") then
        love.load()
        smsg1= ("Loading selected level.");
    end 

  --эту функцию потом вернуть в редактор!!!   чуток ниже.
   if love.keyboard.isDown("f5") then
      pathtosavemap=love.filesystem.getSourceBaseDirectory().."/Levels/LEVEL"..levelnumber..".$C";
      -- в этом месте в уровень надо передать коды уровня + всех параметров в формате M2K включая новые.
      -- важно всего 4 места для загрузки и передачи параметров, но для сохранения и карты они немного различаются
      -- и не могут быть просто скопированы целиком.

        xdata[55634]=string.char (levelnumber);
      xdata[55625]=string.char (gamey(y)+1);xdata[55626]=string.char (gamex(x)); 
    xdata[55631]=string.char (bombs);xdata[55632]=string.char (ice);xdata[55633]=string.char (lives); xdata[55635]=string.char (ammo);
    xdata[55638]=string.char (targetremains);xdata[55649]=string.char (water); 
       xdata[55646]=string.char (powerstate);--БУГ  sost lazerow
      --      zx=xdata[55639]; zy=xdata[55640];  xpla2,ypla2=xgametorealposition (zx,zy);
             if (gamex(tx)<mapsize_horizontal)and(gamey(ty)<mapsize_horizontal) then xdata[55647]=string.char (tx); 
      xdata[55648]=string.char (ty); end
    if (gamex(xpla2)<mapsize_horizontal)and(gamey(ypla2)<mapsize_horizontal) then xdata[55640]=string.char (math.ceil(gamex(xpla2))); 
      xdata[55639]=string.char (math.ceil(1+gamey(ypla2))); end

       xdata[55656]=string.char (puszkistate);-- БУГ sost puszek  number expected - got string 
     -- 2717(pw) number expected - got string ERROR  xdata[55646]=string.char (puszkistate);--sost lazerow
     xdata[55637]=string.char (keys);-- keys вместо бонуса за уровень
     xdata[55653]=string.char (tank);
     xdata[55654]=string.char (protect);
     xdata[55655]=string.char (reservedaids);
      --SAVE GAME  дополнительные параметры - повторно использовать всё для F5
        xdata[55624]=string.char (darkzone);
       xdata[55623]=string.char (greenshitdelay);
       xdata[55622]=string.char (greenshithastetime);
       xdata[55621]=string.char (seed);
       xdata[55620]=string.char (battery);
       xdata[55610]=string.char (enemytank);
  

      writeMAP(pathtosavemap,xdata); 
        
    end 
-- конец функции

     if love.keyboard.isDown("f10") then
        menu=3;renderer=0;
              

     end 

   

     if (love.keyboard.isDown("escape")and (menu==3)and(timerz>5))then
        menu=0; renderer=1
     end




    --[[if love.keyboard.isDown("f11") then 
    math.randseed = os.time();
    xxx=math.random(900);
    xdata[xxx]=string.char (math.random(131));
    end
    ]]--

    if love.keyboard.isDown("home") then   
        if (levelnumber>2) then levelnumber=levelnumber-1; end;
      levelname="Levels/LEVEL"..levelnumber..".$C";  
     smsg1= ("Loading...");
    end

         --закраска
    if love.keyboard.isDown("5") then  
        for b=gamey(y),gamey(ypla2),1 do 
         for a=gamex(x),gamex(xpla2),1 do
               printat (b,a,(selectedobject));
           end
       end
       smsg1= ("Fill completed");
   end
      --закраска2
    if love.keyboard.isDown("6") then 
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
              c=string.byte(screens (b,a));
              if ((c==selectedobject2)) then printat (b,a,(selectedobject)); end
           end
       end
       smsg1= ("Exchange completed");
    end
        --замена2
    if love.keyboard.isDown("8") then 
        for b=gamey(y),gamey(ypla2),1 do 
         for a=gamex(x),gamex(xpla2),1 do
              c=string.byte(screens (b,a));
              if ((c==selectedobject)) then printat (b,a,(selectedobject2)); end
           end
       end
       smsg1= ("Exchange completed");
    end
    
    if love.keyboard.isDown("9") then 
    skanx,skany=scanobject (selectedobject,-1) ;
     smsg1= ("Object Found: X="..skanx.." Y="..skany);-- skanx="..skanx.."skany=="..skany);
    if (skanx~=-1) then 
     -- декодирование без string byte! 
         x=240+(skanx)*rozmiarznak+rozmiarznak; 
    y=(skany)*rozmiarznak;--учтено смешение 258 и -rozmiarznak УДАЛЁН Т.К. НАЙДЕННЫЙ ОБЬЕКТ ПОКАЗЫВАЛСЯ НА 1 КЛ.ВЫШЕ
        end;
    end

   if love.keyboard.isDown("0") then 
    scanobject (selectedobject,-2) ;
     smsg1= ("Object Found, Total:"..wsego);-- skanx="..skanx.."skany=="..skany);
        end


        if love.keyboard.isDown("=") then   --CLS
      for b=gamey(1),gamey(31),1 do 
         for a=gamex(1),gamex(24),1 do
              --c=string.byte(screens (b,a));
              --if ((c==selectedobject2)) then
               printat (b,a,(selectedobject)); 
           end
       end
       smsg1= ("Exchange completed");
    end




end

if (tank==1) then hpmax=500; 
 if (poziom==1) then hpmax=hpmax/2; end; end
if (tank==0) then hpmax=200; 
 if (poziom==1) then hpmax=hpmax/2; end; 
 end

-- Пушки включаются и выключаются через таймер -- and (puszkistate==1) 
  cannonchances=(math.random(100));
    if (timerz==10)and(pause<1)and(editor<1)and(freezePL3==0)and(puszkistate>0)  then timerz=timerz+1;
    cannleftx=0;  cannrightx=0; canny=0;
   cannrightx,cannRIGHTy=scanobject (10,gamey(y));  -- пушка стреляющая  слева вправо опять ищет не там  пришлось поменять gamex(x) на y 
   cannleftx,cannLEFTy=scanobject (11,gamey(y)); -- пушка стреляющая справа влево.  --  Y должен быть одинаков. для простоты.
    if (otladka==1) then smsg1="cannrightx="..cannrightx.."y="..canny.."cannleftx="..cannleftx.."y="..canny..""; end
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
        freezePL3=1; freezetimerPL3=freezetimerPL3+2;  end;
end
     --выяснилось   x по вертикали у первого игрока и второго всегда совпадает если они на одной линии  - ширина
  if ((not cannon_shoot3)) then -- обрабатываем кнопки только, если чувак и пуля не двигается уже
  if (((startshootcoordinatex>-1)and(puszkistate>0)and(editor<1)and(pause<1)and(hp>0))and(freezePL3==0)) then 
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
                        zzx3ammo=string.byte (zzz3ammo);
                        if (allowshotpla3==1) then  
                         allowshotpla3=reactammo3 (zzx3ammo,x3pla2am,y3pla2am,allowshotpla3);
                          if (allowshotpla3==0) then 
                             --cannondrawy,cannondrawx=xgametorealpositionbezbyte (x3pla2am,y3pla2am);
                             cannondrawx,cannondrawy= xgametorealpositionbezbyte (y3pla2am,x3pla2am);
                             cannondrawx=cannondrawx+rozmiarznak;
                             cannondrawy=cannondrawy+rozmiarznak;
                          --cannondrawy=(y3pla2am+camerauppos_y_vert)*rozmiarznak+gamescreenfixvertical+10+(math.random(10));
                          --cannondrawx=240+((startshootcoordinatex+cameraleftpos_x_hor)*rozmiarznak)+(gamescreenfixhorizontal*rozmiarznak)+2*rozmiarznak;--+rozmiarznak*2; 
                          cannondrawstartshot=(steps-1)*rozmiarznak;
                          --выстрел пушки справа налево
                        if (otladka==1) then 
                          smsg1="love.gr(fill, "..cannondrawx.." ,"..cannondrawy..","..cannondrawstartshot..",10);"; 
                          smsg2="steps="..steps.."x3now2am="..x3now2am.."  x3pla2am="..x3pla2am.." startshootcoordinatex="..startshootcoordinatex; end;
                              end
                        playersdamagecheck (); end
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
         zzz3ammo=(screens (startshootcoordinatey,x3pla2am));-- определяем куда движется пуля  (горизонталь влево по -1) 
         if (otladka==1) then smsg2="reactammo3 (zzx3ammo="..zzx3ammo..",x3pla2am="..x3pla2am..",y3pla2am="..y3pla2am..") steps="..steps..";" ;
         print ("reactammo3 (zzx3ammo="..zzx3ammo..",x3pla2am="..x3pla2am..",y3pla2am="..y3pla2am..") steps="..steps..";");end; 
                    if (zzz3ammo) then
                        zzx3ammo=string.byte (zzz3ammo);
                if (otladka==1) then smsg2="FOUNDammo3 (zzx3ammo="..zzx3ammo..",x3pla2am="..x3pla2am..",y3pla2am="..y3pla2am..") steps="..steps..";";
                        print ("FOUNDammo3 (zzx3ammo="..zzx3ammo..",x3pla2am="..x3pla2am..",y3pla2am="..y3pla2am..") steps="..steps..";"); end; 
                      if (allowshotpla3==1) then  
                       allowshotpla3=reactammo3 (zzx3ammo,x3pla2am,y3pla2am,allowshotpla3);
                         if (allowshotpla3==0) then 
                           cannondrawx2,cannondrawy2= xgametorealpositionbezbyte (y3pla2am,x3pla2am);
                           cannondrawy2=cannondrawy2+rozmiarznak;
                          --выстрел пушки слева направо
                          cannondrawstartshot2=-(steps-1)*rozmiarznak;
                         -- smsg1="love.gr(fill, "..cannondrawx2.." ,"..cannondrawy2..","..cannondrawstartshot2..",10);";                          -- smsg2="steps="..steps.."x3now2am="..x3now2am.."  x3pla2am="..x3pla2am.." startshootcoordinatex="..startshootcoordinatex; end;
                              end
                       playersdamagecheck (); end -- gtht переставил end ыы
                    end
                        end
            end; 
            --=====================================
            end
        end

function playersdamagecheck ()



if (freezePL3==1) then allowshotpla3=0; return ; end;
-- выстрелы пушек обрабатываются тут  
-- если координаты 1 игрока совпадают с координатой пули 3 (cannon) - отнимаются HP у Р1 
 if (otladka==1) then print ("if ((isnear(x="..x3pla2am..",x="..gamex(x)..")and(y="..y3pla2am.."==y="..gamey(y)..""); end;
if ((x3pla2am==gamex(x))and(y3pla2am==gamey(y))and(allowshotpla3==1)and(puszkistate==1)) then
    if (protect<1) then
    if (tank==0) then hp=hp-15; end;
    if (tank==1) then hp=hp-5; end;
    if (hardlevel==1) then hp=hp-25; end; 
    if (poziom==1) then hp=hp-10; end; 
    end
    allowshotpla3=0;-- пушки не вредят совсем при защите. 
    love.audio.play(patronysnd) ;
end
-- если координаты 2 игрока совпадают с координатой пули 3 (cannon) - отнимаются HP у Р2
--print ("if ((isnear(x2="..x3pla2am..",x2="..gamex(xpla2)..")and(y2="..y3pla2am.."==y2="..gamey(ypla2).."");
if ((x3pla2am==gamex(xpla2))and(y3pla2am==gamey(ypla2))and(allowshotpla3==1)and(puszkistate==1)) then
    hptank=hptank-50;
    allowshotpla3=0;
    if (hardlevel==0) then hptank=hptank-20; end; 
    if (poziom==0) then hptank=hptank-20; end; 
    love.audio.play(patronysnd) ;
end

end




--обрабатываем команды контрольного центра
if (incontrolcentre==1) then
   if (mushroom>0) then score=score+mushroom*75; smsg1="You autosell mushrooms for "..mushroom*75;
    mushroom=0;
  end

    if (love.keyboard.isDown("space")or(ammoKEYPL1=="space")) then  --выход
       incontrolcentre=0;
    end

   if love.keyboard.isDown("e")or(ammoKEYPL1=="e") then  --выход
      if(repairroad==0) then  repairroad=1; score=score-100; end
     --    if love.keyboard.isDown("5") then  
     esx,esy=xgametorealpositionbezbyte (sx,sy);   -- вычисляем рамки железной дороги.
     esx2,esy2=xgametorealpositionbezbyte (sx,ey);
        for b=gamey(esy),gamey(esy2),1 do   --чиним дорогу. 
         for a=gamex(esx),gamex(esx2),1 do
               printat (b,a,125);
           end
       end
       printat (sx-1,ey,"130");
       printat (sx-1,sy,"129"); 
       printat (sx-2,exp,"128");--печатаем экспресс,
       --smsg1= ("Fill completed"); однако ремонт экспресса таким образом будет работать только если прописан в конфигах
       -- а это неверно , надо определять кординаты разрешенного перемещения при загрузке уровня.
       -- и надо ли?  может потом будет работать несколько экспрессов.
   --end
 end

   if love.keyboard.isDown("x")or(ammoKEYPL1=="x") then  --выход
      if(tank>0) then   tank=0; score=score+1000; end
 end
   if love.keyboard.isDown("c")or(ammoKEYPL1=="c") then  --выход
     if (protect>0)  then  protect=0; score=score+700;  end
 end
   if love.keyboard.isDown("l")or(ammoKEYPL1=="l") then  --выход
    if (score>0) then    lives=lives+1; score=score-100;end;
    end

    if love.keyboard.isDown("k")or(ammoKEYPL1=="k") then  --выход
    if (score>0) then   keys=keys+1; score=score-40;end;
    end

    if love.keyboard.isDown("b")or(ammoKEYPL1=="b") then  --выход
    if (score>0) then   bombs=bombs+3; score=score-40;end;
    end

    if love.keyboard.isDown("a")or(ammoKEYPL1=="a") then  --выход 
    if (score>0) then   ammo=ammo+5; score=score-20;end;
    end

    if love.keyboard.isDown("i")or(ammoKEYPL1=="i") then  --выход
    if (score>0) then   ice=ice+5; score=score-20;end;
    end



    if love.keyboard.isDown(";")or(ammoKEYPL1==";") then  --выход
       if (lives>2) then lives=lives-1; score=score+100; end;
    end

    if love.keyboard.isDown("z")or(ammoKEYPL1=="z") then  --выход
       if (reservedaids>2) then reservedaids=reservedaids-1; score=score+50;end;
    end

end

--камера может перемещатся где угодно кроме контрольного центра (одинаковые кнопки) 
--nen тут надо прекратить перемещения и действия танка противника (not man_is_movingpla2)and(not man_is_movingpla2am)
    if (incontrolcentre==0)and(renderer==1)and(not man_is_moving2)and(not man_is_moving)  then 
  
  if (editor==0) then 
  if (gamex(x)-cameraleftpos_x_hor>visual_mapsize_horizontal-4)and (cameraleftpos_x_hor<mapsize_horizontal-visual_mapsize_horizontal) then ammoKEYPL1="]" ; end; 
  if (gamex(x)-cameraleftpos_x_hor<visual_mapsize_horizontal-28)and (cameraleftpos_x_hor>0) then ammoKEYPL1="[" ;end;
  if (gamey(y)-camerauppos_y_vert>visual_mapsize_vertical-4)and (camerauppos_y_vert<mapsize_vertical-visual_mapsize_vertical)then ammoKEYPL1=";" ; end; 
  if (gamey(y)-camerauppos_y_vert<visual_mapsize_vertical-17)and  (camerauppos_y_vert>0)  then ammoKEYPL1="p" ;end;
end
xpla3fix=0 ;ypla3fix=0;
--smsg1="if ("..gamey(y).."-"..camerauppos_y_vert..">"..visual_mapsize_vertical.."-4)and ("..camerauppos_y_vert.."<"..mapsize_vertical-visual_mapsize_vertical..") then "..ammoKEYPL1.."=;" ; 
 if (camera_time_move>10)and (ostype=="Android") then ammoKEYPL1="";end; 

  if (ammoKEYPL1=="p")or(ammoKEYPL1==";")or(ammoKEYPL1=="[")or(ammoKEYPL1=="]") then camera_time_move=camera_time_move+1; 
        allowshotpla2=0;allowmovepla2=0;
        freezePL2=1; freezetimerPL2=1; ammoKEYPL2=""; movePL2="";renderammoshotpla3=0;
        end;
if (ammoKEYPL1~="p")and(ammoKEYPL1~=";")and(ammoKEYPL1~="[")and(ammoKEYPL1~="]") then camera_time_move=0;end;
    if (ammoKEYPL1=="p")and(camera_time_move>7) then  
       if (camerauppos_y_vert>0) then camerauppos_y_vert=camerauppos_y_vert-1;
      if (editor==0) then y=y+rozmiarznak; y2=y2+rozmiarznak; 
      ypla2=ypla2+rozmiarznak; y2pla2am=y2pla2am+rozmiarznak; y3pla2am=y3pla2am+rozmiarznak;
              
               ypla3fix=rozmiarznak; 
        end
        end;
    end
    if (ammoKEYPL1==";")and(camera_time_move>7) then  
       if (camerauppos_y_vert<(mapsize_vertical+(21*editor)-visual_mapsize_vertical)) then camerauppos_y_vert=camerauppos_y_vert+1;
        if (editor==0) then y=y-rozmiarznak; y2=y2-rozmiarznak;
          ypla2=ypla2-rozmiarznak; y2pla2am=y2pla2am-rozmiarznak; y3pla2am=y3pla2am-rozmiarznak;
           ypla3fix=-rozmiarznak; 
          end; 
        end;
    end
    if (ammoKEYPL1=="[")and(camera_time_move>7) then  
       if (cameraleftpos_x_hor>0) then cameraleftpos_x_hor=cameraleftpos_x_hor-1;
        if (editor==0) then x=x+rozmiarznak; x2=x2+rozmiarznak;
        xpla2=xpla2+rozmiarznak; x2pla2am=x2pla2am+rozmiarznak; x3pla2am=x3pla2am+rozmiarznak;
        xpla3fix=rozmiarznak; 
          end;
        end;
    end
    if (ammoKEYPL1=="]")and(camera_time_move>7) then  
       if (cameraleftpos_x_hor<(mapsize_horizontal-visual_mapsize_horizontal)) then cameraleftpos_x_hor=cameraleftpos_x_hor+1;
        if (editor==0) then x=x-rozmiarznak; x2=x2-rozmiarznak;
          xpla2=xpla2-rozmiarznak; x2pla2am=x2pla2am-rozmiarznak; x3pla2am=x3pla2am-rozmiarznak;
          xpla3fix=-rozmiarznak; 
          end;
        end;
    end
    -- ]
     if (totalenemies>1) then 
   for enemynum=1,wsego_tank_teleporterow,1 do 
         type,xt,yt,hpt,rotate,man_xpla3,man_ypla3,man_is_movingpla3,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,man_is_movingpla3am=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
          xt=xt+xpla3fix;  man_xpla3=man_xpla3+xpla3fix;
          yt=yt+ypla3fix; man_ypla3=man_ypla3+ypla3fix;
          x_tanks=x_tanks+xpla3fix;  m_x_tanks=m_x_tanks+xpla3fix;  -- для выстрелов 
          y_tanks=y_tanks+ypla3fix; m_y_tanks=m_y_tanks+ypla3fix;
        enemies[enemynum]:set(type, xt,yt,hpt,rotate,man_xpla3,man_ypla3,man_is_movingpla3,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,man_is_movingpla3am); -- NIL  kak tak? 
     --smsg4=" enemies[enemynum]:set(type,"..xt..","..yt..","..hpt..",rotate,"..man_xpla3..","..man_ypla3.."); ";
    end; end; 
       --enemynum--
  end


if (getkeyforpause~=0) then ammoKEYPL1=getkeyforpause; getkeyforpause=0; end;
   if love.keyboard.isDown("h")or (ammoKEYPL1=="h") then 
     if ((reservedaids>0)and(hp<hpmax)and(lives>0)and(hp>0)) then
                    hp=hpmax; reservedaids=reservedaids-1;
                love.audio.play(aptekasnd);
                    end;
        end

   if love.keyboard.isDown("r")or (ammoKEYPL1=="r") then 
     if ((lives>0)and(hp<1)) then
                    hp=hpmax; lives=lives-1;
        anikadr=0;anitimer=0;anicycles=0;
        express=0; -- игрок вылезет из экспресса
        incontrolcentre=0; -- игрок вылезет из центра управления. ыы
                love.audio.play(aptekasnd);
                    end;
        end

    if (love.keyboard.isDown("l"))and(gamex(x)~=startX)and(gamey(y)~=startY)or(ammoKEYPL1=="l")and(gamex(x)~=startX)and(gamey(y)~=startY) then 
    x,y=xgametorealposition (startX,startY)
    checkx,checky=scanobject (18,-1);--check player 1 start position
    if (checkx>-1) then x,y=xgametorealpositionbezbyte (1+checky,checkx) ; end
    hp=1;
  end


        if love.keyboard.isDown("f2") then 
          showandroidbar=not_numeric (showandroidbar);
        end
        if love.keyboard.isDown("f3")and(editor==1) then 
          love.window.showMessageBox("Info",objs[((selectedobject+1))][12].."."..objs[((selectedobject+1))][13] , {"OK"}, 'error');
        end
        if love.keyboard.isDown("f3")and(editor==0)or(ammoKEYPL1=="wopros") then 
          love.window.showMessageBox("Info",objs[((zzx+1))][12].."."..objs[((zzx+1))][13] , {"OK"}, 'error');
          ammoKEYPL1="";
        end

 --уровень можно пропустить за 2000 очков.
  if (love.keyboard.isDown("n"))and(hardlevel~=1)and(score>-1)or(ammoKEYPL1=="n")and(hardlevel~=1)and(score>-1) then 
     levelnumber=levelnumber+1; score=score-2000;
    love.load ();
  end

  if (love.keyboard.isDown("space")or(ammoKEYPL1=="space")) then if (targetremains<1)then 
         if (levelnumber<128) then levelnumber=levelnumber+1; end;
         score=score+lives*20+ammo+ice+bombs+keys*5+water*5;
      levelname="Levels/LEVEL"..levelnumber..".$C";  
         love.load();
    love.audio.play(levelnextsnd); 
    end;
    end;  

     if love.keyboard.isDown("=") then  --CHEATER 
       passthrurock=100000; -- score=-100000;
        tank=1;
        man_speed = 1010;
        protect=1;
        hp=5000;
        lives=1000;
    end

     if love.keyboard.isDown("f12") then 
       otladka=1; -- score=-100000; debug mode on
    end


     if (editor==0) then if love.keyboard.isDown("f1")or(ammoKEYPL1=="usermenu") then 
       menu=4; -- score=-100000; debug mode on
       selectedoptionmenu=1;
       renderer=0;pause=1;
    end
    end

    if (menu==0)and(renderer==0)and(timerz>1) then
   if love.keyboard.isDown("escape")or love.keyboard.isDown("1")or((selectedoptionmenu==1)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="menu_startgame") then 
       renderer=1; -- START GAME OPTION  or(timerz>150)   меню на Android должно автоматически убиратся
       pause=0;-- timerz=0; 
       menuoption=1; -- это флаг запуска игрового процесса как минимум один раз. 
       if (selectmusic==0)and(nomusic==0) then love.audio.play(music1); end; --PLAY MUSIC   
       if (selectmusic==0)and(nomusic==1) then love.audio.stop(music1); end; --PLAY MUSIC   
       if (selectmusic==1)and(nomusic==0) then  love.audio.stop(music1);  love.audio.play(music2); end; --PLAY MUSIC   
       if (selectmusic==1)and(nomusic==1) then  love.audio.stop(music1);  love.audio.stop(music2);  end; --PLAY MUSIC   
    end

       if ((selectedoptionmenu==2)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="menu_loadgame") then --LOAD GAME 
       loadsavegame="yes";
   
         love.load();
         renderer=1;
              pause=0;
       menuoption=1;
     end

    --это обычное сохранение игры, не сохранение карты в редакторе.
     -- сохранение - подсчет свободных байтов в save файле - --всё поле - 863 клетки   +128 =991  
    if ((selectedoptionmenu==3)and(love.keyboard.isDown("space")))or ((love.keyboard.isDown("f5"))and(editor==0))or(ammoKEYPL1=="menu_savegame") then  --SAVE GAME 
      --xdata[55634]=string.char (hpmax) ; может быть не имеет смысл совсем читать максимум HP. 200 для любого уровня. 
      xdata[55634]=string.char (levelnumber);
      xdata[55625]=string.char (gamey(y)+1);xdata[55626]=string.char (gamex(x)); 
    xdata[55631]=string.char (bombs);xdata[55632]=string.char (ice);xdata[55633]=string.char (lives); xdata[55635]=string.char (ammo);
    xdata[55638]=string.char (targetremains);xdata[55649]=string.char (water); 
       xdata[55646]=string.char (puszkistate);--БУГ  sost lazerow
      
       xdata[55656]=string.char (puszkistate);-- БУГ sost puszek  number expected - got string 
     -- 2717(pw) number expected - got string ERROR  xdata[55646]=string.char (puszkistate);--sost lazerow
     xdata[55637]=string.char (keys);-- keys вместо бонуса за уровень
     xdata[55653]=string.char (tank);
     xdata[55654]=string.char (protect);
     xdata[55655]=string.char (reservedaids);
     xdata[55610]=string.char (enemytank);
 --      zx=xdata[55639]; zy=xdata[55640];  xpla2,ypla2=xgametorealposition (zx,zy);
       if (gamex(tx)<mapsize_horizontal)and(gamey(ty)<mapsize_horizontal) then xdata[55647]=string.char (tx); 
      xdata[55648]=string.char (ty); end

    if (gamex(xpla2)<mapsize_horizontal)and(gamey(ypla2)<mapsize_horizontal) then xdata[55640]=string.char (math.ceil(gamex(xpla2))); 
      xdata[55639]=string.char (math.ceil(1+gamey(ypla2))); end
     if (hp<0) then hp=1 end;
     if (hp<255) then xdata[55629]=string.char (hp) ;xdata[55652]=string.char (0); end  -- hp реальный вместо   не больше 255. 
     if (score<0) then 
      score1=0; score2=0;
      else
      score1,score2=split2bytes (score);
    end
    if (score>65535) then score=65535; end;-- пока есть только 2 байта для подсчёта очков.
     xdata[55650]=string.char (score1);
     xdata[55651]=string.char (score2);

      if (hp>255) then
     hp,hpb2=split2bytes (hp);
     xdata[55652]=string.char (hpb2);
     xdata[55629]=string.char (hp);
    end
      --SAVE GAME  дополнительные параметры - повторно использовать всё для F5
        xdata[55624]=string.char (darkzone);
       xdata[55623]=string.char (greenshitdelay);
       xdata[55622]=string.char (greenshithastetime);
       xdata[55621]=string.char (seed);
       xdata[55620]=string.char (battery);
       xdata[55619]=string.char (mushroom);
       if (countinventory>0) then xdata[55618]=string.char (inventoryitemtable[1]);end -- эти предметы могут быть ТОЛЬКО в сохранённой игре и не должны быть в коде уровней.
       if (countinventory>1) then xdata[55617]=string.char (inventoryitemtable[2]);end
       if (countinventory>2) then xdata[55616]=string.char (inventoryitemtable[3]);end 
       if (countinventory>3) then xdata[55615]=string.char (inventoryitemtable[4]);end
       xdata[55614]=string.char (solarpanel);
       xdata[55613]=string.char (woodenwall);
       xdata[55612]=string.char (fencewall);
       xdata[55611]=string.char (steelwall);
      xdata[55610]=string.char (enemytank);


       -- попробовал сделать обычное сохранение , сохраняется всё что угодно кроме этих предметов
       -- но т.к. они пока не реализованы как  и инвентарь - поэтому это не особо важно.

       

-- неиспользованные ключи 16хх  29 50,51,52,53,54,55
 -- есть только 1 слот для сохранения пока что.
   -- в этом месте должны быть переданы наигранные параметры для сохранения игры. 
         datatowrite=table.concat(xdata);
     if (saveslot==0) then levelname ='m2ksavex'; end ;   -- есть только 1 слот для сохранения пока что.
    if (saveslot==1) then levelname ='m2ksavexx'; end ;   -- есть только 1 слот для сохранения пока что.
   
    sourcewrite(datatowrite,levelname); -- новый способ save уровня через IO LUA  
        renderer=1; selectedoptionmenu=0;pause=0;
      end
-- не забыть проверить косые для разных ОС.


     function split2bytes (byte)
  byte1= math.abs(byte/256)   -- 513/256=2
  byte2= byte-byte1*256;     --513-2*256 = 513-512=1   
     return byte1,byte2; 
    end

if ((selectedoptionmenu==4)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="menu_authors") then  
      menu=2;
    end

     --уровень можно пропустить за 2000 очков.
  if ((selectedoptionmenu==5)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="menu_restart") then 
     levelnumber=1; score=0;reservedaids=0; tank=0;protect=0; enemytank=0; --чистим инвентарь и с чистой душой с нуля.
            renderer=1; -- START GAME OPTION  or(timerz>150) 
       pause=0;
       menuoption=1;
    love.load ();
  end

   if ((selectedoptionmenu==6)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="menu_settings") then 
       menu=1;selectedoptionmenu=1;timerz=0;

    end


if ((selectedoptionmenu==7)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="menu_editor") then  
      editor=1; renderer=1;
                 pause=0;

       
    end

if ((selectedoptionmenu==8)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="menu_exit")or(ammoKEYPL1=="turboexitgame") then  
      love.event.quit();
    end
    
ammoKEYPL1="";

end

-- запасной выход, всегда должен быть активен в любой момент игры. 
if (ammoKEYPL1=="turboexitgame") then  
      love.event.quit();
    end

-- Это меню Settings 
 if (menu==1)and(renderer==0)and(timerz>10) then


    if ((selectedoptionmenu==1)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="zero") then 
       menu=0;selectedoptionmenu=1;
    end
    if ((selectedoptionmenu==2)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="poziom") then 
       poziom= not_numeric (poziom);timerz=0; -- you cannot disable it 
    end
    if ((selectedoptionmenu==3)and(love.keyboard.isDown("space")))and(hardlevel<1)or(ammoKEYPL1=="hardlevel")and(hardlevel<1) then 
     hardlevel=1;timerz=0; -- you cannot disable it 
    end
    if ((selectedoptionmenu==4)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="nomusic") then 
     nomusic= not_numeric (nomusic); timerz=0;
    end
     
 
    
    if ((selectedoptionmenu==6)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="saveslot") then 
       saveslot=not_numeric (saveslot) ;timerz=0; 
    end
    if ((selectedoptionmenu==7)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="selectmusic") then 
       selectmusic=not_numeric (selectmusic) ;timerz=0; 
    end
       
       if ((selectedoptionmenu==8)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="otladka") then 
       otladka=not_numeric (otladka) ;timerz=0; 
    end
    if (ostype~="Android") then 
       if ((selectedoptionmenu==5)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="player2AI") then 
       player2AI=not_numeric (player2AI) ;timerz=0; -- ENABLE AI TANK
        end
    
      -- if (otladka==1) then 
        if ((selectedoptionmenu==9)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="resolutionPC") then 
       --resolutionPC=not_numeric (resolutionPC) ;
       timerz=0;
                  xsave=gamex(x); --  x=3 (168), но x у нас широта тут, 
                  ysave=1+gamey(y); --  а Y - 7 (336) , no это теперь высота (!) 
                  xpla2save=gamex(xpla2); -- x2=29 (312) координаты игрока 2 НЕ сохраняются совсем. добавить обработку старт позиции.
                  ypla2save=1+gamey(ypla2); -- y2=13 (960)
                  if (resolutionPC==0) then
                       setresolution (901) ;
                  end;
                  if (resolutionPC==1) then
                       setresolution (1024) ;
                  end;
                  if (resolutionPC==2) then
                       setresolution (1280) ;
                  end;
                  if (resolutionPC==3) then
                       setresolution (1920) ;
                  end;
                  if (resolutionPC==4) then
                       setresolution (2360) ;
                  end;
                  if (resolutionPC==5) then
                       setresolution (3000) ;
                  end;


                  
                      scaling=rozmiarznak/40;
                      man_step  = rozmiarznak;  -- шаг движения чувака (равен размеру клетки)  всегда и во всех случаях. Для всех переменных. 
                      default_man_speed = 210+240*scaling
                      man_speed= default_man_speed;
                      wysotastroki=rozmiarznak-2; -- что то не учтено

                      scalingmenu=standartwysotagraphicmenu/70;
                      --тут нужно перевычислить координаты X Y  для обоих игроков   
                      x,y=xgametorealpositionbezbyte (ysave,xsave);  --(xgame - первая координата реальная ВЫСОТА. потом ШИРОТА)
                      xpla2,ypla2=xgametorealpositionbezbyte (ypla2save,xpla2save);
          rightspaceonscreen=gamescreenfixhorizontal*rozmiarznak+240+33*rozmiarznak; -- первое свободное место права от поля игры.
    --                  xpla2=240+xpla2save*(rozmiarznak)+1*rozmiarznak; 
      --              ypla2=ypla2save*rozmiarznak-rozmiarznak; --учтено смешение 258 и -rozmiarznak  - проверить при смене разрешения поля. scaling
        end ;-- end; 

           keyword=pages2[selectedoptionmenu+1][2];typenumeric=pages2[selectedoptionmenu+1][5];
   if ((typenumeric=="n")and(love.keyboard.isDown("right")))or(typenumeric=="n")and(movePL1=="right") then 
       timerz=19; _G[keyword]=_G[keyword]+1;
    end
    if ((typenumeric=="n")and(love.keyboard.isDown("left")))or(typenumeric=="n")and(movePL1=="left") then 
       timerz=19; _G[keyword]=_G[keyword]-1;
    end
      if ((typenumeric=="n")and(love.keyboard.isDown("0"))) then 
       timerz=15; _G[keyword]=0;
    end

  if ((selectedoptionmenu==12)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="none") then 
       gamescreenfixvertical=0; gamescreenfixhorizontal=0; timerz=0;  
   end;

       if ((selectedoptionmenu==13)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="showandroidbar") then 
       showandroidbar=not_numeric (showandroidbar) ;timerz=0;  end ;  
   end;

    ammoKEYPL1="";
end

 
  if (menu==2)and(renderer==0)and(timerz>10) then
   if ((selectedoptionmenu==1)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="zero") then 
       menu=0;renderer=1; selectedoptionmenu=1;
    end
    ammoKEYPL1="";
    --print_r (inventoryitemtable);

end


 if (menu==3)and(renderer==0)and(timerz>10) then
   if ((selectedoptionmenu==1)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="zero") then 
       menu=0;renderer=1; selectedoptionmenu=1;
    end
    keyword=pages4[selectedoptionmenu+1][2];
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

 if (menu==4)and(timerz>10) then

   if ((selectedoptionmenu==1)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="pause1") then 
       menu=0;pause=0 ;  selectedoptionmenu=1;
           renderer=1;
         end
  if ((selectedoptionmenu==2)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="pause2") then 
       menu=0;ammoKEYPL1="h"; timerz=0;
           renderer=1;getkeyforpause="h";
              pause=0;
    end
    if ((selectedoptionmenu==3)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="pause3") then 
       menu=0;  pause= 1; timerz=0; renderer=1;
    end

      if ((selectedoptionmenu==4)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="pause4") then 
       menu=0;ammoKEYPL1="l"; timerz=0;
           renderer=1;getkeyforpause="l";
              pause=0;
    end
      if ((selectedoptionmenu==5)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="pause5") then 
       menu=0;ammoKEYPL1="n"; timerz=0;
           renderer=1;getkeyforpause="n";
              pause=0;
    end
     if ((selectedoptionmenu==6)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="pause6") then 
       menu=0;ammoKEYPL1="r"; timerz=0;
           renderer=1;getkeyforpause="r";
              pause=0;
    end
     if ((selectedoptionmenu==7)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="pause7") then 
       menu=0;ammoKEYPL1="space"; timerz=0;
           renderer=1;getkeyforpause="space";
              pause=0;
    end

if ((selectedoptionmenu==8)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="pause8") then 
       menu=1;ammoKEYPL1="space"; timerz=0;
           renderer=0;getkeyforpause="space";
              pause=1;selectedoptionmenu=1;
    end
    if ((selectedoptionmenu==9)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="pause9") then 
       menu=0;ammoKEYPL1="space"; timerz=0;
           renderer=0;getkeyforpause="space";
              pause=1;selectedoptionmenu=1;
    end

   -- ammoKEYPL1="";
end


    if love.keyboard.isDown("escape")or(ammoKEYPL1=="openmainmenu") then 
       renderer=0; -- START GAME OPTION
       menu=0;selectedoptionmenu=1;
       pause=1;
    end


  

    if love.keyboard.isDown("pause")and(timerz>20)or love.keyboard.isDown("f13") or love.keyboard.isDown("f14")or love.keyboard.isDown("f15")  or love.keyboard.isDown("eject") then 
        
        if (pause==1) then pause=0; timerz=0;return ;end;
        if (pause==0) then pause=1; timerz=0;return ;end;
end

    if love.keyboard.isDown("`")and(timerz>10) or (ammoKEYPL1=="`")and(timerz>10) then 
      timerz=0;
      xeditordata={}; --(22*editor) 54518 objectlist
        --bb=0;  Печать всех обьектов для возможности редактировать уровень xdata 659
        --при загрузке редактора массив каждый раз формируется автоматически на основе таблицы objects.ini 
        -- в новой bigmap версии это будет отдельный массив, который не должен сохранятся нигде, тем более в каждом редактируемом уровне.
        if (editor==1) then editor=0; return ;end;
               
       editor=1; -- score=-100000;
    end

--If you want to help project you can draw better textures for game.  
if (editor==1)then 
    if (editorprepared>-1) then 
               xshift=54518;
                
                xdata[54518-250]=string.char (56); -- это уже новый массив данных специально для модуля редактора
                bb=1;cc=math.ceil (bb/visual_mapsize_horizontal);
                for aa=1+xshift,200+xshift,1 do 
                editorobjects=string.char (aa-1-xshift);
                 if ( objs[aa-0-xshift][14]=="noeditor"and (editor_dont_show_broken_items==1)) then editorobjects="skip"; end;
                if ( objs[aa-0-xshift][3]~="1empty.png")and (editorobjects~="skip") then 
                  dd=bb+xshift+(cc*(mapsize_horizontal-visual_mapsize_horizontal))-mapsize_horizontal+visual_mapsize_horizontal-1;
                       
                          xdata[dd]=(editorobjects);
                        bb=bb+1;
                        cc=math.ceil (bb/visual_mapsize_horizontal);
                        --if(bb>visual_mapsize_horizontal) then cc=cc+1;mapsize_horizontal-visual_mapsize_horizontal; end;
                        end;
                end ;--1empty.png
                editorprepared=2;
    end


  if (love.keyboard.isDown("tab") and (editorcallselectobject==0)and(timerz>10) ) then 
      ed_return_x=x; ed_return_y=y;editorcallselectobject=1;
      ed_camera_x=cameraleftpos_x_hor;  ed_camera_y=camerauppos_y_vert;
  camerauppos_y_vert=mapsize_vertical+0; cameraleftpos_x_hor=0; 
      x,y=xgametorealpositionbezbyte (mapsize_vertical+18,14);
                    
    timerz=0;
  end
  if (love.keyboard.isDown("tab") and (editorcallselectobject==1)and(timerz>10) ) then 
    x=ed_return_x; y=ed_return_y;editorcallselectobject=0;
    cameraleftpos_x_hor=ed_camera_x;camerauppos_y_vert=ed_camera_y;
    timerz=0;
  end
end

     

    if (express==1) then if (love.keyboard.isDown("space")or(ammoKEYPL1=="space")) then express=0;
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
      if (incontrolcentre==0)and(renderer>0) then                
               -- androidgui 
                cursormaxwidth=rightspaceonscreen; cursormaxheight=maxheight/2; 
                --    ax>1400-400=1000     ax<1400-300 =1100         ay<300-100=200  ay> 300-200=100 standartsizeusermenu=100;
                 --if ((ax>cursormaxwidth) and (ax<cursormaxwidth+standartsizeusermenu*1)  and (ay<cursormaxheight+standartsizeusermenu) and (ay>cursormaxheight-1*standartsizeusermenu)) then ammoKEYPL1=""; end; --4 
               if ((ax>cursormaxwidth+standartsizeusermenu*1) and (ax<cursormaxwidth+standartsizeusermenu*2)  and (ay<cursormaxheight+standartsizeusermenu) and (ay>cursormaxheight-1*standartsizeusermenu)) then movePL1="up"; end; -- 2 ay-вертикаль.
                 if ((ax>cursormaxwidth) and (ax<cursormaxwidth+standartsizeusermenu*1)  and (ay<cursormaxheight+standartsizeusermenu*2) and (ay>cursormaxheight)) then movePL1="left"; end; --4 
                 if ((ax>cursormaxwidth+standartsizeusermenu*1) and (ax<cursormaxwidth+standartsizeusermenu*2)  and (ay<cursormaxheight+standartsizeusermenu*2) and (ay>cursormaxheight)) then movePL1="down"; end; --5 
                 if ((ax>cursormaxwidth+standartsizeusermenu*2)and (ax<cursormaxwidth+standartsizeusermenu*3) and (ay<cursormaxheight+standartsizeusermenu*2) and (ay>cursormaxheight)) then movePL1="right"; end; --6 
        --ax=1020 ay=313

        --ax=920  ay=414
        --ax=1020  ay=414
        --ax=1120  ay=414
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
        if (incontrolcentre==0)and(renderer>0)  then
               if ((adx>0) and (isy) and (movePL1=="")) then movePL1="right" end;
               if ((adx<0) and (isy) and (movePL1=="")) then movePL1="left" end;
               if ((ady>0) and (isx) and (movePL1=="")) then movePL1="down" end;
               if ((ady<0) and (isx) and (movePL1=="")) then movePL1="up" end;
                end
    end
end

function love.touchreleased( id, ax, ay, adx, ady, pressure )
touchreleased=true  
--touchmoved=nil   кнопки для планшета обработчик.
touchpress=nil
    printedmenu=1;
if (renderer==0) then movePL1=""; end

if ((ax>(maxwidth-90)) and (ay>(maxheight-90))) then ammoKEYPL1="turboexitgame"; end; 
if ((ax<90) and (ay<maxheight) and (ay>maxheight-80)) then ammoKEYPL1="openmainmenu"; end; 
 --if ((ax<(maxwidth-90))and (ax>(maxwidth-180)) and (ay>(maxheight-90))) then ammoKEYPL1="menuup"; end; --write  
 --if ((ax<(maxwidth-180))and (ax>(maxwidth-270))  and (ay>(maxheight-90))) then ammoKEYPL1="menudown"; end; --write
    --основное игровое меню для Android ONLY  c тестовым рендерингом иконок   ANDROID GUI
      if (t_id~=-1)and(incontrolcentre==0)and(renderer>0)and(editor==0) then
    if (scaling>1) then wysotamenu=-10+standartwysotagraphicmenu*scaling; end --  (70,  0.4 )
    if (scaling<1.1) then wysotamenu=-10+standartwysotagraphicmenu; end --  (70,  0.4 )
      
        for i=2,8,1 do
          keyword=pages0[i-1][2]; 
          smsg1="k="..keyword.." i="..i.." ay="..math.ceil(ay).."<"..math.ceil((wysotamenu)*(i-1)).." ay>"..math.ceil((wysotamenu)*(i-2)).."ax="..math.ceil(ax);
          --player.ini - он попросту не загружен.
        --эти закоментированные пункты работают в подвыводе Androidgui в другом конце программы. 
       --androidmenup = love.graphics.newImage("Textures/androiduserguiicon"..i..".png");
        --STALO love.graphics.draw(androidmenup, 0,((wysotamenu*scaling)*(i-2)),0,scalingmenu,scalingmenu);     
      if  (ay<(wysotamenu)*(i-1)) and (ay>(wysotamenu)*(i-2)) and (ax<standartsizeusermenu) then
         ammoKEYPL1=keyword; 
      end;
    --#menu_printed 
     end
    movePL1="";
    t_id=-1;

    end

        -- Основное игровое меню (меню 0)
    if (t_id~=-1)and(menu==0)and(renderer==0) then
    wysotamenu=standartwysotagraphicmenu; 
      h=70;
      
      for i=2, #pages-1,1 do
         keyword=pages[i][2]; 
          skip=pages[i][6]; 
    --smsg1="i="..i..", skip="..skip.."if ((ay="..math.ceil (ay).."<h="..h.."+wysotamenu"..wysotamenu.."*(printedmenu"..printedmenu..")) and ("..math.ceil (ay)..".>"..h.."+"..wysotamenu.."*("..printedmenu.."-1))) then)";
      if  (ay<(h+wysotamenu*(i-1))) and (ay>(h+wysotamenu*(i-2))) then
       if (skip=="x") then ammoKEYPL1=""; 
        i=i+1; --это не работает на андроид. 
         else  ammoKEYPL1=keyword; end ;

       end;
        
    --#menu_printed 
     end

     
    movePL1="";
    t_id=-1;

    end

    -- Меню параметры (меню 1)
   if (t_id~=-1)and(incontrolcentre==0)and(menu==1)and(renderer==0) then
    wysotamenu=standartwysotatextmenu; 
      h=70;
         for i=2, #pages2-1,1 do
         keyword=pages2[i][2]; 
          skip=pages2[i][6]; 
      if  (ay<(h+wysotamenu*(i-1))) and (ay>(h+wysotamenu*(i-2))) then
       if (skip=="x") then ammoKEYPL1=""; else  ammoKEYPL1=keyword; end ;

       end;
    --#menu_printed 
     end
    movePL1="";
    t_id=-1;

    end


   if (t_id~=-1)and(incontrolcentre==0)and(menu==2)and(renderer==0) then
          if ((ax<10000) and (ay<10000)) then ammoKEYPL1="openmainmenu"; end;
 end
     -- Меню паузы (меню 3)
     -- будет обслуживатся по принципу меню 1 и 4 
    
     if (t_id~=-1)and(incontrolcentre==0)and(menu==3) then
       wysotamenu=standartwysotatextmenu-12;
       if (maxwidth>1500) then wysotamenu=wysotamenu-12*scaling; end; 
      h=70; 
     for i=2, #pages4-1,1 do
         keyword=pages4[i][2]; 
          skip=pages4[i][6]; 
      if  (ay<(h+wysotamenu*(i-1))) and (ay>(h+wysotamenu*(i-2))) then
       if (skip=="x") then ammoKEYPL1=""; else  ammoKEYPL1=keyword; end ;

       end;
    --#menu_printed 
     end
    movePL1="";
    t_id=-1;

    end

    -- Меню паузы (меню 4)
    
     if (t_id~=-1)and(incontrolcentre==0)and(menu==4) then
       wysotamenu=standartwysotatextmenu;
      h=70;
       for i=2, #pages5-1,1 do
         keyword=pages5[i][2]; 
          skip=pages5[i][6]; 
      if  (ay<(h+wysotamenu*(i-1))) and (ay>(h+wysotamenu*(i-2))) then
       if (skip=="x") then ammoKEYPL1=""; else  ammoKEYPL1=keyword; end ;

       end;
    --#menu_printed 
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

    --standartsizeusermenu=100;
    if (t_id~=-1)and(incontrolcentre==1)and(renderer>0)  then
              if ((ax<80) and (ay<70)) then ammoKEYPL1="a" end;
               if ((ax<80) and (ay<140) and (ay>70)) then ammoKEYPL1="i" end;
               if ((ax<80) and (ay<210) and (ay>140)) then ammoKEYPL1="b" end;  
               if ((ax<80) and (ay<280) and (ay>210)) then ammoKEYPL1="k" end;
     if ((ax<80)and (ay<360) and (ay>280)) then ammoKEYPL1="e"; end;
     if ((ax<80)and (ay<430) and (ay>360)) then ammoKEYPL1="l"; end; -- buy lives
     if ((ax<80)and (ay>430)and (ay<500)) then ammoKEYPL1="space"; incontrolcenter=0; end;--  это выход и контольного центра.
     if ((ax<160)and (ax>80) and (ay<430) and (ay>360)) then ammoKEYPL1=";"; end; --sell lives
     if ((ax<160)and (ax>80) and (ay>430)and (ay<500)) then ammoKEYPL1="c";  end;--  sell protect
     if ((ax<160)and (ax>80) and (ay<570) and (ay>500)) then ammoKEYPL1="x"; end; -- sell tank
     if ((ax<160)and (ax>80) and (ay<640) and (ay>570)) then ammoKEYPL1="z"; end; -- sell aids
     if ((ax<160)and (ax>80) and (ay<720) and (ay>640)) then ammoKEYPL1="z"; end; 
     
    movePL1="";
    t_id=-1;

    end
end

-- Android interface ( стрельба- заморозка- ездить - воскрешение - читы - редактор уровней)
function love.draw()

love.graphics.setFont(font);

if (ostype=="Android") then 
    screen.w, screen.h = love.graphics.getDimensions()

if screen.w > screen.h then
--landscape
resize.w, resize.h = screen.w/800 , screen.h/480
else
--portrait
resize.w, resize.h = screen.w/480 , screen.h/800
end
--пока оставить вдруг пригодится.


for i, id in ipairs(love.touch.getTouches()) do
touch.ax, touch.ay = love.touch.getPosition(id)
end



end


timerz=timerz+1; -- потом вернуть в рендерер! как налажу андроид!!ы
    if (renderer==1) then render2d (1); renderplayer (1); end;

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
     if (renderammoshot==1)and(man_is_moving2==true) then love.graphics.draw(ammoproj, x2+x2fix, y2+y2fix,rotateammo,scaling,scaling);end; -- потом поменять текстурку на пулю и условие вызова. ыыы
    if (renderammoshot==2)and(man_is_moving2==true) then love.graphics.draw(iceproj, x2+x2fix, y2+y2fix,rotateammo,scaling,scaling);end; 
    if (renderammoshotpla2==1)and(man_is_movingpla2am==true) then love.graphics.draw(ammoproj, x2pla2am+x2pfix, y2pla2am+y2pfix,rotateammopla2,scaling,scaling);end; -- потом поменять текстурку на пулю и условие вызова. ыыы
-- тут рендерятся выстрелы пушек, обработка ротации им в принципе не нужна.
-- почему пушки после окончания стрельбы не выключают прицел - непонятно. видимо было стёрто.
  if (puszkistate==1)and(renderammoshotpla3==1) then 
  randomcolorbw ();
 love.graphics.rectangle("fill", cannondrawx , cannondrawy+rozmiarznak/2+math.random(4), cannondrawstartshot, 1,0,0); --выстрел пушки справа налево
 love.graphics.rectangle("fill", cannondrawx , cannondrawy+rozmiarznak/2+math.random(4), cannondrawstartshot, 1,0,0);
 love.graphics.rectangle("fill", cannondrawx , cannondrawy+rozmiarznak/2+math.random(4), cannondrawstartshot, 1,0,0);
 red ();
 love.graphics.rectangle("fill", cannondrawx2 , cannondrawy2+rozmiarznak/2+math.random(4), cannondrawstartshot2, 1,0,0); --выстрел пушки слева направо
 love.graphics.rectangle("fill", cannondrawx2 , cannondrawy2+rozmiarznak/2+math.random(4), cannondrawstartshot2, 1,0,0);
 love.graphics.rectangle("fill", cannondrawx2 , cannondrawy2+rozmiarznak/2+math.random(4), cannondrawstartshot2, 1,0,0);
 white ();
 end

 if (editor==0) then 
    if (tank==0) then love.graphics.draw(player, x, y,0,scaling,scaling);end;
    -- if (tank==0) then love.graphics.draw(player, x,y,0,1,1,64,32);end;  --test angle  zakraska
    if (protect==1) then love.graphics.draw(playerprotect, x, y,0,scaling,scaling);end;
        --только Player использует старые иконки, танк2 уже их не использует. 
    if (movePL1=="left") then rotateplayer= 0; xpla1fix=0; ypla1fix=0; end;
    if (movePL1=="up") then rotateplayer=90; xpla1fix=rozmiarznak; ypla1fix=0; end; 
    if (movePL1=="right") then rotateplayer=180; xpla1fix=rozmiarznak; ypla1fix=rozmiarznak; end;  --tank0.png , playertank , tankright  --player1tank
    if (movePL1=="down") then rotateplayer=270; xpla1fix=0; ypla1fix=rozmiarznak; end; 

    if (tank==1) then love.graphics.draw(tankleft, x+xpla1fix, y+ypla1fix,math.rad(rotateplayer),scaling,scaling);end;
    if (express==1) then love.graphics.draw(express0, x, y,0,scaling,scaling);end;
            if (hp<1) then  love.graphics.draw(destrplayer,x,y,0,scaling,scaling); --dead
           
                anitimer=math.random(1000); --делаем анимацию смерти по спрайтам . 7 спрайтов.
                if (anicycles>3) then anitimer=0;end;
                if (anitimer>700) then anikadr=anikadr+1; end;
                a=anikadr;    
                if (a==1) then love.graphics.draw(destrplayer1,x,y,0,scaling,scaling); end
                if (a==2) then love.graphics.draw(destrplayer2,x,y,0,scaling,scaling); end
                if (a==3) then love.graphics.draw(destrplayer3,x,y,0,scaling,scaling); end
                if (a==4) then love.graphics.draw(destrplayer4,x,y,0,scaling,scaling); end
                if (a==5) then love.graphics.draw(destrplayer3,x,y,0,scaling,scaling); end
                if (a==6) then love.graphics.draw(destrplayer2,x,y,0,scaling,scaling); end
                if (a==7) then love.graphics.draw(destrplayer1,x,y,0,scaling,scaling); end
                if (anikadr==8) then anikadr=0; anicycles=anicycles+1; end;
               

            end;   
            if (hptank<1) then  love.graphics.draw(destrplayer,xpla2,ypla2,0,scaling,scaling); --dead
           
                anitimer=math.random(1000); --делаем анимацию смерти по спрайтам . 7 спрайтов.
                if (anicycles>3) then anitimer=0;end;
                if (anitimer>700) then anikadr=anikadr+1; end;
                a=anikadr;    
                if (a==1) then love.graphics.draw(destrplayer1,xpla2,ypla2,0,scaling,scaling); end
                if (a==2) then love.graphics.draw(destrplayer2,xpla2,ypla2,0,scaling,scaling); end
                if (a==3) then love.graphics.draw(destrplayer3,xpla2,ypla2,0,scaling,scaling); end
                if (a==4) then love.graphics.draw(destrplayer4,xpla2,ypla2,0,scaling,scaling); end
                if (a==5) then love.graphics.draw(destrplayer3,xpla2,ypla2,0,scaling,scaling); end
                if (a==6) then love.graphics.draw(destrplayer2,xpla2,ypla2,0,scaling,scaling); end
                if (a==7) then love.graphics.draw(destrplayer1,xpla2,ypla2,0,scaling,scaling); end
                if (anikadr==8) then anikadr=0; anicycles=anicycles+1; end;
               

            end;   

end

if (editor==1) then love.graphics.draw(editor0, x, y,0,scaling,scaling);end;
  if(player2tank==0) then xpla2fix=0; ypla2fix=0; end;
  if(player2tank==90) then xpla2fix=rozmiarznak; ypla2fix=0; end; 
  if(player2tank==180) then xpla2fix=rozmiarznak; ypla2fix=rozmiarznak; end; 
  if(player2tank==270) then xpla2fix=0; ypla2fix=rozmiarznak; end; 
 if ((enemytank==1)and(editor<1)) then love.graphics.draw(tankleft, xpla2+xpla2fix, ypla2+ypla2fix, math.rad(player2tank),scaling,scaling);end;
if (editor==1) then love.graphics.draw(editor0, xpla2, ypla2,0,scaling,scaling);end;

-- обработка класса монстров , рендеринг
    function class_enemy:draw() 
       for k, v in pairs(self.list) do
          if v.draw then v:draw()
       end
     end
     end
--class_enemy:set(type,x3,y3,hp,rotate,man_xpla3,man_ypla3,man_is_movingpla3,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,man_is_movingpla3am)
  if (totalenemies>1) then 
   for enemynum=1,wsego_tank_teleporterow,1 do 
     type,xt,yt,hpt,rotate,a,a,a,freezetanks,speedtanks,protecttanks=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
     --rotate[a]=0;
     --xtt,ytt=xgametorealpositionbezbyte (yt+1,xt); 
     xtt=xt;ytt=yt; 
     if(rotate==0) then xpla2fix=0; ypla2fix=0; end;
     if(rotate==90) then xpla2fix=rozmiarznak; ypla2fix=0; end; 
     if(rotate==180) then xpla2fix=rozmiarznak; ypla2fix=rozmiarznak; end; 
     if(rotate==270) then xpla2fix=0; ypla2fix=rozmiarznak; end; 
     if (hpt>0) then
      if (freezetanks>0) then cyan (); end;
      if (protecttanks>0) then yellow (); end;
      if (speedtanks>0) then red (); end;
        love.graphics.draw(tankleft, xtt+xpla2fix, ytt+ypla2fix,math.rad(rotate),scaling,scaling); 
      if (freezetanks>0)or (speedtanks>0)or (protecttanks>0) then white (); end;
       end
     if (hpt<1) then love.graphics.draw(destrplayer4, xtt+xpla2fix, ytt+ypla2fix,math.rad(rotate),scaling,scaling); end
     --type2,xt2,yt2,hpt2,rotate=enemies[2]:get();
     --if (otladka==1) then smsg1="draw[1]="..type.." xt="..xt.."yt="..yt.." hpt="..hpt.." rotate="..rotate.." totalenemies="..totalenemies;  --attempt to index global "enemies" (a nil value) хотя я сначала его задал!!!!!!
       -- end
    end
  end

end  
--end of renderplayer



--MAINMENU

if (renderer<1) then
if (menu==0) then  maximummenulevel=#pages-2; end
if (menu==1) then maximummenulevel=#pages2-2  ; end
if (menu==2) then maximummenulevel=#pages3-2  ; end
if (menu==3) then maximummenulevel=#pages4-2  ; end
if (menu==4) then maximummenulevel=#pages5-2  ; end

 if (timerz>10)and(ostype~="Android") then   -- пытаюсь исправить баг с меню на андроид, этот селектор на нем не нужен.
if (movePL1=="down")or(ammoKEYPL1=="menudown") then
  selectedoptionmenu=selectedoptionmenu+1;timerz=0; 
     if (menu==0) then  if (pages[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu+1; end; end; 
     if (menu==0) then  if (pages[selectedoptionmenu+1][6]=="d") then selectedoptionmenu=selectedoptionmenu+1; end; end; 
     if (menu==1) then  if (pages2[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu+1; end; end; 
     if (menu==2) then  if (pages3[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu+1; end; end; 
     if (menu==3) then  if (pages4[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu+1; end; end; 
     if (menu==4) then  if (pages5[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu+1; end; end; 
  if (selectedoptionmenu>maximummenulevel) then selectedoptionmenu=1; end;
end
if (movePL1=="up")or(ammoKEYPL1=="menuup") then
  selectedoptionmenu=selectedoptionmenu-1;timerz=0; 
  if (menu==0) then  if (pages[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu-1; end; end; 
  if (menu==0) then  if (pages[selectedoptionmenu+1][6]=="d") then selectedoptionmenu=selectedoptionmenu-1; end; end; 
  if (menu==1) then  if (pages2[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu-1; end; end; 
  if (menu==2) then  if (pages3[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu-1; end; end; 
  if (menu==3) then  if (pages4[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu-1; end; end; 
  if (menu==4) then  if (pages5[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu-1; end; end; 
  if (selectedoptionmenu<1) then selectedoptionmenu=maximummenulevel; end;
end
end
end


if (renderer<1)and(menu==0) then

 


--if (ostype=="Android") then selectedoptionmenu=0 ; end;

love.graphics.setFont(fontVERYBIG);
love.graphics.print("M2K project by dj--alex -- MAIN MENU", 150, 40);

    wysotamenu=standartwysotagraphicmenu;
h=70;
menu_printed=0;
text=0;


-- count (pages) w LUA piszetsia tak  #pages
    --love.graphics.print("Pages--HEADER::"..hdr,32,82); 
    --love.graphics.print("Pages::2.1::"..pages[2][1],72,132); 
    
     --  нужен SCALING для маленьких устройств! АГСЛ  FUCK FUCK 
 for i=2, #pages-1,1 do
if ((selectedoptionmenu+1)==i) then randomcolor () else white () end;
    pagemenuitemkey=pages[i][1]; --это просто номер ключа в таблице
    keyword=pages[i][2]; -- название переменной содержащей картинку загруженную ранее в love.load. 
    name=pages[i][3]; --  человекочитабельное название
    if ((menuoption==1)and(i==2)) then name=pages[i][7]; end;
    namerus=pages[i][4]; -- название для русского перевода, резерв.
    undefined=pages[i][5]; -- резерв
    skip=pages[i][6];  -- пропускать пункт если записан "х". переключатель также игнорирует пропускаемые пункты.
    --if (menuoption==1) then skip=""; end --никогда не пропускать пункты после начала игры.
    
       if (pagemenuitemkey)and(skip~="x") then
                  a=_G[keyword]
                   love.graphics.draw(a, 90,h+wysotamenu*menu_printed,0,scalingmenu,scalingmenu); 
                   love.graphics.print(name, 190+100*scaling, 10+h+wysotamenu*menu_printed);
                   --DEBUG    love.graphics.print("i="..i.." key="..pagemenuitemkey.."keyword="..keyword.." name="..name.."", 190, h+wysotamenu*menu_printed);
                        menu_printed=menu_printed+1;
       end
    end
  

white ();

--love.graphics.print("Press key 1 to continue.", 200, 390);
love.graphics.setFont(font);
love.graphics.print(""..ostype.." "..maxwidth.."x"..maxheight.." scaling: 1:"..scaling ,5,maxheight-30);
love.graphics.print("SMSG1="..smsg1,5,maxheight-60);
love.graphics.print("***"..selectedoptionmenu.."***",(timerz), 9+math.random(3))
if (timerz>800) then timerz=0;end;
end


if (renderer<1)and(menu==1) then
love.graphics.setFont(fontVERYBIG);
love.graphics.print("M2K project by dj--alex -- SETTINGS", 150, 40);
love.graphics.setFont(font);
menu_printed=0;
wysotamenu=standartwysotatextmenu; 
h=70;
 for i=2, #pages2-1,1 do
if ((selectedoptionmenu+1)==i) then  randomcolor () else white () end;
    pagemenuitemkey=pages2[i][1]; --это просто номер ключа в таблице
    keyword=pages2[i][2]; -- название переменной содержащей картинку загруженную ранее в love.load. 
    name=pages2[i][3]; --  человекочитабельное название
    namerus=pages2[i][4]; -- название для русского перевода, резерв.
    typenumeric=pages2[i][5];-- если N указывает что вместо переключателя опций будет смена чисел.
    skip=pages2[i][6];  -- пропускать пункт если записан "х". переключатель также игнорирует пропускаемые пункты.
    if (pagemenuitemkey~=nil)and(skip~="x") then
                  if(keyword~="none") then a=_G[keyword];
                  if (i>2)and(typenumeric~="n") then  if (a>0) then love.graphics.draw(settings_switch_on, 90,h+wysotamenu*menu_printed); end;
                                if (a==0) then love.graphics.draw(settings_switch_off, 90,h+wysotamenu*menu_printed); end;
                  end
                  if (a~=nil)and(typenumeric=="n")  then  love.graphics.print(a, 90, h+15+wysotamenu*menu_printed); end;
                   end
                --   love.graphics.draw(a, 90,h+wysotamenu*menu_printed); 
                   love.graphics.print(name, 140+100*scaling, h+15+wysotamenu*menu_printed);
                        menu_printed=menu_printed+1;
       end
    end
  

white ();
love.graphics.print("***"..selectedoptionmenu.."***",(timerz), 9+math.random(3))
if (timerz>800) then timerz=0;end;

end



  if(renderer<1)and(menu==2) then
love.graphics.print("***Authors***", 450, 90);
love.graphics.print("Coding, Idea, Base graphic - dj--alex (ras0ft.ru) ", 50, 120);
 love.graphics.print("donate ETH 0xd595a349ebf869715a82f14ef949fdf198e676e8",38+guifix,startpositionuserPCmenuY+wysotastroki*1);
  love.graphics.print("BTC 1Di3AAVH7E9Lyghy6f4VYRLzwhkQj2T44X",38+guifix,startpositionuserPCmenuY+wysotastroki*2);
love.graphics.print("ETC 0x302f798bf9cf284a2f64953a883f78915c9aba6b",38+guifix,startpositionuserPCmenuY+wysotastroki*3);
love.graphics.print("Litecoin LWHZ1An1gpivzDGTpDdY5k46rEbdb6rJpQ (not checked)",38+guifix,startpositionuserPCmenuY+wysotastroki*4);
love.graphics.print("Sberbank Russia  4276840223662071",38+guifix,startpositionuserPCmenuY+wysotastroki*5);
love.graphics.print("Yandex Money 4100177805659  ; Webmoney R150759332270",38+guifix,startpositionuserPCmenuY+wysotastroki*6);
love.graphics.print("You can copy address by visit this page http://ras0ft.ru/l4d/",38+guifix,startpositionuserPCmenuY+wysotastroki*7);
love.graphics.print("You can help me by visit and mine for me http://ras0ft.ru/l4d/miner.php",38+guifix,startpositionuserPCmenuY+wysotastroki*8);

    love.graphics.print("Press [esc] to return",38+guifix,startpositionuserPCmenuY+wysotastroki*12);       
  end


if (renderer<1)and(menu==3) then
love.graphics.setFont(fontVERYBIG);
love.graphics.print("M2K project by dj--alex -- EDITOR SETTINGS", 150, 40);
love.graphics.setFont(font);
menu_printed=0;
wysotamenu=standartwysotatextmenu-12; 
  if (maxwidth>1500) then wysotamenu=wysotamenu-12*scaling; end; 
h=70;
 for i=2, #pages4-1,1 do
if ((selectedoptionmenu+1)==i) then  randomcolor () else white () end;
    pagemenuitemkey=pages4[i][1]; --это просто номер ключа в таблице
    keyword=pages4[i][2]; -- название переменной содержащей картинку загруженную ранее в love.load. 
    name=pages4[i][3]; --  человекочитабельное название
    namerus=pages4[i][4]; -- название для русского перевода, резерв.
    skip=pages4[i][6];  -- пропускать пункт если записан "х". переключатель также игнорирует пропускаемые пункты.
    if (pagemenuitemkey~=nil)and(skip~="x") then
                  a=_G[keyword];
                 -- if (i>2) then  if (a>0) then love.graphics.draw(settings_switch_on, 90,h+wysotamenu*menu_printed); end;
                 --               if (a==0) then love.graphics.draw(settings_switch_off, 90,h+wysotamenu*menu_printed); end;
                 -- end
                  if (a~=nil) then  love.graphics.print(a, 90, h+15+wysotamenu*menu_printed); end; 
                   love.graphics.print(name, 140, h+15+wysotamenu*menu_printed);
                        menu_printed=menu_printed+1;
       end
    end
  

white ();
love.graphics.print("***"..selectedoptionmenu.."***",(timerz), 9+math.random(3))
if (timerz>800) then timerz=0;end;

end



if (menu==4) then
love.graphics.setFont(fontVERYBIG);
yellow ()  ;  
love.graphics.print("M2K project by dj--alex -- USER ACTIONS MENU", 150, 40);
love.graphics.setFont(fontBIG);
menu_printed=0;

wysotamenu=30; 
h=70;
 for i=2, #pages5-1,1 do
if ((selectedoptionmenu+1)==i) then  randomcolor () else yellow () end;
    pagemenuitemkey=pages5[i][1]; --это просто номер ключа в таблице
    keyword=pages5[i][2]; -- название переменной содержащей картинку загруженную ранее в love.load. 
    name=pages5[i][3]; --  человекочитабельное название
    namerus=pages5[i][4]; -- название для русского перевода, резерв.
    skip=pages5[i][6];  -- пропускать пункт если записан "х". переключатель также игнорирует пропускаемые пункты.
    if (pagemenuitemkey~=nil)and(skip~="x") then
                   love.graphics.print(name, 140, h+15+wysotamenu*menu_printed);
                        menu_printed=menu_printed+1;
       end
    end


white ();
love.graphics.print("***"..selectedoptionmenu.."***",(timerz), 9+math.random(3))
if (timerz>800) then timerz=0;end;

end


love.graphics.setFont(font);
--[[
Dmitriju Pawliczenko за разбор полётов как опрашивать тачпад с андроида и за то что я его 
раза 5 не меньше беспокоил по вопросам, сам которые же и решил через пару часов. 
]]--

-- =================Печать обьектов из старой кодировки уровней!====================
if (drawonceZZOLDLEVEL==0) then 

  if (typelevel=="ZX") then printat (23,31,38); end; -- метка докуда работать scanobject по умолчанию.
drawonceZZOLDLEVEL=1;
if (sy>0) then printat (sx-1,sy,"129"); 
 printat (sx-1,ey,"130");
 printat (sx-2,exp,"128");--печатаем экспресс,
end
end

--===========================Печать обьектов из новой кодировки уровней, но только раз===========


-- Зелёное дерьмо (Зёленая слизь, кислота и т.п.) 
if (timerz>0)and(editor==0)and(pause==0)and(menu<1) then 
  --greenshitactivity=greenshitactivity+0.25;
  if (greenshitdelay>0) then greenshitdelay=greenshitdelay-1;end;
  if (greenshittotal==nil) then greenshittotal=scanobject (21,-2); end;

  if (greenshitdelay<1)and(greenshittotal>1) then skanx,skany=scanobject (21,-3)  ; 
    for a=0,3+greenshithastetime,1 do  
    if (skanx<1) then  skanx,skany=scanobject (21,-3)  ; end; 
    if (skanx<1) then  skanx,skany=scanobject (21,-3)  ; end; 
   
  end
    --if (skanx<1) then  skanx,skany=scanobject (21,math.ceil (gamey(y)))  ; end; 
    --if (skanx<1) then  skanx,skany=scanobject (21,-4,math.ceil (gamex(x)))  ; end; 
   greenshit (skany,skanx,21);
 end

 if (dasglukenfild>0)and(editor==0)and(pause==0)and(menu<1) then 
  --greenshitactivity=greenshitactivity+0.25;
  if (greenshitdelay>0) then greenshitdelay=greenshitdelay-1;end;
  

  if (greenshitdelay<1) then skanx,skany=scanobject (76,-3)  ; 
    --smsg1="greenshit (skany="..skany..",skanx="..skanx..")=";
   greenshit (skany,skanx,76);
 end
end


-- Мухоморы
if (timerz>0)and(editor==0)and(pause==0)and(menu<1) then 
 -- тут устанавливается скорость роста мухоморов.
  if(math.random(256)>1) then skanx,skany=scanobject (79+(math.ceil(math.random(3))),-3); 
           mushroomupd (skany,skanx);
 end

end


end

-- Функция выполняющаяся 1 раз после загрузки уровня любого типа. 
if (drawonce==0) then 
  flagchecknewteleportersenemy=1;
   greenshittotal=scanobject (21,-2);
  skan_y_max,skan_x_max=scanobject (38,-1) ;
    --7 левый штё  9 верхний штырёк.6 prawyj  8 niżnij 
    -- обработка штырьков с помощью scanobject который ищет обьект на карте и возвращает координаты.
    -- можно добавить по всей карте, только по вертикали и только по горизонтали. 
        if (hardlevel==1) then  --если танк задан в настройках уровня - поставить его. 
                if (zx>0)and(zy>0) then 
                    enemytank=1; hptank=3000;
                    --xpla2=gamex(zx); ypla2=gamey(zy);   Обычно этот параметр уже передан через загрузку
                    --но если нйдется через scanobject то перезаписать полученные кординаты новымиы
                    --главное после получения координат обьекты 17 и 18 должны быть УНИЧТОЖЕ````````````````````````````````` bvo0ppppppНЫ на 56.
                end
        end
    drawonce=1;
end


-- в играх типа rescue карта может состоять из нескольких полей между которыми можно переходить
-- тут находятся периодические проверки всего поля игры.
-- rescan
  


   
if (timerz>20)and (timerz<25) then 
  solarenergy=scanobject (102,-2) ;
   if (solarenergy==-1) then solarenergy=0; end;
   
--процедура поиска обьекта для телепортации. не известно по каким принципам организовывать.
   if (tx<1) then
        skanx,skany=scanobject (119,-1) ;
      if (skanx>0) then ty=skanx;tx=skany; end;  
    end
 --есть подозрение что в коде телепортации вообще не учтен screenfix и что она не использует  xgametorealpositionbezbyte

 
end
  
  --and(timerz>10)and (timerz<75)
  if (powerstate==1)and(allowpowerrescan==1)and(editor<1)or(nowait==1) then 
    p2,p1=scanobject (9,-3) ; -- сканируем верхний штырёк
    p4,p3=scanobject (7,-3) ; -- сканируем левый штырёк. 
    for ap=1,2,1 do 
      if (p1<1) then 
    p2,p1=scanobject (9,-3) ; -- сканируем верхний штырёк   повторно
   -- smsg1="p1="..p1.."p2="..p2.."p3="..p3.."p4="..p4;
    end
    if (p3<1) then 
     p4,p3=scanobject (7,-3) ; -- сканируем левый штырёк. повторно. т.к. у нас нет функции запросить следующий.
   -- smsg1="p1="..p1.."p2="..p2.."p3="..p3.."p4="..p4;
    end
    end
    if (p1>0) then p1=p1+1; end;
    if (p3>0) then p3=p3+1; end;
    -- allowpowerrescan=0   ltkf  делать оказалось необязательно. 
        p1x2=0;p4x2=0; -- пересчитает.
    nowait=0;
   end

if (removeteleportmarker==1)and(editor==0) then     -- было <1)  FUCK  
    if (tx>0)and (ty>0) then printat (tx,ty,"119"); end; 
    
    end --конечная координата телепорта, только для редактора. Для игрока - невидима.

if (powerstate==0)and(editor<1) then
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
           --smsg2="enxris=="..enxris.." a="..a.." 8 -4 p1="..p1.." p2="..p2.."";
         --if (enxris<1) then allowpowerrescan=1; end;
          --if (p1x2>0) then enxris=p1x2-1;end;  -- p1=8 p2=22  x=22 y=8 
            --printat (enxris+2,p2,45); printat (первая координата - это вертикаль, горизонталь)
          for aa=p1,enxris,1 do 
            zzz=screens (aa,p2); --текущая перепроверяемая координата
            zzzpower=string.byte(zzz);
            p1p2=string.byte(screens (p1-1,p2));--начальная координата штырька.
            if (p1p2~=9) then if (p1p2~=56)and(p1p2~=27)then allowpowerrescan=1; p1x2=0; aa=p1; break; end; end;
            if (zzzpower~=8)and(p1p2==9) then 
                       if (zzzpower~=45) then playsound=1; end; 
                        printat (aa,p2,45);
                        else  if (p1x2==0) then p1x2=aa;end; break ;end;
            if ((p1p2>10)and(zzzpower~=8))then 
                                  if (zzzpower==45) then printat (aa,p2,56);  end;

                                  end;
            if (string.byte (screens (p1x2,p2))~=8)then 
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
            zzzpower=string.byte(zzz);
            p1p2=string.byte(screens (p3-1,p4));--начальная координата штырька.
            if (p1p2~=7) then if (p1p2~=56)and (p1p2~=27)then  allowpowerrescan=1; p4x2=0;enxris=0;  aa=p4; break; end; end;
            if (zzzpower~=6)and(p1p2==7) then 
                          if (zzzpower~=46) then playsound=1; end; 
                          printat (p3-1,aa,46) ;
                          else if (p4x2==0) then p4x2=aa;end; break ;end;
             if ((p1p2>10)and(zzzpower~=6))then
                                    if (zzzpower==46) then printat (p3-1,aa,56);  end;

                                      end;
            if (string.byte (screens (p3-1,p4x2))~=6)then
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
            if (string.byte(zzz)~=8) then
                              if (string.byte(zzz)==45) then    printat (aa,p2,56) 
                                        else break ;end;
            end
      end
    end
   if (p3>0) then
            -- если штырьки заданы то включение только тех которые заданы.
          for aa=p4+1,30,1 do 
            zzz=screens (p3-1,aa);
            if (string.byte(zzz)~=6) then
                               if (string.byte(zzz)==46) then   printat (p3-1,aa,56)
                                         else break ;end;
            end
      end

    end
    if (tempshutdownpowerstate==1) then powerstate=1;tempshutdownpowerstate=0; end;
end

--function removeobjectfrommap 
--end
-- по powerstate=0  очистить только клетки с током до 56 
--=================================окончание==========================
  
end

function render2d() 
    objectcodenowID=0;
    timer=timer+1;
    --if (otladka==1) then 

function red ()
love.graphics.setColor(255, 0, 0, 255);
end

function green ()
love.graphics.setColor(0, 255, 0, 255);
end

function cyan ()
love.graphics.setColor(0, 255, 255, 255);
end


function black ()
 love.graphics.setColor(0, 0, 0, 255);
end;

function white ()
 love.graphics.setColor(255, 255, 255, 255);
end;


function randomcolorbw ()
  --colorshift=colorshift+1;
  --if (colorshift>255) then colorshift=0; end; 
  colorshift=math.random(255)
 love.graphics.setColor(colorshift,colorshift ,colorshift, 255);
end;

function randomcolor2 ()
  colorshift=colorshift+0.5;
  if (colorshift>255) then colorshift=0; end; 
 love.graphics.setColor((colorshift), (255-colorshift), (255), 255);
end;


function randomcolor ()
  colorshift=colorshift+0.25;
  if (colorshift>255) then colorshift=0; end; 
 love.graphics.setColor(math.random(colorshift), (255-colorshift), (255), 255);
end;


function yellow ()
 love.graphics.setColor(255, 255, 0, 255);
end;

function gray ()
love.graphics.setColor(255, 200, 200);
end

function printparam (paramname,coordx,coordy,add)
    if (paramname>0) then love.graphics.print((paramname)..add, coordx, coordy); end
    if (paramname<1) then red (); love.graphics.print((paramname)..add, coordx, coordy); black (); end;
    if (paramname>0) then love.graphics.print((paramname)..add, coordx+1, coordy); end
    if (paramname<1) then red (); love.graphics.print((paramname)..add, coordx+1, coordy); black (); end;
    if (paramname>hpmax)and(paramname~=lives) then green (); love.graphics.print((paramname)..add, coordx, coordy); black (); end;
    if (paramname>hpmax)and(paramname~=lives) then green (); love.graphics.print((paramname)..add, coordx+1, coordy); black (); end;
end

function printp (paramname,coordx,coordy,add)
    love.graphics.print((paramname)..add, coordx, coordy); 
    love.graphics.print((paramname)..add, coordx+1, coordy); 
 end

if (timerz>100) then timerz=0;
  if (speedtimer>0) then speedtimer=speedtimer-1; end
  if (speedtimerpla2>0) then speedtimer=speedtimer-1; end
  if (speedtimer<5) then   man_speed= default_man_speed; end;
  if (speedtimerpla2<5) then   man_speedpla2= default_man_speed; end;
 if (freeze==1) then freezetimer=freezetimer-1; end;
 if (protecttank>0) then protecttank=protecttank-1; end;
 if (freezePL1==1) then freezetimerPL1=freezetimerPL1-1;end;
 if (freezePL2==1) then freezetimerPL2=freezetimerPL2-1;end;
 if (freezePL3==1) then freezetimerPL3=freezetimerPL3-1;end;
 if (freezePL4==1) then freezetimerPL4=freezetimerPL4-1;end;
 if (freezetimerPL1<1) then freezePL1=0;end;
 if (freezetimerPL2<1) then freezePL2=0;end;
 if (freezetimerPL3<1) then freezePL3=0;end;
 if (freezetimerPL4<1) then freezePL4=0;end;
 end; add="";
 guifix=0;
 if (ostype=="Android")or(showandroidbar==1) then if(incontrolcentre==0) then     --love.graphics.draw(androidgui, 2,2); 
      if (scaling>1) then wysotamenu=-10+standartwysotagraphicmenu*scaling; end --  (70,  0.4 )
       if (scaling<1.1) then wysotamenu=-10+standartwysotagraphicmenu; end --  (70,  0.4 )
          for i=2,9,1 do  --h udalil
        androidmenup = love.graphics.newImage("Textures/androiduserguiicon"..i..".png");
       love.graphics.draw(androidmenup, 0,((wysotamenu)*(i-2)),0,scaling,scaling);     
            end;
    guifix=standartsizeusermenu*scaling; end; end;
 if (ostype=="Android")or(showandroidbar==1) then if (incontrolcentre==1) then love.graphics.draw(androidguictl, 2,2); guifix=standartsizeusermenu*scaling; end;end;
 if (ostype=="Android")or(showandroidbar==1) then scalingandroidcursor=standartsizeusermenu/100
  love.graphics.draw(androidguicursor, rightspaceonscreen ,(maxheight/2)-standartsizeusermenu,0,scalingandroidcursor,scalingandroidcursor); end;

    if (ostype=="Android") then  love.graphics.draw(menuicon, 0,maxheight-80);  -- system menu icon  
     love.graphics.draw(menu_exit, maxwidth-80,maxheight-80);  end; -- system exit game icon  
    love.graphics.setFont(fontSMALL);
    if (build) then love.graphics.print("M2K v0.4 b"..build.." "..ostype.." "..maxwidth.."x"..maxheight.." scaling: 1:"..scaling, 8+guifix, maxheight-wysotastroki*3);end;
    love.graphics.print("X="..gamex (x).." realX="..x..", Y="..gamey (y).." realY="..y, 8+guifix, maxheight-wysotastroki*8);
  if (otladka==1)  then  love.graphics.print("xdata["..coord (gamey (y),gamex (x)).."]= objectcode="..string.byte (screens (gamey (y),gamex (x))), 8, maxheight-wysotastroki*9);
  end
    love.graphics.print("youtube.com/c/linux4domvid", 8+guifix, maxheight-wysotastroki*2);
    love.graphics.print("ras0ft.ru (c) dj--alex ", 8+guifix, maxheight-wysotastroki*1);

    love.graphics.draw(displayinventoryobj, 2+guifix,2,0,scaling,scaling); -- FUCK     нужно как то подправить это. 

    leftpos=28+guifix+6*scaling;
    wysotamenu=wysotastroki+2;

   --objectcodeformenu=objs[60+1][3]; 
   --love.graphics.draw(textures[objectcodeformenu], leftpos, 0,0,scaling,scaling); 
    love.graphics.setColor(0, 0, 0, 255)
    printparam (hp,leftpos,8,"/"..hpmax) ;
    printp (ammo,leftpos,8+1*wysotamenu,"") ;
    printp (bombs,leftpos,8+2*wysotamenu,"") ;
    printp (ice,leftpos,8+3*wysotamenu,"") ;
    printparam (reservedaids,leftpos,8+4*wysotamenu,"[h]") ;
    printp (keys,leftpos,8+5*wysotamenu,"") ;
    printp (water,leftpos,8+6*wysotamenu,"") ;
    printparam (lives,leftpos,8+7*wysotamenu,"[r]") ;
    printp (targetremains,leftpos,8+8*wysotamenu,"") ;
    printp ("Solarpower:"..solarenergy,leftpos+126,8+8*wysotamenu,"*") ;
    printp (seed.."/"..mushroom,leftpos,8+9*wysotamenu,"*") ;
    --love.graphics.print((targetremains),leftpos,7+9*wysotamenu);
    love.graphics.print("Score="..(score), leftpos+126, 0+9*wysotamenu);
    
 love.graphics.setColor(255, 255, 255, 255)
 -- менюшку сделать двигаемой или пересмотреть. --font = love.graphics.newFont(rozmiarznak); 

 if (tank>0) then love.graphics.print("Tank",140, 5+rozmiarznak*0); end
 if (protect>0) then  love.graphics.print("Protect",200, 3+rozmiarznak*1);end
 if (acidprotect>0) then  love.graphics.print("Acid Protect",200, 3+rozmiarznak*1);end
 if (paralysatorrifle>0) then  love.graphics.print("Prifle",140, 1+rozmiarznak*2);end
 if (passthrurock>10000) then  love.graphics.print("!CHEATER!",(timerz), 295+math.random(3));end
 if (passthrurock>0) then  love.graphics.print("Passthrurock!",140, rozmiarznak*3);end
  if (powerstate>0) then  love.graphics.print("Power", 200, 5+rozmiarznak*0);end
 if (darkzone>0) then  love.graphics.print("Darkzone", 200, 3+rozmiarznak*1);end
 if (puszkistate>0) then  love.graphics.print("Machines", 200, 1+rozmiarznak*2); end
 if (player2AI==1) then  love.graphics.print("PL2 AI",200, rozmiarznak*3);end
 if (freeze>0) then  love.graphics.print("FROZEN!", 140, 5+rozmiarznak*4); end

if (hardlevel<1)or(hardlevel>2) then  love.graphics.setBackgroundColor(0, 0, 0); end ; -- фон игры. 
if (hardlevel==1) then  love.graphics.print("Hardlevel", 170, 5+rozmiarznak*5);  love.graphics.setBackgroundColor(25, 25, 25); end ; -- фон игры.
if (hardlevel==2) then  love.graphics.print("Bonus level", 170, 5+rozmiarznak*5); love.graphics.setBackgroundColor (0, 100, 0); end ; -- фон игры.


-- SE приходит неверный, он не может быть ни 17  ни 4 (!) 
if ((zzx<143)or (zzx==255)) then 
         love.graphics.print(""..objs[((zzx+1))][2], 480, 0); 
       if (editor==1) then love.graphics.print("Obj1:"..selectedobject..","..objs[((selectedobject+1))][2], maxwidth-600, maxheight-20-wysotastroki*2);end;
      if (editor==1) then love.graphics.print("Obj2:"..selectedobject2..","..objs[((selectedobject2+1))][2], maxwidth-600, maxheight-20-wysotastroki);end;
                end;
 
 if (ostype=="rospoznawanie_taczpada") then -- disabled
    love.graphics.print("ax="..(ax), 8, 250);
    
    love.graphics.print("adx="..(ady), 8, 270);
    love.graphics.print("ady="..(ady), 8, 280);
    --love.graphics.print("t_id="..(t_id), 8, 290);
    love.graphics.print("id="..(id), 8, 300);
end

    if (otladka==1)and(editor==0)and(incontrolcentre==0) then 
      
    --love.graphics.print("FreezePL3="..(freezePL3), 8, 250);
    love.graphics.print("P1x(a="..gamex (x2).." r "..x2*0, 8, 320);
    love.graphics.print("P1y(a="..gamey (y2).." r "..y2*0, 8, 320+wysotastroki);
    love.graphics.print("P2x(a="..gamex (x2pla2am).." r "..x2pla2am, 98, 320+wysotastroki*2);
    love.graphics.print("P2y(a="..gamey (y2pla2am).." r "..y2pla2am, 98, 320+wysotastroki*3);
        love.graphics.print("X2pl="..gamex (xpla2).." rX2 "..xpla2, 98, 320+wysotastroki*4);
    love.graphics.print("Y2pl="..gamey (ypla2).." rY2  "..ypla2, 98, 320+wysotastroki*5);

  
    if (zzzammo) then love.graphics.print("zzzammo="..string.byte(zzzammo).."zzxammo="..(zzxammo), 8, 360+wysotastroki*7);end;
    if (zzz) then love.graphics.print("SCRN$(zzz)="..string.byte(zzz), 8, 370+wysotastroki*8); -- display check SCREEN$ function  ТУТ ДОЛЖЕН БЫТЬ END но с ним не работает !!!!!
    
    if (zzz2) then love.graphics.print("SCRN$(zzz2)="..string.byte(zzz2), 8, 350+wysotastroki*10);end  -- display check SCREEN$ function
    love.graphics.print("ty="..(ty), 8, 370+wysotastroki*10);    
    love.graphics.print("tx="..(tx), 8, 380+wysotastroki*11);
love.graphics.print("zzzafterprint="..zzx, 8, 400+wysotastroki*12); -- następna pozycja 
if (zzz2ammo) then love.graphics.print("zzz2ammo="..string.byte(zzz2ammo).."zzx2ammo="..(zzx2ammo), 8, 340+wysotastroki*13);end;
  love.graphics.print("pri-xblock coord xdata="..pri, 8, 410); -- następna pozycja   
  love.graphics.print(typelevel, 8, 420);
end 
   
            end;   -- текст названия обьекта берется только так!  иначе будет неверно!

startpositionuserPCmenuX=8;
startpositionuserPCmenuY=210; 
if (maxwidth>1400) then startpositionuserPCmenuY=210+240*scaling; end; 
if (pause==1) then        randomcolor ()  ;  love.graphics.print("***PAUSE [pause]***",38+guifix,395);  white (); end;


  if ((incontrolcentre==1)and(editor<1))and(ostype~="Android") then  -- для андроид должна отображатся другая панель вместо основной для ходьбы.
         love.graphics.print("***Control Centre***",38+guifix,startpositionuserPCmenuY-wysotastroki*2);
        if (reservedaids>2) then  love.graphics.print("Sell reserved aids [z]",8+guifix,startpositionuserPCmenuY);end;
        love.graphics.print("Buy/Sell lives [l][;]",8+guifix,startpositionuserPCmenuY+wysotastroki);
        if (tank>0) then love.graphics.print("Sell tank [x]",8+guifix,startpositionuserPCmenuY+wysotastroki*2);end;
        if (protect>0) then love.graphics.print("Sell protect [c]",8+guifix,startpositionuserPCmenuY+wysotastroki*3); end;
        --love.graphics.print("Buy time [t]",8+guifix,startpositionuserPCmenuY+wysotastroki*4);
            if (hardlevel~=1) then
              love.graphics.print("Buy keys [k]",8+guifix,startpositionuserPCmenuY+wysotastroki*5);
              love.graphics.print("Buy bombs [b]",8+guifix,startpositionuserPCmenuY+wysotastroki*6);
               end
               love.graphics.print("Buy ice [i]",8+guifix,startpositionuserPCmenuY+wysotastroki*7);
              love.graphics.print("Buy ammo [a]",8+guifix,startpositionuserPCmenuY+wysotastroki*8);
              love.graphics.print("Buy express ticket [e]",8+guifix,startpositionuserPCmenuY+wysotastroki*9);
        love.graphics.print("Exit - [Space]",60+guifix,startpositionuserPCmenuY+wysotastroki*13);

end


  if (editor==1) then 
         love.graphics.print("***EDITOR***",38+guifix,startpositionuserPCmenuY-wysotastroki*2);
          love.graphics.print("[1] Paste object",8+guifix,startpositionuserPCmenuY);
        love.graphics.print("[2] Select object 1",8+guifix,startpositionuserPCmenuY+wysotastroki);
         love.graphics.print("[3] Select object 2",8+guifix,startpositionuserPCmenuY+wysotastroki*2);
         love.graphics.print("[4] Paste object P2",8+guifix,startpositionuserPCmenuY+wysotastroki*3); 
        love.graphics.print("[5] Fill object 1",8+guifix,startpositionuserPCmenuY+wysotastroki*4);
          love.graphics.print("[6] Fill object 2",8+guifix,startpositionuserPCmenuY+wysotastroki*5);
         love.graphics.print("[7] Exchange object 1 to o2",8+guifix,startpositionuserPCmenuY+wysotastroki*6);
              love.graphics.print("[8] Exchange object 2 to o1",8+guifix,startpositionuserPCmenuY+wysotastroki*7);
        love.graphics.print("[9] Scan and go to object 1",8+guifix,startpositionuserPCmenuY+wysotastroki*8);
       love.graphics.print("[f6] - Save map to memory",8+guifix,startpositionuserPCmenuY+wysotastroki*9);
  if(xdataarchived==1)then  love.graphics.print("[f7] - Undo,Reload from memory",8+guifix,startpositionuserPCmenuY+wysotastroki*10); end;
       
       love.graphics.print("[f8] - Load Level",8+guifix,startpositionuserPCmenuY+wysotastroki*11);
       love.graphics.print("[f5] - Save Level (req run rebuild.sh)",8+guifix,startpositionuserPCmenuY+wysotastroki*12);
       love.graphics.print("[home],[end] - Set Number level",8+guifix,startpositionuserPCmenuY+wysotastroki*13);
       love.graphics.print("[f10] - Set parameters level",8+guifix,startpositionuserPCmenuY+wysotastroki*14);
       --love.graphics.print("[f11] - Random seed",8+guifix,startpositionuserPCmenuY+wysotastroki*15);
       love.graphics.print("[f12] - Debug",8+guifix,startpositionuserPCmenuY+wysotastroki*16);
       love.graphics.print("[f1] - Add android GUI (test)",8+guifix,startpositionuserPCmenuY+wysotastroki*17);
       love.graphics.print("[tab] - Menu Select Object",8+guifix,startpositionuserPCmenuY+wysotastroki*18);
       love.graphics.print("[0] - Scan all objects.",8+guifix,startpositionuserPCmenuY+wysotastroki*19);
       love.graphics.print("p;[] - Camera move.",8+guifix,startpositionuserPCmenuY+wysotastroki*20);
        love.graphics.print("[`] End editing",60+guifix,startpositionuserPCmenuY+wysotastroki*25);
      love.graphics.print("Remember - level saved in folder game, you need send level to telegram https://t.me/m2kdev or vk https://vk.com/club134363102 .",8+guifix,startpositionuserPCmenuY+wysotastroki*33);

end


-- На Android это менюшка по сути не нужна.
  if (editor==0)and(incontrolcentre==0)and(otladka==0)and(ostype~="Android") then 
         love.graphics.print("***PLAYER***",38+guifix,startpositionuserPCmenuY);
          love.graphics.print("[lshift] Ammo shot",8+guifix,startpositionuserPCmenuY+wysotastroki);
        love.graphics.print("[lwin]or[caps] Ice shot",8+guifix,startpositionuserPCmenuY+wysotastroki*2);
        love.graphics.print("[lalt] Bomb place",8+guifix,startpositionuserPCmenuY+wysotastroki*3);
        love.graphics.print("[L] Teleport to start",8+guifix,startpositionuserPCmenuY+wysotastroki*4);
        if (hardlevel<1) then love.graphics.print("[N] Skip level",8+guifix,startpositionuserPCmenuY+wysotastroki*5); end;
         love.graphics.print("Walk - cursor",8+guifix,startpositionuserPCmenuY+wysotastroki*6);
         love.graphics.print("[Pause] - pause",8+guifix,startpositionuserPCmenuY+wysotastroki*7);
         love.graphics.print("[f3] - Help about object",8+guifix,startpositionuserPCmenuY+wysotastroki*8);
         if (enemytank==1) then love.graphics.print("numpad0 - Fire Player 2",8+guifix,startpositionuserPCmenuY+wysotastroki*9); 
         love.graphics.print("Hptank="..(hptank),8+guifix,startpositionuserPCmenuY+wysotastroki*10); end;
         if (countinventory>1) then 
          love.graphics.print("[x] - Drop one item",8+guifix,startpositionuserPCmenuY+wysotastroki*11);
         love.graphics.print("[c] - Sort items",8+guifix,startpositionuserPCmenuY+wysotastroki*12);
         --love.graphics.print("[f3] - Help about object",8+guifix,startpositionuserPCmenuY+wysotastroki*8);
          end
end
           maximumlines=visual_mapsize_horizontal ;--  это код рендеринга т.е. то что будет визуально. отображать ВСЮ карту не требуется.
     maximumlines=mapsize_horizontal; --только для проверки при увеличении этой переменной можно при меньшем размере знака посмотреть всю карту. 
    --
    a=18+cameraleftpos_x_hor+mapsize_horizontal*camerauppos_y_vert; -- пропускаем параметры уровня, они хранятся в xdata.
    virtobjecttable ={};  -- по xdata[a] получаем данные уровня и изначальные параметры.
    -- этот код показывает только видимую часть карты и наличие редактора не должно на него влиять. код редакторов ниже убдет.
    for yy=1,0+visual_mapsize_vertical,1 do   -- этот цикл делает рендеринг, он же должен сделать активную копию карты.    --5*editor+maximumvertical
        --if (yy==29) then yy=yy+1; end;
        for xx=1,maximumlines,1  do
          if (xx>visual_mapsize_horizontal) then xx=mapsize_horizontal; end; --ограничивает зону видимости правилом  xdata никуда не исчезнет, но видно будет только эту область
             if(a<55624) then objectcodenow=string.byte ((xdata[a]));else objectcodenow=0; end -- должно защитить от сбоев при увеличении visual_mapsize_horizontal
            if (xdata[a]) then 
                objectcodenowID=xdata[a]              else                 objectcodenowID=0;
            end;      -- virtobjecttable[x][y]=xdata[a];--  else virtobjecttable[x][y]=0; end;        --А вот нельзя так добавлять в двумерный массив 
            IDobj=objs[objectcodenow+1][1]; -- [1] ID обьекта [2] имя [3] файл [4] особые свойства.
            if ((IDobj)) then
                -- название файла текстуры
                  local imgf =  objs[objectcodenow+1][3]; 
                  --не работает переключение визуального обьекта для редактора и для игрока -- НЕ СДЕЛАНО!!!!
                --if (editor==1)and(objs[objectcodenow+1][5]~=nil) then if (string.len(objs[objectcodenow+1][5])>6)  then imgf =objs[objectcodenow+1][5]; end ; end;
                -- если нужная текстура еще не загружена
                if( not textures[imgf] ) then --убрал Local т.к. переставала работать внутри цикла IF.
                    -- подгружаем её и пихаем в массив текстур
                    textures[imgf] = love.graphics.newImage("Textures/"..imgf);
                end;
                -- рисуем подгруженную текстуру    Она переразмерена .
           if (passthrurock>0) then  xc=passthrurock*5-100;                     
                               if (passthrurock>20) then xc=0; end
                                love.graphics.setColor(150-xc, 150-xc, 150-xc, 255);
                            end; 
            postobjectX=gamescreenfixhorizontal*rozmiarznak+240+xx*rozmiarznak;
            postobjectY=gamescreenfixvertical*rozmiarznak+yy*rozmiarznak;
          if (darkzone==1)and(editor==0)then
                    -- радиус светлости вокруг задается тут и должен зависет от знакоместа
                        function isnear3 (par1,par2)
                            mn=4*rozmiarznak;
                             if (hp<1) then mn=1;  end;
                            for a=par1-mn,par1+mn,1 do
                                if a==par2 then return true end
                                end
                        return false;
                        end
            xdarkcompare=isnear3 (postobjectX,x); ydarkcompare=isnear3 (postobjectY,y);
            --smsg1=" isnear ("..postobjectX.."..x="..x.."ydarkcompare=isnear ("..postobjectY.."..y..";
              if (xdarkcompare~=true) or (ydarkcompare~=true) then 
                cc=math.random(6);
            love.graphics.setColor(cc, cc,cc, 255);else 
                  white (); 
                  end;
          end
          if (defacescreen==1) then randomcolorbw () ; 
                if (timerz>25) then defacescreen=0; end
            end; 
           love.graphics.draw(textures[imgf], postobjectX, postobjectY,0,scaling,scaling);   -- выключаем рендерер
           white (); --            love.graphics.print(aa..";"..string.byte (xdata[aa]).."",-52+52*xx,420+11*yy); 
            end;
            a=a+1;
        end;
    end;
--end; --// of for c cyclef
-- тут заканчивается отрисовка игрового поля.
-- тут начинается отрисовка блока инвентаря (предметный)
    inventoryvisualcode=0;
    textures2={};
   countinventory=#inventoryitemtable
   if (countinventory>0) then 
   for aii=1,countinventory,1 do 
         inventoryvisualcode=inventoryitemtable[aii];
        IDobj=objs[inventoryvisualcode+1][1]; -- [1] ID обьекта [2] имя [3] файл [4] особые свойства.
         postobjectX=gamescreenfixhorizontal*rozmiarznak+aii*rozmiarznak;
         postobjectY=gamescreenfixvertical*rozmiarznak+1*rozmiarznak+300;
               if ((IDobj)) then
                -- название файла текстуры

                   imgf2 =  objs[inventoryvisualcode+1][3]; -- просто берет название файла.
    if (otladka==1) then smsg1="invencode="..inventoryvisualcode.." countinv="..countinventory.." iitable[0]="..inventoryitemtable[1].." IDobj="..IDobj.." imgf2="..imgf2; end; 
                       -- если нужная текстура еще не загружена
               -- if( not textures2[imgf2] ) then  -- удален т.к. мешает работе инвентаря и делает невозможным показ одинаковых обьектов.
                    -- подгружаем её и пихаем в массив текстур
                    textures2[imgf2] = love.graphics.newImage("Textures/"..imgf2);
                    if (imgf2~=nil) then love.graphics.draw(textures2[imgf2],postobjectX, postobjectY,0,scaling,scaling);   end;
                 --     end;
               end; 
     end
   end
-- тут заканчивается отрисовка блока инвентаря

-- тут начинается отрисовка редактора если он включен.
--[[ 
--if (editorcallselectobject==1) then 
   counteditoritems=#xeditordata
   yy=0;
   if (counteditoritems>10)and(editorrenderedcodecreated==0)and(editor==1)then  --and(editor==1) 
   spriteBatch = love.graphics.newSpriteBatch( image, 200 )
   for aii=1,counteditoritems,1 do 
         editorvisualcode=string.byte (xeditordata[aii]);
        IDobj=objs[editorvisualcode+1][1]; -- [1] ID обьекта [2] имя [3] файл [4] особые свойства.
         postobjectX3=gamescreenfixhorizontal*rozmiarznak+60+aii*rozmiarznak+rozmiarznak-yy*visual_mapsize_horizontal*rozmiarznak;
         postobjectY3=downspaceonscreen+yy*rozmiarznak; --         gamescreenfixvertical*rozmiarznak+1*rozmiarznak+300;
         --if (math.fmod (aii,50)>1) then yy=yy+1;end;
               if ((IDobj)) then
                   imgf3 =  objs[editorvisualcode+1][3]; -- просто берет название файла.
    if (otladka~=1) then smsg1="editorvisualcode="..editorvisualcode.." counteditoritems="..counteditoritems.." xeditordata[0]="..xeditordata[1].." IDobj="..IDobj.." imgf2="..imgf2; end; 
                textureseditor[imgf3] = love.graphics.newImage("Textures/"..imgf3);
                    if (imgf3~=nil) then 
                      editorrenderedcodecreated=1;
                       end;
               end; 
     end
   end

if (editorrenderedcodecreated==1)and(editor==1) then 
 love.graphics.draw(textureseditor[imgf3],postobjectX3, postobjectY3,0,scaling,scaling);  
 end;
-- тут заканчивается отрисовка редактора
]]--



 smsgfix=0; if (scaling>1) then smsgfix=150*scaling; end;
    love.graphics.print("LEVEL "..levelnumber, leftspaceonscreen, downspaceonscreen+wysotastroki*2);
--    love.graphics.print("Accelmove="..accelmove, 8, 140);

   if (targetremains<1)and(editor==0) then 
        love.graphics.print("You complete level press [SPACE].", 433,510+smsgfix); 
    end;
if ((hp<1)and(lives>0))and(editor==0) then 
        love.graphics.print("You are dead, press [R] to respawn.", 433,510+smsgfix); 
    end;
    if ((lives<1)and(hp<1))and(editor==0) then 
        randomcolorbw ();

         love.graphics.print("You lost all lives. Game over.", 433,510+smsgfix); 
        white () ;
    end;
--love.graphics.print("SMSG:"..smsg1, 50,maxheight-5*wysotastroki); 
love.graphics.print("SMSG:"..smsg1, leftspaceonscreen,downspaceonscreen+wysotastroki*3); 

 if (menuoption>0) then 
 
if (otladka==1) then
  love.graphics.print("ammoKEYPL1:"..ammoKEYPL1, 73,499+smsgfix-10*wysotastroki);  
--love.graphics.print("maximummenulevel:"..maximummenulevel, 63,550+smsgfix);  
love.graphics.print("movePL1:"..movePL1, 273,499+smsgfix-11*wysotastroki); 
love.graphics.print("SMSG2:"..smsg2, 73,maxheight-5*wysotastroki); 
 love.graphics.print("SMSG3:"..smsg3, 73,maxheight-6*wysotastroki);  
 love.graphics.print("SMSG4:"..smsg4, 73,maxheight-7*wysotastroki);  
                   end;
      end
 
    return 1;
end;


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



--[[Albert Ormoondort, [17.06.17 14:40]
я просто получаю удовольствие, тем более с телефона. Не пытаюсь уберчитаемый ультраархитектурный модный код с фичами с++17 
и микросервисами лепить

Philipp, [17.06.17 14:41]
Получать удовольствие от плохого кода? Хммм :D

Albert Ormoondort, [17.06.17 14:41]
он не плохой, он просто особенный. А то можно думать о бестпрахтисах, строчить комментарии и документацию, 
создавать тесты и не добраться до чего-то работающего
]]--