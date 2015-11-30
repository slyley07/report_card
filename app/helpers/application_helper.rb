module ApplicationHelper
  def current_admin
    session[:admin_id] ? Admin.find(session[:admin_id]) : nil
    #
    # @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
  end
end
