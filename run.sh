#! /usr/bin/env bash

answer_1=$(gzcat ../data-sets/states.tab.gz|grep -v '^#'|cut -f1,6|sort -k2n|head -n1|cut -f1|sed 's/"//g')

answer_2=$(cat ../data-sets/sample.fa|grep -c '>')

answer_3=$(gzcat ../data-sets/cpg.bed.gz|cut -f4|sort|uniq|grep -c 'CpG')

answer_4=$(cat ../data-sets/SP1.fq|grep -c "@cluster")

answer_5=$(cat ../data-sets/hamlet.txt|grep 'bloody'|wc -w)

answer_6=$(cat ../data-sets/sample.fa|grep 'ACT'|wc -m)

answer_7=$(gzcat ../data-sets/genes.hg19.bed.gz|head|awk '{print$4, $3-$2}'|sort -k2n|tail -n1|cut -f1 -d ' ')

answer_8=$(gzcat ../data-sets/genes.hg19.bed.gz|cut -f1|sort|uniq|grep -c 'chr')

answer_9=$(gzcat ../data-sets/peaks.chr22.bed.gz|grep 'CTCF'|grep -v 'CTCFL'|grep -c 'CTCF')

answer_10=$(cat ../data-sets/lamina.bed|grep -v '^#'|awk '{print $1, $3-$2}'|sort -k2n|tail -n1|cut -f1 -d ' ')
echo "answer-1: $answer_1
answer-2: $answer_2
answer-3: $answer_3
answer-4: $answer_4
answer-5: $answer_5
answer-6: $answer_6
answer-7: $answer_7
answer-8: $answer_8
answer-9: $answer_9
answer-10: $answer_10">answer.yml
