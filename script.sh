#!/bin/bash


git clone https://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@github.com/rubodevops/Lib_task.git
cd Lib_task/
ss -n |grep ESTAB| awk '{print $6}' | cut -d: -f1 -s | sort | uniq -c | sort -nk1 -r > estab-tcp.txt
git config --global user.name "rubodevops"
git config --global user.email "rubodevops@gmail.com"
git add .
git commit -m "autocommit"
git remote set-url origin https://rubodevops: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@github.com/rubodevops/Lib_task.git
git push 
echo "Files pushed to GitHub"
       
