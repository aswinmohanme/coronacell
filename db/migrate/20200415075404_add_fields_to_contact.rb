class AddFieldsToContact < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :covid_19_was_confirmed, :boolean
    add_column :contacts, :contact_with_suspected_14_days, :boolean
    add_column :contacts, :contact_with_confirmed_14_days, :boolean
    add_column :contacts, :travel_non_risk_area_4_6, :boolean
    add_column :contacts, :travel_non_risk_area_0_3, :boolean
    add_column :contacts, :travel_risk_area_4_6, :boolean
    add_column :contacts, :travel_risk_area_0_3, :boolean
    add_column :contacts, :cormobidity_hypertension, :boolean
    add_column :contacts, :cormobidity_diabetes, :boolean
    add_column :contacts, :cormobidity_cardio, :boolean
    add_column :contacts, :cormobidity_liver, :boolean
    add_column :contacts, :cormobidity_renal, :boolean
    add_column :contacts, :cormobidity_hypercholestrolemia, :boolean
    add_column :contacts, :cormobidity_hiv, :boolean
    add_column :contacts, :cormobidity_cancer, :boolean
    add_column :contacts, :cormobidity_pregnancy, :boolean
    add_column :contacts, :cormobidity_respiratory, :boolean
    add_column :contacts, :regular_treatment, :boolean
    add_column :contacts, :surgeries_three_years, :boolean
    add_column :contacts, :on_immunosuppresants, :boolean
    add_column :contacts, :history_of_transplants, :boolean
    add_column :contacts, :asomia_cold_rhinorrhea, :boolean
    add_column :contacts, :sorethroat_diarrhoea, :boolean
    add_column :contacts, :fever_cough, :boolean
    add_column :contacts, :breathing_difficulty, :boolean
  end
end
