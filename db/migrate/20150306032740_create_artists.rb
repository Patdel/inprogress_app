class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :username
      t.text   :biography
      t.text   :artist_statement
      t.string :password_digest
      t.string :picture_url
      t.timestamps
    end
  end
end
