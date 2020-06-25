
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name stopwatch -dir "F:/2210181014/stopwatch/planAhead_run_2" -part xc3s200ft256-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "F:/2210181014/stopwatch/stopwatch.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {F:/2210181014/stopwatch} }
set_property target_constrs_file "stopwatchpin.ucf" [current_fileset -constrset]
add_files [list {stopwatchpin.ucf}] -fileset [get_property constrset [current_run]]
link_design
