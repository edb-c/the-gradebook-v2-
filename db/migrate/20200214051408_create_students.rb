class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
    end
  end
end
