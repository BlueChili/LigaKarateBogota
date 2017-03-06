doctype 5
html lang: 'es', ->
  head ->
    meta charset: 'utf-8'
    meta name: 'description', content: @getPreparedDescription(@document.cms?.description)
    meta name:'keywords', content:'Liga de Karate de Bogota,Karate Bogota,Karate,Karate Do,karate do,Liga,Oficial,Bogotá,Bogota,IDRD'
    meta name:'viewport', content:'width=device-width, initial-scale=1.0'
    link href:'http://fonts.googleapis.com/css?family=Lato:300,400|Raleway:300,400', rel:'stylesheet', type:'text/css'
    link type:'image/x-icon', href:'/img/favicon.ico', rel:'shorcut icon'
    title @document.title
    meta name:"google-site-verification", content:"B9dXSzR0TCTVg7vQN36kboOhkF-CYinPnlHye8KtFis"
    meta property: 'og:url', content: 'http://ligakaratebogota.com' + @document.url
    meta property: 'og:title', content: @document.title
    meta property: 'og:type', content: @getOgType(@document.layout)
    meta property: 'og:locale', content: 'es_CO'
    meta property: 'og:description', content: @getPreparedDescription(@document.cms?.description?)
    link rel: 'stylesheet', href:'/css/fontello.css'
    script src:'/js/vendor/jquery.js'
    script src:'//cdn.jsdelivr.net/jquery.scrollto/2.1.2/jquery.scrollTo.min.js'
    script src:'https://cdn.jsdelivr.net/lodash/4.15.0/lodash.min.js'
    if @getHeadScripts(@document.layout)?
      for url in @getHeadScripts(@document.layout)
        script src: url
    link rel:'stylesheet', href:'/css/main.css', type:'text/css'
    for styles in @getCustomStyles(@document.layout)
      link rel:'stylesheet', href: styles, type:'text/css'

    script """
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-92157212-1', 'auto');
      ga('send', 'pageview');
    """

  body ->
    div id: 'fb-root'
    script """
      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0]; if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/es_ES/sdk.js#xfbml=1&version=v2.8&appId=741826672649522";
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    """
    unless @document.layout is 'home' then text @partial('header')
    text @content
    text @partial('links')
    text @getBlock('scripts').toHTML()
