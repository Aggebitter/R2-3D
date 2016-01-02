/*
Linear bearings 
SBR10UU Block and LM10UU bearings
*/
module linearBearing (){
$fn=50;
color( "White", 1 ) {   // SBR10UU Block
translate ([-18,-16,-15]){
difference (){
union (){
    cube ([36,32,8,]);
    translate ([1,0,0])
    cube ([34,32,24,]);
    }
        translate ([18,-1,15]) rotate ([270,0,0])
        cylinder (d=19,h=40, center=false);
        translate ([12,-1,15])
        cube ([12,40,24,]);

        translate ([18,16,15]) rotate ([270,0,90])
        cylinder (d=5.5,h=40, center=false);
    
        translate ([6,5.5,-1]) 
        cylinder (d=4.5,h=11, center=false);
        translate ([30.5,5.5,-1]) 
        cylinder (d=4.5,h=11, center=false);
    
        translate ([6,25.5,-1]) 
        cylinder (d=4.5,h=11, center=false);
        translate ([30.5,25.5,-1]) 
        cylinder (d=4.5,h=11, center=false);
    
    
}}}


    union () {      // LM10UU bearing
      translate ([-18,-14.5,-15]){  
        color( "Grey", 1 ) { 
        difference (){ 
            translate ([18,0,15]) rotate ([270,0,0])
            cylinder (d=19,h=29, center=false);
                translate ([18,-1,15]) rotate ([270,0,0])
                cylinder (d=18,h=32, center=false);
            }}

        
        color( "Black", 1 ) { 
        difference (){  
            translate ([18,0.5,15]) rotate ([270,0,0])
            cylinder (d=18,h=28, center=false);
                translate ([18,-1,15]) rotate ([270,0,0])
                cylinder (d=10,h=32, center=false);
    }}
    
    
    
}}

}

// linearBearing ();