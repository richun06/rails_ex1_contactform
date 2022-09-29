class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    # Contact.create(name: params[:contact][:name], email: params[:contact][:email], content: params[:contact][:content])
    @contact = Contact.new(name: params[:contact][:name], email: params[:contact][:email], content: params[:contact][:content])
    if @contact.save
      redirect_to new_contact_path, notice: "投稿完了！"
    else
      render :new
      #redirect_to new_contact_path, notice: "content：エラー"
    end
  end
end
