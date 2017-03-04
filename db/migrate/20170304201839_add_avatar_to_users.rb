class AddAvatarToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :avatar, :string
  end
end
