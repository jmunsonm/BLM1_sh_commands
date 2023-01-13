### NOTE: In order to run this script you MUST have a nextflow.config file in the same directory as where the script is submitted from.
### Either copy the .config file to the output directory or to the folder where the sh_file is located


#!/bin/bash
## set name of PBS job
#PBS -N BLM1_GORG_DNA
## set the queue
#PBS -M jmunson-mcgee@bigelow.org
#PBS -m bea
#PBS -q normal
#PBS -l walltime=72:00:00
#PBS -l mem=1000G
#PBS -l ncpus=190
#PBS -j oe
#PBS -o /mnt/scgc/simon/microg2p/Melody/BLM1/sh_scripts/out/BLM1_GORG_DNA.OU
#PBS -e /mnt/scgc/simon/microg2p/Melody/BLM1/sh_scripts/out/BLM1_GORG_DNA.ER


module unload anaconda; module load anaconda # To get anaconda2
module load singularity
cd /mnt/scgc/simon/microg2p/Melody/BLM1/Analyses/RNA_GORG_recruit

nextflow run BigelowLab/gorg-classifier \
-profile charlie \
--seqs '/mnt/scgc/simon/microg2p/Melody/BLM1/Data/RNA_reads/*.fastq.gz' \
--mode local \
--nodes /mnt/scgc/scgc_nfs/ref/gorg_classifier_2022/blm1/nodes.dmp \
--names /mnt/scgc/scgc_nfs/ref/gorg_classifier_2022/blm1/names.dmp \
--fmi /mnt/scgc/scgc_nfs/ref/gorg_classifier_2022/blm1/blm1_v_gtdb_R207.fmi \
--annotations /mnt/scgc/scgc_nfs/ref/gorg_classifier_2022/blm1/blm1_v_gtdb_R207.annotations.tsv \
--cpus 190 \
--outdir /mnt/scgc/simon/microg2p/Melody/BLM1/Analyses/RNA_GORG_recruit