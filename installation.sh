#!/bin/env bash

repository_endpoint="https://raw.githubusercontent.com/pjuanda/terraform-modules-boilerplate/master/"

boilerplate_files=(
    ".editorconfig"
    ".gitignore"
    ".pre-commit-config.yaml"
)

for file in "${boilerplate_files[@]}"; do
    echo "[INFO][$(date +'%Y-%m-%d %H:%M:%S')] Download file $file from $repository_endpoint$file"
    wget --quiet "$repository_endpoint$file" --output-document="$file"
done

# If directory ".git" does not exist, we assume git hasn't be initialised
if [ ! -d ".git" ]; then
    git init
fi

echo "[INFO][$(date +'%Y-%m-%d %H:%M:%S')] install pre-commit hooks"
pre-commit install --install-hooks
