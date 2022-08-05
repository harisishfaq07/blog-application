class AddColToUsersRequest < ActiveRecord::Migration[7.0]
  def change
    change_column :users , :request , :string , default: :reject
  end
end
