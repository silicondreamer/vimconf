# SpaceVim Configuration to be up and running in seconds

## Installation of spacevim

### Prerequisites

```
sudo apt-get install git curl 
```

```
curl -sLf https://spacevim.org/install.sh | bash
```

... now launch vim and SpaceVim will automatically install plugins.

## Configuration

The default configuration file of SpaceVim is ~/.SpaceVim.d/init.toml
git clone this repository and then copy this local init.toml C/C++ IDE version over it.

[quick-start-gui described here!](https://spacevim.org/quick-start-guide/#linux-and-macos)

## Shortcuts

### configuration editing

spacebar f v d


### filebrowser

SpaceVim uses vimfiler as the default file tree, and the default key binding is <F3>. 
(And SpaceVim also provides SPC f t and SPC f T to open the file tree.)


## Uninstallation of SpaceVim

```
curl -sLf https://spacevim.org/install.sh | bash -s -- --uninstall
rm -rf ~/.SpaceVim*
```
