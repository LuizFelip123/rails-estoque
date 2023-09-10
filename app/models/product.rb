class Product < ApplicationRecord
    validates :name, presence: {message:"O Nome é um campo obrigatório"}
    validates :description, presence: {message:"A Descrição é um campo obrigatório"} 
    
end
