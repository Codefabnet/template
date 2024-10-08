#!/bin/bash
git init
git hash-object -w ~/workspace/template/makefile
git hash-object -w ~/workspace/template/.vscode/launch.json
git hash-object -w ~/workspace/template/.vscode/tasks.json
git hash-object -w ~/workspace/template/.gitignore
git hash-object -w ~/workspace/template/test/makefile
git hash-object -w ~/workspace/template/test/unit_test.cpp
git update-index --add --cacheinfo 100644 31798495aa369eed06c14f4f141dfe2e263b319a makefile
git update-index --add --cacheinfo 100644 7c40a925e772b9f7baea99423e0b06a738bfa5a0 .vscode/launch.json
git update-index --add --cacheinfo 100644 27b6359b66e6465f6860d52864914f0cc1d957f8 .vscode/tasks.json
git update-index --add --cacheinfo 100644 78fd1d4ae18ea74b102757986499be59849ea1f5 .gitignore
git update-index --add --cacheinfo 100644 4f85c29b50777d7baa5b819a32871b0073c0ae05 test/makefile
git update-index --add --cacheinfo 100644 470a8e717f11c0ec1ca534771fb0a8da545fd8f9 test/unit_test.cpp
git restore .
git status
mkdir source
