# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # pretect_from_porgety unless: -> { request.format.json? }
end
