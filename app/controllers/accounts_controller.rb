class AccountsController < ApplicationController
  before_action :set_account, only: [:edit, :update, :show, :destroy]
	before_action :user_must ,only: [:edit, :update, :show, :destroy]
  before_action :require_same_user, only: [:edit, :update, :destroy]

def index
 @accounts=Account.paginate(page: params[:page],per_page: 5)
end

def new
  @account=Account.new
end

def edit
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

def update
    if @account.update(account_params)
      flash[:success] = "account was successfully Done"
      redirect_to account_path(@account)
    else
      render 'edit'
    end
  end
	


def show

end

def destroy
    @account.destroy
    flash[:danger] = "account was successfully deleted"
    redirect_to accounts_path
end

def user_must
 if !logged_in?
 	flash[:danger]="Must Be A User To Create an Account"
 	redirect_to accounts_path
 end

end


private

def set_account
      @account = Account.find(params[:id])  
end

def account_params
  params.require(:account).permit(:name)
end


def require_same_user
      if !current_user.admin?
        flash[:danger] = "Account Can be deleted by Amin"
        redirect_to root_path
      end
    end
end
