class MessageMailer < ApplicationMailer
require 'mailgun'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_me.subject
  #
  def contact_me(message)
    @body = message.body
    mg_client = Mailgun::Client.new ENV['mailgun_secret_api_key']

    mail to: "trandgthanh@gmail.com", from: message.email
  end
end

