class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.string :saying
      t.references :character, index: true, foreign_key: true
      t.timestamps
    end
  end
end
