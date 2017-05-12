class CreateProjetos < ActiveRecord::Migration[5.0]
  def change
    create_table :projetos do |t|
      t.integer :user_id
      t.string :nome
      t.text :descricao
      t.boolean :terminado

      t.timestamps
    end
  end
end
