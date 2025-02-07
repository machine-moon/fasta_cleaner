rule all:
    input:
        expand("filtered/{file}", file=glob_wildcards("data/*.fasta").file)

rule filter_sequences:
    input:
        "data/{file}.fasta"
    output:
        "filtered/{file}.fasta"
    shell:
        """
        seqkit seq -m 100 {input} > {output}
        """