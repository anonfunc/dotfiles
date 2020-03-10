# Chezmoi Repo for Dotfiles

## Generic Bootstrap

- Install [Nix](https://nixos.org/nix/manual/#sect-single-user-installation)
- Install [Chezmoi](https://github.com/twpayne/chezmoi/blob/master/docs/INSTALL.md)
- Install [1password CLI](https://support.1password.com/command-line-getting-started/)
- `chezmoi init "this repo"`
- Answer the questions
- `op signin ...`
- `chezmoi apply -v -n`
- `chezmoi apply`

## Bootstrap on new OS X

- Install [homebrew](https://brew.sh/)
- `brew install twpayne/taps/chezmoi`
- `brew cask install 1password 1password-cli`
- (Configure and login to 1password) 
- `chezmoi init "this repo"`
- Answer the questions
- `op signin ...`
- `chezmoi apply -v -n`
- `chezmoi apply`

## Notes

### Installing Nix managed packages

`nix-env -iA nixpkgs.myPackages`

### Finding 1password UUIDs

`op list items --vault=DotFiles | jq '.[] | {"title": .overview.title, "uuid": .uuid}'`

### Remember that you have all the Sprig functions!
