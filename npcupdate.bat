echo offset

set arg1=%1
set arg2=%3
set arg3=%3

copy .\npcs\npc%arg2% ..\nativePC\npcs\%arg1%
cd ..
cd nativePC
cd npc
cd %arg1%
REN %arg2% %arg3%