/*
 Modeus 20mm corner mount
*/

module Cornermount (){
$fn=50;
    union (){
 difference (){
     
    
    color( "DarkGray", 1 ) {
     cube ([39,39,18]) ; 
}
    
    
    
//  difference starts here  
     translate ([2,2,3]){
    cube ([39,39,18]) ;
     } 
     
  translate ([39,2,-1]){
      rotate ([0,0,45]){
    cube ([55,55,22]) ;
     }}
    
     hull() {
      translate ([9,-3,9]){
      rotate ([270,0,0]){
    cylinder(h = 20, d = 5,  center = false);
     }}    
      translate ([14,-3,9]){
      rotate ([270,0,0]){
    cylinder(h = 20, d = 5,  center = false);
     }}} 
    
     hull() {
      translate ([27,-3,9]){
      rotate ([270,0,0]){
    cylinder(h = 20, d = 5,  center = false);
     }} 
      translate ([32,-3,9]){
      rotate ([270,0,0]){
    cylinder(h = 20, d = 5,  center = false);
     }}}   
     
   rotate ([0,0,90]){
     hull() {
      translate ([9,-3,9]){
      rotate ([270,0,0]){
    cylinder(h = 20, d = 5,  center = false);
     }}    
      translate ([14,-3,9]){
      rotate ([270,0,0]){
    cylinder(h = 20, d = 5,  center = false);
     }}} 
    
     hull() {
      translate ([27,-3,9]){
      rotate ([270,0,0]){
    cylinder(h = 20, d = 5,  center = false);
     }} 
           translate ([32,-3,9]){
      rotate ([270,0,0]){
    cylinder(h = 20, d = 5,  center = false);
     }}}     
 }
    
    
}


// bults
       translate ([12,5,9]){
           rotate ([90,0,0]){
   difference (){ 
     
     union (){
     color( "Silver", 1 ) {
     cylinder(h = 3, d = 8,  center = false); 
     cylinder(h = 12, d = 4,  center = false);          
    }}
    translate ([0,0,-2]){
    cylinder(h = 4, d = 5, $fn=6, center = false);
    
    }
    }
    
    }}
           translate ([30,5,9]){
           rotate ([90,0,0]){
   difference (){ 
     
     union (){
     color( "Silver", 1 ) {
     cylinder(h = 3, d = 8,  center = false); 
     cylinder(h = 12, d = 4,  center = false);          
    }}
    translate ([0,0,-2]){
    cylinder(h = 4, d = 5, $fn=6, center = false);
    
    }
    }   
    }}
           translate ([5,30,9]){
           rotate ([270,0,90]){
   difference (){ 
     
     union (){
     color( "Silver", 1 ) {
     cylinder(h = 3, d = 8,  center = false); 
     cylinder(h = 12, d = 4,  center = false);          
    }}
    translate ([0,0,-2]){
    cylinder(h = 4, d = 5, $fn=6, center = false);
    
    }
    }         
    }}
           translate ([5,12,9]){
           rotate ([270,0,90]){
   difference (){ 
     
     union (){
     color( "Silver", 1 ) {
     cylinder(h = 3, d = 8,  center = false); 
     cylinder(h = 12, d = 4,  center = false);          
    }}
    translate ([0,0,-2]){
    cylinder(h = 4, d = 5, $fn=6, center = false);
    
    }
    }   
    }}
    
    
}
}

/*
placing mounts
*/
translate ([20,1,35]) {
rotate ([90,270,180]){
Cornermount ();
}}
translate ([20,1,105]) {
rotate ([90,270,180]){
Cornermount ();
}}

translate ([420,1,35]) {
rotate ([90,0,180]){
Cornermount ();
}}
translate ([420,1,105]) {
rotate ([90,0,180]){
Cornermount ();
}}

translate ([20,1,300]) {
rotate ([90,180,180]){
Cornermount ();
}}
translate ([420,1,300]) {
rotate ([90,90,180]){
Cornermount ();
}}

translate ([20,339,35]) {
rotate ([90,0,0]){
Cornermount ();
}}

translate ([420,339,35]) {
rotate ([90,270,0]){
Cornermount ();
}}


translate ([20,339,300]) {
rotate ([90,90,0]){
Cornermount ();
}}
translate ([420,339,300]) {
rotate ([90,180,0]){
Cornermount ();
}}


translate ([1,20,105]) {
rotate ([90,0,90]){
Cornermount ();
}}
translate ([1,320,300]) {
rotate ([270,0,270]){
Cornermount ();
}}

translate ([1,20,300]) {
rotate ([90,90,90]){
Cornermount ();
}}
translate ([1,320,105]) {
rotate ([90,270,90]){
Cornermount ();
}}


translate ([439,319,300]) {
rotate ([270,90,90]){
Cornermount ();
}}
translate ([439,20,105]) {
rotate ([270,270,90]){
Cornermount ();
}}
translate ([439,20,300]) {
rotate ([270,0,90]){
Cornermount ();
}}
translate ([439,319,105]) {
rotate ([270,180,90]){
Cornermount ();
}}
