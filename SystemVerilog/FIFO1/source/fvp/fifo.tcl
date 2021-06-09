clear -all

# Setting Path
#set ROOT_PATH ..
#set RTL_PATH ${ROOT_PATH}/design
#set PROP_PATH ${ROOT_PATH}/properties


# Verification
analyze -sv fifo_design.sv


# Elaborate Design and Properties
elaborate -top counter

# Analyze property files
#analyze -sv \
#  ${PROP_PATH}/bindings.sva \
#  ${PROP_PATH}/fifo_prop.sva
# analyze -sv09 -req imul_spec.va

# Setting-up Clock and Resets
clock clk
reset rst

# Design info to check complexity
get_design_info

# Prove Properties
#set_max_trace_length 10
provide -all

#set_max_trace_length 50
#set_prove_per_property_time_limit 30s
#set_engine_mode {K I N}
#prove -all

#Report Results
report