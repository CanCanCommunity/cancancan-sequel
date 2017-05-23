appraise 'sequel_3.x' do
  gem 'sequel', '~> 3.48.0'
  gem 'activesupport', '~> 3.0', require: 'active_support/all'
  gem 'actionpack', '~> 3.0', require: 'action_pack'

  gemfile.platforms :jruby do
    gem 'jdbc-sqlite3'
  end

  gemfile.platforms :ruby, :mswin, :mingw do
    gem 'sqlite3'
  end
end

appraise 'sequel_4.x' do
  gem 'sequel', '~> 4.46.0'

  gemfile.platforms :jruby do
    gem 'jdbc-sqlite3'
  end

  gemfile.platforms :ruby, :mswin, :mingw do
    gem 'sqlite3'
  end
end
