import os

DATA_DIR = "data"
FILTERED_DIR = "filtered"

samples = [os.path.splitext(f)[0] for f in os.listdir(DATA_DIR) if f.endswith(".fasta")]

rule all:
    input:
        expand(os.path.join(FILTERED_DIR, "{sample}.filtered.fasta"), sample=samples)

rule filter_sequences:
    input:
        fasta=os.path.join(DATA_DIR, "{sample}.fasta")
    output:
        filtered_fasta=os.path.join(FILTERED_DIR, "{sample}.filtered.fasta")
    shell:
        "seqkit seq -M 100 {input.fasta} > {output.filtered_fasta}"