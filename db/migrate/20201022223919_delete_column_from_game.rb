class DeleteColumnFromGame < ActiveRecord::Migration[6.0]
  def change
    remove_column :games, :club, :string
  end
end
