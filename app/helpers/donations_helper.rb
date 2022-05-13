module DonationsHelper
  def short_date(date)
    date.strftime("%a/%b/%Y")
  end
end
