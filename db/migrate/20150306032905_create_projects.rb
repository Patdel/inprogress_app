class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text   :description
      t.string :picture_url
      t.references :artist
      t.timestamps
    end
  end
end
