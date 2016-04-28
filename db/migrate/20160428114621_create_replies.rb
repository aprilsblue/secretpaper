class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|

      t.string  :nickname
      t.text    :content
      t.string  :email
      t.integer :paper_id

      t.timestamps null: false
    end
  end
end
