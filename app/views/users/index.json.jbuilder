json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :checklist_id, :work_email, :personal_email
  json.url user_url(user, format: :json)
end
