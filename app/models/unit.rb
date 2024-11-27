class Unit < ApplicationRecord
  belongs_to :alum, required: true, class_name: "Alum", foreign_key: "alum_id"
end
