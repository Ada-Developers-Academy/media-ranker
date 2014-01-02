class CreateAlbumsTable < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name, :artist
      t.text :description
      t.integer :rank, default: 0
    end
  end
end
