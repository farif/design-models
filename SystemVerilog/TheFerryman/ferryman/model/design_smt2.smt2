; SMT-LIBv2 description generated by Yosys 0.9+3981 (git sha1 0e0f8429, gcc 9.3.0-17ubuntu1~20.04 -fPIC -Os)
; yosys-smt2-module ferryman
(declare-sort |ferryman_s| 0)
(declare-fun |ferryman_is| (|ferryman_s|) Bool)
(declare-fun |ferryman#0| (|ferryman_s|) Bool) ; \w
; yosys-smt2-input w 1
; yosys-smt2-wire w 1
(define-fun |ferryman_n w| ((state |ferryman_s|)) Bool (|ferryman#0| state))
(declare-fun |ferryman#1| (|ferryman_s|) Bool) ; \g
; yosys-smt2-input g 1
; yosys-smt2-wire g 1
(define-fun |ferryman_n g| ((state |ferryman_s|)) Bool (|ferryman#1| state))
(declare-fun |ferryman#2| (|ferryman_s|) Bool) ; \clk
; yosys-smt2-input clk 1
; yosys-smt2-wire clk 1
; yosys-smt2-clock clk posedge
(define-fun |ferryman_n clk| ((state |ferryman_s|)) Bool (|ferryman#2| state))
(declare-fun |ferryman#3| (|ferryman_s|) Bool) ; \c
; yosys-smt2-input c 1
; yosys-smt2-wire c 1
(define-fun |ferryman_n c| ((state |ferryman_s|)) Bool (|ferryman#3| state))
(declare-fun |ferryman#4| (|ferryman_s|) (_ BitVec 1)) ; \bank_w
; yosys-smt2-register bank_w 1
; yosys-smt2-wire bank_w 1
(define-fun |ferryman_n bank_w| ((state |ferryman_s|)) Bool (= ((_ extract 0 0) (|ferryman#4| state)) #b1))
(declare-fun |ferryman#5| (|ferryman_s|) (_ BitVec 1)) ; \bank_m
; yosys-smt2-register bank_m 1
; yosys-smt2-wire bank_m 1
(define-fun |ferryman_n bank_m| ((state |ferryman_s|)) Bool (= ((_ extract 0 0) (|ferryman#5| state)) #b1))
(declare-fun |ferryman#6| (|ferryman_s|) (_ BitVec 1)) ; \bank_g
; yosys-smt2-register bank_g 1
; yosys-smt2-wire bank_g 1
(define-fun |ferryman_n bank_g| ((state |ferryman_s|)) Bool (= ((_ extract 0 0) (|ferryman#6| state)) #b1))
(declare-fun |ferryman#7| (|ferryman_s|) (_ BitVec 1)) ; \bank_c
; yosys-smt2-register bank_c 1
; yosys-smt2-wire bank_c 1
(define-fun |ferryman_n bank_c| ((state |ferryman_s|)) Bool (= ((_ extract 0 0) (|ferryman#7| state)) #b1))
(declare-fun |ferryman#8| (|ferryman_s|) (_ BitVec 1)) ; $formal$ferryman.sv:26$4_CHECK
; yosys-smt2-register $formal$ferryman.sv:26$4_CHECK 1
(define-fun |ferryman_n $formal$ferryman.sv:26$4_CHECK| ((state |ferryman_s|)) Bool (= ((_ extract 0 0) (|ferryman#8| state)) #b1))
(declare-fun |ferryman#9| (|ferryman_s|) (_ BitVec 1)) ; $formal$ferryman.sv:10$1_EN
; yosys-smt2-register $formal$ferryman.sv:10$1_EN 1
(define-fun |ferryman_n $formal$ferryman.sv:10$1_EN| ((state |ferryman_s|)) Bool (= ((_ extract 0 0) (|ferryman#9| state)) #b1))
(declare-fun |ferryman#10| (|ferryman_s|) Bool) ; $formal$ferryman.sv:24$3_EN
(declare-fun |ferryman#11| (|ferryman_s|) Bool) ; $formal$ferryman.sv:20$2_EN
; yosys-smt2-cover 0 ferryman.sv:26.12-28.39
(define-fun |ferryman_c 0| ((state |ferryman_s|)) Bool (and (= ((_ extract 0 0) (|ferryman#8| state)) #b1) (= ((_ extract 0 0) (|ferryman#9| state)) #b1))) ; $cover$ferryman.sv:26$36
; yosys-smt2-anyseq ferryman#12 1 $auto$setundef.cc:501:execute$79
(declare-fun |ferryman#12| (|ferryman_s|) (_ BitVec 1)) ; $auto$rtlil.cc:2811:Anyseq$80
(define-fun |ferryman#13| ((state |ferryman_s|)) Bool (distinct (|ferryman#6| state) (|ferryman#7| state))) ; $ne$ferryman.sv:25$30_Y
(define-fun |ferryman#14| ((state |ferryman_s|)) Bool (distinct (|ferryman#6| state) (|ferryman#5| state))) ; $ne$ferryman.sv:24$29_Y
(define-fun |ferryman#15| ((state |ferryman_s|)) (_ BitVec 1) (ite (|ferryman#14| state) (ite (|ferryman#13| state) #b1 #b0) (|ferryman#12| state))) ; $0$formal$ferryman.sv:24$3_CHECK[0:0]$10
(define-fun |ferryman#16| ((state |ferryman_s|)) (_ BitVec 1) (ite (|ferryman#14| state) #b1 #b0)) ; $0$formal$ferryman.sv:24$3_EN[0:0]$11
; yosys-smt2-assume 0 ferryman.sv:24.36-25.38
(define-fun |ferryman_u 0| ((state |ferryman_s|)) Bool (or (= ((_ extract 0 0) (|ferryman#15| state)) #b1) (not (= ((_ extract 0 0) (|ferryman#16| state)) #b1)))) ; $assume$ferryman.sv:24$35
; yosys-smt2-anyseq ferryman#17 1 $auto$setundef.cc:501:execute$77
(declare-fun |ferryman#17| (|ferryman_s|) (_ BitVec 1)) ; $auto$rtlil.cc:2811:Anyseq$78
(define-fun |ferryman#18| ((state |ferryman_s|)) Bool (distinct (|ferryman#4| state) (|ferryman#6| state))) ; $ne$ferryman.sv:21$28_Y
(define-fun |ferryman#19| ((state |ferryman_s|)) Bool (distinct (|ferryman#4| state) (|ferryman#5| state))) ; $ne$ferryman.sv:20$27_Y
(define-fun |ferryman#20| ((state |ferryman_s|)) (_ BitVec 1) (ite (|ferryman#19| state) (ite (|ferryman#18| state) #b1 #b0) (|ferryman#17| state))) ; $0$formal$ferryman.sv:20$2_CHECK[0:0]$8
(define-fun |ferryman#21| ((state |ferryman_s|)) (_ BitVec 1) (ite (|ferryman#19| state) #b1 #b0)) ; $0$formal$ferryman.sv:20$2_EN[0:0]$9
; yosys-smt2-assume 1 ferryman.sv:20.36-21.38
(define-fun |ferryman_u 1| ((state |ferryman_s|)) Bool (or (= ((_ extract 0 0) (|ferryman#20| state)) #b1) (not (= ((_ extract 0 0) (|ferryman#21| state)) #b1)))) ; $assume$ferryman.sv:20$34
(define-fun |ferryman#22| ((state |ferryman_s|)) (_ BitVec 2) (bvadd (concat #b0 (ite (|ferryman#0| state) #b1 #b0)) (concat #b0 (ite (|ferryman#1| state) #b1 #b0)))) ; $add$ferryman.sv:12$14_Y
(define-fun |ferryman#23| ((state |ferryman_s|)) (_ BitVec 3) (bvadd (concat #b0 (|ferryman#22| state)) (concat #b00 (ite (|ferryman#3| state) #b1 #b0)))) ; $add$ferryman.sv:12$15_Y
(define-fun |ferryman#24| ((state |ferryman_s|)) Bool (bvule (|ferryman#23| state) #b001)) ; $0$formal$ferryman.sv:10$1_CHECK[0:0]$6
; yosys-smt2-assume 2 ferryman.sv:10.32-12.28
(define-fun |ferryman_u 2| ((state |ferryman_s|)) Bool (or (|ferryman#24| state) (not true))) ; $assume$ferryman.sv:10$33
(define-fun |ferryman#25| ((state |ferryman_s|)) Bool (and (or  (= ((_ extract 0 0) (|ferryman#4| state)) #b1) false) (or  (= ((_ extract 0 0) (|ferryman#6| state)) #b1) false))) ; $logic_and$ferryman.sv:28$31_Y
(define-fun |ferryman#26| ((state |ferryman_s|)) Bool (and (or  (|ferryman#25| state) false) (or  (= ((_ extract 0 0) (|ferryman#7| state)) #b1) false))) ; $0$formal$ferryman.sv:26$4_CHECK[0:0]$12
(define-fun |ferryman#27| ((state |ferryman_s|)) Bool (not (or  (= ((_ extract 0 0) (|ferryman#5| state)) #b1) false))) ; $0\bank_m[0:0]
(define-fun |ferryman#28| ((state |ferryman_s|)) Bool (= (|ferryman#7| state) (|ferryman#5| state))) ; $eq$ferryman.sv:18$24_Y
(define-fun |ferryman#29| ((state |ferryman_s|)) Bool (and (or  (|ferryman#3| state) false) (or  (|ferryman#28| state) false))) ; $logic_and$ferryman.sv:18$25_Y
(define-fun |ferryman#30| ((state |ferryman_s|)) (_ BitVec 1) (ite (|ferryman#29| state) (ite (|ferryman#27| state) #b1 #b0) (|ferryman#7| state))) ; $auto$rtlil.cc:2218:Mux$89
(define-fun |ferryman#31| ((state |ferryman_s|)) Bool (= (|ferryman#6| state) (|ferryman#5| state))) ; $eq$ferryman.sv:17$21_Y
(define-fun |ferryman#32| ((state |ferryman_s|)) Bool (and (or  (|ferryman#1| state) false) (or  (|ferryman#31| state) false))) ; $logic_and$ferryman.sv:17$22_Y
(define-fun |ferryman#33| ((state |ferryman_s|)) (_ BitVec 1) (ite (|ferryman#32| state) (ite (|ferryman#27| state) #b1 #b0) (|ferryman#6| state))) ; $auto$rtlil.cc:2218:Mux$87
(define-fun |ferryman#34| ((state |ferryman_s|)) Bool (= (|ferryman#4| state) (|ferryman#5| state))) ; $eq$ferryman.sv:16$18_Y
(define-fun |ferryman#35| ((state |ferryman_s|)) Bool (and (or  (|ferryman#0| state) false) (or  (|ferryman#34| state) false))) ; $logic_and$ferryman.sv:16$19_Y
(define-fun |ferryman#36| ((state |ferryman_s|)) (_ BitVec 1) (ite (|ferryman#35| state) (ite (|ferryman#27| state) #b1 #b0) (|ferryman#4| state))) ; $auto$rtlil.cc:2218:Mux$85
(define-fun |ferryman_a| ((state |ferryman_s|)) Bool true)
(define-fun |ferryman_u| ((state |ferryman_s|)) Bool (and
  (|ferryman_u 0| state)
  (|ferryman_u 1| state)
  (|ferryman_u 2| state)
))
(define-fun |ferryman_i| ((state |ferryman_s|)) Bool (and
  (= (= ((_ extract 0 0) (|ferryman#4| state)) #b1) false) ; bank_w
  (= (= ((_ extract 0 0) (|ferryman#5| state)) #b1) false) ; bank_m
  (= (= ((_ extract 0 0) (|ferryman#6| state)) #b1) false) ; bank_g
  (= (= ((_ extract 0 0) (|ferryman#7| state)) #b1) false) ; bank_c
  (= (|ferryman#10| state) false) ; $formal$ferryman.sv:24$3_EN
  (= (|ferryman#11| state) false) ; $formal$ferryman.sv:20$2_EN
  (= (= ((_ extract 0 0) (|ferryman#9| state)) #b1) false) ; $formal$ferryman.sv:10$1_EN
))
(define-fun |ferryman_h| ((state |ferryman_s|)) Bool true)
(define-fun |ferryman_t| ((state |ferryman_s|) (next_state |ferryman_s|)) Bool (and
  (= #b1 (|ferryman#9| next_state)) ; $procdff$68 $formal$ferryman.sv:10$1_EN
  (= (ite (|ferryman#26| state) #b1 #b0) (|ferryman#8| next_state)) ; $procdff$73 $formal$ferryman.sv:26$4_CHECK
  (= (|ferryman#30| state) (|ferryman#7| next_state)) ; $auto$opt_dff.cc:764:run$81 \bank_c
  (= (|ferryman#33| state) (|ferryman#6| next_state)) ; $auto$opt_dff.cc:764:run$82 \bank_g
  (= (ite (|ferryman#27| state) #b1 #b0) (|ferryman#5| next_state)) ; $procdff$66 \bank_m
  (= (|ferryman#36| state) (|ferryman#4| next_state)) ; $auto$opt_dff.cc:764:run$83 \bank_w
)) ; end of module ferryman
; yosys-smt2-topmod ferryman
; end of yosys output
