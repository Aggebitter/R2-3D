/*
lib for
20 toothed GT2 belt drive 5mm shaft h =16
20 toothed GT2 belt drive 5mm shaft h =16
40 toothed GT2 belt drive 10mm shaft h =17
*/
module GT2_20_5() { // 20 tothed GT2 belt drive 5mm shaft
$fn=50;
color( "White", 1 ) {
difference (){
    union (){
    cylinder (d = 16, h = 7.5, center = false);
    translate ([0,0,7.5])
    cylinder (d = 12.5, h = 7.5, center = false);
    translate ([0,0,15])
    cylinder (d = 16, h = 1, center = false);
    }
       translate ([0,0,-1])
        cylinder (d = 5, h = 18, center = false); 
}
}
}


module GT2_20_8() { // 20 tothed GT2 belt drive 8mm shaft
$fn=50;
color( "White", 1 ) {
difference (){
    union (){
    cylinder (d = 16, h = 7.5, center = false);
    translate ([0,0,7.5])
    cylinder (d = 12.5, h = 7.5, center = false);
    translate ([0,0,15])
    cylinder (d = 16, h = 1, center = false);
    }
       translate ([0,0,-1])
        cylinder (d = 8, h = 18, center = false); 
}
}

}
module GT2_40_10(){ // 40 tothed GT2 belt drive 10mm shaft
$fn=50;
color( "White", 1 ) {
difference (){
    union (){
    cylinder (d = 18, h = 7, center = false);
    translate ([0,0,7])
    cylinder (d = 29, h = 1, center = false);
    translate ([0,0,8])
    cylinder (d = 25, h = 7, center = false);
    translate ([0,0,15])
    cylinder (d = 29, h = 1, center = false);
    }
       translate ([0,0,-1])
        cylinder (d = 10, h = 18, center = false); 
}
}
}


