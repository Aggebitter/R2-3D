/*
Shaft bearing
self centering 8mm shaft
*/
module ShaftBearing (){
$fn=50;

color( "Silver", 1 )
difference (){
    translate ([0,0,-2.5])
cylinder(d=12,h=10, center = false);
    translate ([0,0,-2.6])
   cylinder(d=8,h=10.2, center = false); 
}

color( "Black", 1 )
difference (){
cylinder(d=19,h=4.8, center = true);
  cylinder(d=12,h=5.1, center = true);
}  
    

color( "Silver", 1 ){
difference (){
    cylinder(d=21,h=5, center = true);    
        cylinder(d=19,h=5.1, center = true);
}}

color( "Grey", 1 ){

difference (){
    cylinder(d=28.5,h=8, center = true);    
        cylinder(d=21,h=8.1, center = true);
}

difference (){
    union (){
        translate ([0,-15,0])  
        cube ([55,5,8] ,center = true);
        translate ([0,-15,0])  
        cube ([28.5,28.5,8] ,center = true);
    }
            cylinder(d=21,h=8.1, center = true);
            translate ([-30,-32.5,-5])  
            cube ([60,15,10] ,center = false);
            translate ([21,-16,0])rotate ([90,0,0])
            cylinder(d=4,h=10, center = true);
            translate ([-21,-16,0])rotate ([90,0,0])
            cylinder(d=4,h=10, center = true);
}}}



// ShaftBearing ();

// Place the shaftbearings Steppers
translate ([38,289,95]) rotate ([0,0,270])
ShaftBearing ();
translate ([38,289,310]) rotate ([0,180,270])
ShaftBearing ();

translate ([402,289,95]) rotate ([0,0,90])
ShaftBearing ();
translate ([402,289,310]) rotate ([0,180,90])
ShaftBearing ();


// Place the shaftbearings Ballscrews
translate ([220,305,25]) rotate ([0,180,180])
ShaftBearing();
translate ([220,305,310]) rotate ([0,180,180])
ShaftBearing();

translate ([65,35,25])  rotate ([0,180,0])
ShaftBearing ();
translate ([65,35,310]) rotate ([0,180,0])
ShaftBearing ();

translate ([375,35,25]) rotate ([0,180,0])
ShaftBearing ();
translate ([375,35,310])rotate ([0,180,0])
ShaftBearing ();