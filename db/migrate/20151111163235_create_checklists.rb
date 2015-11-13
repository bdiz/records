class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.string :name
      t.text :description
      t.integer :employer_id

      t.timestamps null: false
    end
  end
end
