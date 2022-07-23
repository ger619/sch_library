require_relative './decorator'
class TrimmerDecorator < Decorator
  def correct_name
    if @nameable.correct_name.length > 10
      git @nameable.correct_name.slice(0, 10).to_s
    else
      @nameable.correct_name
    end
  end
end
