class CreateIngresars < ActiveRecord::Migration[5.1]
  def change
    create_table :ingresars do |t|
      t.string :Mascota
      t.string :Nombre
      t.string :Raza
      t.string :Sexo

      t.timestamps
    end
  end
end
