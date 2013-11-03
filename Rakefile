desc 'setup environment'
task :setup do
  sh "bundle install --path vendor/bundle"
  sh "bower install"
end

desc 'start server'
task :server do
  port = ENV['PORT'] || '9292'
  sh "bundle exec rackup -p #{port}"
end

