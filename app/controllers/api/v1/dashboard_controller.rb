# frozen_string_literal: true

class Api::V1::DashboardController < ApplicationController
  def index
    load_user_farms
  end

  private

  def load_user_farms
    @user_farms = current_user.farms.order('created_at DESC')
  end
end
