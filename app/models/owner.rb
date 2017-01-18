class Owner < ActiveRecord::Base
  has_many :units

  def total_monthly_earnings
    units.pluck(:monthly_rent).sum
  end
end
