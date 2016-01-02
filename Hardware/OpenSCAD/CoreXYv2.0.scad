include <20x20_Profile.scad>
include <LShaftMount.scad>
include <LinearBearing.scad>
include <Mountplates.scad>
include <PrinterHeads.scad>
include <GT2_drive.scad>
include <Bearings.scad>





module Core (){
// Linear horisontal Shaft mount 
    translate ([55,10,20])
    HShaftMount (); // shaft center 19mm offset
    translate ([385,10,20])
    HShaftMount (); // shaft center 19mm offset
    translate ([55,330,20])
    HShaftMount (); // shaft center 19mm offset
    translate ([385,330,20])
    HShaftMount (); // shaft center 19mm offset

color( "White", 1 ) {  // Y-axis linear shafts
    $fn=50;
    translate ([55,0,39]) rotate ([270,0,0])
    cylinder (d=10, h=340, center = false);
    translate ([385,0,39]) rotate ([270,0,0])
    cylinder (d=10, h=340, center = false);
}

// LinearBearings Y-Axis
    translate ([55,100,39]) rotate ([180,90,0])
    linearBearing ();
    translate ([55,140,39]) rotate ([180,90,0])
    linearBearing ();
    translate ([62,84,56]) rotate ([0,0,90])
    CoreXYPlate ();

    translate ([385,100,39]) rotate ([0,90,0])
    linearBearing ();
    translate ([385,140,39]) rotate ([0,90,0])
    linearBearing ();
    translate ([378,156,56]) rotate ([0,0,270])
    CoreXYPlate ();

// Linear Vertical Shaft mount
    translate ([70,100,39])rotate([0,90,0])rotate ([0,0,140])
    VShaftMount ();
    translate ([70,140,39])rotate([0,90,0])rotate ([0,0,220])
    VShaftMount ();
    
    translate ([370,100,39])rotate([0,270,0])rotate ([0,0,220])
    VShaftMount ();
    translate ([370,140,39])rotate([0,270,0])rotate ([0,0,140])
    VShaftMount ();

color( "White", 1 ) {  // X-axis linear shafts
    $fn=50;
    translate ([70,100,39]) rotate ([0,90,0])
    cylinder (d=10, h=300, center = false);
    translate ([70,140,39]) rotate ([0,90,0])
    cylinder (d=10, h=300, center = false);
}

// LinearBearings X-Axis
    translate ([150,100,39]) rotate ([270,90,0])
    linearBearing ();
    translate ([150,140,39]) rotate ([90,90,0])
    linearBearing ();
    translate ([134,93,56])
    PrinteHeadPlate (); // X72 Y54 Z2
    translate ([190,100,39]) rotate ([270,90,0])
    linearBearing ();
    translate ([190,140,39]) rotate ([90,90,0])
    linearBearing ();

// Printer heads
    translate ([155,120,56]) rotate ([0,0,90])
    ED3v6 ();
    translate ([185,120,56]) rotate ([0,0,90])
    ED3v6 ();



    
    
}

module Drive (){
//  the CoreXY drive 
// GT2 drive
    translate ([38,51 ,40]) // Left side Upper
    GT2_20_8(); // GT2
    translate ([38,330 ,49])
    B12x5x5 (); // Bearing
    translate ([402,330 ,49])
    B12x5x5 (); // Bearing
    translate ([38,113.5 ,49])
    B12x5x5 (); // Bearing
    translate ([402,126.5 ,49])
    B12x5x5 (); // Bearing
    translate ([202,112 ,45]) // Bult, Belt fastener
    cylinder (d=6, h=40, center = false);
    /*
    translate ([402,51 ,59]) // Right side Lower
    GT2_20_8();
    translate ([402,330 ,68])
    B12x5x5 (); // Bearing
    translate ([38,330 ,68])
    B12x5x5 (); // Bearing
    translate ([38,100 ,68])
    B12x5x5 (); // Bearing
    translate ([38,140 ,68])
    B12x5x5 (); // Bearing
    translate ([402,100 ,68])
    B12x5x5 (); // Bearing
    translate ([402,140 ,68])
    B12x5x5 (); // Bearing
    */
}
module Belt (){         // GT2 Belt Lower
color( "Black", 1 ){  
  difference (){ 
    hull () {
        translate ([38,51 ,49]) // Left side Upper
        cylinder (d=14.5, h=5, center = false);// GT2
        translate ([38,330 ,49])
        cylinder (d=14, h=5, center = false);
        } 
        hull () {
            translate ([38,51 ,48]) // Left side Upper
            cylinder (d=12.5, h=7, center = false);// GT2
            translate ([38,330 ,48])
            cylinder (d=12, h=7, center = false);
        } 
            translate ([38,120,48])
            cube ([10,216,10]);
   } 
difference (){    
   hull () {
        translate ([38,330 ,49])
        cylinder (d=14, h=5, center = false);
        translate ([402,330 ,49])
        cylinder (d=14, h=5, center = false);
        }
        hull () {
            translate ([38,330 ,48])
            cylinder (d=12, h=7, center = false);
            translate ([402,330 ,48])
            cylinder (d=12, h=7, center = false);
            }
            translate ([32,330,48])rotate ([0,0,270])
            cube ([10,377,10]);
    }    
difference (){         
    hull () {    
        translate ([402,330 ,49])
        cylinder (d=14, h=5, center = false);    
        translate ([402,120 ,49])
        cylinder (d=14, h=5, center = false);
        }
        hull () {    
            translate ([402,330 ,48])
            cylinder (d=12, h=7, center = false);    
            translate ([402,120 ,48])
            cylinder (d=12, h=7, center = false);
            } 
            translate ([402,336,48])rotate ([0,0,180])
            cube ([10,400,10]);
            
    /*        
    #translate ([202,112 ,50]) // Bult, Belt fastener
    cylinder (d=6, h=40, center = false);
    */
}
}
}

//translate ([0,340,410]) rotate ([180,0,0]) // for final assebly
Core ();


//translate ([0,340,410]) rotate ([180,0,0])
Drive ();
translate ([440,0 ,11])
mirror( [180, 0, 0] ) {
Drive ();
}
//translate ([0,340,410]) rotate ([180,0,0]){
Belt ();
translate ([440,0 ,11])
mirror( [180, 0, 0] ) {
Belt ();
}
//}
