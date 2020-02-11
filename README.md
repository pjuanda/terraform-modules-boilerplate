## Terraform Module Skeleton
This is boilerplate for building `terraform` modules. Inside this repository, you can find some plugins / configurations which will used for `terraform` module development.

## What's Inside ?
* `editorconfig` for consistent coding styles for all developers which will be working on the module development.
* `pre-commit` to run some checks before the commit process happened. This will be utilised to:
    * check for security credentials in commits
    * run `formatter`, `linter`, or generate `terraform` documentation regarding the inputs / outputs

## Tools Installation
All installation done in the example below are using `homebrew` for `mac`. For alternative installation option, please refer to:
- [pre-commit](https://pre-commit.com/#install)
- [tflint](https://github.com/terraform-linters/tflint#installation)
- [tfenv](https://github.com/tfutils/tfenv#installation)
```
$ brew install pre-commit
$ brew install tflint
$ brew install tfenv
```

## How To Use
In the implementation, we do only need these 3 files
```
.editorconfig           => maintain consistent coding styles for multiple engineeers
.pre-commit-config.yaml => run checks before commit process
.gitignore              => files to be ignore in building terraform modules
```

To run the boilerplate, do execute:
```
wget -qO- https://raw.githubusercontent.com/pjuanda/terraform-modules-boilerplate/master/installation.sh | bash
```

## Limitations
* This boilerplate is opinionated. Discussion are welcome
* At the moment, `installation.sh` script will only point to `master` branch

## References:
- [editor-config](https://editorconfig.org/)
- [pre-commit](https://pre-commit.com/)
- [terraform pre-commit by Anton Babenko](https://github.com/antonbabenko/pre-commit-terraform)
- [terraform pre-commit by Gruntwork](https://github.com/gruntwork-io/pre-commit)

## License
Copyright &copy; 2020. MIT Licensed
