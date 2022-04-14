class CreateBattings < ActiveRecord::Migration[6.1]
  def change
    create_table :battings do |t|
      t.integer :G
      t.integer :PA
      t.integer :AB
      t.integer :R
      t.integer :H
      t.integer :doubles
      t.integer :triples
      t.integer :HR
      t.integer :RBI
      t.integer :BB
      t.integer :K
      t.integer :SF
      t.integer :HBP
      t.integer :ROE
      t.integer :SB
      t.integer :CS
      t.float :AVG
      t.float :OBP
      t.float :SLG
      t.float :OPS
      t.float :wOBA
      t.float :BABIP
      t.float :CNT
      t.float :RC
      t.float :RC27

      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
