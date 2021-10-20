class Project < ApplicationRecord
  has_many :credentials, inverse_of: :project,dependent: :delete_all
  accepts_nested_attributes_for :credentials, reject_if: :all_blank, allow_destroy: true
  has_one_attached :image
  has_many :assigned_projects
  has_many :users, through: :assigned_projects, dependent: :delete_all
  validates :title, presence: true
  validates :client_name, presence: true
  validates :pay_frequency, presence: true
  validates :pay_rate, presence: true
  # scope :this_month, -> { where(created_at: Time.zone.now.beginning_of_month..Time.zone.now.end_of_month) }
end
