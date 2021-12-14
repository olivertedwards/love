class CreateInterests < ActiveRecord::Migration[6.1]
  def change
    create_table :interests do |t|
      t.string :name
      t.boolean :selected, :default => false
      t.timestamps
    end
  end
end
