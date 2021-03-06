# The Application
# a method for start
# a method for stop

http = require 'http'

express = require 'express'

class DamnChess

  constructor: ->
    # create the app
    @app = express()

    # create the server
    @server = http.createServer @app

    # define default config
    @config =
      port: process.env.PORT or 3000


  start: (config, callback) ->
    self = @
    # merge the config with this config
    # start the server
    # callback if start (or error)
    @server.listen @config.port, (err) ->
      # error handling
      console.error err if err
      # success handling
      console.log "Server is running at port #{self.config.port}" unless err

      # callback
      callback err

module.exports = new DamnChess
