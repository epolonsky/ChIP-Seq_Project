# Create the environment from the provided YAML file
mamba env create -f envs/chipseq_env.yaml -n chipseq_env

# Note: If you add new tools to the YAML later, update the environment using:
mamba env update -n chipseq_env -f envs/chipseq_env.yaml

# Running pipeline 
snakemake -s SnakeFile --cores 4 --use-conda 

# Cleanup 
snakemake --cores 1 cleanup

# For Cleaning Environment Errors
rm -rf .snakemake/
