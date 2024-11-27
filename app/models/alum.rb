# == Schema Information
#
# Table name: alums
#
#  id                     :bigint           not null, primary key
#  ai_pref                :text
#  bio                    :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  graduation_year        :date
#  image                  :string
#  industry               :string
#  linkedin               :string
#  name                   :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  uni_id                 :integer
#
# Indexes
#
#  index_alums_on_email                 (email) UNIQUE
#  index_alums_on_reset_password_token  (reset_password_token) UNIQUE
#
class Alum < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :university, required: true, class_name: "University", foreign_key: "uni_id"
  has_many  :units, class_name: "Unit", foreign_key: "alum_id", dependent: :destroy
end
