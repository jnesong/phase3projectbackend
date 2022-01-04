class ChangeDataTypeForWokeToString < ActiveRecord::Migration[6.1]
  def change
    change_column :sleeps, :woke, :string
  end
end
