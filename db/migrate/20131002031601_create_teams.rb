class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :m1_id
      t.integer :m1_lvl
      t.string :m1_plus
      t.integer :m2_id
      t.integer :m2_lvl
      t.string :m2_plus
      t.integer :m3_id
      t.integer :m3_lvl
      t.string :m3_plus
      t.integer :m4_id
      t.integer :m4_lvl
      t.string :m4_plus
      t.integer :m5_id
      t.integer :m5_lvl
      t.string :m5_plus
      t.integer :m6_id
      t.integer :m6_lvl
      t.string :m6_plus
      t.timestamps
    end
  end
end
