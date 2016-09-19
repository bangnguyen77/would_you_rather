class QuestionsController < ApplicationController
  before_action :find_question, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @questions = Question.all
  end

  def show
  end

  def updateAnswer1
    alert("finally")
    console.log('inside')
    @question.answer1 += 1
    @question.total += 1
    render
  end

  def updateAnswer2
    @question.answer2 += 1
    @question.total += 1
    render
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
    if @question.update(question_params)
      redirect_to questions_path
    else
      render :edit
    end
  end

  def destroy
    @question.destroy
    redirect_to questions_path
  end

  private
  def question_params
    params.require(:question).permit(:statement, :answer1, :answer2)
  end

  def find_question
    @question = Question.find(params[:id])
  end

end
