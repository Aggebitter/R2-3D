include <20x20_Profile.scad>
include <LShaftMount.scad>

module AluFrame (){


// frame vertical
    AluProfile(410);            // South West corner
    translate([420,0,0]) {      // South East corner
    AluProfile(410);
    }
    translate([0,320,0]) {      // North West corner
    AluProfile(410);
    }
    translate([420,320,0]) {    // North East corner   
    AluProfile(410);
    }

// frame horisontal North and South
    translate([20,0,410]) { // Front top
     rotate ([0,90,0]){ 
    AluProfile(400);
    }}

    translate([20,0,320]) { // Front top 2
     rotate ([0,90,0]){ 
    AluProfile(400);
    }}

    translate([20,0,105]) { // Front bottom
     rotate ([0,90,0]){ 
    AluProfile(400);
    }}

    translate([20,0,35]) { // Front bottom 2
     rotate ([0,90,0]){ 
    AluProfile(400);
    }}

    translate([20,320,410]) { // Back top
     rotate ([0,90,0]){ 
    AluProfile(400);
    }}

    translate([20,320,320]) { // Back top 2
     rotate ([0,90,0]){ 
    AluProfile(400);
    }}

    translate([20,320,35]) { // Back bottom
     rotate ([0,90,0]){ 
    AluProfile(400);
    }}


// frame horisontal West and East
    translate([0,20,320]) { // West top
     rotate ([270,0,0]){ 
    AluProfile(300);
    }}

    translate([0,20,105]) { // West bottom
     rotate ([270,0,0]){ 
    AluProfile(300);
    }}

    translate([420,20,320]) { // East Ttop
     rotate ([270,0,0]){ 
    AluProfile(300);
    }}

    translate([420,20,105]) { // East bottom
     rotate ([270,0,0]){ 
    AluProfile(300);
    }}

}


translate ([440,0,410]) rotate ([0,180,0]){
//AluFrame ();
}
// Linear horisontal Shaft mount 
translate ([55,10,20])
HShaftMount (); // shaft center 19mm offset
translate ([385,10,20])
HShaftMount (); // shaft center 19mm offset
translate ([55,330,20])
HShaftMount (); // shaft center 19mm offset
translate ([385,330,20])
HShaftMount (); // shaft center 19mm offset


translate ([55,0,39]) rotate ([270,0,0])
cylinder (d=8, h=340, center = false);
translate ([385,0,39]) rotate ([270,0,0])
cylinder (d=8, h=340, center = false);