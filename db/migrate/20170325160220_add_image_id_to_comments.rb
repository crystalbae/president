class AddImageIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :image_id, :integer
  end
end
