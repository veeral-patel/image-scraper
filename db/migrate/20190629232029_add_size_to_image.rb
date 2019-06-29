class AddSizeToImage < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :width
    remove_column :images, :height
    add_column :images, :size, :integer
  end
end
