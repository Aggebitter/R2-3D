/*
Mount plate for CoreXY top profile
*/
module MountPlate (){
difference (){
    color( "DarkGray", 1 ) {
     translate ([1,1,0]) {
     cube ([80,80,2]) ; 
     }  
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
    }
    
    


       translate ([10,10,5]){
           rotate ([180,0,0]){
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
       translate ([30,10,5]){
           rotate ([180,0,0]){
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
           translate ([50,10,5]){
           rotate ([180,0,0]){
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
               translate ([10,30,5]){
           rotate ([180,0,0]){
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
               translate ([10,50,5]){
           rotate ([180,0,0]){
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



translate ([0,20,410]) {
    rotate ([270,0,0]) {
MountPlate ();
    }}
translate ([440,20,410]) {
    rotate ([270,90,0]) {
MountPlate ();
    }}    
    
translate ([0,320,410]) {
    rotate ([90,90,0]) {
MountPlate ();
    }}
    translate ([440,320,410]) {
    rotate ([270,90,0]) {
MountPlate ();
    }}
