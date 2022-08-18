# Rack::Utf8HttpHeaders

Converts all HTTP headers to UTF-8.

Any header that cannot be so converted is silently discarded.

## Installation

Add this line to your application's Gemfile:

    gem 'rack-utf8-http-headers', :github => 'plujon/rack-utf8-http-headers'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-utf8-http-headers

For Rails, add this to your `application.rb`:

``` ruby
config.middleware.insert 0, Rack::Utf8HttpHeaders
```

For Rack apps, add this to `config.ru`:

``` ruby
use Rack::Utf8HttpHeaders
```

## Usage

There are no options; Rack::Utf8HttpHeaders does one thing, namely, it
converts (or removes) all rack HTTP headers to utf-8.

If you want something to convert other parts of the rack environment,
to UTF-8, see https://github.com/whitequark/rack-utf8_sanitizer .
