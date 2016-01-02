/*
 motedis 20x20mm corner mount, www.motedis.com
*/
use <BultsNuts.scad>
module CornerMount(Bults){
$fn=50;
color( "DarkGray", 1 ) {    
    union (){
 difference (){
     
    
    
     cube ([39,39,18]) ; 

    
    
    
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
   
}
}
if (Bults) {

    translate ([2,12,9])rotate ([270,0,90])
    M4inv (8);
    translate ([2,30,9])rotate ([270,0,90])
    M4inv (8);
    translate ([30,2,9])rotate ([90,0,0])
    M4inv (8);
    translate ([12,2,9])rotate ([90,0,0])
    M4inv (8);
}
}



CornerMount (1);



