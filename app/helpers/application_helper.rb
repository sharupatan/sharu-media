module ApplicationHelper
  def signin_or_signout_btn
		if user_signed_in?
			button_to :sign_out, destroy_user_session_path, method: :delete, class:'nav-link'
		else
			link_to :sign_in, new_user_session_path, class:'nav-link'
		end
	end
end
