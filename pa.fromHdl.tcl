
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name testing -dir "Z:/Projects/pld-lessons/test-zero/testing/planAhead_run_1" -part xc3s500evq100-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "AND2gate.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {test_verilog.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top AND2gate $srcset
add_files [list {AND2gate.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500evq100-5
