//-- Parámetros de la rueda
di=50;  //-- Diámetro interno junta tórica
ds=3;   //-- Diámetro junta tórica
h=ds+2; //-- Grosor rueda

//-- Parámetros calculados
d=di+2*ds;  //-- Diámetro rueda
r1=d/2;     //-- Radio de la rueda
r2=ds/2;    //-- Radio de la junta tórica

//-- Sección rueda
module section(){
    difference(){
        translate([r1/2,0,0])
            square([r1,h],center=true);

        //-- Alojamiento circular
        *translate([r1, 0, 0])
            circle(d=3,$fn=20);

        //-- Alojamiento triangular
        translate([r1-r2, 0, 0])
            polygon(points=[
                [0,0],
                [r2+1,r2+1],
                [r2+1,-r2-1],
                ]);
    }
}

//-- Junta tórica
module junta(){
    rotate_extrude($fn=100)
        translate([r1,0,0])
            circle(d=ds);
}

//-- Rueda
difference() {
    rotate_extrude(convexity=10,$fn=100)
        section();

    //-- Eje de la rueda
    cylinder(d=3,h=h+10,center=true,$fn=20);
}

color("grey")
    *junta();
