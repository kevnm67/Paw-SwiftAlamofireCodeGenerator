[![Build Status](https://travis-ci.org/luckymarmot/Paw-SwiftAlamofireCodeGenerator.svg?branch=master)](https://travis-ci.org/luckymarmot/Paw-SwiftAlamofireCodeGenerator)

# Swift + Alamofire Code Generator (Paw Extension)

A [Paw Extension](http://luckymarmot.com/paw/extensions/) that generates Swift code for the [Alamofire 1.0](https://github.com/Alamofire/Alamofire) library.

## Installation

Easily install this Paw Extension: [Install Swift + Alamofire Code Generator](http://luckymarmot.com/paw/extensions/SwiftAlamofireCodeGenerator)

## Development

### Build & Install

```shell
npm install
cake build
cake install
```

### Watch

During development, watch for changes:

```shell
cake watch
```

### Tests

#### Podfile

Version >= **0.36.0.beta.2** required

```shell
gem install cocoapods --pre
```

An Xcode Project is present in the `/test` folder.

```shell
pod install
```

#### Build

```shell
set -o pipefail && xcodebuild -workspace 'SwiftAlamofireCodeGeneratorTest/SwiftAlamofireCodeGenerator.xcworkspace' -scheme SwiftAlamofireCodeGenerator clean build | xcpretty -c
```

## License

This Paw Extension is released under the [MIT License](LICENSE). Feel free to fork, and modify!

Copyright © 2014 Paw Inc.

## Contributors

See [Contributors](https://github.com/luckymarmot/Paw-SwiftAlamofireCodeGenerator/graphs/contributors).

## Credits

* [Mustache.js](https://github.com/janl/mustache.js/), also released under the MIT License
* [URI.js](http://medialize.github.io/URI.js/), also released under the MIT License
