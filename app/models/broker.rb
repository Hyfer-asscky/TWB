class Broker < ApplicationRecord
  # include Searchable
  acts_as_taggable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  POSTAL_CODE =  (/(\A[ABCEGHJKLMNPRSTVXY]\d[ABCEGHJ-NPRSTV-Z][ ]?\d[ABCEGHJ-NPRSTV-Z]\d\z)|(\A\d{5}([ \-](?:\d{4}|\d{6}))?\z)/)


  validates :first_name, :last_name, :phone, :firm_name,:address_line_1, :city, :zip_postal_code,:state_province_county, :country, :broker_number, presence: true
  validates :zip_postal_code, format: { with: POSTAL_CODE }

  mount_uploader :avatar, AvatarUploader
  acts_as_followable
  acts_as_follower

  has_many :jobs, as: :agent
  has_many :uploads, as: :user
end
