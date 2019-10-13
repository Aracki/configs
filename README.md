# configs
Fish & Bash aliases and functions for productivity improvement.<br>
Docker and Kubernetes autocompletion and aliases.

Make sure the files have proper PATH:
* `~/.aliases`
* `~/.bashrc`
* `~/.bash_aliases`
* `~/.config/fish/config.fish`
* `~/.config/fish/completions/`
* `~/.config/fish/fish-kube-prompt/__kube_prompt.fish`
* `~/.gitconfig`
* `~/.servers`

## KubePS custom colors

* `set -Ux KUBE_PROMPT_COLOR_CTX white`
* `set -Ux KUBE_PROMPT_COLOR_NS c79e85`

### For smart bash autocompletion:
```
# If ~./inputrc doesn't exist yet, first include the original /etc/inputrc so we don't override it
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi
```

```
# Add option to ~/.inputrc to enable case-insensitive tab completion
echo 'set completion-ignore-case On' >> ~/.inputrc
```


### Change colour for prompt on remote servers:
* Production: `export PS1="\[\e[33m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[31m\]\h\[\e[m\]:\[\e[36m\]\w\[\e[m\]\[\e[33m\]]\[\e[m\]\[\e[33;33m\]\\$ \[\e[m\]"`
