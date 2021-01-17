class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :update, :destroy]

  # GET /dogs
  def index
    @dogs = Dog.all


    render json: DogSerializer.new(@dogs).serializable_hash[:data].map{|dog| dog[:attributes]}
  end

  # GET /dogs/1
  def show
    render json: @dog
  end

  # POST /dogs
  def create
    @dog = Dog.new(dog_params)
    @dog.user= User.first

    if @dog.save
      render json: @dog, status: :created, location: @dog
    else
      render json: @dog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dogs/1
  def update
    if @dog.update(dog_params)
      render json: @dog
    else
      render json: @dog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dogs/1
  def destroy
    @dog.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog
      @dog = Dog.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dog_params
      params.require(:dog).permit(:name, :age, :sex)
    end
end
