unless RUBY_ENGINE == 'rbx' # coverage support is broken on rbx
  require 'simplecov'
  SimpleCov.start do
    minimum_coverage 100
    add_group "Sources", "lib"
    add_group "Tests", "spec"
  end
end

require 'bashcov'

Dir["./spec/support/**/*.rb"].each { |file| require file }
