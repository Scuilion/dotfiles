## dotfiles

```
sudo apt-get install git xclip

ssh-keygen -t rsa -b 4096 -C "oneal.kevin@gmail.com" -f ~/.ssh/github_rsa -N ""
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github_rsa
xclip -sel clip < ~/.ssh/github_rsa.pub

mkdir -p ~/projects
cd ~/projects
git clone --recurse-submodules git@github.com:Scuilion/dotfiles.git

cd dotfiles
sudo chmod +x *.sh
sudo ./packages.sh
./install.sh

chsh -s $(which zsh)
# log out and back in
```


