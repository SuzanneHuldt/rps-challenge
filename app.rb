require 'sinatra/base'
require_relative './lib/game.rb'
class Rps <Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.create(Player.new(params[:name]), Computer.new)
    redirect to('/play')
  end

  get '/play' do
    @game = Game.instance
    @name = @game.player.name
    erb(:play)
  end

  get '/rock' do
    @game = Game.instance
    @game.play('rock')
    if @game.counter == 3
      erb(:champion)
    else
      erb(:confirm)
    end
  end

  get '/paper' do
    @game = Game.instance
    @game.play('paper')
    if @game.counter == 3
      erb(:champion)
    else
      erb(:confirm)
    end
  end

  get '/scissors' do
    @game = Game.instance
    @game.play('scissors')
    if @game.counter == 3
      erb(:champion)
    else
      erb(:confirm)
    end
  end

    get '/champion' do
      @game = Game.instance
      @game.reset
      redirect to('/play')
    end

  run! if app_file == $0
end
