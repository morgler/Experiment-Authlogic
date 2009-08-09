require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Article.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Article.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to articles_url
  end
  
  def test_edit
    get :edit, :id => Article.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Article.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Article.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Article.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Article.first
    assert_redirected_to articles_url
  end
end
