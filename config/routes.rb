Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )
    if user.save
      render json: {message: "User created successfully"}, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
  end
  

end
