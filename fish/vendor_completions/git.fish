. $fish_complete_path[3]/git.fish

complete -f -c git -n '__fish_git_needs_command' -a s -d 'Show the working tree status'

complete -c git -n '__fish_git_needs_command'    -a c -d 'Record changes to the repository'
complete -c git -n '__fish_git_using_command commit' -l ca -d 'Amend the log message of the last commit'
complete -c git -n '__fish_git_using_command commit' -l cma -d 'Accept a message to amend the log message of the last commit'

complete -c git -n '__fish_git_needs_command'    -a r -d 'Reset current HEAD to the specified state'
complete -c git -n '__fish_git_needs_command'    -a rh -d 'Reset files in working directory'

complete -f -c git -n '__fish_git_needs_command'    -a co -d 'Checkout and switch to a branch'
complete -f -c git -n '__fish_git_using_command co' -a '(__fish_git_branches)' --description 'Branch'
complete -f -c git -n '__fish_git_using_command co' -a '(__fish_git_tags)' --description 'Tag'
complete -f -c git -n '__fish_git_using_command co' -s b -d 'Create a new branch'
