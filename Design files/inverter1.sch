v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -2010 -3420 -1970 -3420 {lab=VIN}
N -2010 -3420 -2010 -3300 {lab=VIN}
N -2010 -3300 -1970 -3300 {lab=VIN}
N -1930 -3390 -1930 -3330 {lab=VOUT}
N -1930 -3360 -1860 -3360 {lab=VOUT}
N -2070 -3360 -2010 -3360 {lab=VIN}
C {vdd.sym} -1930 -3450 0 0 {name=l1 lab=VDD}
C {gnd.sym} -1930 -3270 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -2070 -3360 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {lab_pin.sym} -1860 -3360 2 0 {name=p3 sig_type=std_logic lab=VOUT}
C {sky130_fd_pr/nfet3_01v8.sym} -1950 -3300 0 0 {name=M2
W=1
L=0.15
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} -1950 -3420 0 0 {name=M1
W=1
L=0.15
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/corner.sym} -1770 -3470 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} -1790 -3280 0 0 {name=SPICE only_toplevel=false value=".dc Vin 0 1.8 0.01
.save all"}
C {vsource.sym} -2200 -3410 0 0 {name=VDD value=1.8 savecurrent=false}
C {vdd.sym} -2200 -3440 0 0 {name=l3 lab=VDD}
C {gnd.sym} -2200 -3380 0 0 {name=l4 lab=GND}
C {vsource.sym} -2200 -3290 0 0 {name=VIN value=0 savecurrent=false}
C {gnd.sym} -2200 -3260 0 0 {name=Vin1 lab=GND
value=0}
C {lab_pin.sym} -2200 -3320 2 0 {name=p2 sig_type=std_logic lab=VIN}
