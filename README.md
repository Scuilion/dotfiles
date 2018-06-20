## dotfiles

```
ssh-keygen -t rsa -b 4096 -C "oneal.kevin@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github_rsa
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/github_rsa.pub
```
