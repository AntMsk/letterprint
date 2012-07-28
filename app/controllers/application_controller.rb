class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  before_filter :set_locale
 
  def set_locale
    #I18n.locale = params[:locale] || I18n.default_locale
    I18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}').to_s]
    I18n.locale =:ru 
    I18n.locale =:en if Rails.env.test?
    
    I18n.reload!
  end
end
