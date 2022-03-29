//-- Parámetros de la pieza
r1=25;
r2=10;
th=5;

//-- Distancia entre los centros de los cilindros
d=r1+r2+10;

//-- Objeto convexo mínimo que contiene los dos cilindros
hull(){
    
    //-- Cilindro 1
    translate([-d/2,0,0])
        cylinder(r=r1,h=th,center=true,$fn=50);

    //-- Cilindro 2
    translate([d/2,0,0])
        cylinder(r=r2,h=th,center=true,$fn=50);

}
