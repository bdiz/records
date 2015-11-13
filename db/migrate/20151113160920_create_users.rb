class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.references :checklist, index: true
      t.string :work_email
      t.string :personal_email

      t.timestamps null: false
    end
    add_foreign_key :users, :checklists
  end
end
