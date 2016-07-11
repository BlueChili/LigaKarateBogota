# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
	# ...
  templateData:
    site:
      navBar:
        about:
          href: '/about.html/'
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
}

# Export the DocPad Configuration
module.exports = docpadConfig
