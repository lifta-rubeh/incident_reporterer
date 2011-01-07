class UserMailer < ActionMailer::Base
  default :from => "incident_reporter@truenorthservice.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.incident_received.subject
  #
  def incident_received(incident, link)
    @incident = incident
    @link = link
    mail :to => "rich.nurre@truenorthservice.com"
  end
end
