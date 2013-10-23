class HomeController < WebsiteController

  before_filter :set_cache

  def index
    @slides = Slide.all
    @companies = Company.all
  end
  
  def inject_current_page
  end

  def set_cache
    if Rails.env.production?
      response.headers['Cache-Control'] = 'public, max-age=300'
      response.headers["Expires"] = 5.minutes.from_now.httpdate
    else
      response.headers['Cache-Control'] = 'private, max-age=0'
      response.headers["Expires"] = 0.minutes.from_now.httpdate
    end
  end
  
end
