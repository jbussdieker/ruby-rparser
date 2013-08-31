require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

rule '.rb' => '.y' do |t|
  sh "racc -l -o #{t.name} #{t.source}"
end

rule '.rb' => '.rex' do |t|
  sh "rex -o #{t.name} #{t.source}"
end

task :compile => ['lib/parser.rb', 'lib/lexer.rb']

task :test => [:compile, :spec]
