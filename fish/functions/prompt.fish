function fish_prompt -d "Write out the prompt"
  # Print arrow with exit status coloring
  if test $status = 0
    set ARROW_COLOR brown
  else
    set ARROW_COLOR red
  end

  # Hostname
  if not set -q HOST_COLOR
    set HOST_COLOR magenta
  end

  printf '%s%s' (set_color $HOST_COLOR) (hostname -s)

  # Color writeable dirs green, read-only dirs red
  if test -w "."
      printf ' %s%s' (set_color blue) (prompt_pwd)
  else
      printf ' %s%s' (set_color red) (prompt_pwd)
  end

  # spit out virtual env
  if set -q VIRTUAL_ENV
    printf ' %s%s' (set_color brown) (basename "$VIRTUAL_ENV")
  end

  # spit out virtual env
  if set -q HADOOP_ENV
    printf ' %s%s' (set_color magenta) $HADOOP_ENV
  end

  # Print git branch
  printf '%s%s' (set_color green) (__git_ps1)

  printf '%s ➜  %s' (set_color -o $ARROW_COLOR) (set_color normal)
end
