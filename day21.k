c[`dagger]:8.0;
c[`shortsword]:10.0;
c[`warhammer]:25.0;
c[`longsword]:40.0;
c[`greataxe]:74.0;

c[`leather]:13;
c[`chainmail]:31;
c[`splintmail]:53;
c[`bandedmail]:75;
c[`platemail]:102;

c[`dmg1]:25;
c[`dmg2]:50;
c[`dmg3]:100;
c[`def1]:20;
c[`def2]:40;
c[`def3]:80;

c[`none]:0;

d[`dagger]:4.0;
d[`shortsword]:5.0;
d[`warhammer]:6.0;
d[`longsword]:7.0;
d[`greataxe]:8.0;

d[`leather]:0;
d[`chainmail]:0;
d[`splintmail]:0;
d[`bandedmail]:0;
d[`platemail]:0;

d[`dmg1]:1;
d[`dmg2]:2;
d[`dmg3]:3;
d[`def1]:0;
d[`def2]:0;
d[`def3]:0;

d[`none]:0;

a[`dagger]:0;
a[`shortsword]:0;
a[`warhammer]:0;
a[`longsword]:0;
a[`greataxe]:0;

a[`leather]:1;
a[`chainmail]:2;
a[`splintmail]:3;
a[`bandedmail]:4;
a[`platemail]:5;

a[`dmg1]:0;
a[`dmg2]:0;
a[`dmg3]:0;
a[`def1]:1;
a[`def2]:2;
a[`def3]:3;

a[`none]:0;

ph:100;
bh:104;
d[`boss]:8.0;
a[`boss]:1.0;

wp:`dagger`shortsword`warhammer`longsword`greataxe;
ar:`leather`chainmail`splintmail`bandedmail`platemail`none;
rg:`dmg1`dmg2`dmg3`def1`def2`def3`none;

all:,/(,/(,/ wp ,/:\: ar) ,/:\: rg) ,/:\: rg;
all:all@&{~(x[2]=x[3])&~x[2]=`none}'all; / each ring only once

rounds:{[x;y;z]-_-z%0.0+1|(+/d[y])-+/a[x]};

&/{+/c@all@x}'&{~rounds[`boss;x;bh]>rounds[x;`boss;ph]}'all
|/{+/c@all@x}'&{rounds[`boss;x;bh]>rounds[x;`boss;ph]}'all
