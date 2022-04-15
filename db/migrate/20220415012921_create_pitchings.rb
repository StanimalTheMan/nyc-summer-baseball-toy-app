class CreatePitchings < ActiveRecord::Migration[6.1]
  def change
    create_table :pitchings do |t|
      t.integer :G
      t.integer :GS
      t.integer :W
      t.integer :L
      t.integer :SV
      t.integer :CG
      t.integer :GF
      t.float :IP
      t.integer :BF
      t.integer :H
      t.integer :R
      t.integer :ER
      t.integer :BB
      t.integer :K
      t.integer :HBP
      t.integer :doubles
      t.integer :triples
      t.integer :HR
      t.float :RA
      t.float :ERA
      t.float :WHIP
      t.float :FIP
      t.float :walks_per_nine
      t.float :k_per_nine
      t.float :BABIP
      t.float :BAA

      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
