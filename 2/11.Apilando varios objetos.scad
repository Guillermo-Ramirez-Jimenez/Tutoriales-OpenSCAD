//-- Definiciones componentes X, Y y Z
X=0;
Y=1;
Z=2;

//-- Dimensiones de los cubos
A=[30,30,10];
B=[10,10,30];
C=[6,6,10];
D=[3,3,3];

//-- Calcular posición
posB=[0,0,A[Z]/2+B[Z]/2];
posC=posB+[0,0,B[Z]/2+C[Z]/2];
posD=posC+[0,0,C[Z]/2+D[Z]/2];

//-- Poner cubo A
cube(A,center=true);

//-- Poner B encima de A
translate(posB)
    cube(B,center=true);

//-- Poner C encima de B
translate(posC)
    cube(C,center=true);

//-- Poner D encima de C
translate(posD)
    cube(D,center=true);
