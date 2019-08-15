class UsersController < ApplicationController

  use Rack::Flash

  # verify
  get '/signup' do
    if Helpers.is_logged_in? session
      redirect '/tweets'
    else
    erb :'users/create_user'
    end
  end



end
