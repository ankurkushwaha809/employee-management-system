json.extract! user, :id, :email, :first_name, :last_name, :company_id, :role_id, :start_date, :end_date, :monthly_charge, :image_id, :active, :created_at, :updated_at
json.url user_url(user, format: :json)
