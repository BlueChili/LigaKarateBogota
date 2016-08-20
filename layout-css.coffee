module.exports = (layout) ->
  switch layout
    when 'article' then ['/css/article.css']
    when 'contactPage' then ['/css/contact.css']
    when 'mediaPage' then ['/css/media.css']
    when 'page' then ['/css/articles.css']
    when 'resultsPage' then ['/css/results.css']
    when 'home' then ['/css/homepage.css', '/css/hp-navigation.css']
