class AddQuantityToPlacements < ActiveRecord::Migration[7.1]
  def change
    add_column :placements, :quantity, :integer, default: 0
  end
end
