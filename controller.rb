require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'

require_relative './models/shoo'

get('/shoo/new') do
  erb(:new)
end

post('/shoo') do
  @shoo = Shoo.new(params)
  # binding.pry
  @shoo.save
  erb(:create)
end

get('/shoo') do
@shoo = Shoo.all()
erb(:index)
end

get('/info') do
  erb(:info)
end

get('/') do
  erb(:home)
end

get('/how_its_made') do
  erb(:made)
end