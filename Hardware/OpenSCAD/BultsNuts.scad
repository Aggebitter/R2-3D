/*
DIN Metric standard Bults, Treaded rods, Nuts and Spacers
*/

// Bults
module M6(hight){          // DIN933
 color( "Silver", 1 ) { 

    cylinder ( d= 5.8, h=hight,  $fn=50, center = false) ;
    translate ([0,0,-4]) 
    cylinder ( d= 11, h=4, $fn=6, center = false) ;
 }
}
module M5(hight){          // DIN933
 color( "Silver", 1 ) { 

    cylinder ( d= 4.8, h=hight,  $fn=50, center = false) ;
    translate ([0,0,-3.5]) 
    cylinder ( d= 9, h=3.5, $fn=6, center = false) ;
 }
}

module M5inv(hight){       // DIN912
 color( "Silver", 1 ) { 
  difference (){  
     union (){
    cylinder ( d= 4.8, h=hight,  $fn=50, center = false) ;
    translate ([0,0,-5]) rotate ([0,0,0])
    cylinder ( d= 8, h=5, $fn=50, center = false) ;
     }    
    translate ([0,0,-6]) rotate ([0,0,0])
    cylinder ( d= 4.5, h=4.5, $fn=6, center = false) ;
 }}
}
module M4inv(hight){       // motedis
 color( "Silver", 1 ) { 
  difference (){  
     union (){
    cylinder ( d= 3.8, h=hight,  $fn=50, center = false) ;
    translate ([0,0,-3]) rotate ([0,0,0])
    cylinder ( d= 7, h=3, $fn=50, center = false) ;
     }    
    translate ([0,0,-4]) rotate ([0,0,0])
    cylinder ( d= 2.5, h=3.5, $fn=6, center = false) ;
 }}
}
// Treaded rods
module M6rod(hight){       // DIN
 color( "Silver", 1 ) { 
    cylinder ( d= 5.8, h=hight,  $fn=50, center = false) ;
 }
}

module M5rod(hight){       // DIN
 color( "Silver", 1 ) { 
    cylinder ( d= 4.8, h=hight,  $fn=50, center = false) ;
 }
}

// Nuts
module M6nut(){            // DIN934
 color( "Silver", 1 ) { 
difference (){ 
    cylinder ( d= 11, h=4,  $fn=6, center = false) ;
    translate ([0,0,-1]) 
    cylinder ( d= 5.8, h=6, $fn=50, center = false) ;
 }}
}

module M5nut(){            // DIN934
 color( "Silver", 1 ) { 
difference (){ 
    cylinder ( d= 9, h=3.8,  $fn=6, center = false) ;
    translate ([0,0,-1]) 
    cylinder ( d= 4.8, h=5, $fn=50, center = false) ;
 }}
}

module M5nutNyl (){        // DIN985
 color( "Silver", 1 ) { 
difference (){ 
    union(){
    cylinder ( d= 9, h=3.8,  $fn=6, center = false) ;
    $fn=20;
        translate ([0,0,3])
        sphere(3.9);
        }
    translate ([0,0,-1]) 
    cylinder ( d= 4.8, h=7, $fn=50, center = false) ;
    translate ([0,0,5]) 
    cylinder ( d= 19, h=6, $fn=50, center = false) ;        
        
    }  

 }
}



//Spacers
module M6spacer(){         // DIN125
 color( "Silver", 1 ) { 
difference (){ 
    cylinder ( d= 12, h=1,  $fn=50, center = false) ;
    translate ([0,0,-1]) 
    cylinder ( d= 6.3, h=3, $fn=50, center = false) ;
 }}
}
module M5spacer(){         // DIN125
 color( "Silver", 1 ) { 
difference (){ 
    cylinder ( d= 10, h=1,  $fn=50, center = false) ;
    translate ([0,0,-1]) 
    cylinder ( d= 5.3, h=3, $fn=50, center = false) ;
 }}
}
module M5spacerSpring(){   // DIN
 color( "Silver", 1 ) { 
difference (){ 
    cylinder ( d= 9, h=1,  $fn=50, center = false) ;
    translate ([0,0,-1]) 
    cylinder ( d= 5.3, h=3, $fn=50, center = false) ;
    translate ([0,1.7,-1]) rotate ([45,0,0])
    cube ([10,0.3,10]);
 }}
}
module M5spacerBig(){      // DIN
 color( "Silver", 1 ) { 
difference (){ 
    cylinder ( d= 20, h=1,  $fn=50, center = false) ;
    translate ([0,0,-1]) 
    cylinder ( d= 5.3, h=3, $fn=50, center = false) ;
 }}
}








//Just place them out 

translate ([-20,0,0])
M6 (16);
translate ([-60,0,0])
M6rod (16);
translate ([-20,20,0])
M6nut ();
translate ([-40,20,0])
M6spacer ();


translate ([0,0,0])
M5 (16);
translate ([20,0,0])
M5inv (16);
translate ([40,0,0])
M5rod (16);
translate ([0,20,0])
M5nut ();
translate ([20,20,0])
M5nutNyl ();
translate ([40,20,0])
M5spacer ();
translate ([60,20,0])
M5spacerSpring ();
translate ([80,20,0])
M5spacerBig ();

translate ([0,-20,0])
M4inv (8);

