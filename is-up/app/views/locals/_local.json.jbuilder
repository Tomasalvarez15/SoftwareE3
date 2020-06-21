# frozen_string_literal: true

json.extract! local, :id, :nombre, :descripcion, :valoracion, :comentarios, :imagen, :created_at, :updated_at
json.url local_url(local, format: :json)
