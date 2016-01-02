/*
Printer Heads
*/

module ED3v6 (){
    $fn=50;
translate ([0,0,2])   // Trim for mount plate
difference() {
    union (){
        
        color( "Blue", 1 ) {
           // 2mm offset for mounting
        translate ([0,0,-14])
        cylinder (d=11, h=1, center=false) ;
        }
        color( "Goldenrod", 1 ) {
        translate ([0,0,-13])
        cylinder (d=8, h=5, center=false) ;       
        translate ([0,0,-8])
        cylinder (d=11, h=6, center=false,$fn=6) ;
        translate ([0,0,-2])
        cylinder (d=9, h=2, center=false) ;
       }   
        color( "White", 1 ) {
        cylinder (d=16, h=4.5, center=false) ;
        cylinder (d=12, h=10, center=false) ;
        translate ([0,0,10])
        cylinder (d=16, h=2.5, center=false) ;
        translate ([0,0,12.5])
        cylinder (d1=8, d2=14, h=30, center=false) ;
        translate ([0,0,14])
        cylinder (d=16, h=1, center=false) ;
        translate ([0,0,16.5])
        cylinder (d=22.5, h=1, center=false) ;        
        translate ([0,0,19])
        cylinder (d=22.5, h=1, center=false) ;        
        translate ([0,0,21.5])
        cylinder (d=22.5, h=1, center=false) ;       
        translate ([0,0,24])
        cylinder (d=22.5, h=1, center=false) ;       
        translate ([0,0,26.5])
        cylinder (d=22.5, h=1, center=false) ;        
        translate ([0,0,29])
        cylinder (d=22.5, h=1, center=false) ;        
        translate ([0,0,31.5])
        cylinder (d=22.5, h=1, center=false) ;         
        translate ([0,0,34])
        cylinder (d=22.5, h=1, center=false) ;     
        translate ([0,0,36.5])
        cylinder (d=22.5, h=1, center=false) ;        
        translate ([0,0,39])
        cylinder (d=22.5, h=1, center=false) ;        
        translate ([0,0,41.5])
        cylinder (d=22.5, h=1, center=false) ;
        translate ([0,0,41.5])
        cylinder (d=3, h=5, center=false) ;
        
        translate ([-8,-4,46])
        cube ([16,20,12]);
    
       }
           color( "Goldenrod", 1 ) {
            translate ([0,0,58])
            cylinder (d=8, h=3, center=false,$fn=6) ;
            translate ([0,0,61])
            cylinder (d1=4,d2=1, h=1.5, center=false) ;
           }
        }
            translate ([0,0,-20])
            cylinder (d1=3,d2=1, h=80, center=false) ;
            translate ([0,0,46])
            cylinder (d=0.3, h=20, center=false) ;
            translate ([-10,6,53]) 
            cube ([30,20,1]);
        
    }  
        color( "Grey", 1 ) {
            translate ([-10,6,53]) rotate ([0,90,0])
            cylinder (d=6, h=21, center=false) ;
        }
 color( "Black", 1 ) { // Cooling fan and mount
   difference (){ 
    union (){
          translate ([-26,-15,14])
          cube ([10,30,30]); 
          translate ([-23.3,-15,21.]) rotate ([0,43,0])
          cube ([10,30,10]);   
        hull (){
          translate ([-26,-15,19])
          cube ([10,30,25]);  
          translate ([0,0,19])
          cylinder (d=26, h=25, center=false) ;
           }
       }
          translate ([0,0,16])rotate ([0,0,315]) 
          cube ([20,20,30]);
   } }       
    }
    
    
ED3v6 ();