class UsersController < ApplicationController
    get '/signup' do
        erb :'users/signup'
    end

    post '/signup' do
        user = User.create(params)
        if user.email == User.find_by(email: params[:email])
            session[:user_id] = user.id
            redirect '/projects/new'
        else
            @error = 'That email already exists.'
            erb :'users/signup'
        end
    end

    get '/login' do
        erb :'users/login'
    end

    post '/login' do
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect '/projects'
        else
            @error = 'INVALID CREDENTIALS'
            erb :'users/login'
        end
    end

    delete '/logout' do
        session.destroy
        redirect '/'
    end
end