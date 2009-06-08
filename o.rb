require 'rubygems' unless defined? ::RubyGems
require 'sinatra' unless defined? ::Sinatra

require 'ruby-debug'
require 'Haml'

get '/' do
  haml :index
end