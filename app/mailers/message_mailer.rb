class MessageMailer < ApplicationMailer
  default to: 'trandgthanh@gmail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_me.subject
  #
  def contact_me(message)
    @body = message.body

    message_params = {:from => message.email,
                      :to => "trandgthanh@gmail.com",
                      :text => message.body}
  end
end


