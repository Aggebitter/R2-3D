/*
Mount plates for Aluminium top profiles
Mount plates for CoreXY 
Mount plates for Printhead ED3 v6
*/
use <BultsNuts.scad>


module MountPlate (Bults){       // Aluminium top profiles
difference (){
   
     translate ([1,1,0]) {
     cube ([80,80,2]) ; 
     }  
    
    translate ([81,1,-1]) {
    rotate ([0,0,45]) {
    cube ([160,160,4]) ; 
    }}
    translate ([60,0,-1]) {
    cube ([60,60,4]) ; 
    }
    translate ([0,60,-1]) {
    cube ([60,60,4]) ; 
    }
    translate ([10,10,-1]) 
    cylinder(h = 4, d = 5.2, $fn=50, center = false);
    translate ([10,30,-1]) 
    cylinder(h = 4, d = 5.2, $fn=50, center = false);
    translate ([10,50,-1]) 
    cylinder(h = 4, d = 5.2, $fn=50, center = false);
    translate ([30,10,-1]) 
    cylinder(h = 4, d = 5.2, $fn=50, center = false);
    translate ([50,10,-1]) 
    cylinder(h = 4, d = 5.2, $fn=50, center = false);
    }

  if (Bults) {
 
// Bults for profiles
   translate ([10,10,3]) rotate ([0,180,0])
    M5inv (10);
   translate ([10,30,3]) rotate ([0,180,0])
    M5inv (10);      
   translate ([10,50,3]) rotate ([0,180,0])
    M5inv (10);
   translate ([30,10,3]) rotate ([0,180,0])
    M5inv (10);
   translate ([50,10,3]) rotate ([0,180,0])
    M5inv (10);
// Spring Spacers for Bults profiles      
   translate ([10,10,2]) rotate ([0,0,0])
    M5spacerSpring();
   translate ([10,30,2]) rotate ([0,0,0])
    M5spacerSpring();      
   translate ([10,50,2]) rotate ([0,0,0])
    M5spacerSpring();
   translate ([30,10,2]) rotate ([0,0,0])
    M5spacerSpring();
   translate ([50,10,2]) rotate ([0,0,0])
    M5spacerSpring();      
           
} 
}


module CoreXYPlate (Bults){      // CoreXY 
$fn=50;
 difference (){   
 cube ([72,40,2]);  
  translate ([16,7,0])
  cylinder ( d= 6.5, h=5, center = true) ;
  translate ([56,7,0])
  cylinder ( d= 6.5, h=5, center = true) ;
  translate ([36,10,0])
  cylinder ( d= 5.2, h=5, center = true) ;
  translate ([36,23,0])
  cylinder ( d= 5.2, h=5, center = true) ;
    
 }
 if (Bults) {
// Nuts and Bults for bearings
   translate ([36,10,0]) rotate ([0,0,30])
    M5 (25);
   translate ([36,23,0])
    M5 (25);

// Nuts and Threaded rod for linear bearings 
    translate ([16,7,-10]) 
     M6rod (18); 
    translate ([16,7,2])
     M6spacer (); 
    translate ([16,7,3])
     M6nut ();    
    translate ([56,7,-10]) 
     M6rod (18);
    translate ([56,7,2])
     M6spacer (); 
    translate ([56,7,3])
     M6nut ();   
}
}

module PrinteHeadPlate (Bults){  // Printhead ED3 v6
 $fn=50;
 difference (){   
 cube ([72,54,2]);  
  translate ([16,7,0])
  cylinder ( d= 6.5, h=5, center = true) ;
  translate ([56,7,0])
  cylinder ( d= 6.5, h=5, center = true) ;
     
  translate ([16,47,0])
  cylinder ( d= 6.5, h=5, center = true) ;
  translate ([56,47,0])
  cylinder ( d= 6.5, h=5, center = true) ;  
     
  translate ([36,27,0])
  cylinder ( d= 10, h=5, center = true) ; 
  
  translate ([21,27,0])
  cylinder ( d= 10, h=5, center = true) ;
  translate ([51,27,0])
  cylinder ( d= 10, h=5, center = true) ;
 } 

 if (Bults) {
// Nuts and Threaded rod for linear bearings 
    translate ([16,7,-10]) 
     M6rod (18); 
    translate ([16,7,2])
     M6spacer (); 
    translate ([16,7,3])
     M6nut ();    
    translate ([56,7,-10]) 
     M6rod (18);
    translate ([56,7,2])
     M6spacer (); 
    translate ([56,7,3])
     M6nut (); 
     
    translate ([16,47,-10]) 
     M6rod (18); 
    translate ([16,47,2])
     M6spacer (); 
    translate ([16,47,3])
     M6nut ();    
    translate ([56,47,-10]) 
     M6rod (18);
    translate ([56,47,2])
     M6spacer (); 
    translate ([56,47,3])
     M6nut (); 
     
 //bults for attaching belts  
    translate ([5,21 ,-1]){
     M5 (20); M5spacer(); }
    translate ([5,21 ,2])
     M5spacer();
    translate ([5,21 ,3]) 
     M5nut();
    translate ([5,21 ,6.5]) 
     M5nut(); 
    translate ([5,21 ,10])
     M5spacer();    
    translate ([5,21 ,11])
     M5nut (20); 
    translate ([5,21 ,14.5]) 
     M5nut();     
      
    translate ([5,33 ,-1]){
     M5 (20); M5spacer(); }
    translate ([5,33 ,2])
     M5spacer();
    translate ([5,33 ,3]) 
     M5nut();
    translate ([5,33 ,6.5])
     M5nut ();       
         
    translate ([67,21 ,-1]){
     M5spacer(); M5 (20);} 
    translate ([67,21 ,2])
     M5spacer();
    translate ([67,21 ,3]) 
     M5nut();
    translate ([67,21 ,6.5])
     M5nut ();       

    translate ([67,33 ,-1]){
     M5 (20); M5spacer();} 
    translate ([67,33 ,2])
     M5spacer();
    translate ([67,33 ,3]) 
     M5nut();
    translate ([67,33 ,6.5])
     M5nut ();
    translate ([67,33 ,10])
     M5spacer();     
    translate ([67,33 ,11]) 
     M5nut();     
    translate ([67,33 ,14.5])
     M5nut (20); 
 

  
}    
}





translate ([0,75,0])    MountPlate(1);
translate ([0,0,0])     CoreXYPlate(1);
translate ([0,150,0])   PrinteHeadPlate(1);
