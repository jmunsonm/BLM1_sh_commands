#PBS -N BLM1_coverm
#PBS -q normal
#PBS -M jmunson-mcgee@bigelow.org
#PBS -m bea
#PBS -l ncpus=190,mem=1000GB,walltime=2:00:00
#PBS -o mnt/scgc/simon/microg2p/Melody/BLM1/sh_scripts/out
#PBS -e mnt/scgc/simon/microg2p/Melody/BLM1/sh_scripts/error

module unload anaconda
module use /mod/scgc/
module load anaconda3
source activate coverm

#Change this path to whatever file you run it from.
cd /mnt/scgc/simon/microg2p/Melody/BLM1/sh_scripts


# Modify the -d (contigs) and the -c(metagenomes) flags and this command should work for coverm (-x) is for the genomes not the metagenomes

coverm genome -d /mnt/scgc/simon/microg2p/Melody/BLM1/Data/SSU_sequences --single /mnt/scgc/simon/microg2p/Melody/BLM1/Data/RNA_reads/*.fastq.gz -x fasta --min-read-percent-identity 95 --min-read-aligned-percent 50 -t 64 -m relative_abundance --output-file /mnt/scgc/simon/microg2p/Melody/BLM1/Analyses/SSU_recruitment/BLM1_16S_recruitment_relative_abundance_reads.tsv --min-covered-fraction 0 
# coverm genome -d /mnt/scgc/simon/microg2p/Melody/BLM1/Data/SSU_sequences --single /mnt/scgc/simon/microg2p/Melody/BLM1/Data/RNA_reads/cDNA1-A01_joined.fastq.gz -x fasta --min-read-percent-identity 95 --min-read-aligned-percent 50 -t 64 -m relative_abundance --output-file /mnt/scgc/simon/microg2p/Melody/BLM1/Analyses/SSU_recruitment/BLM1_cDNA1_16S_recruitment_relative_abundance_reads.tsv --min-covered-fraction 0 
# coverm genome -d /mnt/scgc/simon/microg2p/Melody/BLM1/Data/SSU_sequences --single /mnt/scgc/simon/microg2p/Melody/BLM1/Data/RNA_reads/cDNA2-A01_joined.fastq.gz -x fasta --min-read-percent-identity 95 --min-read-aligned-percent 50 -t 64 -m relative_abundance --output-file /mnt/scgc/simon/microg2p/Melody/BLM1/Analyses/SSU_recruitment/BLM1_cDNA2_16S_recruitment_relative_abundance_reads.tsv --min-covered-fraction 0 
# coverm genome -d /mnt/scgc/simon/microg2p/Melody/BLM1/Data/SSU_sequences --single /mnt/scgc/simon/microg2p/Melody/BLM1/Data/RNA_reads/cDNA3-A01_joined.fastq.gz -x fasta --min-read-percent-identity 95 --min-read-aligned-percent 50 -t 64 -m relative_abundance --output-file /mnt/scgc/simon/microg2p/Melody/BLM1/Analyses/SSU_recruitment/BLM1_cDNA3_16S_recruitment_relative_abundance_reads.tsv --min-covered-fraction 0 
# coverm genome -d /mnt/scgc/simon/microg2p/Melody/BLM1/Data/SSU_sequences --single /mnt/scgc/simon/microg2p/Melody/BLM1/Data/RNA_reads/cDNA4-A01_joined.fastq.gz -x fasta --min-read-percent-identity 95 --min-read-aligned-percent 50 -t 64 -m relative_abundance --output-file /mnt/scgc/simon/microg2p/Melody/BLM1/Analyses/SSU_recruitment/BLM1_cDNA4_16S_recruitment_relative_abundance_reads.tsv --min-covered-fraction 0 
# coverm genome -d /mnt/scgc/simon/microg2p/Melody/BLM1/Data/SSU_sequences --single /mnt/scgc/simon/microg2p/Melody/BLM1/Data/RNA_reads/cDNA6-A01_joined.fastq.gz -x fasta --min-read-percent-identity 95 --min-read-aligned-percent 50 -t 64 -m relative_abundance --output-file /mnt/scgc/simon/microg2p/Melody/BLM1/Analyses/SSU_recruitment/BLM1_cDNA6_16S_recruitment_relative_abundance_reads.tsv --min-covered-fraction 0 
# coverm genome -d /mnt/scgc/simon/microg2p/Melody/BLM1/Data/SSU_sequences --single /mnt/scgc/simon/microg2p/Melody/BLM1/Data/RNA_reads/cDNA9-A01_joined.fastq.gz -x fasta --min-read-percent-identity 95 --min-read-aligned-percent 50 -t 64 -m relative_abundance --output-file /mnt/scgc/simon/microg2p/Melody/BLM1/Analyses/SSU_recruitment/BLM1_cDNA9_16S_recruitment_relative_abundance_reads.tsv --min-covered-fraction 0 

coverm genome -d /mnt/scgc/simon/microg2p/Melody/BLM1/Data/SSU_sequences --single /mnt/scgc/simon/microg2p/Melody/BLM1/Data/RNA_reads/*.fastq.gz -x fasta --min-read-percent-identity 95 --min-read-aligned-percent 50 -t 64 -m reads_per_base --output-file /mnt/scgc/simon/microg2p/Melody/BLM1/Analyses/SSU_recruitment/BLM1_16S_recruitment_reads_per_base_reads.tsv --min-covered-fraction 0 
# coverm genome -d /mnt/scgc/simon/microg2p/Melody/BLM1/Data/SSU_sequences --single /mnt/scgc/simon/microg2p/Melody/BLM1/Data/RNA_reads/cDNA1-A01_joined.fastq.gz -x fasta --min-read-percent-identity 95 --min-read-aligned-percent 50 -t 64 -m reads_per_base --output-file /mnt/scgc/simon/microg2p/Melody/BLM1/Analyses/SSU_recruitment/BLM1_cDNA1_16S_recruitment_reads_per_base_reads.tsv --min-covered-fraction 0 
# coverm genome -d /mnt/scgc/simon/microg2p/Melody/BLM1/Data/SSU_sequences --single /mnt/scgc/simon/microg2p/Melody/BLM1/Data/RNA_reads/cDNA2-A01_joined.fastq.gz -x fasta --min-read-percent-identity 95 --min-read-aligned-percent 50 -t 64 -m reads_per_base --output-file /mnt/scgc/simon/microg2p/Melody/BLM1/Analyses/SSU_recruitment/BLM1_cDNA2_16S_recruitment_reads_per_base_reads.tsv --min-covered-fraction 0 
# coverm genome -d /mnt/scgc/simon/microg2p/Melody/BLM1/Data/SSU_sequences --single /mnt/scgc/simon/microg2p/Melody/BLM1/Data/RNA_reads/cDNA3-A01_joined.fastq.gz -x fasta --min-read-percent-identity 95 --min-read-aligned-percent 50 -t 64 -m reads_per_base --output-file /mnt/scgc/simon/microg2p/Melody/BLM1/Analyses/SSU_recruitment/BLM1_cDNA3_16S_recruitment_reads_per_base_reads.tsv --min-covered-fraction 0 
# coverm genome -d /mnt/scgc/simon/microg2p/Melody/BLM1/Data/SSU_sequences --single /mnt/scgc/simon/microg2p/Melody/BLM1/Data/RNA_reads/cDNA4-A01_joined.fastq.gz -x fasta --min-read-percent-identity 95 --min-read-aligned-percent 50 -t 64 -m reads_per_base --output-file /mnt/scgc/simon/microg2p/Melody/BLM1/Analyses/SSU_recruitment/BLM1_cDNA4_16S_recruitment_reads_per_base_reads.tsv --min-covered-fraction 0 
# coverm genome -d /mnt/scgc/simon/microg2p/Melody/BLM1/Data/SSU_sequences --single /mnt/scgc/simon/microg2p/Melody/BLM1/Data/RNA_reads/cDNA6-A01_joined.fastq.gz -x fasta --min-read-percent-identity 95 --min-read-aligned-percent 50 -t 64 -m reads_per_base --output-file /mnt/scgc/simon/microg2p/Melody/BLM1/Analyses/SSU_recruitment/BLM1_cDNA6_16S_recruitment_reads_per_base_reads.tsv --min-covered-fraction 0 
# coverm genome -d /mnt/scgc/simon/microg2p/Melody/BLM1/Data/SSU_sequences --single /mnt/scgc/simon/microg2p/Melody/BLM1/Data/RNA_reads/cDNA9-A01_joined.fastq.gz -x fasta --min-read-percent-identity 95 --min-read-aligned-percent 50 -t 64 -m reads_per_base --output-file /mnt/scgc/simon/microg2p/Melody/BLM1/Analyses/SSU_recruitment/BLM1_cDNA9_16S_recruitment_reads_per_base_reads.tsv --min-covered-fraction 0 

