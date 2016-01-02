use <20x20_Profile.scad>
use<LShaftMount.scad>
use <LinearBearing.scad>
use <Mountplates.scad>
use <PrinterHeads.scad>
use <GT2_drive.scad>
use <Bearings.scad>
use <BultsNuts.scad>
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
    CoreXYPlate (1);

    translate ([385,100,39]) rotate ([0,90,0])
    linearBearing ();
    translate ([385,140,39]) rotate ([0,90,0])
    linearBearing ();
    translate ([378,156,56]) rotate ([0,0,270])
    CoreXYPlate (1);

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
    PrinteHeadPlate (1); // X72 Y54 Z2
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
    translate ([38,51 ,51]) // Left side Upper
    GT2_20_8(); // GT2
    translate ([39,330 ,60])
    B12x5x5 (); // Bearing
    translate ([401,330 ,60])
    B12x5x5 (); // Bearing
    translate ([401,120 ,60])
    B12x5x5 (); // Bearing
    translate ([52,120 ,60])
    B12x5x5 (); // Bearing

}

module Belt (){         // GT2 Belt Lower
color( "Black", 1 ){  
  difference (){ 
    hull () {
        translate ([38,51 ,60]) // Left side Upper
        cylinder (d=14.5, h=5, center = false);// GT2
        translate ([38,330 ,60])
        cylinder (d=14, h=5, center = false);
        } 
        hull () {
            translate ([38,51 ,59]) // Left side Upper
            cylinder (d=12.5, h=7, center = false);// GT2
            translate ([38,330 ,59])
            cylinder (d=12, h=7, center = false);
        } 
            translate ([38,120,59])
            cube ([10,216,10]);
   } 
difference (){    
   hull () {
        translate ([38,330 ,60])
        cylinder (d=14, h=5, center = false);
        translate ([402,330 ,60])
        cylinder (d=14, h=5, center = false);
        }
        hull () {
            translate ([38,330 ,59])
            cylinder (d=12, h=7, center = false);
            translate ([402,330 ,59])
            cylinder (d=12, h=7, center = false);
            }
            translate ([32,330,59])rotate ([0,0,270])
            cube ([10,377,10]);
    }    
difference (){         
    hull () {    
        translate ([402,330 ,60])
        cylinder (d=14, h=5, center = false);    
        translate ([402,120 ,60])
        cylinder (d=14, h=5, center = false);
        }
        hull () {    
            translate ([402,330 ,59])
            cylinder (d=12, h=7, center = false);    
            translate ([402,120 ,59])
            cylinder (d=12, h=7, center = false);
            } 
            translate ([402,336,59])rotate ([0,0,180])
            cube ([10,400,10]);
}            
}
}








module AssembleCoreXY () {// For final assebly


/*
Linear CoreXY shafts and bearings
*/
Core ();
/*
Drive from stepper shafts
*/
Drive ();
translate ([440,0 ,8])
mirror( [180, 0, 0] ) { //Mirror Drive ();
Drive ();
}


/*
Belts
*/
Belt ();
translate ([440,0 ,8])
mirror( [180, 0, 0] ) {
Belt ();
}
color( "Black", 1 ){  // belt fix due heads not centered
difference (){         
    hull () {    
        translate ([402,120 ,60])
        cylinder (d=14, h=5, center = false);    
        translate ([52,120 ,60])
        cylinder (d=14, h=5, center = false);
        }
        hull () {    
            translate ([402,120 ,59])
            cylinder (d=12, h=7, center = false);    
            translate ([52,120 ,59])
            cylinder (d=12, h=7, center = false);
            } 
            translate ([45,120,59])rotate ([0,0,270])
            cube ([10,157,10]);
            translate ([138,130,59])rotate ([0,0,270])
            cube ([10,270,10]);
} 

    
 difference (){         
    hull () {    
        translate ([389,120 ,68])
        cylinder (d=14, h=5, center = false);    
        translate ([38,120 ,68])
        cylinder (d=14, h=5, center = false);
        }
        hull () {    
            translate ([389,120 ,67])
            cylinder (d=12, h=7, center = false);    
            translate ([38,120 ,67])
            cylinder (d=12, h=7, center = false);
            } 
            translate ([32,130,67])rotate ([0,0,270])
            cube ([10,170,10]);
            translate ([138,120,67])rotate ([0,0,270])
            cube ([10,260,10]);
} 
}




    
/*
bults for attaching bearings to aluminium profile 
*/
{  //bults for attaching bearings to aluminium profile
    translate ([39,330 ,58])
     M5 (40); 
    translate ([39,330 ,78]) 
     M5nut();
  
    
    translate ([401,330 ,58]){
     M5 (40); M5spacer();}
    translate ([401,330 ,78]) 
     M5nut();  
 }
}




AssembleCoreXY ();

