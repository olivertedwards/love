class ApplicationController < ActionController::Base

	def authenticate_admin
		redirect_to root_url, alert: 'You need admin priveledges to do that.' unless
			current_user && current_user.admin?
	end

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:role_id, :first_name, :last_name])
	end

end
