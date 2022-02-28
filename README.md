# OpenVarC
OSHW Variable Capacitor based on PCBs

This project intends to find a viable alternative for the variable capacitors for high voltages that got rare in modern electronics, but are still in demand for ham radio operators for various projects. At the moment this project is still in "beta phase" covers only one size of cap and some specs are still to be tested like the max. AC voltage capability. Please consider this while rebuilding a capacitor.

Features:
- Modular
- Uses PCBs and easily available mechanic parts (metric screws, washers & nuts)
- at least 2kV 
- Holes for light barrier to allow automatic centering

Future development:
- different sizes
- measuring max. Voltage capability
- optimizing the center tapped 

On ordering the PCBs:
- Thickness: 0.8mm
- Amount of PCBs: use calculations.ods to calculate the approximate amount of needed stacks and order a bit more. The amount depends on the dielectric properties of the used FR4 material. Milage may vary!

What you need for the large VarCs:
- Stator plate PCBs
- Rotor plate PCBs
- 4x M4 threaded rods of the same length
- 16x M4 Nuts
- M4 Washers (4 between 2 stators)
- 8mm rectangular aluminium extrusion (Axis) Note: Can be a U-shaped extrusion as well
- Cable shoes that fit on the M4 threaded rod
- 3D printed parts:
  - 2x H750.stl
  - 1x H751_1.stl
  - 1x H751_2.stl
- a Saw 

Assembly:
1) Lengthen the rectrangular axis and the 4 threaded rods depending on your need. Calculate some extra length to ensure that you can add a few stacks later if needed
2) put one M4 Nut min. 1cm from the ends of each threaded rod
3) Stack the PCBs the following way:
- Slide stator plate with silk screen showing upside (text/markings) on the four threaded rods
- First stack: put the axis inside the circular center hole of the stator plate
- Slide rotor plate with silk screen showing upside (text/markings) on the Axis
- Slide one washer on each of the threaded rods
- repeat the process with sliding a stator plate on top and ensure that the light barrier hole is aligned with the bottom layers
4) finishing the assembly
- ensure that all outside plates are stator plates
- put 4 M4 Nuts on top of thestack and tighten them carefully
- put the 3D printed parts 751_1 and 751_2 on both ends of the axis. Move the axis so, that the part 751_2 (endcap that prevents axis from going throuh) lies flush with the stator plate
- slide the two 3D printed parts 750 on the ends of the caps. Ensure that the light barrier holes are aligned
- slide the cable shoes on the threaded rods
- tighten with with M4 nuts
