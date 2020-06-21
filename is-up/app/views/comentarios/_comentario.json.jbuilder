# frozen_string_literal: true

json.extract! comentario, :id, :local, :mailusuario, :fechahora, :descripcion, :puntaje, :created_at, :updated_at
json.url comentario_url(comentario, format: :json)
