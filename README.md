# rbfmt

`rbfmt`, like [`gofmt`](http://golang.org/cmd/go/#hdr-Run_gofmt_on_package_sources) in the Go programming language, formats Ruby code.
It parses Ruby source into [s-expressions](http://en.wikipedia.org/wiki/S-expression) and emits formatted code.


`rbfmt` is in beta. Use it at your own risk.

## Installation

Add this line to your application's Gemfile:

    gem 'rbfmt'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rbfmt

## Usage

```
$ rbfmt # format all children folders recursively
$ rbfmt FOLDER # format FOLDER recursively
```

## Contributing

1. Fork it ( http://github.com/jingweno/rbfmt/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
