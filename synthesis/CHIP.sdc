###################################################################

# Created by write_sdc on Fri May 31 10:49:49 2019

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_fanout 6 [current_design]
set_max_area 0
set_load -pin_load 1 [get_ports {data_out_o[7]}]
set_load -pin_load 1 [get_ports {data_out_o[6]}]
set_load -pin_load 1 [get_ports {data_out_o[5]}]
set_load -pin_load 1 [get_ports {data_out_o[4]}]
set_load -pin_load 1 [get_ports {data_out_o[3]}]
set_load -pin_load 1 [get_ports {data_out_o[2]}]
set_load -pin_load 1 [get_ports {data_out_o[1]}]
set_load -pin_load 1 [get_ports {data_out_o[0]}]
create_clock [get_ports clk_i]  -period 20  -waveform {0 10}
set_clock_latency 0.5  [get_clocks clk_i]
set_clock_uncertainty 0.1  [get_clocks clk_i]
set_input_delay -clock clk_i  -max 1  [get_ports clk_i]
set_input_delay -clock clk_i  -max 1  [get_ports rst_n_i]
set_input_delay -clock clk_i  -max 1  [get_ports {address_i[3]}]
set_input_delay -clock clk_i  -max 1  [get_ports {address_i[2]}]
set_input_delay -clock clk_i  -max 1  [get_ports {address_i[1]}]
set_input_delay -clock clk_i  -max 1  [get_ports {address_i[0]}]
set_input_delay -clock clk_i  -max 1  [get_ports {data_in_i[15]}]
set_input_delay -clock clk_i  -max 1  [get_ports {data_in_i[14]}]
set_input_delay -clock clk_i  -max 1  [get_ports {data_in_i[13]}]
set_input_delay -clock clk_i  -max 1  [get_ports {data_in_i[12]}]
set_input_delay -clock clk_i  -max 1  [get_ports {data_in_i[11]}]
set_input_delay -clock clk_i  -max 1  [get_ports {data_in_i[10]}]
set_input_delay -clock clk_i  -max 1  [get_ports {data_in_i[9]}]
set_input_delay -clock clk_i  -max 1  [get_ports {data_in_i[8]}]
set_input_delay -clock clk_i  -max 1  [get_ports {data_in_i[7]}]
set_input_delay -clock clk_i  -max 1  [get_ports {data_in_i[6]}]
set_input_delay -clock clk_i  -max 1  [get_ports {data_in_i[5]}]
set_input_delay -clock clk_i  -max 1  [get_ports {data_in_i[4]}]
set_input_delay -clock clk_i  -max 1  [get_ports {data_in_i[3]}]
set_input_delay -clock clk_i  -max 1  [get_ports {data_in_i[2]}]
set_input_delay -clock clk_i  -max 1  [get_ports {data_in_i[1]}]
set_input_delay -clock clk_i  -max 1  [get_ports {data_in_i[0]}]
set_output_delay -clock clk_i  -min 0.5  [get_ports {data_out_o[7]}]
set_output_delay -clock clk_i  -min 0.5  [get_ports {data_out_o[6]}]
set_output_delay -clock clk_i  -min 0.5  [get_ports {data_out_o[5]}]
set_output_delay -clock clk_i  -min 0.5  [get_ports {data_out_o[4]}]
set_output_delay -clock clk_i  -min 0.5  [get_ports {data_out_o[3]}]
set_output_delay -clock clk_i  -min 0.5  [get_ports {data_out_o[2]}]
set_output_delay -clock clk_i  -min 0.5  [get_ports {data_out_o[1]}]
set_output_delay -clock clk_i  -min 0.5  [get_ports {data_out_o[0]}]
set_drive 1  [get_ports clk_i]
set_drive 1  [get_ports rst_n_i]
set_drive 1  [get_ports {address_i[3]}]
set_drive 1  [get_ports {address_i[2]}]
set_drive 1  [get_ports {address_i[1]}]
set_drive 1  [get_ports {address_i[0]}]
set_drive 1  [get_ports {data_in_i[15]}]
set_drive 1  [get_ports {data_in_i[14]}]
set_drive 1  [get_ports {data_in_i[13]}]
set_drive 1  [get_ports {data_in_i[12]}]
set_drive 1  [get_ports {data_in_i[11]}]
set_drive 1  [get_ports {data_in_i[10]}]
set_drive 1  [get_ports {data_in_i[9]}]
set_drive 1  [get_ports {data_in_i[8]}]
set_drive 1  [get_ports {data_in_i[7]}]
set_drive 1  [get_ports {data_in_i[6]}]
set_drive 1  [get_ports {data_in_i[5]}]
set_drive 1  [get_ports {data_in_i[4]}]
set_drive 1  [get_ports {data_in_i[3]}]
set_drive 1  [get_ports {data_in_i[2]}]
set_drive 1  [get_ports {data_in_i[1]}]
set_drive 1  [get_ports {data_in_i[0]}]