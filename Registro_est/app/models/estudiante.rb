class Estudiante < ApplicationRecord
  validates_presence_of :nombres, presence: true
  validates_format_of :nombres, with: /\A[a-zA-Z]+\z/
  validates :nombres, length: { maximum: 15 }, on: :create

  validates_presence_of :apellidos, presence: true
  validates_format_of :apellidos, with: /\A[a-zA-Z]+\z/
  validates :apellidos, length: { maximum: 15 }, on: :create

  validates_presence_of :carrera, presence: true
  validates_format_of :carrera, with: /\A[a-zA-Z]+\z/
  validates :carrera, length: { maximum: 15 }, on: :create

  validates :carnet, presence: true, uniqueness: true, format: { with: /\A\d{6}\z/, message: "debe contener solo 6 caracteres numéricos" }
end
