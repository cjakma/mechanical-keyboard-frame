// Create the closer facing of the two straight walls

// Define the wall itself
cube([133.75, 2.5, 15.5]);

// Define constants used for supports that will attach the case to the frame
raftSideLength = 10;
raftHeight = 1;
raftScrewHoleRadius = 1.5;
screwHoleOffset = 4.75;

// Create two rafts (one in at each end) that will be used to secure this part to the steel plate
translate([0,2.5,0]) {
    difference() {
        cube([raftSideLength,raftSideLength,raftHeight]);
        translate([screwHoleOffset,screwHoleOffset,0]) {
            cylinder(h=raftHeight, r=raftScrewHoleRadius);
        }
    }
}

translate([123.75,2.5,0]) {
    difference() {
        cube([raftSideLength,raftSideLength,raftHeight]);
        translate([screwHoleOffset,screwHoleOffset,0]) {
            cylinder(h=raftHeight, r=raftScrewHoleRadius);
        }
    }
}