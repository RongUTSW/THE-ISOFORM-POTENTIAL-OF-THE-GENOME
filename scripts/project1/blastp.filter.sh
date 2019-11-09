module load blast/2.2.28
wait
blastp -query /project/hackathon/hackers05/shared/project1/output/human.filter.0.fa -db /project/hackathon/hackers05/shared/project1/output/chicken.filter.0.fa -out /project/hackathon/hackers05/shared/project1/output/human_chicken.txt&
blastp -query /project/hackathon/hackers05/shared/project1/output/human.filter.0.fa -db /project/hackathon/hackers05/shared/project1/output/horse.filter.0.fa -out /project/hackathon/hackers05/shared/project1/output/human_horse.txt&
blastp -query /project/hackathon/hackers05/shared/project1/output/human.filter.0.fa -db /project/hackathon/hackers05/shared/project1/output/mouse.filter.0.fa -out /project/hackathon/hackers05/shared/project1/output/human_mouse.txt&
blastp -query /project/hackathon/hackers05/shared/project1/output/human.filter.0.fa -db /project/hackathon/hackers05/shared/project1/output/pig.filter.0.fa -out /project/hackathon/hackers05/shared/project1/output/human_pig.txt&
blastp -query /project/hackathon/hackers05/shared/project1/output/human.filter.0.fa -db /project/hackathon/hackers05/shared/project1/output/platypus.filter.0.fa -out /project/hackathon/hackers05/shared/project1/output/human_platypus.txt&
blastp -query /project/hackathon/hackers05/shared/project1/output/human.filter.0.fa -db /project/hackathon/hackers05/shared/project1/output/rat.filter.0.fa -out /project/hackathon/hackers05/shared/project1/output/human_rat.txt&
blastp -query /project/hackathon/hackers05/shared/project1/output/human.filter.0.fa -db /project/hackathon/hackers05/shared/project1/output/rhesus_macaque.filter.0.fa -out /project/hackathon/hackers05/shared/project1/output/human_rhesus_macaque.txt&
blastp -query /project/hackathon/hackers05/shared/project1/output/human.filter.0.fa -db /project/hackathon/hackers05/shared/project1/output/zebrafish.filter.0.fa -out /project/hackathon/hackers05/shared/project1/output/human_zebrafish.txt&
wait
