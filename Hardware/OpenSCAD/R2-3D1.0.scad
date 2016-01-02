
use <AluFrame.scad>
use <CoreXY.scad>
include <StepperMount.scad>
include <ShaftBearing.scad>
include <BallScrew.scad>
include <HeatBed.scad>
include <GT2Zaxis.scad>


// bring the Frame toghether

AluFrame ();
AluFrameMountCorners ();
AluFrameMountPlates ();

translate ([0,340,410]) rotate ([180,0,0]){
AssembleCoreXY ();   
}