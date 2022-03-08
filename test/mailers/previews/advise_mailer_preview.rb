# Preview all emails at http://localhost:3000/rails/mailers/advise_mailer
class AdviseMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/advise_mailer/mailer
  def mailer
    AdviseMailer.mailer
  end

end
