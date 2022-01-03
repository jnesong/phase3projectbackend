class ChangeDatatypeForWoke < ActiveRecord::Migration[6.1]
  def change
    change_column :sleeps, :woke, :datetime
  end
end
