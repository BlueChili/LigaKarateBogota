nav '.nav-full', ->
  for item, data of @site.navBar
  	if @document.siteArea is data.section
      a ".current-area", href: data.href, -> data.label
    else
      a href: data.href, -> data.label
  a '.icon-facebook' , href:'https://www.facebook.com/ligakaratebogota?fref=ts'
