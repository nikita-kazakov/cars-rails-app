class AddImageToCar < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :image, :string
  end
end
