function nr -d "Run script with correct package manager"
  if test -f package-lock.json
    echo -e "[ni-fish] Use npm\n"
    npm run $argv
  else if test -f yarn.lock
    echo -e "[ni-fish] Use yarn\n"
    yarn run $argv
  else if test -f pnpm-lock.yaml
    echo -e "[ni-fish] Use pnpm\n"
    pnpm run $argv
  else if test -f bun.lockb
    echo -e "[ni-fish] Use bun\n"
    bun run $argv
  else
    echo -e "No lock file found. Please run npm install, yarn install, or pnpm install.\n"
  end
end
