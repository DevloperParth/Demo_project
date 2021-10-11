class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :assigned_projects
  has_many :projects, through: :assigned_projects
end
