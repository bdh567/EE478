// This module defines functional coverages of module bsg_mesh_router_decoder_dor_mc
`include "bsg_defines.sv"

module bsg_mesh_router_decoder_dor_mc_cov
    #(parameter `BSG_INV_PARAM(x_cord_width_p )
        , parameter `BSG_INV_PARAM(y_cord_width_p )
        , parameter dims_p = 2
        , parameter dirs_lp = (2*dims_p)+1
        , parameter ruche_factor_X_p=0
        , parameter ruche_factor_Y_p=0
        // XY_order_p = 1 :  X then Y
        // XY_order_p = 0 :  Y then X
        , parameter XY_order_p = 1
        , parameter depopulated_p = 1
        , parameter from_p = {dirs_lp{1'b0}}  // one-hot, indicates which direction is the input coming from.
    
        , parameter debug_p = 1
    )
    (
        input clk_i         // debug only
        , input reset_i     // debug only
        , input mc_x  // multicast x
        , input mc_y  // multicast y
        , input [x_cord_width_p-1:0] x_dirs_i
        , input [y_cord_width_p-1:0] y_dirs_i
    
        , input [x_cord_width_p-1:0] my_x_i
        , input [y_cord_width_p-1:0] my_y_i
    
        , output [dirs_lp-1:0] req_o
    );

    // reset
    covergroup cg_reset @(negedge clk_i);
        coverpoint reset_i;
    endgroup

    // 
endmodule