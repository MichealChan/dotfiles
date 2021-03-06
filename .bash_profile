for file in ~/.{bashrc,bash_prompt,aliases}; do
  [ -r "$file" ] && source "$file"
done

export PATH=$HOME/.cabal/bin:/usr/local/bin:/usr/local/sbin:$PATH
export LC_CTYPE="en_GB.UTF-8"

export PYTHONPATH=/Library/Python/2.7/site-packages:/usr/local/Cellar/py2cairo/1.10.0/lib/python2.7/site-packages:$PYTHONPATH

[[ -s "$HOME/.tmuxifier/init.sh" ]] && source "$HOME/.tmuxifier/init.sh"
