// lib for all the bearings used 

module B12x5x5 (){
    $fn=50;
    color( "White", 1 ){
difference (){

    cylinder(d=12,h=5, center = false); 
    cylinder(d=10,h=12, center = true); 
}
difference (){
    union (){
    translate ([0,0,0.5])
    cylinder(d=12,h=4, center = false); 

    translate ([0,0,0])
    cylinder(d=7,h=5, center = false); 
    }
    cylinder(d=5,h=12, center = true);
}

// Spacers 9x5.2x1
difference (){
    translate ([0,0,-1])
    cylinder(d=9,h=1, center = false);  
       translate ([0,0,-1.1])
       cylinder(d=5.2,h=1.2, center = false);
}
difference (){
    translate ([0,0,5])
    cylinder(d=9,h=1, center = false);  
       translate ([0,0,4.9])
       cylinder(d=5.2,h=1.2, center = false);
}

// Spacers 20x5.2x1
difference (){
    translate ([0,0,-2])
    cylinder(d=20,h=1, center = false);  
       translate ([0,0,-2.1])
       cylinder(d=5.2,h=1.2, center = false);
}
difference (){
    translate ([0,0,6])
    cylinder(d=20,h=1, center = false);  
       translate ([0,0,5.9])
       cylinder(d=5.2,h=1.2, center = false);
}


}
}

// B12x5x5 ();