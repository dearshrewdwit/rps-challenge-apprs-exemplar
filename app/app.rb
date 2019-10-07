require 'sinatra/base'
require 'pry'

require './lib/weapon'

class RpsChallenge < Sinatra::Base

  enable :sessions

  WEAPONS = %i(rock paper scissors)

  get '/' do
    erb(:index)
  end

  post '/play' do
    weapon1 = Weapon.new(params[:weapon].to_sym)
    weapon2 = Weapon.new(WEAPONS.sample)
    session[:result] = weapon1.against(weapon2)
    redirect '/result'
  end

  get '/result' do
    erb session[:result]
  end

end
