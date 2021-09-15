#!/bin/bash

# adapted from https://www.atlassian.com/git/tutorials/git-subtree
git subtree pull --prefix pin/conduit-binder git@github.com:mmore500/conduit.git binder --squash
