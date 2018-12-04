with import <nixpkgs> {};

vim_configurable.customize {
  name = "vim";
  vimrcConfig = {
    vam.knownPlugins = pkgs.vimPlugins;
    vam.pluginDictionaries = [ { names = [
        "nerdtree"
        "nerdcommenter"
        "vim-snipmate"
        "tabular"
        "ctrlp"
    ]; } ];
    customRC = builtins.readFile ./.vimrc;
  };
}
