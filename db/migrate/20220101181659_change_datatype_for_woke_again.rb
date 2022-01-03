class ChangeDatatypeForWokeAgain < ActiveRecord::Migration[6.1]
  def change
    change_column :sleeps, :woke, :time
  end
end
