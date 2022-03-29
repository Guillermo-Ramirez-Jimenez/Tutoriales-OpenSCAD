//-- Definiciones para acceder componentes X, Y y Z
X=0;
Y=1;
Z=2;

//-- Dimensiones de los cubos. B encima de A
A=[30,30,10];
B=[10,10,30];

//-- Calcular B encima de A
posB=[0,0,B[Z]/2+A[Z]/2];

//-- Poner cubo A
cube(A,center=true);

//-- Poner cubo B encima de A
translate(posB)
    cube(B,center=true);
