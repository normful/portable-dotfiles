# portable-dotfiles

This is a minimal set of public dotfiles. Only use what you need. Most people find these files the most useful:

- `git` [configuration file and aliases](https://github.com/normful/portable-dotfiles/blob/master/.gitconfig)
- `bash` [aliases](https://github.com/normful/portable-dotfiles/blob/master/.bash_aliases)

## Installation

On Debian-based distros:

```
cd ~
git clone https://github.com/normful/portable-dotfiles.git
bash ~/portable-dotfiles/setup.sh
```

## Extras

### Remapping Caps Lock to Escape

On Debian-based distros, running `xmodmap remaps_capslock` will result in the following key mappings:

| Key       | Action    |
|-----------|-----------|
| Caps Lock | Esc       |
| Esc       | Nothing   |
| Pause     | Caps Lock |

On OS X, you can use [Seil](https://pqrs.org/osx/karabiner/seil.html.en) to achieve something similar. Additionally, KeyRemap4MacBook, a.k.a. [Karabiner](https://pqrs.org/osx/karabiner/) is handy (see the included [config file](https://github.com/normful/portable-dotfiles/blob/master/Library/Application%20Support/KeyRemap4MacBook/private.xml)).

### Windows-style window resizing shortcuts on OS X

Install [BetterTouchTool](https://www.boastr.net/) and import the [config file](https://github.com/normful/portable-dotfiles/blob/master/Library/Application%20Support/BetterTouchTool/bttdata2). It provides the following key bindings:

| Shortcut | Action                                         |
|----------|------------------------------------------------|
| ⌘⇧C      | Resize Window to Bottom Right Quarter / Corner |
| ⌘⇧E      | Resize Window to Top Right Quarter / Corner    |
| ⌘⇧Q      | Resize Window to Top Left Quarter / Corner     |
| ⌘⇧Z      | Resize Window to Bottom Left Quarter / Corner  |
| ⌘⇧W      | Maximize Window to Top Half                    |
| ⌘⇧X      | Maximize Window to Bottom Half                 |
| ⌘⇧A      | Maximize Window Left                           |
| ⌘⇧D      | Maximize Window Right                          |
| ⌘⇧M      | Maximize Window                                |
| ⌘⇧S      | Resize window to Middle Third                  |

You can remember how the above key bindings work by their position on a standard QWERTY keyboard. 

For example, E is at the top right of the 9-key square formed by QWE, ASD, and ZXC, so ⌘⇧E resizes the window to the top right.
