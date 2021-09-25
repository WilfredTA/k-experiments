SHELL := /bin/bash


nix-cache:
	bash <(curl -L https://nixos.org/nix/install)
	nix-env -iA cachix -f https://cachix.org/api/v1/install
	cachix use kore

k-framework:
	cd k && rm .git && nix-build -A k

k-backend:
	cd k && nix-build -A haskell-backend

start:
	nix-shell ./shell.nix

example:
	cd understanding-k-framework && kompile --backend haskell 01_calc.k.sol --main-module CALC \
	&& krun tests/calc/1.calc