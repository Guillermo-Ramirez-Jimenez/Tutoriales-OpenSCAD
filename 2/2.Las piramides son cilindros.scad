//-- Cilindro normal. r es radio, h es altura
*cylinder(r=20,h=20,$fn=100);

//-- Cono truncado. r1 radio base inferior, r2 radio base superior
*cylinder(r1=20,r2=10,h=20,$fn=100);

//-- Cono
*cylinder(r1=20,r2=0,h=20,$fn=100);

//-- Pirámide de base hexagonal
*cylinder(r1=20,r2=10,h=20,$fn=6);

//-- Pirámide
*cylinder(r1=20,r2=0,h=20,$fn=4);

//-- Tetrahedro
cylinder(r1=20,r2=0,h=20,$fn=3);
