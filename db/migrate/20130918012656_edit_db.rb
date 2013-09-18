class EditDb < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.rename :name, :first_name
      t.string :password_confirmation
    end
  end
end
