xqty = 4;       // Number of slots on x axis
yqty = 3;       // Number of slots on y axis
stepoffset = 5; // mm increasing at each y axis
thick = 2.5;      // thickness of the frame
edge = 15;      // side of the slot
height = 30;    // height of the slot

module slot(thick,edge,yaxis) {     // a single module
        translate([0,0,yaxis*stepoffset])
        difference() {
                cube([edge,edge,height]);
                translate([thick/2,thick/2,thick]) cube([edge-thick,edge-thick, height]);
        }
}

slot(thick, edge, 3);
