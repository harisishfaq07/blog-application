class AddColToUsersRequ < ActiveRecord::Migration[7.0]
  def change
    change_column :users , :request , :string , default: :user
  end
end
