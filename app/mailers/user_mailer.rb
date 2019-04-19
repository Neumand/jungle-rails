class UserMailer < ApplicationMailer

  def confirmation_email(email, order)
    @email = email
    @order = order
    mail(to: email, subject: "Your Jungle Order Confirmation #: #{order.id}")
  end

end
