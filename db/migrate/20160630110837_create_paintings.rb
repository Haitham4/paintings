class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
