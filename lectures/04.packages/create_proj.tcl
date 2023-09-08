# ------------------------------------------
# Author:   Nguyen Canh Trung
# Email:    trungnc@soc.one
# Date:     2023-09-07 08:54:37
# Filename: create_proj
# Last Modified by:   Nguyen Canh Trung
# Last Modified time: 2023-09-08 10:09:45
# ------------------------------------------
set current_path [file dirname [ file normalize [ info script ] ] ]
puts $current_path

set src_files [list \
    [file normalize "${current_path}/src/functions.sv"] \
    [file normalize "${current_path}/src/tasks.sv"] \
    [file normalize "${current_path}/src/packages.sv"] \
]


create_project lectures . -part xcu200-fsgd2104-2-e
set_property board_part xilinx.com:au200:part0:1.3 [current_project]


set_property SOURCE_SET sources_1 [get_filesets sim_1]
add_files -fileset sim_1 -norecurse $src_files

move_files [get_files  $current_path/src/functions.sv]
# update_compile_order -fileset sources_1
# synth_design -rtl -rtl_skip_mlo -name rtl_1

exit
