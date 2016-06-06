# Motorcycle

This is the place to discuss features or issues unrelated or general to any library,
like requests for a driver that has not yet been written.

## Merging with Cycle.js
We are in the process of merging this project with [Cycle.js](https://github.com/cyclejs). But Why?


We get to merge two wonderful communities together and focus on solving problems rather than duplicating efforts. 
Stream conversions are also now done in a mostly automatic way! 
Want to use a driver written in xstream or Rx 5? No problem if the driver is written for Cycle.js Diversity. It will be entirely seamless for you :)

#### Libraries that will continue to be maintained for most.js *only*

##### **DOM Driver**
@motorcycle/dom will continue to be the speed king that it currently is. It is at 100% feature parity with the latest Cycle.js Diversity version of @cycle/dom as of v2.0.0. However, it will **not** do any stream conversion like @cycle/dom to maximize performance to its greatest potential. @motorcycle/html has be rolled into this library for ease of maintanence going forward as well. Now imported as 

```js
import {makeHTMLDriver} from '@motorcycle/dom'
```

##### **HTTP Driver**
@motorcycle/http will soon be at feature parity with the newest version of @cycle/http and will be maintained to avoid the need to import xstream as a dependency.

##### **What about everything else that used to be here?**
- @motorcycle/core - Please use [@cycle/most-run](https://github.com/cyclejs/most-run)
- @motorcycle/history - Please use [@cycle/history](https://github.com/cyclejs/history), it is 100% stream library agnostic and will not add any unneeded dependencies.
- @motorcycle/router - Please use [cyclic-router](https://github.com/cyclejs-community/cyclic-router), it is also 100% stream agnostic and will not add any unneeded dependencies.
@motorcycle/local-storage - This was a poorly done library to begin with, and I don't wish for anyone to reach for it. There is the very great [@cycle/storage](https://github.com/cyclejs/storage) driver, which with v3 can do stream conversions when used with @cycle/most-run. However it is written in xstream, and will require the xstream library to also be imported. local-storage as driver is very easily implemented per individual needs, please stop by the [Cycle.js gitter](https://gitter.im/cyclejs/core) or open an issue to discuss [here](https://github.com/cyclejs-community/cyclejs-community/issues/new).


## Want to Contribute?

If you found an issue or want to contribute code, please read
the [contributing guidelines](CONTRIBUTING.md).

If would like to have a repository considered for inclusion in the
Motorcycle.js Github and NPM organizations, please open an issue first to avoid
duplication of effort and further the possibility of your work being accepted.
Afterwards, please refer to our [repository guidelines](REPOSITORIES.md).

## Useful Utilities
- [most-subject](https://github.com/TylorS/most-subject) - A subject
implementation for most.js
- [most-proxy](https://github.com/Tylors/most-proxy) - Declarative circular dependencies for most.js
