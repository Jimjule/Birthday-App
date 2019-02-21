require "sinatra"

class Birthday < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/birthday' do
    session[:your_name] = params[:name]
    redirect('/birthday')
  end

  get '/birthday' do
    @your_name = session[:your_name]
    erb(:birthday)
  end

  run! if app_file == $0
end
