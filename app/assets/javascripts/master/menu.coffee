#========
#
# Namespaces in this file
#
# - [Backbone.js] [View] MasterProc_Menu
# - [Backbone.js] [View] [Private] MasterProc_Menu_DisplayBtn
# - [Backbone.js] [View] [Private] MasterProc_Menu_FixBtn
# - [Backbone.js] [Model (State)] [Private] MasterProc_Menu_State
#
#========


#---------------- [Backbone.js] [View] MasterProc_Menu

MasterProc_Menu = Backbone.View.extend

  initialize: ( options ) ->
    app.debug.on_beginning.display( 'MasterProc_Menu#initialize' )

    @display_btn = new MasterProc_Menu_DisplayBtn( options.display_btn )
    @fix_btn = new MasterProc_Menu_FixBtn( options.fix_btn )

    @state = new MasterProc_Menu_State
      display_setting: 'hidden'

    #---- <events>
    @state.bind( 'change:display_setting' , @.update , @ )

    app.debug.on_ending.display( 'MasterProc_Menu#initialize' )
    return

  # Change class of 'body' element
  update: ->
    app.debug.on_beginning.display( 'MasterProc_Menu#update' )

    $( 'body' ).removeClass( 'menu-is-hidden menu-is-displayed menu-is-fixed' ).addClass( "menu-is-#{ @state.get( 'display_setting' ) }" )

    # if app.is_now_on_ctrl( 'top' )
      # app.top.view.rsrv_tbls.list.set_width_of_columns() ---- <Delete> Css で対応

    app.debug.on_ending.display( 'MasterProc_Menu#update' )
    return

window.MasterProc_Menu = MasterProc_Menu


#---------------- [Backbone.js] [View] [Private] MasterProc_Menu_DisplayBtn

MasterProc_Menu_DisplayBtn = Backbone.View.extend

  events:
    click: 'clicked'

  clicked: ->
    app.debug.on_beginning.display( 'MasterProc_Menu_DisplayBtn#clicked' )

    app.master.menu.state.display_btn_clicked()

    app.debug.on_ending.display( 'MasterProc_Menu_DisplayBtn#clicked' )
    return


#---------------- [Backbone.js] [View] [Private] MasterProc_Menu_FixBtn

MasterProc_Menu_FixBtn = Backbone.View.extend

  events:
    click: 'clicked'

  clicked: ->
    app.debug.on_beginning.display( 'MasterProc_Menu_FixBtn#clicked' )

    app.master.menu.state.fix_btn_clicked()

    app.debug.on_ending.display( 'MasterProc_Menu_FixBtn#clicked' )
    return


#---------------- [Backbone.js] [Model (State)] [Private] MasterProc_Menu_State

MasterProc_Menu_State = Backbone.Model.extend

  display_btn_clicked: ->
    app.debug.on_beginning.display( 'MasterProc_Menu_State#display_btn_clicked' )

    if @.get( 'display_setting' ) is 'hidden'
      @.display()

    else if @.get( 'display_setting' ) is 'displayed'
      @.hide()

    else if @.get( 'display_setting' ) is 'fixed'
      @.hide()

    app.debug.on_ending.display( 'MasterProc_Menu_State#display_btn_clicked' )
    return

  fix_btn_clicked: ->
    app.debug.on_beginning.display( 'MasterProc_Menu_State#fix_btn_clicked' )

    if @.get( 'display_setting' ) is 'fixed'
      @.display()

    else if @.get( 'display_setting' ) is 'displayed'
      @.fix()

    app.debug.on_ending.display( 'MasterProc_Menu_State#fix_btn_clicked' )
    return

  hide: ->
    @.set( 'display_setting' , 'hidden' )
    return

  display: ->
    @.set( 'display_setting' , 'displayed' )
    return

  fix: ->
    @.set( 'display_setting' , 'fixed' )
    return
