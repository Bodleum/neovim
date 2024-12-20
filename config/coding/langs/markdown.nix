{pkgs, ...}: {
  plugins = {
    lsp.servers.marksman.enable = true;
    conform-nvim.settings.formatters_by_ft.markdown = ["cbfmt" "mdformat"];
  };
  extraPackages = with pkgs; [cbfmt mdformat];
}
