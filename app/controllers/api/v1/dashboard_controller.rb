class Api::V1::DashboardController < ApplicationController
  def index
    load_owners_percentage
  end

  private 

  def load_owners_percentage
    @percentage_with_owner = current_user.farms.order('created_at DESC').map(&:farm_has_onwer)
  end
end
