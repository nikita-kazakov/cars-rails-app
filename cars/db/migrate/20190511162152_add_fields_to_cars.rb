class AddFieldsToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :year, :date
    add_column :cars, :cylinders, :integer
    add_column :cars, :mpg, :decimal
    add_column :cars, :price, :decimal
  end
end
