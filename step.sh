#!/bin/bash
set -ex

branch=$(git rev-parse --abbrev-ref HEAD)
version=$(echo $branch | sed -e 's/.*\///g')

envman add --key GIT_BRANCH_VERSION --value "$version"