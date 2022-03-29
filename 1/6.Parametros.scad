//-- Parámetros de la rueda
grosor=5;
diametro=50;
diam_eje=8;

//-- Construcción de la rueda a partir de los parámetros
difference(){
    //-- Base de la rueda
    cylinder(r=diametro/2,h=grosor,$fn=100);
    
    //-- Taladro del eje
    cylinder(r=diam_eje/2,h=3*grosor,$fn=20,center=true);
}