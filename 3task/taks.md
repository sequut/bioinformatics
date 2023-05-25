1. gen (https://trace.ncbi.nlm.nih.gov/Traces/?view=run_browser&acc=SRR24658890&display=download)
2. скрипт называется script.sh для запуска надо ввести: "bash script.sh"
3. samtools flagstat
```text
1385162 + 0 in total (QC-passed reads + QC-failed reads)
0 + 0 secondary
7260 + 0 supplementary
0 + 0 duplicates
1100840 + 0 mapped (79.47% : N/A)
0 + 0 paired in sequencing
0 + 0 read1
0 + 0 read2
0 + 0 properly paired (N/A : N/A)
0 + 0 with itself and mate mapped
0 + 0 singletons (N/A : N/A)
0 + 0 with mate mapped to a different chr
0 + 0 with mate mapped to a different chr (mapQ>=5)
```
4. скрипт показывает OK или not OK, но и без скрипта видно, что 79% явно меньше 90%
6. на данный момент я не смог придумать как зарегистрироваться на aws(в явном виде они не позволяют регистрироваться людям с России и Беларуси)