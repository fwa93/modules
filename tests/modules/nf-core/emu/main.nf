#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { EMU } from '../../../../modules/nf-core/emu/main.nf'

workflow test_emu {
    
    input = [
        [ id:'test', single_end:true ], // meta map
        file(params.test_data['nanopore']['nanopore']['test_nanopore'], checkIfExists: true)
    ]

    EMU ( input )
}
