#!/bin/bash  

shDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" #working directory of this bash script
repoPath="$shDir/bashrc"
homePath="$HOME/.bashrc"


if [[ $1 == push ]]; then
  cp $repoPath $homePath
  echo "Added repo bashrc to the home directory .bashrc"
else
  cp $homePath $repoPath
  echo "Added home directory .bashrc to the repo bashrc"
fi

