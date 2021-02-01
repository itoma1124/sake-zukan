class Sake < ApplicationRecord
  # -Association-
  # has_many :memos,     dependent: :destroy
  # has_many :favorites, dependent: :destroy
  belongs_to :prefecture
  belongs_to :area
end
