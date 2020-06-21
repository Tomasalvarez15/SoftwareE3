# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @message = 'Hello World!'
  end

  def crearusuario
    render 'usuario_crear'
  end

  def editarusuario
    render 'usuario_editar'
  end

  def leerusuario
    render 'usuario_leer'
  end

  def borrarusuario
    render 'usuario_borrar'
  end
end
