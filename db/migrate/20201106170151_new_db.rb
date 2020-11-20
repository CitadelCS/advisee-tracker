class NewDb < ActiveRecord::Migration
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

      create_table :meetings do |t|
      t.string 'student'
      t.string 'date'
      t.string 'note_tacker'
      t.string 'note'
      # Add fields that let Rails automatically keep track
      # of when students are added or modified:
      t.timestamps
      end
  end 
end