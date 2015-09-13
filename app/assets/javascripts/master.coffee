$( document ).on 'ready page:load' , ->
  app.master = app.master || {}

  app.master.menu = new MasterProc_Menu
    el: '#js-menu'
    display_btn:
      el: '#js-menu-display-btn'
    fix_btn:
      el: '#js-menu-fix-btn'

  return
