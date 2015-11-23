class CreateVideojuegos < ActiveRecord::Migration
  def change
    create_table :videojuegos do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :precio
      t.date :fechanacimiento

      t.timestamps
    end
  end
end
