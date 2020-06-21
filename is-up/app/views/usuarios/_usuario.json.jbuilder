# frozen_string_literal: true

json.extract! usuario, :id, :mail, :nombre, :descripcion, :edad, :imagen, :gustos, :telefono, :comuna, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
