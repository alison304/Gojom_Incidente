class Advice < ApplicationRecord
  before_create :fun_secure_token
  has_many_attached :photos
  has_rich_text :descripcion
  validates :asunto, :descripcion, :photos, presence: true
  private
  def fun_secure_token
    begin
     self.secure_token = SecureRandom.uuid
   end while Information.where(secure_token: self.secure_token).exists?
  end
