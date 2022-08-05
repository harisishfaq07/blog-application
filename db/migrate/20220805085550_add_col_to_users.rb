class AddColToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users , :request ,:string , default: :user
  end
end
