
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name stop -dir "D:/demo/pro/stopwatch/stop/planAhead_run_1" -part xc3s200ft256-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/demo/pro/stopwatch/stop/stopwat.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/demo/pro/stopwatch/stop} }
set_property target_constrs_file "stopwat.ucf" [current_fileset -constrset]
add_files [list {stopwat.ucf}] -fileset [get_property constrset [current_run]]
link_design
