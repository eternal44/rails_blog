class DelComment < ActiveRecord::Migration
  def up
  end
  def down
      drop_table :comments
  end
end
