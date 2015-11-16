class AddAvatarToUser < ActiveRecord::Migration
  def change
      add_column :user_id, :avatar, :string
  end
end
