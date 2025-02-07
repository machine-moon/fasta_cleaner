# FASTA Cleaner

This project is a custom Snakemake pipeline designed to filter sequences in FASTA files. The pipeline uses `seqkit` version 2.8.2 to filter out any sequences longer than 100 base pairs (bp) and outputs the filtered files into a new directory.

## Project Structure

```
data/
    example.fasta
filtered/
Snakefile
environment.yml
```

## Requirements

- Conda
- Snakemake
- SLURM job scheduler (for running the pipeline in a cluster environment)

## Setup

1. **Clone the repository**:
    ```sh
    git clone https://github.com/machine-moon/fasta_cleaner.git
    cd fasta_cleaner
    ```

2. **Create and activate the Conda environment**:
    ```sh
    conda env create -f environment.yml
    conda activate fasta_cleaner
    ```

## Usage

1. **Place your FASTA files in the `data` directory**.

2. **Run the Snakemake pipeline**:
    ```sh
    snakemake --use-conda
    ```

3. **Submit the pipeline as a SLURM job**:
    ```sh
    sbatch run_snakemake.sh
    ```

    *Note: You can modify the script parameters in `run_snakemake.sh` to suit your SLURM configuration and resource requirements.*

## Files

- **`environment.yml`**: Conda environment configuration file.
- **`data/example.fasta`**: Example FASTA file.
- **`Snakefile`**: Snakemake workflow definition.

## Snakemake Workflow

- **`rule all`**: Specifies the final output files.
- **`rule filter_sequences`**: Filters sequences longer than 100bp using `seqkit`.

## Contact
For any questions or issues, please contact Tarek.

## License

This project is licensed under the terms of the MIT license. See the [LICENSE](LICENSE) file for details.