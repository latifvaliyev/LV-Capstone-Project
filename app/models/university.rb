# == Schema Information
#
# Table name: universities
#
#  id         :bigint           not null, primary key
#  name       :string
#  uni_image  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class University < ApplicationRecord
  has_many  :alums, class_name: "Alum", foreign_key: "uni_id", dependent: :destroy
end
