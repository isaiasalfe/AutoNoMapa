class Profile < ActiveRecord::Base

  attr_accessible :cell_phone, :experience, :name, :nickname, :phone

  has_and_belongs_to_many :categories

  validates_presence_of :name, :cell_phone, :phone, :experience
  validate :require_at_least_one_category

  private

  def require_at_least_one_category
    errors.add(:categories, "require at least one category") unless categories.size > 0
  end
end
