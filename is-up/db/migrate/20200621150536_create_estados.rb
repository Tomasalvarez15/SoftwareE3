class CreateEstados < ActiveRecord::Migration[5.2]
  def change
    create_table :estados do |t|
      t.string :liker
      t.string :liked
      t.integer :estado

      t.timestamps
    end
  end
end
