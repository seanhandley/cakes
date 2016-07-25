require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs = ["lib", "test"]
  t.name = "test:unit"
  t.test_files = FileList['test/unit/**/*_test.rb']
end   