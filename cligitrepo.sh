#! /bin/bash
repoName=$1

while [ -z "$repoName" ]
do
   echo 'Provide a repository name'
   read -r -p $'Repository name:' repoName
done

echo "# $repoName" >> README.md
git init
git add .
git commit -m "First commit"

curl -u sir-papi https://api.github.com/user/repos -d '{"name": "'"$repoName"'", "private":false}'

GIT_URL=$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/repos/sir-papi/"$repoName" | jq -r '.clone_url')

git branch -M main
git remote add origin $GIT_URL
git push -u origin main


# If you don't know what the absolute path of your script is, 
# go to the script directory on your terminal and enter readlink -f newGhRepo.sh. 
# That should return the full path for you. ;)

# One option is to enter the shell name and pass the file as parameter, 
# like: dash ../ger/code/projects/scripts/newGhRepo.sh.
# And the other is to make the file executable by running:
# chmod u+x ../ger/code/projects/scripts/newGhRepo.sh.
# Then you can just execute the file directly by running:
# ../ger/code/projects/scripts/newGhRepo.sh.

# In come bash aliases to solve our problem.
# Aliases are a way bash provides for making names for exact commands we want to run.
# . . .