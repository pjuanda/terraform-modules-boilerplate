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

echo "[INFO][$(date +'%Y-%m-%d %H:%M:%S')] install pre-commit hooks"
pre-commit install --install-hooks
