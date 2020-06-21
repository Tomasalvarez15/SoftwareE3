# frozen_string_literal: true

class CreateLocals < ActiveRecord::Migration[5.2]
  def change
    create_table :locals do |t|
      t.string :nombre
      t.string :descripcion
      t.float :valoracion
      t.integer :comentarios
      t.integer :imagen

      t.timestamps
    end
  end
end
