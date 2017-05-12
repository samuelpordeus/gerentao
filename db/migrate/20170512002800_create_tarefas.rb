class CreateTarefas < ActiveRecord::Migration[5.0]
  def change
    create_table :tarefas do |t|
      t.integer :projeto_id
      t.string :nome
      t.boolean :terminada

      t.timestamps
    end
  end
end
