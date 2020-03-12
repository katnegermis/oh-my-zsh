ZSH_THEME_TF_PROMPT_PREFIX="("
ZSH_THEME_TF_PROMPT_SUFFIX=")"

function tf_prompt_info() {
    # dont show 'default' workspace in home dir
    [[ "$PWD" == ~ ]] && return
    # check if in terraform dir
    if [ -d .terraform ]; then
      local workspace=$(terraform workspace show 2> /dev/null)
	  if [ $? -ne 0 ]; then
		return
	  fi

	  echo "$ZSH_THEME_TF_PROMPT_PREFIX$workspace$ZSH_THEME_TF_PROMPT_SUFFIX"
    fi
}
