class AddColumnToCommentsName < ActiveRecord::Migration[7.0]
  def change
    add_column :comments , :created_by , :string
  end
end
