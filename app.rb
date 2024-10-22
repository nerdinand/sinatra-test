# frozen_string_literal: true

require 'sinatra'

get '/up' do
  status(200)
end

get '/' do
  'It works!'
end
