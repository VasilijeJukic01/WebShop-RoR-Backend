require "application_system_test_case"

class OrderArticlesTest < ApplicationSystemTestCase
  setup do
    @order_article = order_articles(:one)
  end

  test "visiting the index" do
    visit order_articles_url
    assert_selector "h1", text: "Order articles"
  end

  test "should create order article" do
    visit order_articles_url
    click_on "New order article"

    fill_in "Order", with: @order_article.order_id
    fill_in "Article", with: @order_article.article_id
    fill_in "Amount", with: @order_article.amount
    fill_in "Price", with: @order_article.price
    click_on "Create Order article"

    assert_text "Order article was successfully created"
    click_on "Back"
  end

  test "should update Order article" do
    visit order_article_url(@order_article)
    click_on "Edit this order article", match: :first

    fill_in "Order", with: @order_article.order_id
    fill_in "Article", with: @order_article.article_id
    fill_in "Amount", with: @order_article.amount
    fill_in "Price", with: @order_article.price
    click_on "Update Order article"

    assert_text "Order article was successfully updated"
    click_on "Back"
  end

  test "should destroy Order article" do
    visit order_article_url(@order_article)
    click_on "Destroy this order article", match: :first

    assert_text "Order article was successfully destroyed"
  end
end
