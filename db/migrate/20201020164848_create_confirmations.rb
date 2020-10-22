class CreateConfirmations < ActiveRecord::Migration[6.0]
  def change
    create_table :confirmations do |t|
      t.string :name
      t.string :nickname
      t.string :bay
      t.string :game
      t.string :timeslot
      t.integer :total
    end

  end
end
