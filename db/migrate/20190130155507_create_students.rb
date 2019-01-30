class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.text :name
      t.belongs_to :courses, index: true
      t.timestamps
    end
  end
end
