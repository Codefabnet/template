git init
git hash-object -w ~/workspace/template/makefile
git hash-object -w ~/workspace/template/.vscode/launch.json
git hash-object -w ~/workspace/template/.vscode/tasks.json
git hash-object -w ~/workspace/template/.gitignore
git update-index --add --cacheinfo 100644 ecac557451c5d0a49b9b1577127bf7c7f5d8b925 makefile
git update-index --add --cacheinfo 100644 7c40a925e772b9f7baea99423e0b06a738bfa5a0 .vscode/launch.json
git update-index --add --cacheinfo 100644 27b6359b66e6465f6860d52864914f0cc1d957f8 .vscode/tasks.json
git update-index --add --cacheinfo 100644 02e962502a21bc84e879be744f3d2faab8cf7085 .gitignore
git restore .
git status
mkdir source
