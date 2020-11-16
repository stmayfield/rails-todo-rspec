class TodosController < ApplicationController
    before_action :authenticate
    def index
        @todos = Todo.all
    end

    def new
        @todo = Todo.new
    end

    def create
        # POST resquest => create(req.body)
        Todo.create(todo_params)

        redirect_to todos_path
    end

    private

    # Only allow a list of trusted parameters through (title defined as a param on new.html.erb).
    def todo_params
        params.require(:todo).permit(:title)
    end
end