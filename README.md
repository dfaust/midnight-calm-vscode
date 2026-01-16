# Midnight Calm

![Build status](https://github.com/dfaust/midnight-calm-vscode/actions/workflows/package.yml/badge.svg)

A minimal dark theme for VS Code and KDE Konsole, focused on Rust and TypeScript.

## VS Code

### Screenshots

Rust:

<img src="img/rust.png" alt="Rust example" width="498" style="max-width:100%;height:auto;" />

TypeScript:

<img src="img/typescript.png" alt="TypeScript example" width="416" style="max-width:100%;height:auto;" />

Terminal (VS Code):

<img src="img/terminal.png" alt="Terminal example" width="535" style="max-width:100%;height:auto;" />

### Installation

Install the `.vsix` from the [releases](https://github.com/dfaust/midnight-calm-vscode/releases).

### Packaging

Package the extension (produces a `.vsix`) locally:

```bash
just package
```

### Preview

Open this repository in VS Code and press **F5** (Run → Start Debugging) to open an Extension Development Host and try the theme.
You can also use the included helper:

```bash
just preview
```

## KDE Konsole

This repository also includes a KDE Konsole color scheme in `midnight-calm.colorscheme`.

### Installation

Install for your user:

```bash
just install-konsole
```

Copies the color scheme to `~/.local/share/konsole/`.

After copying, open Konsole and select **Midnight Calm** in Settings → Manage Profiles → Appearance (or Settings → Configure Konsole → Appearance).
