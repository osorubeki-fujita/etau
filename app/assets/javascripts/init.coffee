app = app || {}
window.app = app

#--------

app.debug = new App_Debugger
  mode: false

app.debug.init()

#--------

app.libraries = app.libraries || {}
# app.libraries.holiday_name = new HolidayNameFactory()

#--------

#  現在の Controller (Rails) を判定するメソッド
# @return [Boolean]
# @note body がクラス xxxx-ctrl をもつか否かで判定する。
app.is_now_on_ctrl = ( ctrl_name ) ->
  return $( 'body' ).hasClass( "#{ ctrl_name }-ctrl" )
