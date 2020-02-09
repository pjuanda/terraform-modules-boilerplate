## Terraform Module Skeleton
This is skeleton for building `terraform` modules. Inside this repository, you can find some plugins / configurations which will used for `terraform` module development.

## What's Inside ?
* `editorconfig` for consistent coding styles for all developers which will be working on the module development.
* `pre-commit` to run some checks before the commit process happened. This will be utilised to:
    * check for security credentials in commits
    * run `formatter`, `linter`, or generate `terraform` documentation regarding the inputs / outputs

## References:
- [editor-config](https://editorconfig.org/)
- [pre-commit](https://pre-commit.com/)
- [terraform pre-commit by Anton Babenko](https://github.com/antonbabenko/pre-commit-terraform)
- [terraform pre-commit by Gruntwork](https://github.com/gruntwork-io/pre-commit)

## License
MIT Licensed. See LICENSE for detail information.
