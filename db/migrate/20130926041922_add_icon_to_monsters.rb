class AddIconToMonsters < ActiveRecord::Migration
  def self.up
    add_attachment :monsters, :icon
  end

  def self.down
    remove_attachment :monsters, :icon
  end
end
