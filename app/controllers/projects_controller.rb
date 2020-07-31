class ProjectsController < ApplicationController
    #index action
    get '/projects' do
        @projects = current_user.projects
        erb :'projects/index'
    end

    #new action(view for form that will create)
    get '/projects/new' do
        erb :'/projects/new'
    end

    #create action
    post '/projects' do
        project = current_user.projects.build(params)
        project.save
        redirect "/projects/#{project.id}"
    end

    #show action
    get '/projects/:id' do
        set_project
        if @project
            erb :'projects/show'
        else
            redirect '/projects'
        end
    end

    #edit action(view for form that will update)
    get '/projects/:id/edit' do
        set_project
        erb :'projects/edit'
    end

    #update action
    patch '/projects/:id' do
        params.delete(:_method)
        set_project
        @project.update(params)
        redirect '/projects'
    end

    #delete action
    delete '/projects/:id' do
        set_project
        @project.destroy
        redirect '/projects'
        #binding.pry
    end

    private
    def set_project
        @project = current_user.projects.find_by_id(params[:id])
    end
end
