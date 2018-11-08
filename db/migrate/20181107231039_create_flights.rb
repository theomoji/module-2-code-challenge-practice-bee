class CreateFlight < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :name
      t.integer :bee_id
      t.integer :flower_id
    end
  end
end
