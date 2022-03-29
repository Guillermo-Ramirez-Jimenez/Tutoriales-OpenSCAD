//-- Cilindro redondeado en las tapas
module rcylinder(
    r=4,
    h=20,
    center=false,
    both=false,
    $fn=30,
){
    //-- Calcular altura cilindro interior:
    //-- 2 tapas: h-2*r
    //-- 1 tapa: h-r
    hc=(both==true) ? h-2*r : h-r;

    //-- Calcular traslación para centrar el cilindro
    posc=(center==true) ? 0 : h/2;

    //-- Aplicar traslación para el centrado
    translate([0,0,posc]){
        if(both==true){
            //-- Cilindro con ambas tapas redondeadas
            cylinder(r=r,h=hc,center=true,$fn=$fn);
            //-- Esferas
            for(i=[-1,1])
                translate([0,0,i*hc/2])
                    sphere(r=r);
        }else{
            //-- Cilindro con una tapa redondeada
            translate([0,0,-h/2]){
                cylinder(r=r,h=hc,$fn=$fn);
                translate([0,0,hc])
                    sphere(r=r,$fn=$fn);
            }
        }
    }
}

//-- Ejemplos
r=5;
h=30;
center=false;
$fn=30;

//-- Cilindro normal
translate([-3*r,0,0])
    cylinder(r=r,h=h,center=center,$fn=$fn);

//-- Cilindro con tapa superior redondeada
rcylinder(r=r,h=h,both=false,center=center,$fn=$fn);

//-- Cilindro con ambas tapas redondeadas
translate([3*r,0,0])
    rcylinder(r=r,h=h,both=true,center=center,$fn=$fn);
