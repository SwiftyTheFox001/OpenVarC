//OpenVarc - Hardware Parts
//
//by OE6AHF & OE6MDW
//relesed under the CC-BY-SA 4.0



// Screws
*H103_1(); 			// M3 Screw Lenth 6mm Din 912
*H103_20(); 		// M3 Screw Lenth 20mm Din 912

// Nuts
*H203();			// H203-1 M3 Nut DIN 934
*H206();			// H206-1 M6 Nut DIN 934

// Washers
*H306();			// H206-1 M6 Washer DIN 125


// Shafts / Axis / Cams
*H500_1();			//H500_1 M6_Gear_Shaft
*H510_1();			//8x8mm Hollow Aluminium Extrusion


// Phantoms
*P100();			// Varco Preassembled

*P0001_DIN912(); 	// Cylinder head screw
*P0002_DIN125(); 	// Washer
*P0003_DIN934();	// Nut


// Varco Parameters

pcbHeight = 0.8;
pcbSpace = 0.2;
pcbStacks = 34;


//
// H103-6 M3 Screw Lenth 6mm Din 912
//

module H103_1()
	{
	P0001_DIN912(d=3, l=6, k=3, dk=5.68, s=2.5, t=1.9);
	}


//
// H103-20 M3 Screw Lenth 20mm Din 912
//

module H103_20()
	{
	P0001_DIN912(d=3, l=20, k=3, dk=5.68, s=2.5, t=1.9);
	}


//
// H2032-2 M3 Nut Din 934
//

module H203()
	{
	P0003_DIN934(d=3, m=2.4, e=6.01);
	}


//
// H2032-2 M5 Nut Din 934
//

module H206()
	{
	P0003_DIN934(d=5, m=4, e=8.79);
	}


//
// H206 M5 Washer Din 934
//

module H306()
	{
	P0002_DIN125(d=5.3, d1=10, h=1);
	}

//
//H500_1 M5_Gear_Shaft
//
	
module H500_1()
    {
    color("silver")
    	cylinder($fn=24, r=5/2, h=100);
    }


//8x8mm Hollow Aluminium Extrusion
module H510_1()
	{
	axis_height=pcbStacks*(2*pcbHeight+2*pcbSpace)+pcbHeight+19;
	
	color("grey")
	difference()
		{
		translate([-4,-4,-15])
			cube([8,8,axis_height]);
		translate([-3,-3,-15.1])
			cube([6,6,axis_height+0.2]);			
		}
	}



//VarCo_Stator
module E100_1()
	{
	linear_extrude(height=pcbHeight)
		import($fn=128, "openVarC_large.dxf", "Stator");
	}

//VarCo_Rotor
module E100_2()
	{
	linear_extrude(height=pcbHeight)
		import($fn=128, "openVarC_large.dxf", "Rotor");	
	}


//VarCo Assembled
module P100()
	{
	mirror([0,0,0])
		{
		for (i=[0:pcbStacks-1])
			{
			color("green")
			translate([0,0,i*(2*pcbHeight+2*pcbSpace)])
				E100_1();
				color("lightgreen")
			translate([0,0,(1*pcbHeight+1*pcbSpace)+i*(2*pcbHeight+2*pcbSpace)])
				E100_2();
			}
		color("green")
		translate([0,0,pcbStacks*(2*pcbHeight+2*pcbSpace)])
			E100_1();
		
		//Center Axis
		H510_1();
		
		//Gear Shafts & Nuts
		for (i=[0:3])
			rotate([0,0,i*90])
				{
				translate([29,29,-20])
					H500_1(); //M5 Gear shaft
					
			//Top Nuts	
				translate([29,29,pcbStacks*(2*pcbHeight+2*pcbSpace)+pcbHeight])
					H206();
				translate([29,29,pcbStacks*(2*pcbHeight+2*pcbSpace)+pcbHeight+5])
					H206();
			//Bottom Nuts			
				translate([29,29,-4])
					H206();
				translate([29,29,-9])
					H206();
					
				}
		}	
	}
	
//
// PANTOM MODULES
//
	
module P0001_DIN912(d=1.4, l=10, k=1.4, dk=2.6, s=1.3, t=0.6)
	{
	color("lightgrey")
	translate([0,0,-k])
	difference()
		{
		union()
			{
			cylinder($fn=32, r=dk/2, h=k);
			translate([0,0,0.1])
				cylinder($fn=32, r=d/2, h=k+l-0.1);
			}
		translate([0,0,-0.1])
			cylinder($fn=6, r=s*2/sqrt(3)/2, h=t+0.1);
		}
	}

module P0002_DIN125(d=2.2, d1=5, h=0.3)
	{
	color("lightgrey")
	difference()
		{
		union()
			{
			cylinder($fn=32, r=d1/2, h=h);
			}
		translate([0,0,-0.1])
			cylinder($fn=32, r=d/2, h=h+0.2);
		}
	}

module P0003_DIN934(d=1, m=0.8, e=2.71)
	{
	color("lightgrey")
	difference()
		{
		union()
			{
			cylinder($fn=6, r=e/2, h=m);
			}
		translate([0,0,-0.1])
			cylinder($fn=32, r=d/2, h=m+0.2);
		}
	}	
	
//
// PRIMITITVE FUNCTIONS	
//
	
module copy_rotate(rot=[0,0,90], times=1) 
{ 
    children(); 
    for (i=[1:times])
        rotate(rot*i) children(); 
}
    
module copy_mirror(vec=[0,1,0])
{ 
    children(); 
    mirror(vec) children(); 
}		