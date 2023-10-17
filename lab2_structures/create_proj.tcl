# ---------------------------------------------------------------------------
#            ___  _    __         =        __    ___     __                --   
#           / ._\| |  / /         =       / /   /   |   / . \              --         
#           \ __ | | / /          =      / /   / /| |  / /_ /              --
#         ____. \| |/ /           =     / /__ / /_| | / /_ \               --
#        /______/|___/            =    /____//_/  |_|/_____/               --
#                               =====                                      --
#                                ===                                       --
# ------------------------------  =  ----------------------------------------
#  Copyright © 2023, 2024 - Nguyen Canh Trung
#  (nguyencanhtrung 'at' me 'dot' com)
# 
#  Permission is hereby granted, free of charge, to any person obtaining a
#  copy of this software and associated documentation files (the "Software"),
#  to deal in the Software without restriction, including without limitation
#  the rights to use, copy, modify, merge, publish, distribute, sublicense,
#  and/or sell copies of the Software, and to permit persons to whom the
#  Software is furnished to do so, subject to the following conditions:
# 
#  The above copyright notice and this permission notice shall be included in
#  all copies or substantial portions of the Software.
# 
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
#  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
#  DEALINGS IN THE SOFTWARE.
# 
#  DEPENDENCIES: none
set current_path [file dirname [ file normalize [ info script ] ] ]
puts $current_path

create_project labs . -part xcku040-ffva1156-2-e
set_property board_part xilinx.com:kcu105:part0:1.7 [current_project]

add_files -fileset sources_1 -norecurse [glob ./src/*.sv]
set_property top arith_logic [current_fileset]

exit
