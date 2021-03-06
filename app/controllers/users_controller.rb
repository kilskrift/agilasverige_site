require 'csv'

class UsersController < InheritedResources::Base

  before_filter :authenticate_user!
  before_filter :setup_user
  before_filter :authorize_admin!, :only => [:index, :new, :create]

  def index
    respond_to do |format|
      format.html do
        @conference = Conference.current
        if params[:conference_id]
          @conference = Conference.find(params[:conference_id])
        end
        @users = @conference.users.order("first_name, last_name")
        render :layout => 'admin'
      end
      format.csv do
        @conference = Conference.current
        if params[:conference_id]
          @conference = Conference.find(params[:conference_id])
        end
        @users = @conference.users.order("first_name, last_name")
        header = "First Name, Last Name, Organization, Address, Zip Code, Postal Address, Country, Invoice Reference, Telephone Number, Attending Dinner, Food Preferences, Comments, Email\n"
        csv = CSV.generate(header) do |csv|
          @users.each do |user|
            csv << [user.last_name,
                    user.first_name,
                    user.organization,
                    user.invoice_reference,
                    user.attending_dinner,
                    user.food_preferences,
                    user.comments,
                    user.email]
          end
        end
        render :text => csv
      end
    end
  end

  def show
    @speaking_proposal = SpeakingProposal.new
    @registration_status = PaysonClient.load_registration_status(current_user)
    super
  end

  def create
    create! do |format|
      format.html do
        redirect_to root_path
      end
    end
  end


  private

  def setup_user
    if !current_user.admin? || params['id'].blank?
      @user = current_user
    end
  end

  def authorize_admin!
    unless current_user.admin?
      render :file => 'public/404.html', :status => 404
    end
  end

end
