/*
Horisontal 10mm Linear shaft mount SK10
Vertical 10mm Linear shaft mount SHF10
*/
module HShaftMount () { // Horisontal Linear shaft mount SK10
$fn=50;
translate ([-21,-7,0]){   
color( "Silver", 1 ) {
difference (){
cube ([42,14,33]);
    
translate ([5,7,-1])
cylinder ( d=5 ,h= 20, center = false) ;
translate ([37,7,-1])
cylinder ( d=5 ,h= 20, center = false) ;

translate ([21,-1,19]) rotate ([270,0,0])
cylinder ( d=10 ,h= 20, center = false) ;

translate ([21,-1,19])
cube ([1,16,33]);    
translate ([-1,-1,6])    
cube ([13,16,33]);
translate ([30,-1,6])    
cube ([13,16,33]);
}
}
}
}
// HShaftMount ();

module VShaftMount () { // Vertical Linear shaft mount SHF10
    $fn=50;
color( "Silver", 1 ) {
difference (){    
  union (){
    hull(){
        translate ([0,0,0])
        cylinder ( d=20 ,h= 7, center = false) ;
        translate ([-16,0,0])
        cylinder ( d=10 ,h= 7, center = false) ;
        translate ([16,0,0])
        cylinder ( d=10 ,h= 7, center = false) ;
    }
        translate ([0,0,0])
        cylinder ( d=20 ,h= 10, center = false) ;
        translate ([-11,7,0]) rotate ([0,0,0])
        cube ([22,7,7]);
        translate ([15,10.5,3.5]) rotate ([0,270,0])
        cylinder ( d=7 ,h= 4, center = false) ;
    }
    
        translate ([0,0,-1])
        cylinder ( d=10 ,h= 20, center = false) ;
        translate ([-16,0,-1])
        cylinder ( d=5 ,h= 10, center = false) ;
        translate ([16,0,-1])
        cylinder ( d=5 ,h= 10, center = false) ;
    
        translate ([-10,10.5,3.5]) rotate ([0,270,0])
        cylinder ( d=4 ,h= 20, center = false) ;
    
        translate ([16.5,10.5,3.5]) rotate ([0,270,0])
        cylinder ( d=4 ,h= 3, $fn=6, center = false) ;
    
        translate ([-0.5,-1,-0.5])
        cube ([1,40,20]);
    
}  
        translate ([2,10.5,3.5]) rotate ([0,270,0])
        cylinder ( d=4 ,h= 3, $fn=50, center = false) ;
}}


// VShaftMount ();