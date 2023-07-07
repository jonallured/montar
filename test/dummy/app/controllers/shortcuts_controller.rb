class ShortcutsController < ApplicationController
  before_action :set_shortcut, only: %i[ show edit update destroy ]

  # GET /shortcuts
  def index
    @shortcuts = Shortcut.all
  end

  # GET /shortcuts/1
  def show
  end

  # GET /shortcuts/new
  def new
    @shortcut = Shortcut.new
  end

  # GET /shortcuts/1/edit
  def edit
  end

  # POST /shortcuts
  def create
    @shortcut = Shortcut.new(shortcut_params)

    if @shortcut.save
      redirect_to @shortcut, notice: "Shortcut was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shortcuts/1
  def update
    if @shortcut.update(shortcut_params)
      redirect_to @shortcut, notice: "Shortcut was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /shortcuts/1
  def destroy
    @shortcut.destroy
    redirect_to shortcuts_url, notice: "Shortcut was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shortcut
      @shortcut = Shortcut.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shortcut_params
      params.require(:shortcut).permit(:short, :long)
    end
end
