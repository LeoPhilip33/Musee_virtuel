json.extract! art, :id, :Titre, :Description, :Date, :Dimensions, :Œuvre, :Auteur, :created_at, :updated_at
json.url art_url(art, format: :json)
