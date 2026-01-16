# justfile — helper tasks for developing + packaging the theme

set shell := ['bash', '-cu']

# default target
default: help

help:
	@echo "Available targets:"
	@echo "  package                - Package extension into a .vsix using vsce (via npx)"
	@echo "  clean                  - Remove generated .vsix files"
	@echo "  preview                - Open VS Code with this workspace as an Extension Development Host (requires 'code' CLI)"
	@echo "  install-vsce           - Install vsce globally (optional)"
	@echo "  install-konsole        - Install Konsole color scheme for current user"
	@echo "  install-konsole-system - Install Konsole color scheme system-wide (requires sudo)"

package:
	@echo "Packaging extension (this uses 'npx -y vsce package')..."
	@npx -y vsce package

clean:
	@rm -f *.vsix && echo "Removed .vsix files" || true

preview:
	@echo "Launching VS Code (Extension Development Host)..."
	@code --extensionDevelopmentPath="$(pwd)"

install-vsce:
	@echo "Installing vsce globally (requires npm)..."
	@npm i -g vsce
	@echo "vsce installed"

install-konsole:
	@echo "Installing Konsole color scheme for current user..."
	@mkdir -p ~/.local/share/konsole
	@cp midnight-calm.colorscheme ~/.local/share/konsole/
	@echo "Copied midnight-calm.colorscheme to ~/.local/share/konsole/"

install-konsole-system:
	@echo "Installing Konsole color scheme system-wide (requires sudo)..."
	@sudo cp midnight-calm.colorscheme /usr/share/konsole/
	@echo "Copied midnight-calm.colorscheme to /usr/share/konsole/"
