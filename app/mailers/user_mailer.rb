class UserMailer < ApplicationMailer

  def confirmation_email
    mail(to: order.email, subject: "Your Jungle Order Confirmation #: #{order.id}")
  end

end
