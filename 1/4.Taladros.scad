// --Rueda simple
difference(){
    //-- Base de la rueda
    cylinder(r=50/2,h=5,$fn=100);
    
    //-- Taladro de 8mm
    cylinder(r=8/2,h=20,$fn=20,center=true);
}