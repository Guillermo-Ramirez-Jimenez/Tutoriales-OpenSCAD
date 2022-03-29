//-- Parámetros del toroide
ri=10;  //-- Radio interno
ds=10;  //-- Diámetro sección

//-- Toroide de sección un hexágono
*rotate_extrude($fn=100)
    translate([ds/2+ri,0,0])
        circle(d=ds,$fn=6);

//-- Toroide de sección varios objetos 2D
rotate_extrude($fn=100)
    translate([ds/2+ri,0,0]){
        translate([ds/2,0,0])
            circle(d=ds);
        square([ds,ds],center=true);
    }
