class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :authors
      t.string :language
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end