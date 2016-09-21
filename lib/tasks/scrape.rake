task scrape: :environment do
  # Require the gems
  require 'capybara/poltergeist'

  # Configure Poltergeist to not blow up on websites with js errors aka every website with js
  # See more options at https://github.com/teampoltergeist/poltergeist#customization
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, js_errors: false)
  end

  # Configure Capybara to use Poltergeist as the driver
  Capybara.default_driver = :poltergeist

  browser = Capybara.current_session
  delphi_url = "https://www.afbostader.se/lediga-bostader/bostadsomraden/delphi/"

  found = false
  if browser.visit(delphi_url)
    elements = browser.all('.vacant-housing h3 a')
    elements.each do |el|
      if el['href'].include?('obj=5146')
        found = true
        NotifyMailer.today.deliver_now
        puts 'It is live'
      end
    end

    if !found
      NotifyMailer.not_today.deliver_now
      puts 'Not today :('
    end
  end
end
