# configs
Carefully selected aliases and configs that accelerates my productivity.

## Included files
* `~/.aliases`
* `~/.vimrc`
* `~/.config/fish/config.fish`

## Fish kube prompt
Install [fish-kube-prompt](https://github.com/aluxian/fish-kube-prompt#install) and modify `__kube_prompt.fish` file.

## For smart bash autocompletion:
```
# If ~./inputrc doesn't exist yet, first include the original /etc/inputrc so we don't override it
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi
```

```
# Add option to ~/.inputrc to enable case-insensitive tab completion
echo 'set completion-ignore-case On' >> ~/.inputrc
```

## Red color prompt
* Production: `export PS1="\[\e[33m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[31m\]\h\[\e[m\]:\[\e[36m\]\w\[\e[m\]\[\e[33m\]]\[\e[m\]\[\e[33;33m\]\\$ \[\e[m\]"`

## Kube prompt custom colors

* `set -Ux KUBE_PROMPT_COLOR_CTX white`
* `set -Ux KUBE_PROMPT_COLOR_NS c79e85`
