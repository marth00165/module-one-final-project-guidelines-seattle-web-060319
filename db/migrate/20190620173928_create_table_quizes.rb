class CreateTableQuizes < ActiveRecord::Migration[5.0]
  def change
    create_table :quizes do |t|
      t.string :name
    end
  end
end
