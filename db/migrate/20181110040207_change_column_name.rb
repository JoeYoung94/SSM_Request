class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :students, :name, :student_name
  end
end
