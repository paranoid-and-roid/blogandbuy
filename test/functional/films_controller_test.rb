require 'test_helper'

class FilmsControllerTest < ActionController::TestCase
  setup do
    @film = films(:one)
    @update = {
        filmname:       'My new film',
        description:    'A film',
        actors:         'Actor, Actress',
        director:       'John Director',
        image_url:      'my_new_film.jpg',
        length:         '1 hour 1 min',
        price:          9.99,
        release_year:   '1950',
        score:          5
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:films)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create film" do
    assert_difference('Film.count') do
      post :create, film: @update
    end

    assert_redirected_to film_path(assigns(:film))
  end

  test "should show film" do
    get :show, id: @film
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @film
    assert_response :success
  end

  test "should update film" do
    put :update, id: @film, film: @update
    assert_redirected_to film_path(assigns(:film))
  end

  test "should destroy film" do
    assert_difference('Film.count', -1) do
      delete :destroy, id: @film
    end

    assert_redirected_to films_path
  end
end
