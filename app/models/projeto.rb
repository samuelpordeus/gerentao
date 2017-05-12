class Projeto < ApplicationRecord
  belongs_to :user
  has_many :tarefas
end
