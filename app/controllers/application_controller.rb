class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :print_user_agent

  def print_user_agent
    puts "\e[32m USER AGENT: #{request.user_agent}\e[0m"
  end
end
