//-- Ejemplo de uso de esferas para crear una cuadrícula de NxN cuadros

//-- Tamaño de cada cuadro
d=30;

//-- Radio de las esferas de la cuadrícula
r=2;

//-- Número de cuadros (NxN)
N=10;

//-- Tamaño total de la cuadrícula
size=N*d;

//-- Dibujar la cuadrícula
//-- Centrar cuadrícula
translate([-size/2,-size/2,0])
    for(ix=[0:N])
        for(iy=[0:N])
            translate([ix*d,iy*d,0])
                sphere(r=r,$fn=20);

//-- Objeto ejemplo en punto (2,2): esfera roja
translate([2*d,2*d,0])
    color("red")
        sphere(r=15,$fn=20);

//-- Objeto ejemplo en punto (-3,-4): cubo azul
translate([-3*d,-4*d,0])
    color("blue")
        cube([20,20,20],center=true);
