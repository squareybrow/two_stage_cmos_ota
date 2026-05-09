v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 440 -280 450 -280 {lab=VOUT}
N 110 -170 440 -170 {lab=VOUT}
N 110 -240 110 -170 {lab=VOUT}
N 440 -280 440 -170 {lab=VOUT}
N 400 -280 440 -280 {lab=VOUT}
C {opamp_scheme.sym} 150 -280 0 0 {name=}
C {vsource.sym} 70 -450 0 0 {name=VDD value=2.5 savecurrent=false}
C {vdd.sym} 70 -480 0 0 {name=l1 lab=VDD}
C {gnd.sym} 70 -420 0 0 {name=l2 lab=0}
C {vsource.sym} 150 -450 0 0 {name=VSS value=-2.5 savecurrent=false}
C {vdd.sym} 150 -480 0 0 {name=l3 lab=VSS}
C {gnd.sym} 150 -420 0 0 {name=l4 lab=0}
C {isource.sym} 220 -450 0 0 {name=I0 value=30u}
C {vdd.sym} 220 -480 0 0 {name=l9 lab=VDD}
C {lab_pin.sym} 220 -420 2 0 {name=p1 sig_type=std_logic lab=I_REF}
C {lab_pin.sym} 230 -350 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 280 -230 0 1 {name=p3 sig_type=std_logic lab=I_REF}
C {lab_pin.sym} 230 -210 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {code.sym} 350 -480 0 0 {name=models only_toplevel=false value=
".MODEL N_1u NMOS LEVEL  = 3                  

+ TOX    = 200E-10         NSUB   = 1E17            GAMMA  = 0.5          

+ PHI    = 0.7             VTO    = 0.8             DELTA  = 3.0         

+ UO     = 650             ETA    = 3.0E-6          THETA  = 0.1          

+ KP     = 120E-6          VMAX   = 1E5             KAPPA  = 0.3                

+ RSH    = 0               NFS    = 1E12            TPG    = 1                  

+ XJ     = 500E-9          LD     = 100E-9                 

+ CGDO   = 200E-12         CGSO   = 200E-12         CGBO   = 1E-10              

+ CJ     = 400E-6          PB     = 1               MJ     = 0.5           

+ CJSW   = 300E-12         MJSW   = 0.5                                  

*                                                                               

.MODEL P_1u PMOS LEVEL  = 3                  

+ TOX    = 200E-10         NSUB   = 1E17            GAMMA  = 0.6          

+ PHI    = 0.7             VTO    = -0.9            DELTA  = 0.1          

+ UO     = 250             ETA    = 0               THETA  = 0.1         

+ KP     = 40E-6           VMAX   = 5E4             KAPPA  = 1         

+ RSH    = 0               NFS    = 1E12            TPG    = -1                 

+ XJ     = 500E-9          LD     = 100E-9               

+ CGDO   = 200E-12         CGSO   = 200E-12         CGBO   = 1E-10              

+ CJ     = 400E-6          PB     = 1               MJ     = 0.5                

+ CJSW   = 300E-12         MJSW   = 0.5
"}
C {code.sym} 470 -480 0 0 {name=parameters only_toplevel=false value=
".param L=1u W1=3.5u W2=3.5u W3=10u W4=10u W5=3u W6=86.6u W7=13u W8=3u Cc=2.5p
"}
C {lab_wire.sym} 450 -280 0 1 {name=p7 sig_type=std_logic lab=VOUT}
C {code_shown.sym} 590 -500 0 0 {name=spice only_toplevel=false value=
"
.control
save all
op
write tb_opamp.raw
print @m.x1.m1[id]
print @m.x1.m2[id]
print @m.x1.m3[id]
print @m.x1.m4[id]
print @m.x1.m5[id]
print @m.x1.m6[id]
print @m.x1.m7[id]
print @m.x1.m8[id]
print all
.endc
"}
C {vsource.sym} 300 -450 0 0 {name=VIN value=1.18 savecurrent=false}
C {vdd.sym} 300 -480 0 0 {name=VCM4 lab=VIN}
C {gnd.sym} 300 -420 0 0 {name=VCM5 lab=0}
C {lab_pin.sym} 110 -320 0 0 {name=p5 sig_type=std_logic lab=VIN}
