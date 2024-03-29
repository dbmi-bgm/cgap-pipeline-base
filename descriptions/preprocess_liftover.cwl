#!/usr/bin/env cwl-runner

cwlVersion: v1.0

class: CommandLineTool

requirements:
  - class: InlineJavascriptRequirement

hints:
  - class: DockerRequirement
    dockerPull: ACCOUNT/granite:VERSION

baseCommand: [python3, /usr/local/bin/preprocess_liftover.py]

inputs:
  - id: vcf
    type: File
    inputBinding:
      prefix: -i
    doc: expect a path to the input uncompressed or gzip-compressed vcf

  - id: sample_names
    type: string[]
    inputBinding:
        prefix: -s
    doc: list of sample IDs

  - id: output_vcf
    type: string
    default: "output.vcf"
    inputBinding:
      prefix: -o
    doc: name of output vcf file

outputs:
  - id: output
    type: File
    outputBinding:
      glob: $(inputs.output_vcf)

doc: |
    run preprocess_liftover.py to validate input VCF file for the liftover step
