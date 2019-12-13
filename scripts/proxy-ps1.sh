#!/bin/bash

yellow="\e[38;5;226m"

__proxy_ps1 ()
{
  proxy_prompt=""
  proxy_str="<"
  if grep "ON" "$PROXY_STATE_FILE" >/dev/null 2>&1; then
    proxy_prompt="$yellow${proxy_str}"
  fi
  printf "$proxy_prompt"
}
