/*
NEMA 17 Stepper
*/
$fn=50;
difference (){
union (){
translate ([0,0,-23]){
color( "Black", 1 ) 
difference (){
cube([42,42,30], center = true) ;
      union (){
        difference (){
            rotate ([0,0,45])
            cube([60,60,50], center = true) ;
            rotate ([0,0,45])
            cube([50,50,52], center = true) ;
}}  
    
}

color( "Gainsboro", 1 ) 
difference (){
    union (){
        translate ([0,0,19])
        color( "Gainsboro", 1 ) 
        cube([42,42,8], center = true) ;
        translate ([0,0,-19.5])
        cube([42,42,9], center = true) ;
}
    union (){
        difference (){
            rotate ([0,0,45])
            cube([60,60,50], center = true) ;
            rotate ([0,0,45])
            cube([53.5,53.5,52], center = true) ;
}}}
}

    color( "Gainsboro", 1 ) 
    cylinder (d=22, h=2, center = false);
    color( "LightSlateGray", 1 ) 
    cylinder (d=5, h=24, center = false);
}
translate ([-15.5,-15.5,-10])
cylinder (d=3, h=24, center = false);
translate ([15.5,15.5,-10])
cylinder (d=3, h=24, center = false);
translate ([-15.5,15.5,-10])
cylinder (d=3, h=24, center = false);
translate ([15.5,-15.5,-10])
cylinder (d=3, h=24, center = false);



}