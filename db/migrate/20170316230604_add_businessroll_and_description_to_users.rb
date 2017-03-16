class AddBusinessrollAndDescriptionToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :business_role, :string
    add_column :users, :description, :text
  end
end
