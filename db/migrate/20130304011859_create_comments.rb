class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :username
      t.string :comment
      t.string :link_id

      t.timestamps
    end
  end
end
