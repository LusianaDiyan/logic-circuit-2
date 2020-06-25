
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name countermod10k -dir "C:/Users/Wafiq/Documents/xilink/countermod10k/planAhead_run_3" -part xc3sd1800acs484-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Wafiq/Documents/xilink/countermod10k/mod10kctr_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Wafiq/Documents/xilink/countermod10k} }
set_property target_constrs_file "mod10kctr_top.ucf" [current_fileset -constrset]
add_files [list {mod10kctr_top.ucf}] -fileset [get_property constrset [current_run]]
link_design
