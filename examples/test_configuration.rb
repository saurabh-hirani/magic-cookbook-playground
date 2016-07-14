require_relative "#{ENV["GITHUB_REPOS_PATH"]}/magic-cookbook/libraries/configuration"
include Configuration


puts "======================="
puts ini_config({
  'this' => {
      'is' => 'an',
      'example' => 123
    }
})
puts "======================="

puts "======================="
puts yaml_config({
  'this' => {
      'is' => %w[ just a test ]
    }
})
puts "======================="

puts "======================="
puts json_config({
  'this' => {
      'is' => [ 'just', :a, 'FREEFORM' ],
      10 => nil,
      {} => [],
      'deal' => /really/
    }
})
puts "======================="

puts "======================="
puts java_config({
  'this' => {
      'is' => [ 'just', :a, 'FREEFORM' ],
      10 => nil
    }
})
puts "======================="

puts "======================="
require 'java-properties'
puts properties_config({
  'foo' => 'bar',
  'ptr' => 'char'
})
puts "======================="

puts "======================="
puts exports_config({
  'this' => '',
  'is' => 10,
  'a' => :nother,
  'test' => 1234
})
puts "======================="
