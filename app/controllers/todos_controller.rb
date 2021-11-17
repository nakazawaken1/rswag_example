class TodosController < ApplicationController
  def index
      todos = ['歯磨き', '掃除']
      render json: todos
  end
end