#!/bin/bash

if [ -z "$(git status --porcelain)" ]; then
    echo "No changes to commit."
  
    if [[ "$(git status -sb)" != *"ahead"* ]]; then
        echo "Everything is up to date"
        exit 0
    fi
else
	#..........checking branch name

    branch=$(git branch --show-current)
    echo "$branch is your branch name"
    # ..........changing brach, committing and pushing
    read -p "If You Want To Push In This Branch y/n: " branchask 
    if [ "$branchask" == "N"] || [ "$branchask" == "n" ]; then
       read -p "Please Enter Your Correct Branch Name: " branch
       read -p "Do You Want To Send All Files y/n: " msg
       if [ "$msg"  == "Y" ] || [ "$msg" == "y" ]; then
          read -p "Enter Commit Name: " name
          git add . 

          git commit -m "$name"
	  git push origin "$branch"
 	  echo "Pushed to remote repository"
	  git status
       else
          read -p "Enter File Name: " file
          read -p "Enter Commit Name: " name2
          git add "$file"
          git commit -m "$name2"
          
	  git push origin "$branch"
 	  echo "Pushed to remote repository"
	  git status
    else        
       read -p "Do You Want To Send All Files y/n: " msg
       if [ "$msg"  == "Y" ] || [ "$msg" == "y" ]; then
          read -p "Enter Commit Name: " name
          git add . 
          git commit -m "$name"
       else
          read -p "Enter File Name: " file
          read -p "Enter Commit Name: " name2
          git add "$file"
          git commit -m "$name2"
          
	  git push origin "$branch"
	  echo "Pushed to remote repository"
	  git status
       fi
   fi		
fi
