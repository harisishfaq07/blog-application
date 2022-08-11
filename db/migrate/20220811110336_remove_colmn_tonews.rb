class RemoveColmnTonews < ActiveRecord::Migration[7.0]
  def change
    remove_column :news , :user_id
  end
end
