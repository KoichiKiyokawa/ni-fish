function __fish_complete_nr
  if test -f ./package.json
    node -pe "try{Object.keys(require('./package.json').scripts).join(' ')}catch{'No package.json file found.\n'}"
  end
end

complete -c nr -f -a '(__fish_complete_nr)'
