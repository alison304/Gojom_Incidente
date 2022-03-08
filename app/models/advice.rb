class Advice < ApplicationRecord
  before_create :fun_secure_token
  has_many_attached :photos
  has_rich_text :description
  validates :subjet, :description, :photos, presence: true
  private
  def fun_secure_token
    begin
      self.secure_token = SecureRandom.urlsafe_base64
    end while self.class.exists?(secure_token: secure_token)
  end
end