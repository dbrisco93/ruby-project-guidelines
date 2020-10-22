class CreateBays < ActiveRecord::Migration[6.0]
  def change
    create_table :bays do |t|
      t.string :level
      t.integer :price
    end
  end
end
