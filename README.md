## go-template

<div align="center">

![A gif displaying `go-template` in action][demo-gif]
[![Build status](https://img.shields.io/github/workflow/status/notsatan/go-template/Black?style=for-the-badge&logo=github)][black-action]
[![No Dependencies](https://img.shields.io/badge/Dependencies-None-green?style=for-the-badge&logo=dependabot)][gomod-file]
[![MIT License](https://img.shields.io/github/license/notsatan/go-template?color=red&style=for-the-badge)][project-license]
[![Pre-Commit Enabled](https://img.shields.io/badge/Pre--Commit-Enabled-blue?style=for-the-badge&logo=pre-commit)][project-precommit]
[![Go v1.16+](https://img.shields.io/badge/Go-%20v1.16-black?style=for-the-badge&logo=go)][go-releases]
[![Makefile Included](https://img.shields.io/badge/Makefile-Supported%20🚀-red?style=for-the-badge&logo=probot)][makefile-file]

A bleeding-edge Go project generator for your next project :wink:

</div>

## TL;DR

```
cookiecutter gh:notsatan/go-template
```

**_OR_**

```
cookiecutter https://github.com/notsatan/go-template
```

And you're good to go! Jump to the [setup](#microscope-setup-instructions) section
directly for quick setup instructions ;)

## :boom: Features

This is a battries-included [cookiecutter :cookie:][cookiecutter-link] template to get
you started with the essentials you'll need for your next Go project ;)

### Development

- Supports Go `v1.16`, `v1.17` and `v1.18`
- Automated code formatting with [gofmt][gofmt-link] and [gofumpt][gofumpt-link]
- Sort imports with [goimports][goimports-link] and [gci][gci-link]
- Ready to use [pre-commit][precommit-link] setup, complete with a ton of hooks
  already configured in [`.pre-commit-config.yaml`][precommit-config-file]
- Security checks with [gosec][gosec-link], code duplication checks with
  [dupl][dupl-link], magic number checks with [go-mnd][gomnd-link]
- Configured [`.editorconfig`][editorconfig-file], [`.dockerignore`][dockerignore-file]
  and [`.gitignore`][gitignore-file] - you won't have to bother with trivialities
- Enforce good programming practices with [go-critic][gocritic-link],
  [gocyclo][gocyclo-link], [gocognit][gocognit-link] and [stylecheck][stylecheck-link]
- Code linting with [golangci-lint][golangci-link], complete with a ready-to-run
  [`.golangci.yml`][golangci-file] configuration file
- Easy setup with [`Makefile`][makefile-file] - run linters, check for codestyle, run
  tests and generate coverage reports - all with a single command
- Multiple test modes supported by the Makefile - allowing you run tests as frequently
  as you need, without having to run long tests (>20 sec) _everytime_ (ugh).

### Deployment

- Github Actions with predefined [workflows][workflows-dir] including CI/CD, release
  drafter and _optional_ code coverage with [Codecov][codecov-link]
- All Github actions can be run manually if needed
- A simple [Dockerfile][dockerfile-file] with [multi-stage build][multistage-builds]
  to containerize your apps while ensuring smallest possible image sizes
- Always up-to-date dependencies with [@Dependabot][dependabot-link] - enabled by
  default, remove [`dependabot.yml`][dependabot-config-file] to disable!
- A simple [shell script][build-script-file] to generate compiled binaries for
  multiple OS/architectures with checksums for verification
- Automated release management with [Release Drafter][release-drafter], pre-configured
  to handle the default Github labels (and more) through
  [`release-drafter.yml`][release-drafter-file]

### Community

- Ready to use [pull request][pr-template] and [issue][issue-templates] templates out
  of the box
- Files such as `LICENSE`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, and `SECURITY.md`
  will be generated automatically.
- [Semantic Versions][semver-link] specifications with [`Release Drafter`][release-drafter]
- Fork friendly - projects generated through _go-template_ use relative links. Forks
  link to themselves instead of your project -- even for _soft forks_, ensuring
  there are no confused users!

## :microscope: Setup Instructions

### Installation

To start using the template, install the latest version of
[`Cookiecutter`][cookiecutter-docs] (make sure you have Python and `pip` installed)

```sh
pip install -U cookiecutter
```

<br>
Once you have cookiecutter installed, move over to the directory where you want to
generate your project and run

```sh
cookiecutter gh:notsatan/go-template
```

Alternatively, you can achieve the same results with the command

```sh
cookiecutter https://github.com/notsatan/go-template/
```

### Input Variables

Cookiecutter will ask you to fill some variables that will be used to generate your
project from this template. This section lists all the input variables, their default
values, and what they are used for

> Quick Note: Cookiecutter needs all inputs to have a default value. Many of the
> defaults for the setup resort to this repository (for example, the module path points
> to this Github repository, license owner name refers to me, etc)
>
> These defaults **must** be filled with actual values during the setup!
> <br>

| Parameter                  | Default Value           | Usage                                                                                                                                                                                          |
| -------------------------- | ----------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `project_name`             | `example-project`       | Name of the project. A directory of this name will be created in the current working directory                                                                                                 |
| `project_description`      | Based on `project_name` | A small description of the project, used to generate `GNU` license file, and default readme                                                                                                    |
| `go_module_path`           | Based on `project_name` | Complete Go module path for the generated project, use a valid Github URL to enable Github specific features                                                                                   |
| `license_owner`            | example                 | Used in `LICENSE` and other files. Can be the name of a person or an organization.                                                                                                             |
| `base_branch`              | `master`                | The stable/base branch. Used for build status badges and release-drafter (if you enable Github specific features)                                                                              |
| `contact_email`            | `""`                    | Email to get in touch with project stakeholders. `CODE_OF_CONDUCT.md` and `SECURITY.md` will be removed if empty. [Why is this needed?](#why-is-my-email-id-needed)                            |
| `github_specific_features` | **y**                   | Yes or No (`y` or `n`). Dictates if Github-specific features should be included in the project (issue templates, pipeline, etc). [More Info](#what-does-the-github_specific_features-field-do) |
| `use_codecov`              | **y**                   | Yes or No (`y` or `n`). Decides if [Codecov](http://codecov.com) is to be used in the project or not. Checkout [Setting up codecov](#how-to-integrate-codecov-for-automated-code-analysis)     |
| `use_precommit`            | **y**                   | Yes or No (`y` or `n`). Decides if [_pre-commit_](https://pre-commit.com) configs should be included with the generated templates                                                              |
| `go_version`               | `1.17`                  | The version of Go to use in the project. Can be either `1.16`, `1.17` or `1.18`                                                                                                                |
| `license`                  | `MIT`                   | The license you want to use in the generated project. One of `MIT`, `BSD-3`, `GNU GPL v3.0` and `Apache Software License 2.0`                                                                  |

All values entered while setting up the Cookiecutter template will be saved in
`cookiecutter-config-file.yml`, you can refer to them in the generated project :wink:

**Important**: Go through [this](#how-do-i-configure-dependabot-for-github-organizations)
section if you're creating a project that will be owned by a Github organization

### Post Installation

When Cookiecutter completes generating your project, move into the project directory. Let the Makefile install and setup the resources needed for the project to run locally, use

```sh
make local-setup
```

Once the Makefile command is done with the setup, be sure to install
[GolangCI-Lint][golangci-install] (this won't be handled by the Makefile command).
GolangCI is used to run a bunch of linters on your code, when integrated with the
pre-commit config file, this would ensure multiple linters are automatically run on
your codebase with every commit - and optionally every push to the `remote` if you
have enabled the `linter` action

Head over to the [GolangCI-Lint website][golangci-install] for installation
instructions. And that's it. You should have your own project up and running by now :)

## :dart: What's Next

Start playing around with the generated template :')

If you're a beginner with Go, I would like to recommend some articles, blogs and other
resources that helped me learn Go - these will (_hopefully_) be of some help to you

- [Go Official Docs][go-docs]: For Go, the official documentation is an excellent
  place to start learning. Highly recommened resource for beginners.
- [Effective Go][effective-go]: A blog post that is a part of the official
  documentation, yet important enough to be a separate point by itself! Gives
  you an in-depth idea of how to structure and write your Go code. Recommended
  read once you've learnt the basics of Go
- [Uber's Style Guide for Go][uber-style-guide]: Slightly opionated at times, a great
  resource nevertheless. Gives a very detailed look at what "bad" Go code is,
  and how to rewrite it to be simpler and more effective. Recommended read for
  people with some experince in using Go (less so for people with no experience)
- [Go Code Review Comments][code-review-comments]: A part of the Go Wiki, can be seen
  as a supplement to Effective Go (mentioned above)
- [50 Shades of Go][shades-of-go]: A collection of common traps and gotcha's for Go
  devs! Recommended read once you start writing code in Go, not recommended for
  complete newbies - can potentially drown you with excess information

### General

Articles and resources which were of great help to me when making this template

- [Github Actions Documentation][github-actions]
- [Docker Multi-Stage Build Docs][multistage-builds]
- [Docs for `codecov.yml`][codecov-yaml]
- [GolangCI-Lint Configuration Docs][golangci-configs]

## :interrobang: FAQ

#### Why is my Email ID needed?

Like all other fields, the `contact_email` field is also optional. You can choose to
leave this value blank, and the template will work normally.

The email field is used to generate `CODE_OF_CONDUCT.md` and `SECURITY.md` — both of
which require people to get in touch with project stakeholders directly, either to
report a violation, or a bug!

> **Note:** If you choose to leave the email field blank, neither `SECURITY.md` nor
> `CODE_OF_CONDUCT.md` will be generated by the template! Since both of these files
> require people to get in touch directly, not having an email ID makes these files
> be redundant. If you still want these files, you can manually add them to the
> generated project!

#### What does the `github_specific_features` field do?

Not every project generated using this template needs to be hosted on Github. There are
many other Git hosting-providers out there, each of them as valid as Github.

At the same time, Github happens to be the most popular code hosting platform - as such,
projects generated by `go-template` include a lot of features that would ensure a very
smooth development experience on Github, but would be redundant anywhere outside Github.
Some examples of this would be Github pipelines, Github actions, issue templates, pull
request templates, and more.

In case you do not plan to use Github as a code-hosting platform for your project, you
can use this field to ensure the generated project is free of Github-specific files/code.

> **Note:** If Github specific features are required, the value of `go_module_path`
> should be a path to a Github repository (does not matter if it exists). This would be
> used for `dependabot.yml`

#### How to integrate Codecov for automated code analysis?

[Codecov][codecov-link] is a code analysis tool, `go-template` can generate a project
with pre-configured support for Codecov code analysis. With Codecov enabled, the CI
pipeline will generate a code coverage report everytime tests are run.

> **Note:** The process listed here depends on Github workflows, as such, if you choose
> not to use Github features (through the `github_specific_features` field), or to not
> use Codecov (through the `use_codecov` field) - you'll have to figure this bit yourself!

Follow [Codecov Docs][codecov-docs] to activate Codecov for your project repository.

Once you've activated Codecov for your project, you should be able to see the
`Repository Upload Token`. Copy this token, and [add it as a secret][creating-secrets]
to your Github repository.

The name of the secret should be "`CODECOV_TOKEN`" (no spaces, copy-paste the string
as it is). The value of the secret would be the `Repository Upload Token` obtained from
Codecov.

Save this secret and you're done with setting up Codecov, code coverage reports should
be available with the next run of the CI pipeline.

#### How to fix `ValueError: Attempt to enable Github-specific features when module path does not belong to github`?

This error would be thrown when you chose to enable Github specific features, but, the
Go module path you used does not match against Github. Currently, `go-template` uses
the following regex expression to validate module paths

```regex
^github.com\/[a-zA-Z0-9\-]+\/[a-zA-Z0-9\-]+\/?$
```

This check is needed is to ensure the [`dependabot.yml`][dependabot-config-file] config
will add the repository owner as a reviewer whenever dependabot raises a pull request
for a dependency update.

#### How do I configure `dependabot` for Github organizations?

By default, if you choose to enable Github features, the `dependabot.yml` config file
will use the Go module path to figure out the owner of the repostiory, and assign any
pull request raised to the repository owner

In simpler terms, if the Go module path is

```sh
github.com/notsatan/go-template
```

Any pull request raised by _dependabot_ will assign `notsatan` (me) as the reviewer.

While this works well for normal users, at the same time, for organizations, dependabot
will try to assign pull requests to the entire organization!

To fix this, once the project is generated, simply edit the
[`dependabot.yml`][dependabot-config-file] file and modify the values under
`reviewers` and `assignees`.

## :heavy_check_mark: TODOs

Stuff that's in the plan - contributions are welcome! Please raise an issue **before**
you start working (especially if you're picking up one of these tasks);

- [ ] Integrating [goreleaser][goreleaser-link] - Automated releases sure sounds cool!
- [ ] Minor improvements to [`.golangci.yml`][golangci-file] - The generated file
      should be enough to give users (developers) a rough idea of configs.
- [ ] Possible integration with [mkdocs-material][mkdocs-link] for projects that need
      a documentation. Should definitely be optional though!
- [ ] Add [Earthly][earthly-link]? Not sure if this is needed in the first place.
- [ ] Customize [build-script.sh][build-script-file] to generate binaries/executables
      for selective OSes
- [ ] Option to generate private projects - Shield badges and _<more stuff>_ need the
      project to be public. It would be great to have an option to generate private
      projects using _go-template_!

## :trophy: Acknowledgements

The main inspiration behind this template was `TezRomacH`'s
[python-package-template][python-template] — which I've greatly enjoyed using at one
point of time.

The lack of any similar templates for Go was a large part of why I decided to _Go ahead_
and make one myself. And of course, huge appreciation for [Cookiecutter][cookiecutter-link],
without which such a flexible template would not be possible.

## :2nd_place_medal: Similar Projects

Other similar project(s) that you might want to check out;

- [cookiecutter-golang](https://github.com/lacion/cookiecutter-golang)
- [go-template-edge](https://github.com/enoti-bg/go-template-edge)
- [go-cli](https://github.com/carlmjohnson/go-cli)

P.S. If you know of any project similar to _go-template_ (that isn't listed here), let
me know and I'll be happy to list it ;)

Forks of _go-template_ are welcome as well - given they have significant changes
compared to upstream!

> P.P.S. The emoji for this section fits well :p

## :shield: License

![MIT License](https://img.shields.io/github/license/notsatan/go-template?color=red&style=for-the-badge)

This project is licensed under the terms of the `MIT` license. See [LICENSE](./LICENSE)
for more details.

[project-license]: ./LICENSE
[semver-link]: https://semver.org
[go-docs]: https://golang.org/doc
[codecov-link]: http://codecov.com
[earthly-link]: https://earthly.dev
[precommit-link]: https://pre-commit.com
[dupl-link]: https://github.com/mibk/dupl
[dependabot-link]: https://dependabot.com
[gofmt-link]: https://pkg.go.dev/cmd/gofmt
[golangci-link]: https://golangci-lint.run
[gci-link]: https://github.com/daixiang0/gci
[project-precommit]: ./.pre-commit-config.yaml
[go-releases]: https://go.dev/doc/devel/release
[gosec-link]: https://github.com/securego/gosec
[gofumpt-link]: https://github.com/mvdan/gofumpt
[gocyclo-link]: https://github.com/fzipp/gocyclo
[black-action]: ../../actions/workflows/black.yml
[effective-go]: https://golang.org/doc/effective_go
[github-actions]: https://help.github.com/en/actions
[gocognit-link]: https://github.com/uudashr/gocognit
[gomnd-link]: https://github.com/tommy-muehle/go-mnd
[gocritic-link]: https://github.com/go-critic/go-critic
[cookiecutter-docs]: https://cookiecutter.readthedocs.io
[codecov-docs]: https://docs.codecov.com/docs#basic-usage
[codecov-yaml]: https://docs.codecov.com/docs/codecov-yaml
[goreleaser-link]: https://github.com/goreleaser/goreleaser
[golangci-install]: https://golangci-lint.run/usage/install
[mkdocs-link]: https://github.com/squidfunk/mkdocs-material
[cookiecutter-link]: https://github.com/cookiecutter/cookiecutter
[golangci-configs]: https://golangci-lint.run/usage/configuration
[goimports-link]: https://pkg.go.dev/golang.org/x/tools/cmd/goimports
[python-template]: https://github.com/TezRomacH/python-package-template
[release-drafter]: https://github.com/marketplace/actions/release-drafter
[uber-style-guide]: https://github.com/uber-go/guide/blob/master/style.md
[gomod-file]: ./%7B%7B%20cookiecutter.__project_name%20%7D%7D/go.mod
[code-review-comments]: https://github.com/golang/go/wiki/CodeReviewComments
[stylecheck-link]: https://github.com/dominikh/go-tools/tree/master/stylecheck
[makefile-file]: ./%7B%7B%20cookiecutter.__project_name%20%7D%7D/Makefile
[multistage-builds]: https://docs.docker.com/develop/develop-images/multistage-build
[gitignore-file]: ./%7B%7B%20cookiecutter.__project_name%20%7D%7D/.gitignore
[shades-of-go]: http://devs.cloudimmunity.com/gotchas-and-common-mistakes-in-go-golang
[golangci-file]: ./%7B%7B%20cookiecutter.__project_name%20%7D%7D/.golangci.yml
[editorconfig-file]: ./%7B%7B%20cookiecutter.__project_name%20%7D%7D/.editorconfig
[dockerignore-file]: ./%7B%7B%20cookiecutter.__project_name%20%7D%7D/.dockerignore
[workflows-dir]: ./%7B%7B%20cookiecutter.__project_name%20%7D%7D/.github/workflows
[build-script-file]: ./%7B%7B%20cookiecutter.__project_name%20%7D%7D/build-script.sh
[dockerfile-file]: ./%7B%7B%20cookiecutter.__project_name%20%7D%7D/docker/Dockerfile
[issue-templates]: ./%7B%7B%20cookiecutter.__project_name%20%7D%7D/.github/ISSUE_TEMPLATE
[pr-template]: ./%7B%7B%20cookiecutter.__project_name%20%7D%7D/.github/PULL_REQUEST_TEMPLATE.md
[dependabot-config-file]: ./%7B%7B%20cookiecutter.__project_name%20%7D%7D/.github/dependabot.yml
[precommit-config-file]: ./%7B%7B%20cookiecutter.__project_name%20%7D%7D/.pre-commit-config.yaml
[release-drafter-file]: ./%7B%7B%20cookiecutter.__project_name%20%7D%7D/.github/release-drafter.yml
[demo-gif]: https://user-images.githubusercontent.com/22884507/177801711-63b49b09-fa68-4db3-b543-69aed73e0f13.gif
[creating-secrets]: https://docs.github.com/en/actions/security-guides/encrypted-secrets#creating-encrypted-secrets-for-a-repository
