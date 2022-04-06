class CreateBreads < ActiveRecord::Migration[7.0]
  def change
    create_table :breads do |t|
      t.string :bread_name
      t.text :bread_story
      t.integer :baker_id

      t.timestamps
    end
  end
end
