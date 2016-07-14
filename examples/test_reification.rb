require 'chef'
require_relative "#{ENV["GITHUB_REPOS_PATH"]}/magic-cookbook/libraries/reification"
include Reification

# Can't use the apt_repository resource outside Chef - so we whip up a mock
# resource - my_apt_repository 
#####################################
def uri k
  puts "adding uri - #{k}"
end

def distribution k
  puts "adding distribution - #{k}"
end

def my_apt_repository name, &block
  puts name
  puts block.inspect
  yield
end
#####################################

# the usual way 
# limitations 
# - write the my_apt_repository actual call in the recipe
# - attributes are set in attributes/default.rb and used here - e.g. spelling mistakes,
# - non-uniform way of writing attributes - e.g. one may not necessarily club relevant attrs together
my_apt_repository 'icinga2' do
  uri 'ppa:formorer/icinga'
  distribution 'xyz'
end

puts "========================="

# the magic way
# advantages
# - just pass in the resource to call and point it to the attributes
# - attributes are set in attributes/default.rb and the top level attr gluing everything together is called
# - inclines the programmer to do attribute driven configs

# this would go in attributes/default.rb
h  = {
  'icinga2' => {
    'repo' => {
      'name': 'icinga2',
      'uri': 'ppa:formorer/icinga',
      'distribution': 'xyz'
    }
  }
}

# one of your recipes calls this
reify :my_apt_repository, h['icinga2']['repo']

# More un-reified examples at https://gist.github.com/ephemeral972/1b53dcd738a7c59ff0cc237a2dfd8ce9
