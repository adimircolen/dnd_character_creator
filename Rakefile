# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks

namespace :quality do
  desc "Rodar todas as verificações de qualidade"
  task :check do
    puts "=== Rodando testes com RSpec ==="
    system('bundle exec rspec')

    puts "\n=== Verificando cobertura de código com SimpleCov ==="
    system('open coverage/index.html')

    puts "\n=== Detectando code smells com Reek ==="
    system('bundle exec reek')

    puts "\n=== Verificando estilo de código com RuboCop ==="
    system('bundle exec rubocop')

    puts "\n=== Verificando vulnerabilidades de gems com Bundler Audit ==="
    system('bundle exec bundler-audit check')

    puts "\n=== Analisando segurança com Brakeman ==="
    system('bundle exec brakeman')
  end
end
