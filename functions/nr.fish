function nr -d "Run script with correct package manager"
  if test -f package-lock.json
    echo -e "[ni-fish] npm run $argv\n"
    npm run $argv
  else if test -f yarn.lock
    echo -e "[ni-fish] yarn run $argv\n"
    yarn run $argv
  else if test -f pnpm-lock.yaml
    echo -e "[ni-fish] pnpm run $argv\n"
    pnpm run $argv
  else if test -f bun.lockb
    echo -e "[ni-fish] bun run $argv\n"
    bun run $argv
  else
    echo -e "No lock file found. Please run npm install, yarn install, or pnpm install.\n"
  end
end

