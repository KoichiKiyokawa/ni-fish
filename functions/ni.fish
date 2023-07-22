function ni -d "Install packages with correct package manager"
  if test -f package-lock.json
    npm install $argv
  else if test -f yarn.lock
    yarn $argv
  else if test -f pnpm-lock.yaml
    pnpm install $argv
  else if test -f bun.lockb
    bun install $argv
  else
    echo "No lock file found. Please run npm install, yarn install, or pnpm install."
  end
end

function nr -d "Run script with correct package manager"
  if test -f package-lock.json
    npm run $argv
  else if test -f yarn.lock
    yarn run $argv
  else if test -f pnpm-lock.yaml
    pnpm run $argv
  else if test -f bun.lockb
    bun run $argv
  else
    echo "No lock file found. Please run npm install, yarn install, or pnpm install."
  end
end