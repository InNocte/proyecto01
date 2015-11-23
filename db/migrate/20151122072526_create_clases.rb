class CreateClases < ActiveRecord::Migration
  def change
    create_table :clases do |t|
      t.string :genero
      t.string :plataforma
      t.boolean :multijugador

      t.timestamps
    end
  end
end
