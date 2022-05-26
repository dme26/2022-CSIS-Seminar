# Talk notes

## Start of talk

- Takes 6 minutes to init LaTeX Gitpod
- Visit https://www.gitpod.io to start up Workspace
- Or start from scratch https://gitpod.io/#https://github.com/dme26/2022-CSIS-Seminar 


## Codespaces

## Gitpod with LaTeX talk

- build document once:
`latexmk -norc -r latexmk-ci-config`

- build document watching changes:
`latexmk -norc -r latexmk-ci-config -pvc -view=none`

## Git LFS

# Gitpod jots

## setting up Gitpod environment for LaTeX
Starting a new Gitpod configuration

https://www.gitpod.io/docs/config-gitpod-file
`gp init` in Gitpod shell

- custom Docker didn't work
- add into .gitpod.yml
```
image: dme26/latex-builder:bullseye-slim
```

- Install vscode-pdf extension for PDF viewing
