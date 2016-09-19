class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.column :question_id, :integer
      t.column :statment, :text

      t.timestamps
    end
  end
end
