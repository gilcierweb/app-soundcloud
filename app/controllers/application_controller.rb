class ApplicationController < ActionController::Base

  include Pagy::Backend

  layout :layout_by_resource

  protected

  def after_sign_in_path_for(resource)
    root_path
  end

  private

  def layout_by_resource
    if devise_controller?
      "auth"
    else
      "application"
    end
  end
end
