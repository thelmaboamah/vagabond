class AddUserAndCityReferenceToEntries < ActiveRecord::Migration[5.0]
  def change
    add_reference :entries, :user, foreign_key: true
    add_reference :entries, :city, foreign_key: true

    add_index :entries, [:user_id, :city_id, :created_at]
  end
end
