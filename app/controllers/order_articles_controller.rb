class OrderArticlesController < ApplicationController
  before_action :set_order_article, only: %i[ show edit update destroy ]
  before_action :correct_user, only: [:create, :new]
  before_action :admin_user, only: [:index, :show, :destroy, :edit, :update]

  # GET /order_articles or /order_articles.json
  def index
    @order_articles = OrderArticle.all
  end

  # GET /order_articles/1 or /order_articles/1.json
  def show
  end

  # GET /order_articles/new
  def new
    @order_article = OrderArticle.new
  end

  # GET /order_articles/1/edit
  def edit
  end

  # POST /order_articles or /order_articles.json
  def create
    @order_article = OrderArticle.new(order_article_params)

    respond_to do |format|
      if @order_article.save
        format.html { redirect_to order_article_url(@order_article), notice: "Order article was successfully created." }
        format.json { render :show, status: :created, location: @order_article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_articles/1 or /order_articles/1.json
  def update
    respond_to do |format|
      if @order_article.update(order_article_params)
        format.html { redirect_to order_article_url(@order_article), notice: "Order article was successfully updated." }
        format.json { render :show, status: :ok, location: @order_article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_articles/1 or /order_articles/1.json
  def destroy
    @order_article.destroy!

    respond_to do |format|
      format.html { redirect_to order_articles_url, notice: "Order article was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_article
      @order_article = OrderArticle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
  def order_article_params
    params.require(:order_article).permit(:order_id, :article_id, :amount, :price)
  end
end
