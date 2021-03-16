
# Exits if var isn't defined.
define assert_env_variable
$(if $(strip $($1)),,$(error "$1" ENV variable is required! "$2"))
endef

HOMEBREW := $(shell command -v brew 2>/dev/null)

.PHONY: help
help:
	@echo "Please use \`make <command>' where <command> is one of"
	@echo "  setup              installs deps (e.g. npm)."
	@echo "  install            install extensions (e.g. runs cake install/build)."

default: verify_tooling setup

.PHONY: setup
setup: install
	npm install

.PHONY: install
install:
	@echo "\n--- Installing ---\n"
	@cake install
	@echo "\n--- Building ---\n"
	@cake build
	
.PHONY: verify_tooling
verify_tooling:
	$(eval $(call assert_env_variable,HOMEBREW, Brew is not installed))
