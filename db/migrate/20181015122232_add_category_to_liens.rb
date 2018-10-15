class AddCategoryToLiens < ActiveRecord::Migration[5.2]
  def change
    add_column :liens, :category, :string
  end
end
