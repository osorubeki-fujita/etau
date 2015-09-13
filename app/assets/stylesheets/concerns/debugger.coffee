#========
#
# Namespaces in this file
#
# - App_Debugger
# - [Private] App_Debugger_OnBeginning
# - [Private] App_Debugger_OnEnding
# - [Private] App_Debugger_ReturningValue
# - [Private] App_Debugger_Console
#
# - App_Benchmark
#
#========


#---------------- App_Debugger

#---- subclasses

# - App_Debugger_OnBeginning
# - App_Debugger_OnEnding
# - App_Debugger_ReturningValue
# - App_Debugger_Console

class App_Debugger

  constructor: ( options ) ->
    unless options.mode?
      throw new Error
    @options = options

  init: ->
    @on_beginning = new App_Debugger_OnBeginning( @options )
    @on_ending = new App_Debugger_OnEnding( @options )
    @returning_value = new App_Debugger_ReturningValue( @options )
    @console = new App_Debugger_Console( @options )
    return

  exec: ( f , _options = {} ) ->
    # console.log 'exec'
    # console.log f
    # console.log _options
    if @options.mode or ( _options? and _options.force )
      # console.log 'true'
      f.call(@)
      return
    return

  exec_force: (f) ->
    @.exec( f, { force: true } )
    return

window.App_Debugger = App_Debugger


#---------------- App_Debugger_OnBeginning

#---- superclass

# - App_Debugger

class App_Debugger_OnBeginning extends App_Debugger

  display:  ( str , options = {} ) ->
    f = ->
      console.log '================================'
      console.log "#{ str } - begin"
      return

    @.exec( f , options )
    return


#---------------- App_Debugger_OnEnding

#---- superclass

# - App_Debugger

class App_Debugger_OnEnding extends App_Debugger

  display: ( str , options = {} ) ->
    f = ->
      console.log "#{ str } - end"
      return

    @.exec( f , options )
    return


#---------------- App_Debugger_ReturningValue

#---- superclass

# - App_Debugger

class App_Debugger_ReturningValue extends App_Debugger

  display: ( str , options = {} ) ->
    f = ->
      console.log "* #{ str }"
      return

    @.exec( f , options )
    return


#---------------- App_Debugger_Console

#---- superclass

# - App_Debugger

class App_Debugger_Console extends App_Debugger

  log: ( obj , options = {} ) ->
    f = ->
      console.log obj
      return

    @.exec( f , options )
    return

  line: ( options = {} ) ->
    f = ->
      console.log '--------'
      return

    @.exec( f , options )
    return


#---------------- App_Benchmark

class App_Benchmark

  constructor: ( @title , @time_begin = Date.now() ) ->

  stop: ( str ) ->
    @time_end = Date.now()
    console.log "#{ @title } - #{ @time_end - @time_begin } ms"
    return

window.App_Benchmark = App_Benchmark
