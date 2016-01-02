/*
Stepper steel mount
NEMA 17 Stepper
*/
$fn=50;
module StepperMount (){     //Stepper steel mount 
color( "Black", 1 ) {
union (){
difference (){
   
     cube ([50,52,53.5]) ; 
    
     // difference starts here  
   translate ([-1,3,3]) 
     cube ([52,52,53.5]) ; 
    hull() {
        translate ([8,3,13]) rotate ([90,0,0])
        cylinder(d=4.2,h=10, center = true);
            translate ([8,3,42]) rotate ([90,0,0])
        cylinder(d=4.2,h=10, center = true);
       }
    hull() {
        translate ([42,3,13]) rotate ([90,0,0])
        cylinder(d=4.2,h=10, center = true);
        translate ([42,3,42]) rotate ([90,0,0])
        cylinder(d=4.2,h=10, center = true);
    }
        translate ([25,31,-1])
        cylinder(d=22,h=10, center = true);
        translate ([10,46,-1])
        cylinder(d=3.5,h=10, center = true);
        translate ([10,15,-1])
        cylinder(d=3.5,h=10, center = true);
        translate ([41,15,-1])
        cylinder(d=3.5,h=10, center = true);
        translate ([41,46,-1])
        cylinder(d=3.5,h=10, center = true);

}
difference (){
        translate ([0,3,3])
        cube ([3,20,15]) ; 
        translate ([4,3,18]) rotate ([127,0,180])
        cube ([5,20,30]) ; 
}
difference (){
        translate ([47,3,3])
        cube ([3,20,15]) ; 
        translate ([51,3,18]) rotate ([127,0,180])
        cube ([5,20,30]) ; 
}
}
}
}
module NEMA17 (){           //NEMA 17 Stepper
translate ([25,31,3.01]) rotate ([0,180,0]) {
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


}}


// Place the stepper mounts
    translate ([13,320,56]) rotate ([0,180,180]){
    StepperMount ();
    NEMA17 ();}
    translate ([377,320,56]) rotate ([0,180,180]){
    StepperMount ();
    NEMA17 ();}
    translate ([150,22,53.5]) rotate ([0,180,0]){ 
    // 2mm space for tension adjusting plate
    StepperMount ();
    NEMA17 ();}
    
    
    
    
//  the CoreXY drive shafts and copplers
  color( "Silver", 1 ) {
    translate ([38,289,80]) rotate ([0,0,180])
    cylinder(d=8,h=270, center = false);
    translate ([402,289 ,80]) rotate ([0,0,180])
    cylinder(d=8,h=270, center = false);
        
 color( "Silver", 1 ) {
    translate ([38,289 ,60]) rotate ([0,0,180])
    cylinder(d=18,h=25, center = false);
    translate ([402,289 ,60]) rotate ([0,0,180])
    cylinder(d=18,h=25, center = false);   
}}

