json.extract! contact, :id, :firstName, :lastName, :photo_url, :mobile, :work, :created_at, :updated_at
json.url contact_url(contact, format: :json)
