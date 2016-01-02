use <20x20_Profile.scad>
use <Mountplates.scad>
use <CornerMount.scad>
module AluFrame (){             // Places all profiles

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

module AluFrameMountPlates (){  // Mount plates for profiles
translate ([0,20,410]) {
    rotate ([270,0,0]) {
MountPlate (1);
    }}
translate ([440,20,410]) {
    rotate ([270,90,0]) {
MountPlate (1);
    }}    
    
translate ([0,320,410]) {
    rotate ([90,90,0]) {
MountPlate (1);
    }}
    translate ([440,320,410]) {
    rotate ([90,180,0]) {
MountPlate (1);
    }}
}
module AluFrameMountCorners (){ // Mount Corner Mounts
/*
placing mounts
*/
translate ([20,1,35]) {
rotate ([90,270,180]){
CornerMount (1);
}}
translate ([20,1,105]) {
rotate ([90,270,180]){
CornerMount (1);
}}

translate ([420,1,35]) {
rotate ([90,0,180]){
CornerMount (1);
}}
translate ([420,1,105]) {
rotate ([90,0,180]){
CornerMount (1);
}}

translate ([20,1,300]) {
rotate ([90,180,180]){
CornerMount (1);
}}
translate ([420,1,300]) {
rotate ([90,90,180]){
CornerMount (1);
}}

translate ([20,339,35]) {
rotate ([90,0,0]){
CornerMount (1);
}}

translate ([420,339,35]) {
rotate ([90,270,0]){
CornerMount (1);
}}


translate ([20,339,300]) {
rotate ([90,90,0]){
CornerMount (1);
}}
translate ([420,339,300]) {
rotate ([90,180,0]){
CornerMount (1);
}}


translate ([1,20,105]) {
rotate ([90,0,90]){
CornerMount ();
}}
translate ([1,320,300]) {
rotate ([270,0,270]){
CornerMount (1);
}}

translate ([1,20,300]) {
rotate ([90,90,90]){
CornerMount (1);
}}
translate ([1,320,105]) {
rotate ([90,270,90]){
CornerMount (1);
}}


translate ([439,319,300]) {
rotate ([270,90,90]){
CornerMount (1);
}}
translate ([439,20,105]) {
rotate ([270,270,90]){
CornerMount (1);
}}
translate ([439,20,300]) {
rotate ([270,0,90]){
CornerMount ();
}}
translate ([439,319,105]) {
rotate ([270,180,90]){
CornerMount (1);
}}
}

AluFrame ();
AluFrameMountCorners ();
AluFrameMountPlates ();


