class AddDescriptionToQuotidiens < ActiveRecord::Migration[5.2]
  def change
    add_column :quotidiens, :description, :text
  end
end
