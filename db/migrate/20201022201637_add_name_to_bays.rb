class AddNameToBays < ActiveRecord::Migration[6.0]
  def change
    add_column :bays, :name, :string
  end
end
