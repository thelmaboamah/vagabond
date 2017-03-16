class AddSlugToEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :entries, :slug, :string
    add_index :entries, :slug, unique: true
  end
end
