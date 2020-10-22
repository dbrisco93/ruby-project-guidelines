class DeleteColumnFromConfirmations < ActiveRecord::Migration[6.0]
  def change
    remove_column :confirmations, :timeslot
  end
end
