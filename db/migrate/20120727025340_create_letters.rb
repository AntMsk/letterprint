class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :index
      t.string :adress
      t.string :bukl

      t.timestamps
    end
  end
end
