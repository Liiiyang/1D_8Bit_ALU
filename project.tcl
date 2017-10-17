set projDir "C:/Users/Li Yang/Documents/mojo/ALU8/work/planAhead"
set projName "ALU8"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/mojo_top_0.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/reset_conditioner_1.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/multi_seven_seg_2.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/finitestatemachine_3.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/alu8Bit_4.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/counter_5.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/seven_seg_6.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/decoder_7.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/adder8BitTest_8.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/boolean8BitTest_9.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/shift8BitTest_10.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/compare8BitTest_11.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/adder8Bit_12.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/boole8Bit_13.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/shift8Bit_14.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/compare8Bit_15.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/multiplier8Bit_16.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/adder8Bit_12.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/boole8Bit_13.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/shift8Bit_14.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/adder8Bit_12.v" "C:/Users/Li Yang/Documents/mojo/ALU8/work/verilog/compare8Bit_15.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list  "C:/Program\ Files/Mojo\ IDE/library/components/io_shield.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
