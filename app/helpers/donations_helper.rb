module DonationsHelper
  def short_date(date)
    date.strftime("%d/%b/%Y")
  end
end
