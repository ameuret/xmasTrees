// use <hull_ex.scad>/* https://hackaday.com/2018/02/13/openscad-tieing-it-together-with-hull/ */
include <BOSL/constants.scad>/* https://github.com/revarbat/BOSL */
use <BOSL/transforms.scad>
use <BOSL/math.scad>
use <BOSL/shapes.scad>
use <BOSL/masks.scad>
// include <Round-Anything/polyround.scad>/* https://learn.cadhub.xyz/docs/round-anything/api-reference */
$fn=0;
$fa=1;
$fs=1;

epsilon = 0.1;
e = epsilon;

treeH = 150;
treeD = 70;

module candle(){
    cyl(d=38, h=18, center=false);
}

module thing(){
    difference(){
        color("white")cyl(d1=treeD, d2=3, h=treeH, center=false);
        cyl(d1=treeD * 0.9, d2=3*0.9, h=treeH*0.9, center=false);
        linear_extrude(height = treeH, center = false, convexity = 10, twist = -400, scale=[0.09, 0.09])
            translate([treeD/2*0.75, 0, 0])
            circle(r = treeD/6, $fn=6);
        zrot(120)linear_extrude(height = treeH, center = false, convexity = 10, twist = -400, scale=[0.09, 0.09])
            translate([treeD/2*0.75, 0, 0])
            circle(r = treeD/6, $fn=6);
        zrot(240)linear_extrude(height = treeH, center = false, convexity = 10, twist = -400, scale=[0.09, 0.09])
            translate([treeD/2*0.75, 0, 0])
            circle(r = treeD/6, $fn=6);
        // up(treeH*0.4)zrot(120)zring(n=3, r=treeD*0.35) yrot(0) sphere(treeD*0.08);
        // up(treeH*0.2)zrot(42)zring(n=3, r=treeD*0.45) yrot(0) sphere(treeD*0.08);
    }

    // Garland
    // color("white") linear_extrude(height = treeH*0.9, center = false, convexity = 10, twist = -500, scale=[0.5, 0.5])
    //     translate([treeD/2*0.55, 0, 0])
    //     circle(r = treeD/10, $fn=4);

    // Trunk
    // color("white") linear_extrude(height = treeH*0.8, center = false, convexity = 10, twist = -400, scale=[0.2, 0.2])
    //     translate([treeD*0.33, 0, 0])
    //     zrot(20)square([treeD/13, treeD/5]);
    //     // circle(r = treeD/10, $fn=4);
    // cyl(d=treeD*0.8, h=3, center=false);
}

thing();
 // up(3)candle();
