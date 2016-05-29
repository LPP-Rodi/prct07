require 'spec_helper'

describe Prct07 do
  before :each do
    @ref_1 = Prct07::Biblioteca.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers'Guide. (The Facets of Ruby)", "Pragmatic Bookshelf", "4", "July 7, 2013", ["ISBN_13: 978_1937785499", "ISBN_10: 1937785491"])
    @n_aux = Prct07::Nodo.new(@ref_1)
    @n_1 = Prct07::Nodo.new(@ref_1, @n_aux)
    @l_1 = Prct07::Lista.new
    @l_3 = Prct07::Lista.new
    @l_3.insertar(@n_aux)

  end

  describe "# Nodo" do
    it "# Debe existir un nodo de la lista con sus datos y su siguiente" do
      expect(@n_1.valor).to be_instance_of(Prct07::Biblioteca)
    end
  end
  describe "# Lista" do

    it ".insertar nodo" do
      expect(@l_1.elementos.count).to eq(0)
      @l_1.insertar(@n_1)
      expect(@l_1.elementos.count).to be >= (1)
    end

    it ".extraer el primer elemento" do
      expect(@l_3.elementos.count).to be >= (1)
      aux = @l_3.extraer_primero
      expect(aux).to_not eq(nil)
      expect(@l_3.elementos.count).to eq(0)
    end
  end


end
