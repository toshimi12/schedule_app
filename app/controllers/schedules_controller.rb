class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end
  
  def new
    @schedule = Schedule.new
  end
  
  def create
     @schedule = Schedule.new(params.require(:schedule).permit(:title, :start_at, :end_at, :allday, :memo))
    if @schedule.save
       flash[:notice]="スケジュールデータの作成が完了しました"
       redirect_to :schedules
    else
       flash[:alert]="スケジュールデータが登録できませんでした"
       render "new"
    end
  end
  
  def show
    @schedule = Schedule.find(params[:id])
  end
  
  def edit
    @schedule = Schedule.find(params[:id])
  end
  
  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(params.require(:schedule).permit(:title, :start_at, :end_at, :allday, :memo))
       flash[:notice] = "スケジュール「#{@schedule.id}」の情報を更新しました"
       redirect_to :schedules
    else
      flash[:alert]="スケジュールデータが更新できませんでした"
       render "edit"
    end
  end
  
  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
     flash[:notice] = "スケジュールを削除しました"
     redirect_to :schedules
  end
end