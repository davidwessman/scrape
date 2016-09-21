class NotifyMailer < ApplicationMailer
  layout(false)
  default(from: 'Lägenhetskollen <david@wessman.co>', to: 'David Wessman <david.wesmn@gmail.com>')

  def today
    mail(subject: 'OMG IT IS HERE!') do |format|
      format.text do
        render text: 'It is out'
      end
    end
  end

  def not_today
    mail(subject: 'Not today :/') do |format|
      format.text do
        render text: 'No apartment today :/'
      end
    end
  end
end
