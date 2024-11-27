class University < ApplicationRecord
  has_many  :alums, class_name: "Alum", foreign_key: "uni_id", dependent: :destroy
end
