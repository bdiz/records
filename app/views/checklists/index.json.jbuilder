json.array!(@checklists) do |checklist|
  json.extract! checklist, :id, :name, :description, :employer_id
  json.url checklist_url(checklist, format: :json)
end
