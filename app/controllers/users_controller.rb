class UsersController < ApplicationController

  use Rack::Flash

  get '/users/:slug' do
   @user = User.find_by_slug(params[:slug])
   erb :'users/show_tweets'

  # verify
  get '/signup' do
    if Helpers.is_logged_in? session
      redirect '/tweets'
    else
    erb :'users/create_user'
    end
  end



end
