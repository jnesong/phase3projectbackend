class CreateSleeps < ActiveRecord::Migration[6.1]
  def change
    create_table :sleeps do |t|
      t.time :woke
      t.integer :hours
      t.integer :minutes
      t.integer :baby_id
    end
  end
end
