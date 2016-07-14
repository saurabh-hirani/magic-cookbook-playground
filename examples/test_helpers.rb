require_relative "#{ENV["GITHUB_REPOS_PATH"]}/magic-cookbook/libraries/helpers"

include Helpers

puts "============================"
puts shell_opts({ debug: true, simon: 'says' })
puts "============================"

puts "============================"
puts upstart_opts({ debug: true, simon: 'says' })
puts "============================"
