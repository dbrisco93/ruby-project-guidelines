class DeleteColumnFromGames < ActiveRecord::Migration[6.0]
  def change
    remove_column :games, :club
  end
end
