class TarefasController < ApplicationController
  def index
    tarefas = Tarefas.all
    render json: tarefas
  end
end
