json.extract! student, :id, :student_name, :student_id, :student_email, :created_at, :updated_at
json.url student_url(student, format: :json)
