class AccountsController < ApplicationController
	before_action :user_must ,except:[:index,:show]

def index
 @accounts=Account.paginate(page: params[:page],per_page: 5)
end

def new
  @account=Account.new
end

def create
  @account=Account.new(account_params)
  if @account.save
  	flash[:success]="Account has been Added Successfully!"
  	redirect_to accounts_path

  else
  	render 'new'
  end
end
	


def show

end

def user_must
 if !logged_in?
 	flash[:danger]="Must Be A User To Create an Account"
 	redirect_to accounts_path
 end

 end


private
def account_params
  params.require(:account).permit(:name)
end





end
