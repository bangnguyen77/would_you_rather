class AddColumnQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :total, :integer
    add_column :questions, :answer1total, :integer
    add_column :questions, :answer2total, :integer
  end
end
