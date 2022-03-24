#!/bin/sh
# Copyright (c) 2022, Andrew Smith <aws@awsmith.us> :::::::::::: SOLI DEO GLORIA
# SPDX-License-Identifier: LGPL-3.0-or-later

# Read the path to the Hudson source repository from the command line.
if [ $# -ne 1 ]; then
    echo "Invalid invocation: missing repository path."
    echo "Syntax: $0 {repo_path}"
    exit -1
fi
repo_path=$1
echo "Preparing commit log from '$repo_path'..."

# Only create a new commit if the remote repository has changed.
git -C $repo_path log --stat --find-renames --graph master > master_tmp.log
if cmp --silent master_tmp.log master.log; then
    echo "Nothing changed since last commit."
    rm master_tmp.log
    exit 1
fi
mv master_tmp.log master.log
git add master.log

# Prepare a commit, allowing the user to edit its message.
git -C $repo_path log -1 --pretty=format:%B master > message.txt
git commit -eF message.txt
rm message.txt

echo "Ready to commit!"
