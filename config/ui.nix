{
  pkgs,
  helpers,
  ...
}: {
  # ---   Lua Line   ---
  plugins.lualine = {
    enable = true;
    sections = {
      lualine_c = [
        {name = "diagnostics";}
        {name = "filetype";}
        {name = "filename";}
      ];
      lualine_x = [
        {name = "diff";}
      ];
      lualine_y = [
        {name = "progress";}
        {name = "location";}
      ];
      lualine_z = [
        {name = helpers.mkRaw ''function() return os.date("%H:%M:%S") end'';}
      ];
    };
  };

  # ---   Notify   ---
  plugins.notify = {
    enable = true;
  };

  keymaps = [
    {
      key = "<Leader>dn";
      action = helpers.mkRaw "function() require('notify').dismiss({ silent = true, pending = true }) end";
      options.desc = "Dismiss all notifications";
    }
  ];

  # ---   Dressing   ---
  extraPackages = with pkgs.vimPlugins; [
    dressing-nvim
  ];
}
