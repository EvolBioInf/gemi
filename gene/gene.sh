taxi -r "genitalium G37"
neighbors -t 243273 -o -L complete -r
datasets download genome accession GCF_000027325.1 \
         --include genome,gff3
ls
unzip ncbi_dataset.zip
ls ncbi_dataset/data/GCF_000027325.1/
cp ncbi_dataset/data/GCF_000027325.1/G*.fna genom.fna
cp ncbi_dataset/data/GCF_000027325.1/genomic.gff annotation.gff
head genom.fna
tail genom.fna
cres genom.fna
head -n 20 annotation.gff
grep '^#' annotation.gff
grep -v '^#' annotation.gff
grep -v '^#' annotation.gff |
    cut -f 1-8
grep -v '^#' annotation.gff |
    cut -f 1-8 |
    head
grep -v '^#' annotation.gff |
    cut -f 3 |
    sort |
    uniq -c
cut -f 1-8 annotation.gff |
    grep gene |
    grep -v pseudogene
cut -f 1-8 annotation.gff |
    grep gene |
    wc -l 
cut -f 1-8 annotation.gff |
    grep gene |
    cut -f 4,5,7 > gene.txt
head gene.txt
cutSeq -r 686-1828 genom.fna
cutSeq -r 686-1828 genom.fna |
    translate
awk '{l=$2-$1+1; print l}' gene.txt |
    head
awk '{l=$2-$1+1; print l}' gene.txt |
    sort -n |
    head
awk '{l=$2-$1+1; print l}' gene.txt |
    sort -n |
    tail
awk '{l=$2-$1+1; print l}' gene.txt |
    var
awk '{l=$2-$1+1; print l}' gene.txt |
    histogram |
    plotLine -x "Laenge (bp)" -y "Anzahl"
head -n 1 gene.txt
cat malGene.awk
head -n 1 gene.txt |
    awk -f malGene.awk
head -n 1 gene.txt |
    awk -f malGene.awk |
    plotLine
head -n 1 gene.txt |
    awk -f malGene.awk |
    plotLine -u y -Y "-5:5" -x "Position (bp)"
awk -f malGene.awk gene.txt |
    plotLine -u y -Y "-5:5" -x "Position"
awk '{print $1/1000, $2/1000, $3}' gene.txt |
    head
awk '{print $1/1000, $2/1000, $3}' gene.txt |
    awk -f malGene.awk |
    plotLine -u y -Y "-5:5" -x "Position (kb)"
awk '{print $1/1000, $2/1000, $3}' gene.txt |
    awk -f malGene.awk |
    plotLine -u y -Y "-5:5" -x "Position (kb)" -p genomPlot.eps
gv genomPlot.eps &
cat text.tex
pdflatex text
evince text.pdf &
