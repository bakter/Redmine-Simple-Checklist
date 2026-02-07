class SimpleChecklistsController < ApplicationController
  before_action :find_issue
  before_action :find_checklist_item, only: [:toggle, :destroy]

  def create
    @item = @issue.simple_checklists.build(params.require(:checklist).permit(:subject))
    if @item.save
      render json: { id: @item.id, subject: @item.subject, is_done: @item.is_done }
    else
      render json: { error: "Error while saving" }, status: 400
    end
  end

  def toggle
    @item.update(is_done: !@item.is_done)
    render json: { is_done: @item.is_done }
  end

  def destroy
    @item.destroy
    head :ok
  end

  private

  def find_issue
    @issue = Issue.find(params[:issue_id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Issue not found" }, status: 404
  end

  def find_checklist_item
    @item = @issue.simple_checklists.find(params[:id])
  end
end
