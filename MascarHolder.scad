xqty = 5;       // Number of slots on x axis
yqty = 4;       // Number of slots on y axis
stepoffset = 15; // mm increasing at each y axis
thick = 2.5;      // thickness of the frame
edge = 15;      // side of the slot
height = 30;    // height of the slot

module slot(thick,edge) {     // a single module
        difference() {
                cube([edge,edge,height]);
                translate([thick/2,thick/2,thick]) cube([edge-thick,edge-thick, height]);
        }
}

for (i=[0:xqty], ii=[0:yqty]) {
        translate([edge*i,edge*ii,stepoffset*ii])
        slot(thick, edge);
}
