class ComparatorPost < ApplicationRecord
  has_one_attached :illustration
  
  validate :check_file_presence
  validates :title, :body, :author, :abstract, presence: true

  def check_file_presence
    errors.add(:illustration, "no file added") unless illustration.attached?
  end
end
