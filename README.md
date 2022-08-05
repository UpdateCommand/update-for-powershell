# Update command scripts for PowerShell

Want to update your computer software by using PowerShell scripts?

When you run the command `update.ps1`, then the command will run scripts to do software updates and upgrades:

  * Windows: `scoop` for the Scoop packager, `choco` for Chocolately, etc.
  * tooling: Node `npm`, Python `pip`, Rust `cargo`, Ruby `gem`, Atom `apm`, etc. [TODO]
  * source code management: `git pull`, `hg pull`, etc. [TODO]
  * any of your own custom scripts, before and after everything else. [TODO]


## Install

Clone the repo to your own system:

```sh
git clone https://github.com/UpdateCommand/update-for-powershell.git $HOME/update-for-powershell
```

Add the `bin` directory to your own path:

```sh
export PATH="$PATH:$HOME/update-for-powershell/bin"
```

Run the script:

```sh
update.ps1
```

## What's included

This project is intended for update scripts for tools, systems, package managers, language modules, et. al.

  * [`update-choco.ps1`](bin/update-choco.ps1): update choco for Windows Chocolatey packages.

  * [`update-scoop.ps1`](bin/update-scoop.ps1): update scoop for Windows Scoop packages.
  
  * [`update-windows.ps1`](bin/update-windows.ps1): update Microsoft Windows and related products.

  * [`update-rustup.ps1`](bin/update-rustup.ps1): update Rust programming language tooling.

We welcome more scripts.


## Tracking

  * Package: update-for-powershell
  * Version: 1.0.0
  * Created: 2022-07-15T02:58:17Z
  * Updated: 2022-07-16T21:47:38Z
  * License: GPL-2.0-or-later or contact us for custom
  * Contact: Joel Parker Henderson (https://joelparkerhenderson.com)
