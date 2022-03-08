class Advice < ApplicationRecord
  before_create :fun_secure_token
  after_create :incident_mailing

  has_many_attached :photos
  has_rich_text :description
  validates :subjet, :description, :photos, presence: true
  private
  def fun_secure_token
    begin
      self.secure_token = SecureRandom.urlsafe_base64
    end while self.class.exists?(secure_token: secure_token)
  end

  def incident_mailing
    AdviseMailer.with(advice: self).sending_incident.deliver!
  end
end