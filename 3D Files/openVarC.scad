//OpenVarc - 3D Files and Assembly
//
//by OE6AHF & OE6MDW
//relesed under the CC-BY-SA 4.0

use_stls = true;
LOD=128;

include <openVarC_parts.scad>



//
// Printable PARTS
//

*H750();		//Top Plate
*H751_1();		//Alignment Disk Open
*H751_2();		//Alignment Disk Endcap

//
// ASSEMBLY
//

assembly();

	
module assembly()
    {
    translate([0,0,5+0+6+pcbStacks*(2*pcbHeight+2*pcbSpace)+pcbHeight])
        {
        H750(); // Top Plate
        H751_2(); // Alignment Disk       
        }
    translate([0,0,11])
		rotate([0,180,0])
        {
        H750(); // Top Plate
        H751_1(); // Alignment Disk       
        }
              
    // VarCo
	translate([0,0,5+0+6])
		P100();
	
    }
    
//
//  PARTS
//

//
// H750 - Top Plate
//

module H750()
    {
    if (use_stls)
        {
        color("orange")
            import("./STL/H750.stl");
        }
    else
        {
        color("darkorange")
        difference()
            {
            union()
                {
                    
                // Outer Ring
                difference()
                    {
                    union()
                        {
                        linear_extrude(height=5)
                            import($fn=128, "openVarC_large.dxf", "Stator");
                        }
                    translate([0,0,-0.01])
                        cylinder($fn=LOD*2, r2=60/2, r1=55/2, h=6);
                    
                    for (i=[0:3])
                        {
                        rotate([0,0,90*i])
                            translate([29,29,-0.5])
                            cylinder($fn=64, r=9.1/2, h=3.05);
                        }
                        
                    }
                //Inner Ring
                translate([0,0,0])
                    cylinder($fn=LOD*2, r2=15/2, r1=20/2, h=5);               
                
                //Bars
                linear_extrude(height=5)
                    polygon(points=[
                        [31*cos(75),31*sin(75)],
                        [31*cos(105),31*sin(105)],

                        [5*cos(105),5*sin(105)],
                        [5*cos(-105),5*sin(-105)],

                        [31*cos(-105),31*sin(-105)],
                        [31*cos(-75),31*sin(-75)],       
       
                        [5*cos(-75),5*sin(-75)],
                        [5*cos(75),5*sin(75)],                    
                        ]);
                    
                }
            translate([0,0,-0.01])
                cylinder($fn=LOD*2, r1=15/2, r2=13/2, h=5.02);          
                         
            rotate([0,0,20])
                translate([0,25,0])
                rotate([-90,0,0])
                cylinder($fn=32,r=2, h=50);
                
                

            }
        }        
    }

//
// H751 - Alignment Disk
//

module H751_1()
    {
    a=0.2;
    if (use_stls)
        {
        color("orange")
            import("./STL/H751_1.stl");
        }
    else
        {
        color("orange")
        difference()
            {
            union()
                {
                    
                // Outer Ring
                translate([0,0,-0.0])
                intersection()
                    {
                    translate([0,0,-0.01])
                        cylinder($fn=LOD*2, r1=15/2-a, r2=13/2-a, h=5.02);
                    translate([0,0,0.0])
                        cylinder(r=16/2,h=5);
                        
                    }
                }
            translate([-8.3/2,-8.3/2,-1])
                cube([8.3,8.3,10-0.0]);
            translate([0,0,-0.5])    
            cylinder($fn=64, r=3, h=8);

            }
        }        
    }

module H751_2()
    {
    a=0.2;
    if (use_stls)
        {
        color("orange")
            import("./STL/H751_2.stl");
        }
    else
        {
        color("orange")
        difference()
            {
            union()
                {
                    
                // Outer Ring
                translate([0,0,-0.0])
                intersection()
                    {
                    translate([0,0,-0.01])
                        cylinder($fn=LOD*2, r1=15/2-a, r2=13/2-a, h=5.02);
                    translate([0,0,0.0])
                        cylinder(r=16/2,h=5);
                        
                    }
                }
            translate([-8.3/2,-8.3/2,-1])
                cube([8.3,8.3,10-5.0]);
            translate([0,0,-0.5])    
            cylinder($fn=64, r=3, h=8);

            }
        }        
    }
        
module mirror_copy(vector)
        {
        children();
        mirror(vector) children();    
            
        }	