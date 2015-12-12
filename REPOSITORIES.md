# Requirements for Motorcycle.js Repositories

This document aims to normalize and maintain high quality
repositories for the Motorcycle.js project.

### Table of Contents
- [Set Up a New Repository](#set-up-a-new-repository)
- [Testing](#testing)
  - [Preferred Tools](#preferred-testing-tools)
  - [Continuous Integration](#continuous-integration)
- [Code Style](#code-style)
- [NPM Scripts](#npm-scripts)
- [Dependencies](#dependencies)
- [Github Usage](#github-usage)

## Set Up a New Repository

1. Make a new directory with the name of your new repository 
   and navigate to the directory: `mkdir repo-name && cd $_`.
2. From CLI, issue `git init`.
3. Create a *README.md* file with a title and description
   of the repository.
4. Add *README.md* to git: `git add -A`.
5. Make your first commit:
   `git commit -m "docs(README): initial commit"`.
6. Tag the commit: `git tag -f v0.0.0`.
7. Create a development branch: `git checkout -b develop`.
8. On Github, choose *New repository*.
9. Enter the name of the new repository.
10. Enter a short description.
11. Choose *Create repository*.
12. From CLI:
    `git remote add origin https://github.com/user/repo.git`
    `git push origin --all`
    `git push origin --tags`
13. Go to [Travis CI](https://travis-ci.org/) and enable 
    the new repository.
14. Under settings, enable *Build only if .travis.yml is present*.
15. On Github, navigate to the new repository 
    and choose *Settings > Branches*. 
16. Change *Default branch* from *master* to *develop* 
    and choose *Update*.
16. Under *Protected branches*, choose *master* branch.
17. Check *Protect this branch*.
18. Check *Require status checks to pass before merging*.
19. Choose *Save changes*.
20. Download [gh-label.sh][gh-labels.sh] bash script, and run it.
    This will create the appropriate labels for the repository.
    On request, supply the script with your credentials 
    and repository name.
21. Your done! Now, follow the guidelines below.

## Testing

All repositories included in, or to be considered for inclusion, the
Motorcycle.js organization **must** have proper tests, which cover at
least basic usage of the library in question.

### Preferred Testing Tools
Although not a requirement, these tools are recommended for keeping
the tooling the same across Motorcycle.js repositories.

- [EsLint](http://eslint.org/) - [Code Style](#code-style) Checking
- [Mocha](https://mochajs.org/) - Test Framework
- [Testem](https://github.com/testem/testem) - Test Runner
- [Assert](https://github.com/defunctzombie/commonjs-assert) - Assertions

### Continuous Integration
Every repository **must** enable continuous integration through
[Travis-CI](https://travis-ci.org/) with passing builds before
consideration of being included into the motorcyclejs Github
organization.

Here is a [sample configuration](example-travis.yml) for Travis-CI.

## Code Style

All repositories included in Motorcyclejs **must** use the following to
adhere to code style standards:
- [eslint](http://eslint.org)
- [eslint-config-cycle](https://github.com/cyclejs/eslint-config-cycle)
- [eslint-plugin-cycle](https://github.com/cyclejs/eslint-plugin-cycle)
- [eslint-plugin-no-class](https://github.com/emmenko/eslint-plugin-no-class)

Optionally:
- [babel-eslint](https://github.com/babel/babel-eslint) - If your
project is using ES6 or Babel for transpilation.

## NPM Scripts
Required:
- `eslint` - for running eslint checks
- `test` - for running tests
- `start` - must be `npm install && npm prune && validate-commit-msg`
- `release-patch` - for patch releases
- `release-minor` - for minor releases
- `release-major` - for major releases

Optional:
- `compile` - for running Babel or other compilation steps
- `prepublish` - should be `npm run compile` if `compile` is needed
- `test-ci` - for running tests on Travis-CI if the `test` script above
will not work for any reason.

Refer to Motorcycle-Core
[package.json](https://github.com/motorcyclejs/core/blob/develop/package.json)
for reference.

## Dependencies

All dependencies **must** be locked down to specific versions to avoid
unnecessary developer inconsistencies.

Required Dev Dependencies:
- validate-commit-message : >= 3.0.1 - for `npm start` script

Recommended Dev Dependencies:
- cli-release : >= 1.0.4 - for `release-*` scripts

## Github Usage

- **Must** follow our [contributing guidelines](CONTRIBUTING.md).
- **Must** run
[this script](https://gist.github.com/Frikki/f27c97d800dd36b32fbe) to
provide default issue labels.



[gh-labels.sh]: https://github.com/motorcyclejs/motorcycle/master/scripts/gh-labels.sh
