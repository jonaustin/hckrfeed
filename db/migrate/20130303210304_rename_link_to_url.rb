class RenameLinkToUrl < ActiveRecord::Migration
  def up
    change_table :links do |t|
      t.rename :link, :url
    end
  end

  def down
    change_table :links do |t|
      t.rename :url, :link
    end
  end
end
