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
        @project = current_user.projects.find_by_id(params[:id])
        if @project
            erb :'projects/show'
        else
            redirect '/projects'
        end
    end
    #edit action(view for form that will update)

    #update action

    #delete action
end
