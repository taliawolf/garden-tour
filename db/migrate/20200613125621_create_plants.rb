class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
