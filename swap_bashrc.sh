#!/bin/bash  

shDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" #working directory of this bash script
repoPath="$shDir/bashrc"
homePath="$HOME/.bashrc"


if [[ $1 == push ]]; then
  cp $repoPath $homePath
  echo "Swapped repo bashrc with home directory .bashrc"
else
  cp $homePath $repoPath
  echo "Swapped home directory .bashrc repo bashrc with"
fi

