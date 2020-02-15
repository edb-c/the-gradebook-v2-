class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :prefix
      t.string :firstname
      t.string :lastname
    end
  end
end
