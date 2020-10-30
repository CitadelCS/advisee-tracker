class CreateStudents < ActiveRecord::Migration
  add_column :students, :id
  def change
    create_table :students do |t|
      t.string 'first'
      t.string 'last'
      t.string 'CWID'
      t.datetime 'DOB'
      t.string 'advisor'
      t.string 'year'
      t.string 'semester'
        t.datetime 'lastMeet'
      # Add fields that let Rails automatically keep track
      # of when students are added or modified:
      t.timestamps
    end
      create_table :faculty do |t|
      t.string 'first'
      t.string 'last'
      t.string 'title'
      # Add fields that let Rails automatically keep track
      # of when students are added or modified:
      t.timestamps
    end 
  end
end
