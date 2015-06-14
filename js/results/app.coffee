app = angular.module('resultsDisplay', [])

app.controller 'CicloController', ->
  @evento = eventos
  return

eventos = [
  {
    sede: 'peru'
    evento: 'c. panamericano'
    modalidad: 'kata-kumite'
    categoria: 'mayores'
    atletas: '2'
    entrenadores: '1'
    oficiales: '-'
    oro: '-'
    plata: '-'
    bronce: '-'
  }
  {
    sede: 'bolivia'
    evento: 'c. sudamericano'
    modalidad: 'kata-kumite'
    categoria: 'mayores'
  }
]
