class ChangeGraduationYearToIntegerInAlums < ActiveRecord::Migration[7.1]
  def change
    change_column :alums, :graduation_year, :integer, using: 'EXTRACT(YEAR FROM graduation_year)::INTEGER'
  end
end
