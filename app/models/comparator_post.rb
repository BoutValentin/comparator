class ComparatorPost < ApplicationRecord
  paginates_per 8

  has_one_attached :illustration
  has_many_attached :trix_attachments
  
  validate :check_file_presence
  validates :title, :body, :author, :abstract, presence: true

  def check_file_presence
    errors.add(:illustration, "no file added") unless illustration.attached?
  end
end
