class CreateNote < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
t.integer :user_id
t.string :name
t.string :noteable_type
t.integer :noteable_id
      t.timestamps
    end
  end
end
