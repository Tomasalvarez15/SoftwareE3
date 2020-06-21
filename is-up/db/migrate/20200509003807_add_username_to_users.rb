# frozen_string_literal: true

class AddUsernameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nombre, :string
    add_column :users, :descripcion, :string
    add_column :users, :edad, :integer
    add_column :users, :imagen, :integer
    add_column :users, :gustos, :integer
    add_column :users, :telefono, :integer
    add_column :users, :comuna, :string
  end
end
