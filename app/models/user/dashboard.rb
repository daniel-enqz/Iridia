class User::Dashboard
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def donations
    user.owned_donations
  end

  def claimed
    user.claimed_donations
  end
end
