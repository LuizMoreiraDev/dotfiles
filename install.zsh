if [ -d "$HOME/.dotfiles" ]; then
  mv $HOME/.dotfiles $HOME/.dotfiles-`date +%Y%m%d-%H%M%S`
fi

echo "Installing dotfiles"

git clone https://github.com/luizclaudiomoreira/dotfiles.git "$HOME/.dotfiles"

for i in `find $HOME/.dotfiles/symlinks -maxdepth 1`; do
  if [ ! -d "$i" ]; then
    file=`basename $i`
    ln -snfv $i $HOME/.${file}
  fi
done

echo "[user]\n  name  = Luiz Claudio Moreira Junior\n  email = sample@example.com" > $HOME/.gitconfig.user

mkdir -p $HOME/.zsh.after
echo "source $HOME/.dotfiles/zshrc" >> $HOME/.zshrc
source $HOME/.zshrc

vim +BundleInstall +qall
