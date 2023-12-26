#!/bin/bash

DESTINATION=$1

# clone Flectra directory
git clone --depth=1 https://github.com/6Ministers/hedgedoc-collaborative-markdown-editor-for-business-idease $DESTINATION
rm -rf $DESTINATION/.git


