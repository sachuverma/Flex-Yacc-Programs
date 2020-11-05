# Flex & Yacc Programs

### How to setup
  >  - download [flex](./setups/flex-2.5.4a-1.exe) & [bison](./setups/bison-2.4.1-setup.exe) setups from [GnuWin Packages](http://gnuwin32.sourceforge.net/packages.html)       
  >  - install both at `C:/GnuWin32`     
  >  - then goto `This PC > Properties > Advanced System Settings > Environment Variables > Path Variabes `, add the path `C:\GnuWin32\bin`    

### How to run
 - `Flex Programs`
   > - flex **filename.l**
   > - gcc **lex.yy.c**
   > - **a.exe**   
 
 - `Flex & Yacc Programs`   
   > - flex **filename.l**
   > - bison -dy **filename.y**
   > - gcc **lex.yy.c** *y.tab.c*
   > - **a.exe**
