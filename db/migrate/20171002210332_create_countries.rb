class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.text :name
      t.integer :population
      t.string :flag_url
      t.text :first_language
      t.text :name_of_president

      t.timestamps
    end
  end
end
