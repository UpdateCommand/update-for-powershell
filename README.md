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
```ps1
$Env:PATH += ";[HOME]\update-for-powershell\bin"
```
Where `[HOME]` is a placeholder for your home directory, you need to replace it manually. Usually, its value is `C:\Users\[USER_NAME]` (`[USER_NAME]` is another placeholder, type your username there)

To set the path persistently, go to the "Edit your user Environment Variables" GUI, and add the entry in your user `PATH`

Copy the `config` directory to your own directory:
```sh
cp -R ~/update/config/update ~/.config/update
```

Run the script (`.ps1` is optional, usually):
```sh
update.ps1
```

## What's included

This project is intended for update scripts for tools, systems, package managers, language modules, et. al.

  * [`update-apm.ps1`](bin/update-apm.ps1): update Atom Package Manager - for the GitHub Atom editor.

  * [`update-choco.ps1`](bin/update-choco.ps1): update choco for Windows Chocolatey packages.

  * [`update-mix.ps1`](bin/update-mix.ps1): update Mix for Elixir.

  * [`update-npm-global.ps1`](bin/update-npm-global.ps1): update Node Package Manager (NPM) via global settings.

  * [`update-npm-n-stable.ps1`](bin/update-npm-n-stable.ps1): update Node Package Manager (NPM) via n environment manager.

  * [`update-pnpm-global.ps1`](bin/update-pnpm-global.ps1): update Performant Node Package Manager (PNPM) via global settings.

  * [`update-rustup.ps1`](bin/update-rustup.ps1): update Rust programming language tooling.

  * [`update-run-first.ps1`](bin/update-run-first.ps1): run custom scripts first, before other commands.

  * [`update-run-last.ps1`](bin/update-run-last.ps1): run custom scripts last, after other commands.

  * [`update-scoop.ps1`](bin/update-scoop.ps1): update scoop for Windows Scoop packages.

  * [`update-yarn.ps1`](bin/update-yarn.ps1): update Yarn JavaScript packages - for yarn upgrade.

  * [`update-windows.ps1`](bin/update-windows.ps1): update Microsoft Windows and related products.

We welcome more scripts.


## Tracking

  * Package: update-for-powershell
  * Version: 1.0.0
  * Created: 2022-07-15T02:58:17Z
  * Updated: 2022-07-16T21:47:38Z
  * License: GPL-2.0-or-later or contact us for custom
  * Contact: Joel Parker Henderson (https://joelparkerhenderson.com)
