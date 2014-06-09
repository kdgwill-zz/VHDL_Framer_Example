quit -sim;
vcom generator.vhd receiver.vhd ramController.vhd ram.vhd dataValidation.vhd tb_ramIntro.vhd;
vsim tb_ramIntro; 
add wave  \
sim:/tb_ramintro/clock \
sim:/tb_ramintro/reset \
sim:/tb_ramintro/load \
sim:/tb_ramintro/sin \
sim:/tb_ramintro/wr_enable \
sim:/tb_ramintro/enable \
sim:/tb_ramintro/data_Valid \
sim:/tb_ramintro/rec_out \
sim:/tb_ramintro/ctrl_out \
sim:/tb_ramintro/address \
sim:/tb_ramintro/ram_out \
sim:/tb_ramintro/validOffset ; 
radix -decimal;
run 2000 ns;