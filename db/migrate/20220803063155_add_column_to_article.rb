class AddColumnToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles , :user_id , :integar
    add_column :users , :admin , :boolean , default: :false
  end
end
