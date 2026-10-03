transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog  -work work +incdir+C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code {C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/t1_riscv_cpu.v}
vlog  -work work +incdir+C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code {C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/riscv_cpu.v}
vlog  -work work +incdir+C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code {C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/data_mem.v}
vlog  -work work +incdir+C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components {C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components/reset_ff.v}
vlog  -work work +incdir+C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components {C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components/reg_file.v}
vlog  -work work +incdir+C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components {C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components/mux4.v}
vlog  -work work +incdir+C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components {C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components/mux2.v}
vlog  -work work +incdir+C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components {C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components/main_decoder.v}
vlog  -work work +incdir+C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components {C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components/imm_extend.v}
vlog  -work work +incdir+C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components {C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components/datapath.v}
vlog  -work work +incdir+C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components {C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components/controller.v}
vlog  -work work +incdir+C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components {C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components/alu_decoder.v}
vlog  -work work +incdir+C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components {C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components/alu.v}
vlog  -work work +incdir+C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components {C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/components/adder.v}
vlog  -work work +incdir+C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code {C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/code/instr_mem.v}

vlog  -work work +incdir+C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/.test {C:/Users/KLKis/eYRC_26-27_Logic-Quest/Task_1/Task_1B/t1_riscv_cpu/.test/tb_1b.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb_1b

add wave *
view structure
view signals
run -all
