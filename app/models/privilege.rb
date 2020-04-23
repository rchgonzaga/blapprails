# frozen_string_literal: true

class Privilege < ApplicationRecord
  has_many :groups, through: :group_privilege
  has_many :group_privilege, dependent: :delete_all
end
