require_relative '../../config/environment'
require 'pry'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    @user = User.find(params[:username])
    if @user
      session[:user_id] = params[:id]
      redirect to '/account'
    else
      erb :error
    end
  end

  get '/account' do
    erb :account
  end

  get '/logout' do

  end


end

