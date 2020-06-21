# frozen_string_literal: true

json.extract! gusto, :id, :mail1, :mail2, :descripcion, :created_at, :updated_at
json.url gusto_url(gusto, format: :json)
