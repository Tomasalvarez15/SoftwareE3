# frozen_string_literal: true

class CreateGustos < ActiveRecord::Migration[5.2]
  def change
    create_table :gustos do |t|
      t.string :mail1
      t.string :mail2
      t.string :descripcion

      t.timestamps
    end
  end
end
