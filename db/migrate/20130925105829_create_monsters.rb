class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :hp
      t.integer :atk
      t.integer :rcv

      t.timestamps
    end
  end
end
