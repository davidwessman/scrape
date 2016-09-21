class NotifyMailer < ApplicationMailer
  layout(false)

  def notify
    mail(from: 'david@wessman.co', to: 'david.wesmn@gmail.com', subject: 'It is live') do |format|
      format.text do
        render text: 'It is out'
      end
    end
  end
end
