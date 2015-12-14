class StaticController < ApplicationController
  before_filter :authenticate_user!

  def signed_in_home

  end
end
