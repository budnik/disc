FROM discourse/discourse:1.3.6
WORKDIR /var/www/discourse
ADD 999_ventureco_forum_settings.rb db/fixtures/
RUN rm ./config/database.yml &&\
  sed -i 's/address: "localhost"/address: "mailcatcher"/' ./config/environment.rb ./config/environments/development.rb

