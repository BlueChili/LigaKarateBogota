# DocPad Configuration File
# http://docpad.org/docs/config
layoutCss = require('./layout-css.coffee')
# Define the DocPad Configuration
docpadConfig = {
	# ...
  watchOptions:
    regenerateDelay: 0
    catchupDelay: 0
    preferredMethods: ['watchFile', 'watch']
  port: 3000
  events:
    extendCollections: (opts) ->
        @docpad.getCollection('files').on('add', (document) ->
            document.setMetaDefaults(standalone:true))

  templateData:
    getCustomStyles: layoutCss
    getHeadScripts: (layout) ->
      switch layout
        when 'resultsPage' then ['//ajax.googleapis.com/ajax/libs/angularjs/1.3.16/angular.min.js', '/js/results/app.js']
    getOgType: (layout) ->
      if layout is 'home' then 'website' else 'article'
    getPreparedDescription: (description) ->
      if description then description else 'Página oficial de la Liga de Karate Do de Bogotá'
    getArticles: ->
      @getCollection('html').findAllLive(type: 'news').sortArray(name:-1)
    site:
      navBar:
        about:
          href: '/about.html'
          label: '¿Quiénes somos?'
          section: 'about'
        history:
          href: '/history.html'
          label: 'Historia'
          section: 'history'
        results:
          href: '/results.html'
          label: 'Resultados deportivos'
          section: 'results'
        media:
          href: '/media.html'
          label: 'Galerías'
          section: 'media'
        contact:
          href: '/contact.html'
          label: 'Contáctenos'
          section: 'contact'
        clubs:
          href: '/clubs.html'
          label: 'Clubes Afiliados'
          section: 'clubs'

  plugins:
    copy:
      raw:
        src: 'raw'
    minicms:
      secret: 'Do camino vacío'
      auth: (login, password, callback) ->
        if login is 'admin' and password is 'password'
          callback null, true
        else
          callback "Invalid login or password.", false
      models: [
        name: ['Artículo', 'Artículos']
        list:
          fields: [
            name: 'Title'
            value: -> @title
          ]
          data: ->
            filter = type: 'news'
            return @docpad.getCollection('html').findAllLive(filter).sortArray(date: -1)
        form:
          url: -> "/news/#{@slugify @title}"
          ext: 'html.md'
          meta:
            title: -> @title
            type: 'news'
            layout: 'article'
            # tags: -> if @tags instanceof Array then @tags else []
            date: -> new Date(@date)
          content: -> @content
          components: [
            field: 'title'
            type: 'text'
          ,
            field: 'date'
            type: 'date'
          ,
            field: 'content'
            type: 'wysiwyg'
            valydate: (val) -> typeof(val) is 'string' and val.length > 0
            sanitize: (val) -> return val?.trim()
          ]
      ,
      ]
}

# Export the DocPad Configuration
module.exports = docpadConfig
