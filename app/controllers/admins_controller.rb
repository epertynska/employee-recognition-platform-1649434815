class AdminsController < ApplicationController
  before_action :authenticate_admin!
  visit pages_dashboard
  # def authenticate_admin!
  #     redirect_to :pages_dashboard, status: :forbidden unless current_user.admin?
  #     visit pages_dashboard
  # end
  # def index; end
  # def kudos; end
  # def create; end
end
