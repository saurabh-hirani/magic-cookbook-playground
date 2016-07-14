require 'chef'
require_relative "#{ENV["GITHUB_REPOS_PATH"]}/magic-cookbook/libraries/materialization"
include Materialization

require 'json'

h = {
  'example' => {
  }
}

h['example']['version'] = '1.2.3'
h['example']['url'] = 'http://example.com/%{version}.tar.gz'

puts "========================="
puts JSON.pretty_generate(materialize h)
puts "========================="

puts "========================="
puts materialize nil
puts "========================="

puts "========================="
puts materialize 'hello'
puts "========================="

puts "========================="
puts materialize 'hello %{world}', world: 'bob'
puts "========================="

puts "========================="
puts materialize %w[ %{one} %{two} %{three} ], one: 1, two: 2, three: 3
puts "========================="
