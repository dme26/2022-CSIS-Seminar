# Talk notes

## Start of talk

- Takes 6 minutes to init LaTeX Gitpod
- Visit https://www.gitpod.io to pre-start up Workspace
- Or start from scratch https://gitpod.io/#https://github.com/dme26/2022-CSIS-Seminar 

## Template of GitHub Pages website

- https://altitude.otago.ac.nz/dme/cosc-paper-ssg-stub

- git clone stub website

- config.toml
  - baseurl = "https://cosc312.cspages.otago.ac.nz/"
  - title = "COSC312 Cryptography and Security, 2023"
  - geekdocRepo = "https://altitude.otago.ac.nz/cosc312/cosc312.cspages.otago.ac.nz"

The overall aim is to provide students with an understanding of the role played by various aspects of cryptography in computer security, and to explore topics such as the modern theoretical bases of cryptography—a central aspect of contemporary computing both in theory and in practice.

- Change visibility of GitLab Pages to public
- Use GitLab Pages page to find website

## Local Carpentry Docker lesson

- Start Docker Desktop

### Safe option: build shell-novice

- https://github.com/swcarpentry/shell-novice
- `cd ~/tmp`
- `git clone https://github.com/swcarpentry/shell-novice`
- `cd shell-novice`
- `make docker-serve` (this isn't quick first time, since it's gigabyte-scale)
- http://0.0.0.0:4000
- edit `index.md`; reload web browser

### TODO Riskier option; use explicit Jekyll Docker command to run server
- figure out explicit Jekyll to use instead of make docker
- https://github.com/oucs-teaching/2022-cosc202-docker-introduction
- `git clone git@github.com:oucs-teaching/2022-cosc202-docker-introduction.git cosc202-docker-intro`
- `make docker-serve`

## Codespaces with Carpentry Docker lesson

- Possibly just go to https://github.com/codespaces
- Otherwise make new Codespace by:
  - Visit repository https://github.com/swcarpentry/shell-novice
  - Create codespaces in GitHub

- `make docker-serve`
- wait until server finishes opening
- connect to forwarded port

- (MAYBE) look at using live server extension?

## Gitpod with LaTeX talk

- Assume started by steps shown above
- build document once: `latexmk -norc -r latexmk-ci-config`
- build document watching changes: `latexmk -norc -r latexmk-ci-config -pvc -view=none`
- (MAYBE) direct pdf.js viewing

## Git LFS

- https://altitude.otago.ac.nz/dme/git-lfs-test
- show content of `.gitlab-ci.yml`
- show content of `.gitattributes`

### checking out to a local system
- Need to have git-lfs support, e.g., macOS: `sudo port install git-lfs`
- Need to have lfs set up in user account: `git lfs install`
- To make a new repository, can use, e.g., `git lfs track '*.iso'`
- Importantly `.gitattributes` must be tracked

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
