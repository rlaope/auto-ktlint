# ktal | auto-ktlint

Simple installer for downloading and setting up [ktlint](https://github.com/pinterest/ktlint) `v0.45.2` with a custom alias.

## 🚀 Quick Install

Run this command in your terminal:

```bash
curl -sSL https://raw.githubusercontent.com/rlaope/auto-ktlint/main/install.sh | bash
```

This will:
- Download ktlint v0.45.2 from the official GitHub releases
- Save it to ~/Dev/ktlint/0.45.2/ktlint
- Add an alias to your shell config file (.zshrc, .bashrc, etc.):

```bash
alias ktal=~/Dev/ktlint/0.45.2/ktlint
```

##  Usage
After installation, reload your shell or run:

```bash
source ~/.zshrc   # or ~/.bashrc depending on your shell
```
Then use:
```bash
ktal [filename|directory]
```

## 🔄 Uninstall
To remove: 

Delete the ktlint binary:
```bash
rm -rf ~/Dev/ktlint/0.45.2
```
Remove the alias from your shell config file.


