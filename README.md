# Mongoid::Localized::Accessor

"Localized accessor for mongoid"

## Installation

Add this line to your application's Gemfile:

    gem 'mongoid-localized-accessor'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid-localized-accessor

## Usage
Include this into the model defitition
```ruby
include Mongoid::Document::Localized::Accessor
```
Field definition
```ruby
field :name, type: String, localize: true
```

To get localized field
```ruby
Model.name_en #English
Model.name_vi #Vietnamese
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
