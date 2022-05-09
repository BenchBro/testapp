json.extract! firearm, :id, :name, :manufacturer, :caliber, :capacity, :age, :accessories, :comments, :created_at, :updated_at
json.url firearm_url(firearm, format: :json)
