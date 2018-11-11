require 'rubycritic/rake_task'

RubyCritic::RakeTask.new do |task|
  task.paths   = FileList['app', 'lib']

  task.options = '--minimum-score 95'
  task.verbose = true
end
