module ApplicationHelper

  # @see http://rails3try.blogspot.jp/2012/01/rails3-i18n.html
  def t_dict( label )
    # puts ""
    # puts label
    ary = label.split('.')
    # puts ary.to_s

    model = ary[0].constantize
    # puts "Model: #{model}"
    begin
      case ary.length
      when 1
        return model.model_name.human
      when 2
        return model.human_attribute_name( ary[1] )
      when 3
        # puts str = "activerecord.#{ ary[1].pluralize }.#{ ary[0] }.#{ ary[2] }"
        return t( "activerecord.#{ ary[1].pluralize }.#{ ary[0].underscore.downcase }.#{ ary[2] }" )
      else
        raise
      end
    rescue
      return label
    end
  end

end
