class ProjectsController < ApplicationController
    #index action
    get '/projects' do
        @projects = current_user.projects
        erb :'projects/index'
    end

    #new action(view for form that will create)

    #show action

    #edit action(view for form that will update)

    #update action

    #delete action
end
