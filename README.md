# StringWithUnit

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'string_with_unit'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install string_with_unit

## Usage

```ruby
require 'string_with_unit'

(-2..2).each do |i|
  puts i.to_string_with_unit('gem', 'gems')  # singular unit, plural unit
end
# => "-2 gems"
# => "-1 gem"
# => "0 gems"
# => "1 gem"
# => "2 gems"

# alias: Numeric#to_s_with_unit
puts 101.to_string_with_unit('dalmatian', 'dalmatians')   # => "101 dalmatians"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/meganemura/string_with_unit.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
