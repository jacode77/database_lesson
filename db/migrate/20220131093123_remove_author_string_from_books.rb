class RemoveAuthorStringFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :author
  end
end
