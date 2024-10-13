echo "give commit message:"
read $commit
git add .

git commit -m $commit
git push origin main

#git status
