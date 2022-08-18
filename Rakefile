require "bundler/gem_tasks"

task :default => :spec

desc "Run tests"
task :spec do
  sh 'bundle exec ruby test/test_utf8_http_headers.rb'
end
