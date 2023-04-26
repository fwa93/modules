#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { EMU_ABUNDANCE } from '../../../../../modules/nf-core/emu/abundance/main.nf'

workflow test_emu_abundance {

    input = [
        [ id:'test', single_end:true ], // meta map
        file(params.test_data['sarscov2']['illumina']['test_1_fastq_gz'], checkIfExists: true)
    ]

    EMU_ABUNDANCE ( input )
}


        // file(params.test_data['bacteroides_fragilis']['nanopore']['test_fastq_gz'], checkIfExists: true)
