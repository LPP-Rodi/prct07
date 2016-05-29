require "prct07/version"

module Prct07
  class Biblioteca
    attr_accessor :autor, :titulo, :serie, :editorial, :numero_edicion, :fecha_publicacion, :isbn
    def initialize(autor, titulo, serie=nil, editorial, numero_edicion, fecha_publicacion, isbn)
      @autor = autor
      @titulo = titulo
      @serie = serie
      @editorial = editorial
      @numero_edicion = numero_edicion
      @fecha_publicacion = fecha_publicacion
      @isbn = isbn
    end

    def get_autores
      @autor
    end
    def get_titulo
      @titulo
    end
    def get_serie
      @serie
    end
    def get_editorial
      @editorial
    end
    def get_fecha
      @fecha_publicacion
    end
    def get_edicion
      @numero_edicion
    end
    def get_isbn
      @isbn
    end

    def formateo
      let = "El libro #{@titulo} escrito por #{@autor} en su serie número #{@serie} publicado por la editorial #{@editorial} el #{@fecha_publicacion} en su edición número #{@numero_edicion} tiene un isbn de #{@isbn}"
    end
  end

  Nodo = Struct.new(:valor, :siguiente)


  class Lista
    attr_accessor :elementos
    def initialize(primero = nil, elementos = [])
      @primero = elementos[0]
      @elementos = elementos
    end
    def extraer_primero
       aux = elementos.shift
    end
    def insertar(nodo)
      @elementos << nodo
    end
    def insertar_primero(nodo)
      @elementos.insert(0, nodo)
    end

  end
end
