# OmniAuth Sabiá

[![Gem Version](http://img.shields.io/gem/v/omniauth-sabia.svg)][gem]

[gem]: https://rubygems.org/gems/omniauth-sabia

**This file is based on [intridea's README](https://github.com/intridea/omniauth-github/blob/v1.3.0/README.md).**

This is the official OmniAuth strategy for authenticating to Sabiá. To
use it, you'll need to sign up for an OAuth2 Application ID and Secret
on the [Sabiá Developers Page](https://desenvolvedores.sabia.ufrn.br/).

## Basic Usage

You must remember to set scopes in order to get granular access to different types of data:

```ruby
use OmniAuth::Builder do
  provider OmniAuth::Strategies::Sabia, ENV['SABIA_KEY'], ENV['SABIA_SECRET'], scope: "cpf email"
end
```

## License

OmniAuth Sabiá is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT).

