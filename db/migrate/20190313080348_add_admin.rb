class AddAdmin < ActiveRecord::Migration[5.2]
  def change
   add_column :admins, :name,:string
   add_column :admins, :role,:string
   add_column :admins, :place,:string
  end
end
