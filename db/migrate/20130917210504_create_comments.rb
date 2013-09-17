class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :message
      t.references :user

      t.timestamps
    end
    add_index :comments, :user_id
  end
end
