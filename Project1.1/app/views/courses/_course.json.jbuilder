json.extract! course, :id, :course_name, :course_id, :department, :credit_hours, :created_at, :updated_at
json.url course_url(course, format: :json)
