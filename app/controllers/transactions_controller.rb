class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:edit, :update, :show, :destroy]
  before_action :require_user, except: [:index, :show]
  before_action :require_same_user, only: [:edit, :update, :destroy]
  
  def index
    
    @search=Transaction.all.paginate(page: params[:page], per_page: 5).search(params[:q])
    @transactions=@search.result
    
    
  end
  
  def new
    @transaction = Transaction.new
  end
  
  def edit
  end
  
  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user
    if @transaction.save
      flash[:success] = "Transaction was successfully Done"
      redirect_to transaction_path(@transaction)
    else
      render 'new'
    end
  end
  
  def update
    if @transaction.update(transaction_params)
      flash[:success] = "Transaction was successfully Done"
      redirect_to transaction_path(@transaction)
    else
      render 'edit'
    end
  end
  
  def show
  end
  
  def destroy
    @transaction.destroy
    flash[:danger] = "Transaction was successfully deleted"
    redirect_to transactions_path
  end

  
  
  private
    def set_transaction
      @transaction = Transaction.find(params[:id])  
    end
  
    def transaction_params
      params.require(:transaction).permit(:title, :description, :price,:accountname,:image,:document,:status,:approved_by,:approve)
    end
  
    def require_same_user
      if current_user != @transaction.user and !current_user.admin?
        flash[:danger] = "You can only edit or delete your own Transaction"
        redirect_to root_path
      end
    end
  
end