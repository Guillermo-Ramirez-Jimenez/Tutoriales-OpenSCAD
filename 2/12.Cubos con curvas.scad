//-- Constantes para acceder vectores X, Y y Z
X=0;
Y=1;
Z=2;

//-- Parámetros
r=4;            //-- Radio curvas
A=[30,30,20];   //-- Dimensiones

//-- Calcular coordenadas
a=(A-[2*r,2*r,2*r])/2;

//-- Obtener coordenadas
x=a[X];
y=a[Y];
z=a[Z];

//-- Calcular vértices
vertice=[
    [x,y,z],
    [-x,y,z],
    [-x,-y,z],
    [x,-y,z],
    [x,y,-z],
    [-x,y,-z],
    [-x,-y,-z],
    [x,-y,-z],
];

//-- Cubo sin redondear
*color("red")
    cube(A,center=true);

//-- Cubo redondeado
hull()
    for(pos=vertice)
        translate(pos)
            sphere(r=r,$fn=20);
