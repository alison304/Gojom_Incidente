class CreateAdvices < ActiveRecord::Migration[6.1]
  def change
    create_table :advices do |t|
      t.string :subjet
      t.text :description
      t.date :incident_date

      t.timestamps
    end
  end
end
