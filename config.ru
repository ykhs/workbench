require 'bundler'
Bundler.require
require './workbench'

map '/' do
  run Workbench
end

map '/assets' do
  run Workbench.sprockets
end
