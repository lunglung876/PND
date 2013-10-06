class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end


  def show
    @team = Team.find(params[:id])
    @hp_plus = @team.m1_plus.split(',')[0].to_i+@team.m2_plus.split(',')[0].to_i+@team.m3_plus.split(',')[0].to_i+@team.m4_plus.split(',')[0].to_i+@team.m5_plus.split(',')[0].to_i+@team.m6_plus.split(',')[0].to_i
    @rcv_plus = @team.m1_plus.split(',')[2].to_i+@team.m2_plus.split(',')[2].to_i+@team.m3_plus.split(',')[2].to_i+@team.m4_plus.split(',')[2].to_i+@team.m5_plus.split(',')[2].to_i+@team.m6_plus.split(',')[2].to_i
  end


  def new
    @team = Team.new
  end


  def edit
  end

  def create
      m1_plus = params[:m1_hp] +","+ params[:m1_atk] + ","+params[:m1_rcv]
      m2_plus = params[:m2_hp] + ","+params[:m2_atk] + ","+params[:m2_rcv]
      m3_plus = params[:m3_hp] + ","+params[:m3_atk] + ","+params[:m3_rcv]
      m4_plus = params[:m4_hp] + ","+params[:m4_atk] +","+ params[:m4_rcv]
      m5_plus = params[:m5_hp] + ","+params[:m5_atk] + ","+params[:m5_rcv]
      m6_plus = params[:m6_hp] + ","+params[:m6_atk] + ","+params[:m6_rcv]
      @team = Team.new(params.require(:team).permit(:m1_id,:m1_lvl,:m2_id,:m2_lvl,:m3_id,:m3_lvl,:m4_id,:m4_lvl,:m5_id,:m5_lvl,:m6_id,:m6_lvl).merge(:m1_plus => m1_plus,:m2_plus => m2_plus,:m3_plus => m3_plus,:m4_plus => m4_plus,:m5_plus => m5_plus,:m6_plus => m6_plus,))
      @team.save
      redirect_to(:root)

  end


  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: 'Team was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end
end
