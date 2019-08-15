class UsersController < ApplicationController

  use Rack::Flash

  # verify
  get '/signup' do
    erb :'users/create_user'
  end
end
