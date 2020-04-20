class FixFields < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :was_confirmed_case, :boolean
    remove_column :contacts, :cormobidity_hiv
    add_column :contacts, :cormobidity_std, :boolean
  end
end
