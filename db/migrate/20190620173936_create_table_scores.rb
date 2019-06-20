class CreateTableScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.integer :user_id
      t.integer :quiz_id
    end
  end
end
