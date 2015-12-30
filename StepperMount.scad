/*
Stepper steel mount
*/
module StepperMount (){
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
// Place the stepper mounts
translate ([13,320 ,56]) rotate ([0,180,180])
StepperMount ();

translate ([377,320 ,56]) rotate ([0,180,180])
StepperMount ();

//  the CoreXY drive shafts
color( "Silver", 1 ) {
translate ([38,289 ,66]) rotate ([0,0,180])
cylinder(d=8,h=270, center = false);
translate ([402,289 ,66]) rotate ([0,0,180])
cylinder(d=8,h=270, center = false);
}
