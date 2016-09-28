# About
The contents of this repo are the building blocks for 3D printing a 'frame' for 
a homemade mechanical keyboard.  This frame will be sandwiched between two 
stainless steel plates that are connected via metal motherboard standoffs and
attached to the plates via 'rafts' that consist of a single screw hole each.

Given a limited printing bed area, the frame will consist of four components - 
a left and right U-shaped end piece that encompasses the corners of the 
keyboard and two intermediary walls that will be placed between the two end
pieces.

The intent of this repo is to store & document the steps necessary for the 
creation of said components.

# Modifying the Design

All source materials were designed using [OpenSCAD](http://www.openscad.org/). 
Opening any of the `.scad` files in this repo can be altered with OpenSCAD.

Once modifications are complete, OpenSCAD should be used to render and export
the updated model as an `.STL` file

# Slicing and Print Settings

All exported `.STL` files were sliced using [Cura](https://ultimaker.com/en/products/cura-software).

The following settings were used:
* Quality
    * Layer Height: 0.1 mm
* Shell
    * Wall Thickness: 0.8 mm
    * Top/Bottom Thickness: 0.8 mm
* Infill
    * Density: 50.0 %
* Material (Note: Used for PLA)
    * Printing Temperature: 195 C
    * Build Plate Temperature: 50 C
    * Diameter: 1.75mm
    * Flow: 100%
    * Enable Retraction: True
* Speed
    * Print Speed: 60 mm/s 
    * Travel Speed: 120 mm/s 
* Cooling
    * Enable Print Cooling: True
* Support
    * Enable Support: True
    * Support Placement: Everywhere
* Build Plate Adhesion
    * Build Plate Adhesion Type: Skirt
