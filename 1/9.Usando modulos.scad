//-- Ejemplo sencillo de cómo utilizar los módulos
use <8.Parametros por defecto.scad>

//-- Chasis del coche
translate([30,0,0])
    cube([100,60,10], center=true);
    
//-- Rueda delantera izquierda
translate([0,-30,0])
    rotate([90,0,0])
        rueda_simple();
        
//-- Rueda trasera izquierda
translate([60,-30,0])
    rotate([90,0,0])
        rueda_simple(grosor=20,diametro=50);
        
//-- Lado derecho del coche. Simétrico respecto al izquierdo
mirror([0,1,0]){
    translate([0,-30,0])
        rotate([90,0,0])
            rueda_simple();
            
    translate([60,-30,0])
        rotate([90,0,0])
            rueda_simple(grosor=20,diametro=50);
}