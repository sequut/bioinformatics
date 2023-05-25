rm -f ./map.sam
bwa index GCF_000005845.2_ASM584v2_genomic.fna
bwa mem GCF_000005845.2_ASM584v2_genomic.fna SRR24658890.fasta > map.sam 
ACC=$(samtools flagstat map.sam | python3 -c 'from sys import stdin; d=stdin.read(); import re; print(re.findall(r"\d+\s+\+\s+\d+\s+mapped\s+\((\d+\.\d+)%", d)[0])')
CHECK=$(python3 -c "print(int(float($ACC) > 90))")

echo $CHECK

if ["$CHECK" -eq "1"]; then
	echo "OK"
else
	echo "not OK"
	exit 1
fi

rm -f ./map.bam
samtools view -S -b ./ali.sam > ./map.bam

rm -f ./map.sorted.bam
samtools sort map.bam  -o map.sorted.bam

freebayes -f ./GCF_000005845.2_ASM584v2_genomic.fna ./map.sorted.bam > v.vcf
