# frozen_string_literal: true

require 'sinatra'

APP_NAME = ENV['APP_NAME']

get '/up' do
  status(200)
end

get '/' do
  "Sinatra app deployed as <b>#{APP_NAME}</b> reached under <b>#{request.host}</b><br>Hello Christina!"
end
