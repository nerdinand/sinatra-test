FROM ruby:3.3.5

WORKDIR /app

COPY Gemfile Gemfile.lock config.ru ./

RUN bundle install

COPY app.rb ./

RUN useradd appuser --create-home --shell /bin/bash 
RUN chown -R appuser:appuser /app

USER appuser:appuser

EXPOSE 4567/TCP
CMD [ "bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567" ]
