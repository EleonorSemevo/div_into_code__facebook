class PostMailer < ApplicationMailer
  def post_mail(post, current_user)
    @post = post
    mail to: current_user.email, subject: "Confirmation de post"
  end
end
