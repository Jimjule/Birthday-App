require "sinatra"

class Birthday < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/birthday' do
    session[:your_name] = params[:name]
    session[:your_day] = params[:day]
    session[:your_month] = params[:month]
    redirect('/birthday')
  end

  get '/birthday' do
    @your_name = session[:your_name]
    @your_day = session[:your_day]
    @your_month = session[:your_month]
    erb(:birthday)
  end

  run! if app_file == $0
end
