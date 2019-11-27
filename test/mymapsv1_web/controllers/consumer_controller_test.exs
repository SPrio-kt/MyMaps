defmodule Mymapsv1Web.ConsumerControllerTest do
  use Mymapsv1Web.ConnCase

  alias Mymapsv1.Maps

  @create_attrs %{}
  @update_attrs %{}
  @invalid_attrs %{}

  def fixture(:consumer) do
    {:ok, consumer} = Maps.create_consumer(@create_attrs)
    consumer
  end

  describe "index" do
    test "lists all consumers", %{conn: conn} do
      conn = get(conn, Routes.consumer_path(conn, :index))
      assert html_response(conn, 200) =~ "Listing Consumers"
    end
  end

  describe "new consumer" do
    test "renders form", %{conn: conn} do
      conn = get(conn, Routes.consumer_path(conn, :new))
      assert html_response(conn, 200) =~ "New Consumer"
    end
  end

  describe "create consumer" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, Routes.consumer_path(conn, :create), consumer: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == Routes.consumer_path(conn, :show, id)

      conn = get(conn, Routes.consumer_path(conn, :show, id))
      assert html_response(conn, 200) =~ "Show Consumer"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.consumer_path(conn, :create), consumer: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Consumer"
    end
  end

  describe "edit consumer" do
    setup [:create_consumer]

    test "renders form for editing chosen consumer", %{conn: conn, consumer: consumer} do
      conn = get(conn, Routes.consumer_path(conn, :edit, consumer))
      assert html_response(conn, 200) =~ "Edit Consumer"
    end
  end

  describe "update consumer" do
    setup [:create_consumer]

    test "redirects when data is valid", %{conn: conn, consumer: consumer} do
      conn = put(conn, Routes.consumer_path(conn, :update, consumer), consumer: @update_attrs)
      assert redirected_to(conn) == Routes.consumer_path(conn, :show, consumer)

      conn = get(conn, Routes.consumer_path(conn, :show, consumer))
      assert html_response(conn, 200)
    end

    test "renders errors when data is invalid", %{conn: conn, consumer: consumer} do
      conn = put(conn, Routes.consumer_path(conn, :update, consumer), consumer: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Consumer"
    end
  end

  describe "delete consumer" do
    setup [:create_consumer]

    test "deletes chosen consumer", %{conn: conn, consumer: consumer} do
      conn = delete(conn, Routes.consumer_path(conn, :delete, consumer))
      assert redirected_to(conn) == Routes.consumer_path(conn, :index)
      assert_error_sent 404, fn ->
        get(conn, Routes.consumer_path(conn, :show, consumer))
      end
    end
  end

  defp create_consumer(_) do
    consumer = fixture(:consumer)
    {:ok, consumer: consumer}
  end
end
