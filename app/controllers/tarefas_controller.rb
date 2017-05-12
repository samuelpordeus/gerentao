class TarefasController < ApplicationController

  def finish
    @tarefa = Tarefa.find(params[:id])
    @tarefa.terminada = true
    @tarefa.save
    redirect_to request.referer, notice: 'Tarefa foi concluida com sucesso.'
  end

  def new
    @tarefa = Tarefa.new
  end

  def create
    @tarefa = Tarefa.new(tarefa_params)
    @tarefa.terminada = false
    @tarefa.projeto_id = params[:tarefa][:projeto_id]
    @tarefa.save
    redirect_to request.referer, notice: 'Tarefa foi criada com sucesso.'
  end

  private
    def set_tarefa
      @tarefa = Tarefa.find(params[:id])
    end

    def tarefa_params
      params.require(:tarefa).permit(:nome, :projeto_id)
    end
end
