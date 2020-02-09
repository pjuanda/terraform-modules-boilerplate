.PHONY: clean init

clean:
	@echo "[INFO] Clean previous git directory"
	@rm -rf .git
	@echo "[INFO] Truncate README.md"
	@echo '' > README.md

init: clean
	@echo "[INFO] Initialise git directory"
	@git init --quiet
	@echo "[INFO] run pre-commit installation"
	@pre-commit install
	@echo "[INFO] Remove Makefile and LICENSE file"
	@rm Makefile LICENSE
