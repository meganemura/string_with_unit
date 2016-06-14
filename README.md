# StringWithUnit
[![Gem Version](https://badge.fury.io/rb/string_with_unit.svg)](https://badge.fury.io/rb/string_with_unit) [![Build Status](https://travis-ci.org/meganemura/string_with_unit.svg?branch=master)](https://travis-ci.org/meganemura/string_with_unit)

## Installation

```ruby
gem 'string_with_unit'
```

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

# alias: Integer#to_s_with_unit
puts 101.to_s_with_unit('dalmatian', 'dalmatians')   # => "101 dalmatians"
```

### With ActiveSupport::Inflector

```ruby
require 'active_support/inflector'
(-2..2).each do |i|
  puts i.to_string_with_unit('gem')  # Specify singular unit only
end
# => "-2 gems"
# => "-1 gem"
# => "0 gems"
# => "1 gem"
# => "2 gems"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/meganemura/string_with_unit.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
