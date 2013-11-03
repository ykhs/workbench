require 'bundler'
Bundler.require

class Workbench < Sinatra::Base

  set :sprockets, Sprockets::Environment.new

  configure do

    Sprockets::Helpers.configure do |config|
      config.environment = sprockets
      config.prefix = '/assets'
      config.debug = true
    end

    sprockets.append_path 'assets/js'
    sprockets.append_path 'assets/css'
    sprockets.append_path 'assets/vendor'
    sprockets.append_path 'test/assets/js'
  end

  helpers do
    include Sprockets::Helpers
  end

  get '/' do
    slim :index
  end

  get '/test' do
    slim :test, :layout => false, :views => 'test/views'
  end
end

