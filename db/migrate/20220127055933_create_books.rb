class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :date_published
      t.text :description
      t.string :genre

      t.timestamps
    end
  end
end
