class DonationPolicy < ApplicationPolicy
  def create?
    true
  end

  def show?
    true
  end

  def claim?
    record.owner != current_user
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end
end
