set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate


psql -h [dpg-cr27hng8fa8c73a2iktg-a.singapore-postgres.render.com] -U [deploy_app_yhwq_user] -d [deploy_app_yhwq] < shops_dump.sql