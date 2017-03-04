class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @employee = Employee.first
  end
end
