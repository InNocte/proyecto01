class Videojuego < ActiveRecord::Base
  has_many  :videojuegoclase
  has_many :clase, :through => :videojuegoclase
  validates :nombre, presence: true, length: {in:4..20, too_short:'Tiene que tener al menos 4 caracteres', too_long:'Maxima de 20 caracteres'}
  validates :descripcion, presence: true, length: {in:4..200, too_short:'Tiene que tener al menos 4 caracteres', too_long:'Maxima de 200 caracteres'}
  validates :precio, presence: true, length: {in:3..9, too_short:'Tiene que tener al menos 3 caracteres', too_long:'Maxima de 9 caracteres'}
end
