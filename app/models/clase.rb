class Clase < ActiveRecord::Base
  has_many :videojuegoclase
  has_many :videojuego, :through => :videojuegoclase
  validates :genero, presence: true, length: {in:4..15, too_short:'Tiene que tener al menos 4 caracteres', too_long:'Maxima de 15 caracteres'}
  validates :plataforma, presence: true, length: {in:4..30, too_short:'Tiene que tener al menos 4 caracteres', too_long:'Maxima de 30 caracteres'}

  scope :nivel_minimo, ->(nivel_minimo){where(["nivel > ?", nivel_minimo])}
end
