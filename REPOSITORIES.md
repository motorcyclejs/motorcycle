## Requirements for Motorcycle.js Repositories

This document aims to normalize and maintain high quality
repositories for the Motorcycle.js project.

### Table of Contents
- [Testing](#Testing)
  - [Preferred Tools](#PreferredTestingTools)
  - [Continuous Integration](#ContinuousIntegration)
- [Code Style](#CodeStyle)
- [NPM Scripts](#NPMScripts)
- [Dependencies](#Dependencies)
- [Github Usage](#GithubUsage)

#### Testing

All repositories included in, or to be considered for inclusion, the
Motorcycle.js organization **must** have proper tests, which cover at
least basic usage of the library in question.

###### Preferred Testing Tools
Although not a requirement, these tools are recommended for keeping
the tooling the same across Motorcycle.js repositories.

- [EsLint](http://eslint.org/) - [Code Style](#CodeStyle) Checking
- [Mocha](https://mochajs.org/) - Test Framework
- [Testem](https://github.com/testem/testem) - Test Runner
- [Assert](https://github.com/defunctzombie/commonjs-assert) - Assertions

###### Continuous Integration
Every repository **must** enable continuous integration through
[Travis-CI](https://travis-ci.org/) with passing builds before
consideration of being included into the motorcyclejs Github
organization.

Here is a [sample configuration](example-travis.yml) for Travis-CI.

#### Code Style

All repositories included in Motorcyclejs **must** use the following to
adhere to code style standards:
- [eslint](http://eslint.org)
- [eslint-config-cycle](https://github.com/cyclejs/eslint-config-cycle)
- [eslint-plugin-cycle](https://github.com/cyclejs/eslint-plugin-cycle)
- [eslint-plugin-no-class](https://github.com/emmenko/eslint-plugin-no-class)

Optionally:
- [babel-eslint](https://github.com/babel/babel-eslint) - If your
project is using ES6 or Babel for transpilation.

#### NPM Scripts
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

#### Dependencies

All dependencies **must** be locked down to specific versions to avoid
unnecessary developer inconsistencies.

#### Github Usage

- **Must** follow our [contributing guidelines](CONTRIBUTING.md).
- **Must** run
[this script](https://gist.github.com/Frikki/f27c97d800dd36b32fbe) to
provide default issue labels.
