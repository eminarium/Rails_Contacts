class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = unless params[:category].blank?
      #Contact.where(category_id: params[:category]).order('title ASC')
      @category = Category.find(params[:category])
      @category.contacts.order('title ASC')
    else
      Contact.all.order('title ASC')
    end

    @categories = Category.all.order('id ASC')
  end

  def search_contacts
    @contacts = unless params[:hint].blank?
      Contact.where("title LIKE ?", "%#{params[:hint]}%").order('title ASC')
    else
      Contact.all.order('title ASC')
    end
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Täze Kontakt üstünlikli goşuldy.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'Kontakt üstünlikli üýtgedildi.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Kontakt üstünlikli bozuldy.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:title, :address, :description, :category_id, phones_attributes: [:id, :phone_no, :phone_type_id, :notes, :_destroy])
    end
end