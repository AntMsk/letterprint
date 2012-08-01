class AddAlienToLetters < ActiveRecord::Migration
  def change
    add_column :letters, :alien, :boolean,:default => false
  end
end
