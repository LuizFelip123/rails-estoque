class Product < ApplicationRecord
  has_many :buy
    validates :description, presence: {message:"A Descrição é um campo obrigatório"} 

end
