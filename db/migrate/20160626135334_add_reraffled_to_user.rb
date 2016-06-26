class AddReraffledToUser < ActiveRecord::Migration
  def change
    add_column :users, :raffled, :boolean
  end
end
