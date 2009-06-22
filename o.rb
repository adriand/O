require 'rubygems' unless defined? ::RubyGems
require 'sinatra' unless defined? ::Sinatra

require 'ruby-debug'
require 'Haml'
require 'pathname'

get '/' do
  @galleries = get_galleries
  haml :index
end

def get_galleries
  galleries = []
  p = Pathname.new("./public/photos")
  p.each_entry do |entry|
    galleries << entry.dirname if entry.directory?
  end
  galleries
end