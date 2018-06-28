## dotfiles

```
sudo apt-get install git xclip

ssh-keygen -t rsa -b 4096 -C "oneal.kevin@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github_rsa
xclip -sel clip < ~/.ssh/github_rsa.pub

mkdir -p ~/projects
cd ~/projects
git clone git@github.com:Scuilion/dotfiles.git

sudo chmod +x *.sh
sudo ./packages.sh
./install.sh
```

