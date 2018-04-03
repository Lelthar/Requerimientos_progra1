class ChatClienteAdminsController < ApplicationController
  before_action :set_chat_cliente_admin, only: [:show, :edit, :update, :destroy]

  # GET /chat_cliente_admins
  # GET /chat_cliente_admins.json
  def index
    @chat_cliente_admins = ChatClienteAdmin.all
  end

  # GET /chat_cliente_admins/1
  # GET /chat_cliente_admins/1.json
  def show
  end

  # GET /chat_cliente_admins/new
  def new
    @chat_cliente_admin = ChatClienteAdmin.new
  end

  # GET /chat_cliente_admins/1/edit
  def edit
  end

  # POST /chat_cliente_admins
  # POST /chat_cliente_admins.json
  def create
    @chat_cliente_admin = ChatClienteAdmin.new(chat_cliente_admin_params)
    @chat_cliente_admin.user_id = current_user.id

    respond_to do |format|
      if @chat_cliente_admin.save
        format.html { redirect_to @chat_cliente_admin, notice: 'Chat cliente admin was successfully created.' }
        format.json { render :show, status: :created, location: @chat_cliente_admin }
      else
        format.html { render :new }
        format.json { render json: @chat_cliente_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chat_cliente_admins/1
  # PATCH/PUT /chat_cliente_admins/1.json
  def update
    respond_to do |format|
      if @chat_cliente_admin.update(chat_cliente_admin_params)
        format.html { redirect_to @chat_cliente_admin, notice: 'Chat cliente admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @chat_cliente_admin }
      else
        format.html { render :edit }
        format.json { render json: @chat_cliente_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chat_cliente_admins/1
  # DELETE /chat_cliente_admins/1.json
  def destroy
    @chat_cliente_admin.destroy
    respond_to do |format|
      format.html { redirect_to chat_cliente_admins_url, notice: 'Chat cliente admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chat_cliente_admin
      @chat_cliente_admin = ChatClienteAdmin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chat_cliente_admin_params
      params.require(:chat_cliente_admin).permit(:user_id, :mensaje, :fecha)
    end
end
