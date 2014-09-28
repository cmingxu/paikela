json.array!(@curiculiams) do |curiculiam|
  json.extract! curiculiam, :id, :teacher_id, :teacher_name, :student_id, :student_name, :begin_at, :end_at, :status
  json.url curiculiam_url(curiculiam, format: :json)
end
