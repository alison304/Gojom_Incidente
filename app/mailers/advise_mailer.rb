class AdviseMailer < ApplicationMailer
def sending_incident
    @advice = params[:advice]
    mail to: "casos@gojom.com", subject: "incidente", from: "alison.jpq@gmail.com"
  end
end
