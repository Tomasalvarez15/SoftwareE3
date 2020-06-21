# frozen_string_literal: true

class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :mail
      t.string :nombre
      t.string :descripcion
      t.integer :edad
      t.integer :imagen
      t.integer :gustos
      t.integer :telefono
      t.string :comuna

      t.timestamps
    end
  end
end
