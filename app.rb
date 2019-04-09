require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatin = PigLatinizer.new.piglatinize(params[:wants_piglatin])

    erb :piglatinized
  end
end
