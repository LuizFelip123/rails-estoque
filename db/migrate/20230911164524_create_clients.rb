class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :cpf
      t.string :city
      t.string :district

      t.timestamps
    end
  end
end
