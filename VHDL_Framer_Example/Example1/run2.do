quit -sim;
vcom generator.vhd tb_LFSR.vhd; 
vsim tb_LFSR;
add wave  \
sim:/tb_lfsr/vec \
sim:/tb_lfsr/sin ;
run 2000 ns;