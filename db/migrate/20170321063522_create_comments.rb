class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.string :writer
      t.integer :agree
      t.integer :disagree

      t.timestamps
    end
  end
end
