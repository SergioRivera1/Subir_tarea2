class CreateAguacateros < ActiveRecord::Migration[5.1]
  def change
    create_table :aguacateros do |t|
      t.string :name
      t.string :raza1
      t.string :raza2
      t.string :sexo

      t.timestamps
    end
  end
end
