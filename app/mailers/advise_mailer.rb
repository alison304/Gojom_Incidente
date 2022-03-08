class AdviseMailer < ApplicationMailer
def sending_incident
    @advice = params[:advice]
    mail to: "alison.jpq@gmail.com", subject: "incidente", from: "alison.jpq@gmail.com"
  end
end
