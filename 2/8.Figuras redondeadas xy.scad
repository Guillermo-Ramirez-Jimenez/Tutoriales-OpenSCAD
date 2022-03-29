//-- Parámetros de la caja
lx=50;  //-- Longitud eje x
ly=40;  //-- Longitud eje y
r=5;    //-- Radio del redondeo
h=10;   //-- Altura

//-- Coordenadas del cilindro del primer cuadrante
cx=lx/2-r;
cy=ly/2-r;

//-- Posición de los 4 cilindros de las esquinas
P1=[cx,cy,0];
P2=[-cx,cy,0];
P3=[-cx,-cy,0];
P4=[cx,-cy,0];

//-- Obtener el menor objeto convexo que contiene los cilindros
hull(){
    translate(P1)
        cylinder(r=r,h=h,center=true,$fn=20);
    translate(P2)
        cylinder(r=r,h=h,center=true,$fn=20);
    translate(P3)
        cylinder(r=r,h=h,center=true,$fn=20);
    translate(P4)
        cylinder(r=r,h=h,center=true,$fn=20);
}
