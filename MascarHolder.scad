xqty = 5;       // Number of slots on x axis
yqty = 4;       // Number of slots on y axis
ystep = 15;     // mm increasing at each y axis
thick = 2.5;    // thickness of the frame
edge = 15;      // side of the slot
height = 30;    // height of the slot

/* a single module */
module slot(thick,edge) {
        difference() {
                cube([edge,edge,height]);
                translate([thick/2,thick/2,thick])
                        cube([edge-thick,edge-thick,height]);
        }
}

/* modules' ladder */
for (i=[0:xqty],ii=[0:yqty]) {
        translate([edge*i,edge*ii,ystep*ii])
        slot(thick,edge);
}

/* back side supports */
module support() {
        cube([edge,edge/3,(yqty)*ystep]);
}
translate([0,yqty*edge,0]) support();
translate([xqty*edge,yqty*edge,0]) support();
