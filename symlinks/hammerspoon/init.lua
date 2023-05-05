hs.loadSpoon('SpoonInstall')
spoon.SpoonInstall.use_syncinstall = true
spoon.SpoonInstall:andUse('SpoonInstall')
spoon.SpoonInstall:andUse('MyWindowManager')
spoon.SpoonInstall:andUse('WindowHalfsAndThirds', { hotkeys = 'default' })

hs.hotkey.bindSpec({ { 'cmd', 'alt', 'ctrl' }, 'R' }, function()
  hs.reload()
end)

hs.hotkey.bindSpec({ { 'cmd', 'alt', 'ctrl' }, 'H' }, function()
  hs.toggleConsole()
end)

