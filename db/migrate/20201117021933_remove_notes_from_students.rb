class RemoveNotesFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :notes, :text
  end
end
