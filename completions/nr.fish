if test -f ./package.json
  set cmds (node -pe "try{Object.entries(require('./package.json').scripts).map(([k, v]) => k+','+v).join('\n')}catch{'No package.json file found.\n'}")
  for cmd in $cmds
    set -l name (echo $cmd | awk -F',' '{ print $1 }')
    set -l command (echo $cmd | awk -F',' '{ $1=""; print $0 }' | string trim)
    complete -c nr -f -a $name -d $command
  end
end
