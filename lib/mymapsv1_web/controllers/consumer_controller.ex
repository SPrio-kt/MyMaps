defmodule Mymapsv1Web.ConsumerController do
  use Mymapsv1Web, :controller
  import Geo.PostGIS

  alias Mymapsv1.Maps
  alias Mymapsv1.Maps.Consumer

  def index(conn, _params) do
    consumers = Maps.list_consumers()
    render(conn, "index.html", consumers: consumers)
  end

  def new(conn, _params) do
    changeset = Maps.change_consumer(%Consumer{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"consumer" => consumer_params}) do

    case Maps.create_consumer(consumer_params) do
      {:ok, consumer} ->
        conn
        |> put_flash(:info, "Consumer created successfully.")
        |> redirect(to: Routes.consumer_path(conn, :show, consumer))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end


  end

  def show(conn, %{"id" => id}) do
    consumer = Maps.get_consumer!(id)
    render(conn, "show.html", consumer: consumer)
  end

  def edit(conn, %{"id" => id}) do
    consumer = Maps.get_consumer!(id)
    changeset = Maps.change_consumer(consumer)
    render(conn, "edit.html", consumer: consumer, changeset: changeset)
  end

  def update(conn, %{"id" => id, "consumer" => consumer_params}) do
    consumer = Maps.get_consumer!(id)

    case Maps.update_consumer(consumer, consumer_params) do
      {:ok, consumer} ->
        conn
        |> put_flash(:info, "Consumer updated successfully.")
        |> redirect(to: Routes.consumer_path(conn, :show, consumer))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", consumer: consumer, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    consumer = Maps.get_consumer!(id)
    {:ok, _consumer} = Maps.delete_consumer(consumer)

    conn
    |> put_flash(:info, "Consumer deleted successfully.")
    |> redirect(to: Routes.consumer_path(conn, :index))
  end
end
