class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  enum :role, [:normal_user, :author, :admin, :karina]

  has_many_attached :images
  has_many :photos, dependent: :destroy 
  has_many :comments

  validates :images, presence: true
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
