class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :attr
      t.string :category
      t.integer :hp
      t.integer :atk
      t.integer :rcv
      t.integer :rarity
      t.integer :exp
      t.integer :askill
      t.integer :lskill
      t.timestamps
    end
  end
end
