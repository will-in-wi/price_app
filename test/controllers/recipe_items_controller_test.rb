require 'test_helper'

class RecipeItemsControllerTest < ActionController::TestCase
  setup do
    @recipe_item = recipe_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipe_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe_item" do
    assert_difference('RecipeItem.count') do
      post :create, recipe_item: { amount: @recipe_item.amount, item: @recipe_item.item, notes: @recipe_item.notes, recipe: @recipe_item.recipe, unit_id: @recipe_item.unit_id }
    end

    assert_redirected_to recipe_item_path(assigns(:recipe_item))
  end

  test "should show recipe_item" do
    get :show, id: @recipe_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe_item
    assert_response :success
  end

  test "should update recipe_item" do
    patch :update, id: @recipe_item, recipe_item: { amount: @recipe_item.amount, item: @recipe_item.item, notes: @recipe_item.notes, recipe: @recipe_item.recipe, unit_id: @recipe_item.unit_id }
    assert_redirected_to recipe_item_path(assigns(:recipe_item))
  end

  test "should destroy recipe_item" do
    assert_difference('RecipeItem.count', -1) do
      delete :destroy, id: @recipe_item
    end

    assert_redirected_to recipe_items_path
  end
end
