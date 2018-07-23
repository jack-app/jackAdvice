class CommentsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @comment = Comment.new
  end

  def create
    Comment.create(create_params)
    redirect_to controller: :products, action: :show, id: params[:product_id]
  end

  private
    def create_params
      params.require(:comment).permit(:commenter, :content).merge(product_id: params[:product_id])
    end
end
