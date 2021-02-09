class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # -Association-
  # has_one_attached :image
  has_many :sakes
  has_many :comments,  dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :nickname, presence:true
end
