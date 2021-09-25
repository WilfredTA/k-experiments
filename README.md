# K Experiments

This is a starter project for k framework learning materials.

This template uses nix package manager specifically. Why use nix for k framework projects? Because existing work with K framework depends on different versions of K, so a global installation isn't ideal. Instead, just use nix-shell.

It's also the easiest way to install k framework because it requires the fewest number of steps and works the first time in my experience.


## Setup Instructions
Ensure you have nix installed on your machine. It's pretty quick and easy to do. Find instructions [here](https://nixos.org/download.html)

Now that Nix is installed, let's get started.

Clone this repo with submodules:

`git clone --recurse-submodules git@github.com/WilfredTA/k-experiments`

Then `cd ./k-experiments`

Then, just run these four make recipes, one by one:

```nix
make nix-cache
make k-framework
make k-backend
make example
```

It worked if `make example` produced the following output:

```k
<k>
  6 ~> .
</k>
```

## Some tips
When running `kompile` directly, ensure you're passing `--backend haskell` argument, since we are only using the haskell backend, but haskell backend is not kompile's default.

Further, `kompile` expects the main module to be the same name as the file being compiled. If it is not, you should pass `--main-module <MODULE_NAME>` to `kompile` as well.

Look at the simple `example` recipe in the Makefile for an example