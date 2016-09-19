class CombineQuestionsAndAnswerTables < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :answer1, :text
    add_column :questions, :answer2, :text

    drop_table :answers
  end
end
