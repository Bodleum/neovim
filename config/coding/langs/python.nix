{pkgs, ...}: {
  plugins = {
    lsp.servers.pylsp.enable = true;
    conform-nvim.formattersByFt.python = ["black"];
    lint.lintersByFt.python = ["flake8"];
  };
  extraPackages = [pkgs.black pkgs.python312Packages.flake8];
}
