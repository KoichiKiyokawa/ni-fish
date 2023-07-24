function __fish_nr
  if test -f ./package.json
    node -e "
      try {
        Object.entries(require('./package.json').scripts).forEach(([k, v]) => {
          console.log(k+'\t'+v)
        })
      } catch {}
    "
  end
end

complete -c nr -f -a '(__fish_nr)'
