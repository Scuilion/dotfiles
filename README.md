## dotfiles

```
sudo apt-get install git xclip

ssh-keygen -o -a 100 -t ed25519 -C "oneal.kevin@gmail.com" -f ~/.ssh/github_ed25519
sudo chmod 400 ~/.ssh/github_ed25519
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github_ed25519
xclip -sel clip < ~/.ssh/github_ed25519.pub

mkdir -p ~/projects
cd ~/projects
git clone --recurse-submodules git@github.com:Scuilion/dotfiles.git

cd dotfiles
sudo chmod +x *.sh
sudo ./packages.sh
./install.sh

```


