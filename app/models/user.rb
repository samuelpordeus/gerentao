class User < ApplicationRecord
  has_many :projetos
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
