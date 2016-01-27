# portable-dotfiles

This is a minimal set of public dotfiles. Only use what you need.

## Installation

On Debian-based distros:

```
cd ~
git clone https://github.com/normful/portable-dotfiles.git
bash ~/portable-dotfiles/setup.sh
```

## Extras

### Remapping Caps Lock to Escape

On Debian-based distros, `xmodmap remaps_capslock` will map:

- Caps Lock -> Esc
- Esc       -> Nothing
- Pause     -> Caps Lock

On OS X, use [Seil](https://pqrs.org/osx/karabiner/seil.html.en). Additionally, KeyRemap4MacBook, a.k.a. [Karabiner](https://pqrs.org/osx/karabiner/) is handy (see the included [config file](https://github.com/normful/portable-dotfiles/blob/master/Library/Application%20Support/KeyRemap4MacBook/private.xml)).

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

You can remember how they work by their position on a standard QWERTY keyboard.
