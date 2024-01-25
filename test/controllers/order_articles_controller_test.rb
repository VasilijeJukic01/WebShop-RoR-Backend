require "test_helper"

class OrderArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_article = order_articles(:one)
  end

  test "should get index" do
    get order_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_order_article_url
    assert_response :success
  end

  test "should create order_article" do
    assert_difference("OrderArticle.count") do
      post order_articles_url, params: { order_article: {  } }
    end

    assert_redirected_to order_article_url(OrderArticle.last)
  end

  test "should show order_article" do
    get order_article_url(@order_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_article_url(@order_article)
    assert_response :success
  end

  test "should update order_article" do
    patch order_article_url(@order_article), params: { order_article: {  } }
    assert_redirected_to order_article_url(@order_article)
  end

  test "should destroy order_article" do
    assert_difference("OrderArticle.count", -1) do
      delete order_article_url(@order_article)
    end

    assert_redirected_to order_articles_url
  end
end
