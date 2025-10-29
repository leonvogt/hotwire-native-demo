class BugsController < ApplicationController
  def redirection_with_updated_url
    # Normally this leads to a replace of the /navigation screen.
    # However, on iOS this leads to a push instead, because the URL is different.
    redirect_to navigation_path(foo: "bar")
  end
end
