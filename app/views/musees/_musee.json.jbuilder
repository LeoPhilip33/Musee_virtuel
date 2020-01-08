json.extract! musee, :id, :Titre, :Description, :Date, :Dimensions, :Œuvre, :Auteur, :created_at, :updated_at
json.url musee_url(musee, format: :json)
