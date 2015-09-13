module ButtonHelper

  # @!group Buttons

  def menu_display_button( path = nil )
    basic_button( :div , "メニュー" , :menu , path , icon: :list_ul , layout_type: :h , btn_id: 'js-menu-display-btn' )
  end

  def menu_fix_button
    basic_button( :div , "表示を固定" , 'menu-fix' , icon: :thumb_tack , layout_type: :h , btn_id: 'js-menu-fix-btn' )
  end

  def create_button( controller = nil , layout_type: :h )
    if controller.present?
      link_path = url_for( controller: controller , action: :new )
    else
      link_path = nil
    end
    basic_button( :div , "新規登録" , 'creating-new' , link_path , icon: :plus_circle , layout_type: layout_type , btn_id: 'js-create-btn' )
  end

  def save_button
    basic_button( :submit_button , "登録" , :save , icon: :check_square_o )
  end

  def basic_button( tag_type , title , btn_class , path = nil , btn_id: nil , layout_type: :h  , icon: nil , icon_size: 1 , method_of_link: nil , data_attr_of_link: nil )
    raise unless icon.present?

    div_classes = [ :btn , 'link-btn' , "btn--#{ btn_class }" , "btn-#{ layout_type }" , :clr ]

    proc_of_content = Proc.new {
      if path.present?
        concat link_to( "" , path , method: method_of_link , data: data_attr_of_link )
      end
      concat( content_tag( :div , class: 'btn__icon-outer' ) {
        content_tag( :i , "" , class: [ :fa , "fa-#{ icon_size }x" , "fa-#{ icon.to_s.dasherize }" , :btn__icon ] )
      })
      concat content_tag( :div , title , class: :btn__title )
    }

    case tag_type.to_s
    when 'div'
      content_tag( :div , class: div_classes , id: btn_id  , &proc_of_content )
    when 'submit_button'
      content_tag( :button , class: div_classes , type: :submit , id: btn_id , &proc_of_content )
    end
  end

  # @!endgroup

end
