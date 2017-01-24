#!/usr/bin/env bash

action=$@

run_ctl (){
  docker run -it --rm --net=host -w ${PWD} --privileged -v "$HOME/.docker:/root/.docker:ro" -v ${PWD}:${PWD} -v /var/run/docker.sock:/var/run/docker.sock suizman/fn $action
}

install_ctl (){
  sudo cp scripts/fn-wrapper.sh /usr/local/bin/fn
} 

if [[ "$action" == install ]];
then
  echo "Installing fn into /usr/local/bin/fn"
  install_ctl
else
  run_ctl
fi
