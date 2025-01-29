class ChangeBooksColumnName < ActiveRecord::Migration[7.2]
  def change
    rename_column :books, :publishd, :published
  end
end
