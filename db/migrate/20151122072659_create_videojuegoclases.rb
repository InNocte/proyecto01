class CreateVideojuegoclases < ActiveRecord::Migration
  def change
    create_table :videojuegoclases do |t|
      t.references :videojuego, index: true
      t.references :clase, index: true

      t.timestamps
    end
  end
end
