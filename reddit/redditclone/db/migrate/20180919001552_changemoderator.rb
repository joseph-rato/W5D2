class Changemoderator < ActiveRecord::Migration[5.2]
  def change
    remove_column :subs, :moderator
    add_column :subs, :user_id, :integer, null: false
    add_index :subs, :user_id
  end
end
