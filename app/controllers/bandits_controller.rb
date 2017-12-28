class BanditsController < ApplicationController
  before_action :set_bandit, only: [ :edit, :update, :destroy]
   before_action :set_value
  # GET /bandits
  def index
    @bandits = Bandit.all
  end

  # GET /bandits/1
  def show
  end

  # GET /bandits/new
  def new
    @bandit = Bandit.new
  end

  # GET /bandits/1/edit
  def edit
  end

  # POST /bandits
  def create
    @bandit = Bandit.new(bandit_params)

    if @bandit.save
      redirect_to @bandit, notice: 'Bandit was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /bandits/1
  def update
    if @bandit.update(bandit_params)
      redirect_to @bandit, notice: 'Bandit was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /bandits/1
  def destroy
    @bandit.destroy
    redirect_to bandits_url, notice: 'Bandit was successfully destroyed.'
  end

  def game
    $n = SecureRandom.random_number(1000000..9999999)
    $tab = $n.to_s.split(//)
    $hash = $tab.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
    $p = $hash.values.max
    $point = []
    $hash.each do |key, value|
      if value > 1 && $p != 1
        punkt = key.to_i*value.to_i
        $point << punkt
      else 
        
      end
    end
    $points = $p.to_i * $number.to_i
   
    redirect_to bandits_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bandit
      @bandit = Bandit.find(params[:id])
    end

    def set_value
      $tab ||= [0,0,0,0,0,0,0,0]
    end

    # Only allow a trusted parameter "white list" through.
    def bandit_params
      params.require(:bandit).permit(:name)
    end
end
