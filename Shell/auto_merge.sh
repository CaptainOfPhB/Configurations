#! /bin/bash

error_message="not a git repo, fuck u"

function get_current_branch() {
  branch=$(git branch | grep '\*')
  if [ $? == 1 ]; then
    echo $error_message
  else
    echo ${branch/* /}
  fi
}

target_branch=$1
commit_message=$2
current_branch=$(get_current_branch)

if [[ $current_branch == $error_message ]]; then
  exit 1
fi

if [[ $target_branch == "" ]]; then
  target_branch=staging
fi

if [[ $commit_message == "" ]]; then
  commit_message=update
fi

git add .
git commit -m $commit_message
git push

git checkout $target_branch
if [ $? == 1 ]; then
  exit 1
fi

git merge $current_branch
if [ $? == 1 ]; then
  exit 1
fi

git checkout $current_branch
if [ $? == 1 ]; then
  exit 1
fi

echo "🎉 Branch '$current_branch' merged into '$target_branch' successfully!"
