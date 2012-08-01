class AddPrintedToLetters < ActiveRecord::Migration
  def change
    add_column :letters, :printed, :integer , :default => -1
  end
end
