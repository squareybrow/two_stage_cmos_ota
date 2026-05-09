v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 470 -280 480 -280 {lab=VOUT}
N 140 -170 240 -170 {lab=#net1}
N 140 -240 140 -170 {lab=#net1}
N 90 -240 140 -240 {lab=#net1}
N 470 -280 470 -170 {lab=VOUT}
N 430 -280 470 -280 {lab=VOUT}
N 300 -170 470 -170 {lab=VOUT}
C {opamp_scheme.sym} 180 -280 0 0 {name=}
C {vsource.sym} 70 -450 0 0 {name=VDD value=2.5 savecurrent=false}
C {vdd.sym} 70 -480 0 0 {name=l1 lab=VDD}
C {gnd.sym} 70 -420 0 0 {name=l2 lab=0}
C {vsource.sym} 150 -450 0 0 {name=VSS value=-2.5 savecurrent=false}
C {vdd.sym} 150 -480 0 0 {name=l3 lab=VSS}
C {gnd.sym} 150 -420 0 0 {name=l4 lab=0}
C {isource.sym} 220 -450 0 0 {name=I0 value=30u}
C {vdd.sym} 220 -480 0 0 {name=l9 lab=VDD}
C {lab_pin.sym} 220 -420 2 0 {name=p1 sig_type=std_logic lab=I_REF}
C {lab_pin.sym} 260 -350 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 310 -230 0 1 {name=p3 sig_type=std_logic lab=I_REF}
C {lab_pin.sym} 260 -210 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {code.sym} 530 -280 0 0 {name=models only_toplevel=false value=
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
C {code.sym} 670 -280 0 0 {name=parameters only_toplevel=false value=
".param L=1u W1=3.5u W2=3.5u W3=10u W4=10u W5=3u W6=86.6u W7=13u W8=3u Cc=2.5p
"}
C {lab_wire.sym} 480 -280 0 1 {name=p7 sig_type=std_logic lab=VOUT}
C {code_shown.sym} 400 -540 0 0 {name=spice only_toplevel=false value=
"
.control
ac dec 10 1 100MEG
meas ac max_gain_db MAX vdb(VOUT)
meas ac GBW when vdb(VOUT)=0
meas ac PM find vp(VOUT) when vdb(VOUT)=0

let pm_deg=(pm*180/pi)+180
print pm_deg

write tb_opamp_ac_lc.raw
.endc
"}
C {capa.sym} 430 -250 0 0 {name=CL
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 430 -220 0 0 {name=VCM3 lab=0}
C {vsource.sym} 300 -450 0 0 {name=VIN value="DC 1.18 AC 1" savecurrent=false}
C {vdd.sym} 300 -480 0 0 {name=VCM4 lab=VIN}
C {gnd.sym} 300 -420 0 0 {name=VCM5 lab=0}
C {lab_pin.sym} 140 -320 0 0 {name=p5 sig_type=std_logic lab=VIN}
C {capa.sym} 90 -210 2 0 {name=CIN
m=1
value=1t
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 90 -180 0 0 {name=VCM6 lab=0}
C {ind.sym} 270 -170 1 0 {name=L5
m=1
value=1t
footprint=1206
device=inductor}
