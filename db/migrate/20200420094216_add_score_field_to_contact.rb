class AddScoreFieldToContact < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :score, :integer
  end
end
