/*
Ballscrew and Ball nut
SFU1204 300mm end machined


*/
$fn=50;
module BallScrew (Zhight){ // Ballscrew and Ball nut
color( "LightGrey", 1 ) {
 
    cylinder (d=8, h=300, center = false);
   
    translate ([0,0,15])
    cylinder (d=9.8, h=16, center = false);
    
    translate ([0,0,31]) 
    cylinder (d=10, h=20, center = false);
    
    translate ([0,0,51]) 
    cylinder (d=12, h=239, center = false);
    
}
// BallNut
color( "Grey", 1 ) {
    translate ([0,0,Zhight]){
    difference () {
     union (){
         cylinder (d=42, h=8, center = false);
         cylinder (d=22, h=18, center = false);
         cylinder (d=21.8, h=35, center = false);
         
     }
        union (){
            difference () {
            cube ([ 50, 50, 20.01], center = true) ;    
            cube ([ 30.5, 43, 20], center = true) ;
        }}
        
        
    
        
         translate ([0,15,]) 
         cylinder (d=5, h=20, center = true);
         translate ([0,-15,]) 
         cylinder (d=5, h=20, center = true);
        
         rotate ([0,0,45]){ translate ([0,15,]) 
         cylinder (d=5, h=20, center = true);
         translate ([0,-15,]) 
         cylinder (d=5, h=20, center = true);
         }
         rotate ([0,0,-45]){ translate ([0,15,]) 
         cylinder (d=5, h=20, center = true);
         translate ([0,-15,]) 
         cylinder (d=5, h=20, center = true);
         }
    
}}}
}

// BallScrew (150);

// Place the ballscrews
translate ([220,305,11]) rotate ([0,0,90])
BallScrew (150);
translate ([65,35,11])   rotate ([0,0,40])
BallScrew (150);
translate ([375,35,11])  rotate ([0,0,-40])
BallScrew (150);