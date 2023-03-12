# by tupzikapi.
# shit code.

OSH_THEME_GIT_PROMPT_DIRTY=" N" # idk lol
OSH_THEME_GIT_PROMPT_CLEAN=" Y" # idk lol x2

function lol {
  local CHAR=$(scm_char)
  if [[ $CHAR != "$SCM_NONE_CHAR" ]]; then
    printf '%s' " on ${_omb_prompt_navy}$(git_current_branch)$(parse_git_dirty)${_omb_prompt_normal} "
  fi
}

function _omb_theme_PROMPT_COMMAND {
  local time="$(clock_prompt)"
  local ps_username="${_omb_prompt_green}\u${_omb_prompt_normal}"
  local ps_path="${_omb_prompt_blue}\w${_omb_prompt_normal}"
  local ps_user_mark="${_omb_prompt_red}~>${_omb_prompt_normal}"

  PS1="$time $ps_username at ($ps_path)$(lol) $ps_user_mark " # or "in" ($ps_path)?!??!?!?!??!?!? 
}
THEME_CLOCK_COLOR=${THEME_CLOCK_COLOR:-"$_omb_prompt_olive"}

_omb_util_add_prompt_command _omb_theme_PROMPT_COMMAND
