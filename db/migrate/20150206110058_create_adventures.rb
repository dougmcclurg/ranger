class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.string :animal
      t.text :amount

      t.timestamps null: false
    end
  end
end
