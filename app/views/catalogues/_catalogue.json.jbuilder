json.extract! catalogue, :id, :name, :manufacturer, :caliber, :age, :capacity, :accessories, :comments, :created_at, :updated_at
json.url catalogue_url(catalogue, format: :json)
