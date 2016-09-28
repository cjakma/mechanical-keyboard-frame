// Create the leftmost component of a mechanical keyboard case

// Define the outermost points of the casing
wallPoints = [
    [0,0,0],
    [125,0,0],
    [125,99.5,0],
    [0,99.5,0],
    [0,0,8.75],
    [125,0,8.75],
    [125,99.5,15.5],
    [0,99.5,15.5]
];

// Define a 2D array containing the point ordering to create the facade of the case
wallFaces = [
  [0,1,2,3],  // bottom
  [4,5,1,0],  // front
  [7,6,5,4],  // top
  [5,6,2,1],  // right
  [6,7,3,2],  // back
  [7,4,0,3]   // left
];

/* Create the left hand side of the casing
 *
 * First, take the difference of the polyhedron the makes up the case with a cube smaller 
 * than the polyhedron with an offset of 2.5mm on the X & Y axes  
 *
 * Second, take the difference of the result and a second cube for the USB port hole
 */
difference(){
    difference() {
        polyhedron(wallPoints, wallFaces);
        translate([2.5,2.5,0]) {
            cube([122.5,94.5,16]);
        }
    }
    translate([83,97,0]) {
        cube([26,2.5,8.5]);
    }
}

// Define constants used for supports that will attach the case to the frame
raftSideLength = 10;
raftHeight = 1;
raftScrewHoleRadius = 1.5;
screwHoleOffset = 4.75;

// Create four rafts (one in each corner) that will be used to secure this part to the steel plate
translate([2.5,2.5,0]) {
    difference() {
        cube([raftSideLength,raftSideLength,raftHeight]);
        translate([screwHoleOffset,screwHoleOffset,0]) {
            cylinder(h=raftHeight, r=raftScrewHoleRadius);
        }
    }
}

translate([115,2.5,0]) {
    difference() {
        cube([raftSideLength,raftSideLength,raftHeight]);
        translate([screwHoleOffset,screwHoleOffset,0]) {
            cylinder(h=raftHeight, r=raftScrewHoleRadius);
        }
    }
}

translate([115,87.5,0]) {
    difference() {
        cube([raftSideLength,raftSideLength,raftHeight]);
        translate([screwHoleOffset,screwHoleOffset,0]) {
            cylinder(h=raftHeight, r=raftScrewHoleRadius);
        }
    }
}

translate([2.5,87.5,0]) {
    difference() {
        cube([raftSideLength,raftSideLength,raftHeight]);
        translate([screwHoleOffset,screwHoleOffset,0]) {
            cylinder(h=raftHeight, r=raftScrewHoleRadius);
        }
    }
}
