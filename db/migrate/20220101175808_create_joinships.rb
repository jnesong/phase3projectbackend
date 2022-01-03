class CreateJoinships < ActiveRecord::Migration[6.1]
  def change
    create_table :joinships do |t|
      t.string :shipname
      t.integer :user_id
      t.integer :baby_id
    end
  end
end
