class TodosController < ApplicationController
    before_action :authenticate
    def index
        # email attribute from 'form_for :session'
        @todos = Todo.where(email: current_email)
    end

    def new
        @todo = Todo.new
    end

    def create
        # POST request => create(req.body)
=begin
        Todo.create(todo_params)
        redirect_to todos_path
=end

        Todo.create(todo_params.merge(email: current_email))
        redirect_to todos_path
    end

    private

    # Only allow a list of trusted parameters through (title defined as a param on new.html.erb).
    def todo_params
        params.require(:todo).permit(:title)
    end
end