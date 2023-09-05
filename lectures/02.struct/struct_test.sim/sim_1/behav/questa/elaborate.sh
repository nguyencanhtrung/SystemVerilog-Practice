#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2022.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Mentor Graphics Questa Advanced Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Tue Sep 05 11:06:07 +07 2023
# SW Build 3671981 on Fri Oct 14 04:59:54 MDT 2022
#
# IP Build 3669848 on Fri Oct 14 08:30:02 MDT 2022
#
# usage: elaborate.sh
#
# ****************************************************************************
bin_path="/opt/Siemens/Questa/20.4/questasim/bin"
set -Eeuo pipefail
source struct_test_elaborate.do 2>&1 | tee elaborate.log
