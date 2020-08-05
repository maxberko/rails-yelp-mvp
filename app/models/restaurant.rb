# frozen_string_literal: true

class Restaurant < ApplicationRecord
  Restaurant::CATEGORIES = %w[chinese italian japanese french belgian]
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: Restaurant::CATEGORIES }
end
