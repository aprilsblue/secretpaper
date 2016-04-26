class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|

      t.string  :nickname
      t.text    :content
      t.string  :password
  
      t.timestamps null: false
    end
  end
end
