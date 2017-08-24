rvm use 2.4.0

bundle install
bundle exec rake db:create && bundle exec rake db:migrate && bundle exec rake db:seed
bundle exec rake rails:update:bin && bundle exec rails s
