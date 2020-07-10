* SPICE export by:  S-Edit 16.01
* Export time:      Thu Jul 09 18:46:01 2020
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
 $ $x=800 $y=-500 $w=400 $h=600
MNMOS_1 VOut VIn Gnd Gnd NMOS W=270n L=180n AS=243f PS=2.34u AD=243f PD=2.34u $ $x=300 $y=-400 $w=400 $h=600
MPMOS_1 VOut VIn Vdd Vdd PMOS W=810n L=180n AS=729f PS=3.42u AD=729f PD=3.42u $ $x=300 $y=400 $w=400 $h=600

********* Simulation Settings - Analysis Section *********
.include "C:\Users\Dell\Desktop\Tanner\model file\BPTM_Models files\180nm.md"
Vdd vdd gnd 1.8
VIn VIn gnd pulse(0 1.8 8n 2n 2n 8n 20n)
.tran 1n 100n
.print tran v(VIn) v(VOut)
.power Vdd
********* Simulation Settings - Additional SPICE Commands *********

.end

