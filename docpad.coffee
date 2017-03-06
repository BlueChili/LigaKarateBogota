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
  collections:
    recentUpdates: ->
      @getCollection('html').findAllLive($or: [{type: 'media'}, {type: 'news'}], [date: -1])

  templateData:
    marked: require('marked')
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
        home:
          href: '/'
          label: 'Inicio'
          section: 'home'
        news:
          href: '/news'
          label: 'Noticias'
          section: 'news'
        about:
          href: '/about'
          label: '¿Quiénes somos?'
          section: 'about'
        history:
          href: '/history'
          label: 'Historia'
          section: 'history'
        results:
          href: '/results'
          label: 'Resultados deportivos'
          section: 'results'
        media:
          href: '/media'
          label: 'Galerías'
          section: 'media'
        contact:
          href: '/contact'
          label: 'Contáctenos'
          section: 'contact'
        clubs:
          href: '/clubs'
          label: 'Clubes Afiliados'
          section: 'clubs'
        matriculas:
          href: '/matriculas'
          label: 'Matrículas'
          section: 'matriculas'

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
            return @docpad.getCollection('html').findAllLive(filter)
        form:
          url: -> "/news/#{@slugify @title}"
          ext: 'html.md'
          meta:
            title: -> @title
            type: 'news'
            layout: 'article'
            date: -> new Date(@date)
            image: -> @image
          content: -> @content
          components: [
            field: 'title'
            label: 'Título'
            type: 'text'
          ,
            field: 'description'
            label: 'Descripción'
            type: 'text'
          ,
            field: 'date'
            label: 'Fecha'
            type: 'date'
          ,
            field: 'image'
            label: 'Imagen de portada'
            type: 'file'
            use: 'thumbnail'
            optional: true
            images:
              standard:
                url: -> "/img/news/#{@slugify @title}.#{@ext}"
                width: 1920
                height: 9999999
              thumbnail:
                url: -> "/img/news/#{@slugify @title}.#{@ext}"
                width: 300
                height: 9999999
          ,
            field: 'filter'
            label: 'Filtro'
            type: 'choice'
            expanded: true
            data: -> ['Si', 'No']
          ,
            field: 'content'
            type: 'markdown'
            height: 600
          ,
          ]
      ,
      name: ['Galería', 'Galerías']
      list:
        fields: [
          name: 'Título'
          value: -> @title
        ]
        data: ->
          @docpad.getCollection('html').findAllLive(type: 'media')
      form:
        url: -> "/media/#{@slugify @title}"
        ext:'html.md'
        meta:
          title: -> @title
          type: 'media'
          layout: 'article'
          date: -> new Date(@date)
        content: -> @content
        components: [
          field: 'title'
          type: 'text'
        ,
          field: 'date'
          type: 'date'
        ]
      ,
      ]
  environments:
    static:
      enabledPlugins:
        livereload: false
        # cleanurls: false
}

# Export the DocPad Configuration
module.exports = docpadConfig
