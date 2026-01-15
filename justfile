# justfile — helper tasks for developing + packaging the theme

set shell := ['bash', '-cu']

# default target
default: help

help:
	@echo "Available targets:"
	@echo "  package        - Package extension into a .vsix using vsce (via npx)"
	@echo "  clean          - Remove generated .vsix files"
	@echo "  preview        - Open VS Code with this workspace as an Extension Development Host (requires 'code' CLI)"
	@echo "  install-vsce   - Install vsce globally (optional)"

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
