if test -f ./package.json
  set scripts (node -pe "try{Object.entries(require('./package.json').scripts).map(([k, v]) => k+','+v).join('\n')}catch{'No package.json file found.\n'}")
  for script in $scripts
    set -l name (echo $script | awk -F',' '{ print $1 }')
    set -l command (echo $script | awk -F',' '{ $1=""; print $0 }' | string trim)
    complete -c nr -f -a $name -d $command
  end
end
