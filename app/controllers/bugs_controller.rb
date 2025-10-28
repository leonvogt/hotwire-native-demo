class BugsController < ApplicationController
  def server_side_routing
    case params[:navigation_action]
    when "recede"
      recede_or_redirect_to bugs_path
    when "refresh"
      refresh_or_redirect_to bugs_path
    when "resume"
      resume_or_redirect_to bugs_path
    end
  end
end
