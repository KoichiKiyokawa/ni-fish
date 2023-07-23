function ni -d "Install packages with correct package manager"
  if test -f package-lock.json
    echo -e "[ni-fish] npm install $argv\n"
    npm install $argv
  else if test -f yarn.lock
    echo -e "[ni-fish] yarn install $argv\n"
    yarn install $argv
  else if test -f pnpm-lock.yaml
    echo -e "[ni-fish] pnpm install $argv\n"
    pnpm install $argv
  else if test -f bun.lockb
    echo -e "[ni-fish] bun install $argv\n"
    bun install $argv
  else
    echo -e "No lock file found. Please run npm install, yarn install, or pnpm install.\n"
  end
end

