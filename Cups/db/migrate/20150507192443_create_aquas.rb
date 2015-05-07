class CreateAquas < ActiveRecord::Migration
  def change
    create_table :aquas do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
