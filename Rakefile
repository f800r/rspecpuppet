task default: %w[test]

desc "Run test for all modules"
task :test do
  Dir['modules/**/Rakefile'].each do |rakefile|
      sh "echo \"running #{rakefile}\""
      sh "cd $(dirname #{rakefile}); bundle exec rake test"
  end
end