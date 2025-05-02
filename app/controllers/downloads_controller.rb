class DownloadsController < ApplicationController
  def show
    redirect_to test_path(mobile_app_open_in_external_browser: "true")
  end
end
