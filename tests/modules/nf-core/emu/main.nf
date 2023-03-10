#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { EMU } from '../../../../modules/nf-core/emu/main.nf'

workflow test_emu {
    
    input = [
        [ id:'test', single_end:false ], // meta map
        file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true)
    ]

    EMU ( input )
}
