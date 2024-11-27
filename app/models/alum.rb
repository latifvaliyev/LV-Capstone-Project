class Alum < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :university, required: true, class_name: "University", foreign_key: "uni_id"
  has_many  :units, class_name: "Unit", foreign_key: "alum_id", dependent: :destroy
end
