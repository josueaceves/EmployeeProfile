class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @employees = current_user.employees
    if current_user.employees.blank?
      @employee = current_user.employees.new
      @action = "Create New"
    else
      @action = "Edit Employee"
      @employee = current_user.employees.first
    end
  end
end
