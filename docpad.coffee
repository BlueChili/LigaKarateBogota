# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
	# ...
  port: 3000
  templateData:
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
    minicms:
      secret: 'Do camino vacío'
      auth: (login, password, callback) ->
        if login is 'admin' and password is 'password'
          callback null, true
        else
          callback "Invalid login or password.", false
}

# Export the DocPad Configuration
module.exports = docpadConfig
