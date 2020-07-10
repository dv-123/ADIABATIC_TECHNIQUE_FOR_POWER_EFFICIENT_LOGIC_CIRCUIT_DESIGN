* SPICE export by:  S-Edit 16.01
* Export time:      Wed Jul 08 13:34:46 2020
* Design:           Inverter
* Cell:             Cell0
* Interface:        view0
* View:             view0
* View type:        connectivity
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude empty cells: yes
* Exclude .model:   no
* Exclude .end:     no
* Exclude simulator commands:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Users\Dell\Desktop\eda_tanner\Inverter
* Exclude global pins:   no
* Exclude instance locations: no
* Control property name(s): SPICE

********* Simulation Settings - General Section *********

***** Top Level *****
MNMOS_1 Out in Gnd Gnd NMOS W=270n L=180n AS=243f PS=2.34u AD=243f PD=2.34u $ $x=300 $y=-400 $w=400 $h=600
MPMOS_1 Out in Vdd Vdd PMOS W=810n L=180n AS=729f PS=3.42u AD=729f PD=3.42u $ $x=300 $y=400 $w=400 $h=600

********* Simulation Settings - Analysis Section *********
.include "C:\Users\Dell\Desktop\Tanner\model file\BPTM_Models files\180nm.md"
vdd vdd gnd 1.8 
vin in gnd pulse(0 1.8 0 1n 1n 10n 20n)
.tran 1n 100n 
.print tran v(in) v(Out) 
.measure tran delay trig V(in) val=0.9 cross=2 targ V(Out) val=0.9 cross=2
.power vdd 
********* Simulation Settings - Additional SPICE Commands *********

.end

