require 'tty-spinner'
namespace :dev do
  desc "Config of the development environment"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Loading tasks")
      spinner.auto_spin
      %x(rails db:drop db:create db:migrate db:seed)
      spinner.success("(Done!)")
    else
      puts "Wrong environment"
    end
  end

end
