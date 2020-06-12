module Api
  module V1
    class QuestionsController < Api::V1::ApiController
      before_action :doorkeeper_authorize!, except: [:index, :show]

      def index
        render json: Question.all.to_json
      end

      def show
        question = Question.where(slug: params[:question_slug])
        answers = question.try(:answers) || [] 
        render json: { question: question, answers: answers}
      end

      private

    end
  end
end
