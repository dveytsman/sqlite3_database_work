
require 'SQLite3'
require_relative 'questions_database'

class QuestionLike
  attr_accessor :user_id, :question_id

  def self.all
    data = QuestionsDatabase.instance.execute("SELECT * FROM question_likes")
    data.map { |question_like| QuestionLike.new(question_like) }
  end

  def initialize(options)
    @question_id = options['question_id']
    @user_id = options['user_id']
  end

end