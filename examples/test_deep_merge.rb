require_relative "#{ENV["GITHUB_REPOS_PATH"]}/magic-cookbook/libraries/deep_merge"

require 'json'

include DeepMerge

puts "============================"
h1 = {a: 1, b: {c: 2}}
puts JSON.pretty_generate(h1)
puts "--"
h2 = { b: { d: 4 }, c: 3}
puts JSON.pretty_generate(h2)
puts "--"
puts JSON.pretty_generate(h1.deep_merge(h2))
puts "============================"
