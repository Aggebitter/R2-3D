/*
Heatbed
*/
include <20x20_Profile.scad>

// Place the alumium frame for the heatbed
    translate ([77,45,188]){ rotate ([270,0,-90])
    translate ([0,0,0])AluProfile(287);}
    
    translate ([66,48,188]){ rotate ([270,0,-30])
    translate ([-10,0,0])AluProfile(290);}
    
    translate ([376,48,188]){ rotate ([270,0,30])
    translate ([-10,0,0])AluProfile(290);}
