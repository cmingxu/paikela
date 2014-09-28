class CreateCuriculiams < ActiveRecord::Migration
  def change
    create_table :curiculiams do |t|
      t.integer :teacher_id
      t.string :teacher_name
      t.integer :student_id
      t.string :student_name
      t.integer :begin_at
      t.integer :end_at
      t.string :status

      t.timestamps
    end
  end
end
