module light(
    input downstairs,
    input upstairs,
    output stair_light
    // Declare stair light output
);

    assign stair_light = downstairs^upstairs;

endmodule