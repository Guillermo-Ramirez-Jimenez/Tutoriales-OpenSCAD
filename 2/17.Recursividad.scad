//-- Ejemplo de figura recursiva
//-- Zigurat, pirámide escalonada

//-- Parámetros
step=3; //-- Altura de cada nivel
dim=5;  //-- Dimensiones último nivel

//-- Módulo recursivo
//-- n: número de niveles
module zigurat(n){
    //-- Terminación: nivel 1 cubo superior
    if(n<=1){
        cube([dim,dim,step],center=true);
    }else{
        //-- Dibujar cubo nivel n
        cube([n*dim,n*dim,step],center=true);
        //-- Seguir con siguiente nivel
        translate([0,0,step])
            zigurat(n-1);
    }
}

//-- Pirámide de 10 niveles
zigurat(10);
