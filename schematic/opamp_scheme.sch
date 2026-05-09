v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 440 -350 610 -350 {lab=#net1}
N 440 -350 440 -320 {lab=#net1}
N 400 -320 440 -320 {lab=#net1}
N 530 -170 650 -170 {lab=#net2}
N 650 -210 650 -170 {lab=#net2}
N 530 -170 530 -140 {lab=#net2}
N 400 -170 530 -170 {lab=#net2}
N 400 -210 400 -170 {lab=#net2}
N 240 -230 240 -140 {lab=VBIAS}
N 240 -330 240 -290 {lab=I_REF}
N 870 -290 870 -140 {lab=VOUT}
N 240 -140 280 -140 {lab=VBIAS}
N 280 -140 280 -110 {lab=VBIAS}
N 650 -290 650 -270 {lab=#net3}
N 650 -290 810 -290 {lab=#net3}
N 810 -350 810 -290 {lab=#net3}
N 810 -350 830 -350 {lab=#net3}
N 400 -420 400 -350 {lab=VDD}
N 400 -420 650 -420 {lab=VDD}
N 650 -420 650 -350 {lab=VDD}
N 650 -420 870 -420 {lab=VDD}
N 870 -420 870 -350 {lab=VDD}
N 240 -50 530 -50 {lab=VSS}
N 530 -50 870 -50 {lab=VSS}
N 870 -290 960 -290 {lab=VOUT}
N 870 -320 870 -290 {lab=VOUT}
N 400 -240 420 -240 {lab=VSS}
N 280 -110 490 -110 {lab=VBIAS}
N 530 -110 530 -50 {lab=VSS}
N 870 -110 870 -50 {lab=VSS}
N 630 -240 650 -240 {lab=VSS}
N 240 -110 240 -50 {lab=VSS}
N 400 -320 400 -270 {lab=#net1}
N 650 -320 650 -290 {lab=#net3}
C {vsource.sym} 240 -260 0 0 {name=V1 value=0 savecurrent=false}
C {capa.sym} 840 -290 3 1 {name=C1
m=1
value=\{Cc\}
footprint=1206
device="ceramic capacitor"}
C {opin.sym} 960 -290 0 0 {name=p2 lab=VOUT}
C {ipin.sym} 360 -240 0 0 {name=p3 lab=VIN_1}
C {ipin.sym} 690 -240 2 0 {name=p4 lab=VIN_2}
C {nmos4.sym} 380 -240 0 0 {name=M1 model=N_1u w=W1 l=L del=0 m=1}
C {nmos4.sym} 670 -240 0 1 {name=M2 model=N_1u w=W2 l=L del=0 m=1}
C {pmos4.sym} 420 -350 0 1 {name=M3 model=P_1u w=W3 l=L del=0 m=1}
C {pmos4.sym} 630 -350 0 0 {name=M4 model=P_1u w=W4 l=L del=0 m=1}
C {nmos4.sym} 510 -110 0 0 {name=M5 model=N_1u w=W5 l=L del=0 m=1}
C {pmos4.sym} 850 -350 0 0 {name=M6 model=P_1u w=W6 l=L del=0 m=1}
C {nmos4.sym} 850 -110 0 0 {name=M7 model=N_1u w=W7 l=L del=0 m=1}
C {nmos4.sym} 260 -110 0 1 {name=M8 model=N_1u w=W8 l=L del=0 m=1}
C {ipin.sym} 240 -330 2 0 {name=p1 lab=I_REF}
C {ipin.sym} 400 -420 0 0 {name=p5 lab=VDD}
C {ipin.sym} 870 -50 2 0 {name=p6 lab=VSS}
C {lab_wire.sym} 420 -240 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 630 -240 2 1 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 390 -110 0 0 {name=p9 sig_type=std_logic lab=VBIAS}
C {lab_wire.sym} 830 -110 0 0 {name=p10 sig_type=std_logic lab=VBIAS}
