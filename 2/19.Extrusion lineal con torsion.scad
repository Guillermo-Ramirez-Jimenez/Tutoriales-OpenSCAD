//-- Extrusión lineal con torsión de un rectángulo
translate([-50,0,0])
    linear_extrude(height=50,twist=90,$fn=100)
        square([40,20],center=true);

//-- Extrusión lineal con torsión de un polígono
//-- Triángulo
translate([0,0,0])
    linear_extrude(height=50,twist=120,$fn=100)
        circle(d=40,$fn=3);

//-- Hexágono
translate([50,0,0])
    linear_extrude(height=50,twist=120,$fn=100)
        circle(d=40,$fn=6);

//-- Círculo
translate([100,0,0])
    linear_extrude(height=50,twist=2*360)
        translate([15,0,0])
            circle(d=20,center=true);
