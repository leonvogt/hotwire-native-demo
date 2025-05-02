class TestsController < ApplicationController
  def show
    disposition = params[:disposition] || 'inline'
    response.headers['Cache-Control'] = 'no-store'
    send_file Rails.root + 'public/android.apk', filename: 'android.apk', type: 'application/octet-stream', disposition: disposition
  end
end
