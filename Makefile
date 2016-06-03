binPath = ./node_modules/elm/binwrappers/
package = $(binPath)elm-package
repl    = $(binPath)elm-repl
reactor = $(binPath)elm-reactor
make    = $(binPath)elm-make


test: ## Run the tests
	@$(make) --warn test/Main.elm --output compiled-tests.js
	@echo
	@node compiled-tests.js

install: ## Install dependencies for Elm
	npm install
	$(package) install --yes

repl: ## Run the REPL
	$(repl)

reactor: ## Run the dev server
	$(reactor)

help: ## Prints help for targets with comments
	@echo proverbicam - The site of all wisdom
	@echo
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: test install repl reactor help
