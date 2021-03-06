//-- Dimensiones de los cuadros de la cuadrícula
d=60;

//-- Centrar la cuadrícula
translate([-2*d/2,-d/2,0]){

    //-- Punto: 0,0
    translate([0,0,0]) cylinder(r=20,h=20,$fn=100);

    //-- Punto: 1,0
    translate([d,0,0]) cylinder(r1=20,r2=10,h=20,$fn=100);

    //-- Punto: 2,0
    translate([2*d,0,0]) cylinder(r1=20,r2=0,h=20,$fn=100);

    //-- Punto: 0,1
    translate([0,d,0]) cylinder(r1=20,r2=10,h=20,$fn=6);

    //-- Punto: 1,1
    translate([d,d,0]) cylinder(r1=20,r2=0,h=20,$fn=4);

    //-- Punto: 2,1
    translate([2*d,d,0]) cylinder(r1=20,r2=0,h=20,$fn=3);

}
