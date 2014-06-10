class CreateSinger < ActiveRecord::Migration
  def change
    create_table :singers do |t|
      t.string :name
      t.string :song
    end
  end
end
