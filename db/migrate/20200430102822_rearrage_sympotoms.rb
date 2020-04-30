class RearrageSympotoms < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :has_asomia, :boolean
    add_column :contacts, :has_cold, :boolean
    add_column :contacts, :has_rhinorrhea, :boolean
    add_column :contacts, :has_sorethroat, :boolean
    add_column :contacts, :has_diarrhoea, :boolean
    add_column :contacts, :has_fever, :boolean
    add_column :contacts, :has_cough, :boolean
    remove_column :contacts, :asomia_cold_rhinorrhea
    remove_column :contacts, :sorethroat_diarrhoea
    remove_column :contacts, :fever_cough
  end
end
