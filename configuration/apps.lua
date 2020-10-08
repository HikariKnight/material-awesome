local filesystem = require('gears.filesystem')
local with_dpi = require('beautiful').xresources.apply_dpi
local get_dpi = require('beautiful').xresources.get_dpi

return {
  -- List of apps to start by default on some actions
  default = {
    terminal = 'terminator',
    editor = 'nvim',
    image="qview",
    video="vlc",
    email="neomutt",
    rofi = 'rofi -dpi ' .. get_dpi() .. ' -width ' .. with_dpi(400) .. ' -show drun -theme ' .. filesystem.get_configuration_dir() .. '/configuration/rofi.rasi',
    quake = 'terminator',
    browser = 'brave-nightly',
    xpad = 'xpad',
    clipboard = 'parcellite'
  },
  -- List of apps to start once on start-up
  run_on_start_up = {
    '~/.config/awesome/configuration/awspawn',
    'light-locker --lock-on-lid',
    'meteo-qt',
    'picom',
    'pnmixer',
    'xrandr',
    'blueberry-tray', -- Bluetooth tray icon
    'parcellite -silent',
    'xfce4-power-manager', -- Power managers
    '/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)' -- credential manager
  }
}
