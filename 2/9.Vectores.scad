//-- Parámetros
r=5;    //-- Radio redondeo esquinas
h=10;   //-- Altura

//-- Coordenadas cilindro primer cuadrante
cx=20;
cy=15;

//-- Vector de puntos con posiciones cilindros
POINT=[
    [cx,cy,0],      //-- 0
    [-cx,cy,0],     //-- 1
    [-cx,-cy,0],    //-- 2
    [cx,-cy,0],     //-- 3
    [2*cx,0,0],     //-- 4
    [0,1.5*cy,0],   //-- 5
    [0,0,h],        //-- 6
];

//-- Menor objeto convexo que contine los puntos en POINT
hull(){
    //-- Dibujar cada cilindro en su posición
    for(pos=POINT)
        translate(pos)
            cylinder(r=r,h=h,center=true,$fn=20);
}
