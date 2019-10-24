json.extract! course, :id, :name, :number_of_students, :created_at, :updated_at
json.url course_url(course, format: :json)
