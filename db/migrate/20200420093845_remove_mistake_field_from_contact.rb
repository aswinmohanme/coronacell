class RemoveMistakeFieldFromContact < ActiveRecord::Migration[6.0]
  def change
    remove_column :contacts, :was_confirmed_case
  end
end
