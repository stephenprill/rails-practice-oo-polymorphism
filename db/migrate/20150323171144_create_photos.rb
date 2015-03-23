class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :url
      t.integer :created_by_id
      t.datetime :published_at
    end
  end
end
