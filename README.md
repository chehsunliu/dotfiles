# dotfiles

Build a working environment for command line interface.

## Python

Use [pyenv](https://github.com/pyenv/pyenv).

## Vim

Make sure `vim` is ready in the operating system:

```sh
$ which vim
/usr/local/bin/vim
```

Then install SpaceVim from the [official site](https://spacevim.org/) and copy `./spacevim/init.toml` to `$HOME/.SpaceVim.d/init.toml`.

Extra steps are required:

- Install `pynvim` to the Python interpreter used by `vim`:

  ```sh
  # Find the path of the correct Python. Use `ldd` in Linux or `otool` in macOS.
  $ otool -L `which vim`
  /usr/local/bin/vim:
          ...
          /usr/local/opt/python@3.9/Frameworks/Python.framework/Versions/3.9/Python (compatibility version 3.9.0, current version 3.9.0)
          ...

  $ /usr/local/opt/python@3.9/bin/pip3 install pynvim
  ```

- Install [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts).
- Change the terminal font to ****Hack Nerd Font Mono*.
