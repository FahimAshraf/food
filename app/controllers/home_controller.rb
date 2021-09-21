class HomeController < ApplicationController
  def index
  end
  def receive_order
    @contact = ContactU.new(customer_name:params[:customer_name],
      customer_number:params[:customer_number],
      customer_order:params[:customer_order],
      customer_food:params[:customer_food],
      customer_food_quantity:params[:customer_food_quantity],
      customer_date_time:params[:customer_date_time],
      customer_adress:params[:customer_adress],
      customer_message:params[:customer_message])
    @contact.save
  end

  def all_contacts
    @obj = ContactU.all.order("id")
  end
  def destroy
  end
  def edit
    @contact = ContactU.find(params[:id])
  end
  def update
    @contact = ContactU.find(params[:id])
     @contact = @contact.update(customer_name:params[:customer_name],
      customer_number:params[:customer_number],
      customer_order:params[:customer_order],
      customer_food:params[:customer_food],
      customer_food_quantity:params[:customer_food_quantity],
      customer_date_time:params[:customer_date_time],
      customer_adress:params[:customer_adress],
      customer_message:params[:customer_message])
     redirect_to '/home/all_contacts'
  end
end
