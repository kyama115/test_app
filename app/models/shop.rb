class Shop < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :description, presence: true, length: { maximum: 65_535 }

  def self.ransackable_attributes(_auth_object = nil)
    %w[title description area budget scene]
  end

  def self.ransackable_associations(_auth_object = nil)
    []
  end

end
