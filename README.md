# AstroNvim User Configuration Example

A user configuration template for [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Delete your current nvim and shared folder

```shell
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

#### Clone AstroNvim

```shell
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

#### Clone the repository

Clone the repository to the desired location, then create a symbolic link to `$XDG_CONFIG_HOME/astronvim/lua/user`, as indicated in the [AstroNvim Documentation](https://astronvim.com/Configuration/manage_user_config#setting-up-a-user-configuration).

```shell
git clone https://github.com/JNSFilipe/astrovim_config
mkdir -p /home/${USER}/.config/astronvim/lua
ln -s $(pwd)/astrovim_config /home/${USER}/.config/astronvim/lua/user
```

#### Start Neovim

```shell
nvim
```
