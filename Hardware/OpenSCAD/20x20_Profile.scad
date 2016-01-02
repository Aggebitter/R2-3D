/*
20x20 Aluminium T-slot profile from modeus...
*/



 module AluProfile(Lenght){
color( "Gainsboro", 1 ) {
$fn=50;     
    
union () {     
RealLenght = Lenght / 2 ; // bug in OpenScad ?
    difference (){    
        union (){    // the Aluminium base         
           translate ([1,1,0]){ 
               minkowski(){
                cube([18,18,RealLenght]);
                cylinder(r=1,h=RealLenght);
                }}     
        }
// Difference starts here 
   translate ([10,10,0]){   // center hole
       cube([5,5,Lenght*2+1], true);
    }         
        
   union (){                // first T-Slot South
    translate ([10,2,0]){  
       cube([6,8,Lenght*2+1], true);     
    }
   translate ([10,3,0]){  
       cube([8,2,Lenght*2+1], true);      
  }
     translate ([10,2,0]){  
       cube([12.5,1.6,Lenght*2+1], true);      
  }
   translate ([13.9,3.7,0]){ 
       rotate ([0,0,45]) { 
       cube([2,4.5,Lenght*2+1], true);      
  }}
     translate ([6.1,3.7,0]){ 
       rotate ([0,0,45]) { 
       cube([4.5,2,Lenght*2+1], true);      
  }}    
    }  

   translate ([0,20,0]){    // Second T-Slot North
    mirror ([0,1,0]) { 
   union (){                
    translate ([10,2,0]){  
       cube([6,8,Lenght*2+1], true);     
    }
   translate ([10,3,0]){  
       cube([8,2,Lenght*2+1], true);      
  }
     translate ([10,2,0]){  
       cube([12.5,1.6,Lenght*2+1], true);      
  }
   translate ([13.9,3.7,0]){ 
       rotate ([0,0,45]) { 
       cube([2,4.5,Lenght*2+1], true);      
  }}
     translate ([6.1,3.7,0]){ 
       rotate ([0,0,45]) { 
       cube([4.5,2,Lenght*2+1], true);      
  }}    
    }  
}}

translate ([20,0,0]){ // third and forth T-Slot East West
rotate ([0,0,90]) { 
   union (){                
    translate ([10,2,0]){  
       cube([6,8,Lenght*2+1], true);     
    }
   translate ([10,3,0]){  
       cube([8,2,Lenght*2+1], true);      
  }
     translate ([10,2,0]){  
       cube([12.5,1.6,Lenght*2+1], true);      
  }
   translate ([13.9,3.7,0]){ 
       rotate ([0,0,45]) { 
       cube([2,4.5,Lenght*2+1], true);      
  }}
     translate ([6.1,3.7,0]){ 
       rotate ([0,0,45]) { 
       cube([4.5,2,Lenght*2+1], true);      
  }}    
    } 
   translate ([0,20,0]){    
    mirror ([0,1,0]) { 
   union (){                
    translate ([10,2,0]){  
       cube([6,8,Lenght*2+1], true);     
    }
   translate ([10,3,0]){  
       cube([8,2,Lenght*2+1], true);      
  }
     translate ([10,2,0]){  
       cube([12.5,1.6,Lenght*2+1], true);      
  }
   translate ([13.9,3.7,0]){ 
       rotate ([0,0,45]) { 
       cube([2,4.5,Lenght*2+1], true);      
  }}
     translate ([6.1,3.7,0]){ 
       rotate ([0,0,45]) { 
       cube([4.5,2,Lenght*2+1], true);      
  }}    
    }
}}}}   


  } 
}}}



//AluProfile(10);