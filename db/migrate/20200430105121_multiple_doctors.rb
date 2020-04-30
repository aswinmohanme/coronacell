class MultipleDoctors < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :feedback_doctor, :text
    add_column :contacts, :feedback_specialist, :text
  end
end
