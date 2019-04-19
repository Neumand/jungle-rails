class UserMailer < ApplicationMailer

  def confirmation_email(email, order)
    @email = email
    @order = order
    @line_items = order.line_items
    mail(to: email, subject: "Your Jungle Order Confirmation #: #{order.id}")
  end

end
