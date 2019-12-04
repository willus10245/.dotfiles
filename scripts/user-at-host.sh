#!/bin/bash

__user_at_host_ps1 ()
{
  if [ "$USER" = "$MYENV_USER" ] &&
     [ $(hostname) = "$MYENV_HOST" ]; then
    printf "🏠"
  elif [ "$USER" = "root" ] &&
       [ $(hostname) = "$MYENV_HOST" ]; then
    printf "🌳"
  else
    printf "$USER@$(hostname)"
  fi
}