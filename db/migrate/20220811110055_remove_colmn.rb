class RemoveColmn < ActiveRecord::Migration[7.0]
  def change
    drop_table :newsup
    remove_column :news , :title 
    add_column :news , :name , :string
  end
end
