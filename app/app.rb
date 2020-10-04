require 'sinatra/base'
require './lib/weapon'

class RpsChallenge < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    weapon1 = Weapon.new(params[:weapon].to_sym)
    weapon2 = Weapon.new
    session[:result] = weapon1.against(weapon2)
    redirect '/result'
  end

  get '/result' do
    erb session[:result]
  end
end
