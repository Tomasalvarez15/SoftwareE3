# frozen_string_literal: true

class CreateComentarios < ActiveRecord::Migration[5.2]
  def change
    create_table :comentarios do |t|
      t.string :local
      t.string :mailusuario
      t.datetime :fechahora
      t.string :descripcion
      t.integer :puntaje

      t.timestamps
    end
  end
end
