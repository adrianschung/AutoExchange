class Vehicle < ApplicationRecord
  belongs_to :user
  validates :type, :make, :model, :color, :year, :mileage, :price, presence: :true
  before_save :capitalize_make, :capitalize_model, :capitalize_color

  def capitalize_make
    self.make = self.make.capitalize
  end

  def capitalize_model
    self.model = self.model.capitalize
  end

  def capitalize_color
    self.color = self.color.capitalize
  end
end
