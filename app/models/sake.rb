class Sake < ApplicationRecord
  # -Association-
  belongs_to :user
  has_one_attached :image
  has_many :comments,     dependent: :destroy
  # has_many :favorites, dependent: :destroy
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area
  belongs_to :easy
  belongs_to :sourness
  belongs_to :taste
  belongs_to :total

end
