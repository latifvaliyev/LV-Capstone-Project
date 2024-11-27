# == Schema Information
#
# Table name: units
#
#  id         :bigint           not null, primary key
#  address    :string
#  city       :string
#  unit_bio   :text
#  unit_image :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  alum_id    :integer
#
class Unit < ApplicationRecord
  belongs_to :alum, required: true, class_name: "Alum", foreign_key: "alum_id"
end
