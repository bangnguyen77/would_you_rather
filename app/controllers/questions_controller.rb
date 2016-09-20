class QuestionsController < ApplicationController
  before_action :find_question, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @questions = Question.all
  end

  def show
  end

  def new
    @question = current_user.questions.build
  end

  def create
    @question = current_user.questions.build(question_params)
    @question.total = 0
    @question.answer1total = 0
    @question.answer2total = 0
    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if(question_params.has_key?(:answer1total))
      @question.total += 1
      @question.answer1total += 1
      @question.save
      redirect_to question_path
    else
      if @question.total += 1
        @question.answer2total  += 1
        @question.save
        redirect_to question_path
      else
        render :edit
      end
    end
  end

  def destroy
    @question.destroy
    redirect_to questions_path
  end

  private
  def question_params
    params.require(:question).permit(:statement, :answer1, :answer2, :answer1total, :answer2total, :total)
  end

  def find_question
    @question = Question.find(params[:id])
  end

end
