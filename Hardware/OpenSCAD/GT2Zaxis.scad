/*
GT2 drive Z-Axis

*/

include <GT2_drive.scad>



// Ballscrews
translate ([220,305,18]) rotate ([0,180,0])
GT2_20_8();
translate ([65,35,18])   rotate ([0,180,0])
GT2_20_8();
translate ([375,35,18])  rotate ([0,180,0])
GT2_20_8();
translate ([65,35,46])   rotate ([0,0,0])
GT2_40_10();

// GT2 Belt 970 mm Ballscrews
translate ([0,0,4]){
color( "Black", 1 ) {
difference (){
    hull (){
    translate ([220,305,0]) 
    cylinder (d = 14.5, h = 5, center = false);
    translate ([65,35,0])   
    cylinder (d = 14.5, h = 5, center = false);
    translate ([375,35,0])  
    cylinder (d = 14.5, h = 5, center = false);
    }

        hull (){
        translate ([220,305,-1]) 
        cylinder (d = 12.5, h = 7.5, center = false);
        translate ([65,35,-1])   
        cylinder (d = 12.5, h = 7.5, center = false);
        translate ([375,35,-1])  
        cylinder (d = 12.5, h = 7.5, center = false);
        }
}
}
}

// GT2 Belt 200 mm Ballscrew Stepper
translate ([0,0,56]){
color( "Black", 1 ) {
difference (){
    hull (){
    translate ([65,35,0])   
    cylinder (d = 27, h = 5, center = false);
    translate ([125,53,0]) 
    cylinder (d = 14.5, h = 5, center = false);
    }

        hull (){
        translate ([65,35,-1])   
        cylinder (d = 25, h = 7, center = false);
        translate ([125,53,-1]) 
        cylinder (d = 12.5, h = 7, center = false);
        }
}
}
}

// Stepper translate ([125,53,78])
translate ([125,53,70]) rotate ([0,180,0])
GT2_20_5();