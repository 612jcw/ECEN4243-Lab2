# Copyright 1991-2007 Mentor Graphics Corporation
# 
# Modification by Oklahoma State University
# Use with Testbench 
# James Stine, 2008
# Go Cowboys!!!!!!
#
# All Rights Reserved.
#
# THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION
# WHICH IS THE PROPERTY OF MENTOR GRAPHICS CORPORATION
# OR ITS LICENSORS AND IS SUBJECT TO LICENSE TERMS.

# Headless version of riscv_single.do - runs without GUI
# Usage: vsim -c -do "do hdl/riscv_single_headless.do"

onbreak {resume}

# create library
if [file exists work] {
    vdel -all
}
vlib work

# compile source files
vlog hdl/riscv_single.sv

# start simulation (console mode, no debugdb)
vsim -voptargs=+acc work.testbench

# Run until simulator stops (when ecall is detected and $stop is called)
run -all

# Exit automatically
quit -f
