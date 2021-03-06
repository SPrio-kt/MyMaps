defmodule Mymapsv1.Maps do
  @moduledoc """
  The Maps context.
  """
  import Geo.PostGIS
  import Ecto.Query, warn: false
  alias Mymapsv1.Repo

  alias Mymapsv1.Maps.User

  @doc """
  Returns the list of users.

  ## Examples

      iex> list_users()
      [%User{}, ...]

  """
  def list_users do
    Repo.all(User)
  end

  @doc """
  Gets a single user.

  Raises `Ecto.NoResultsError` if the User does not exist.

  ## Examples

      iex> get_user!(123)
      %User{}

      iex> get_user!(456)
      ** (Ecto.NoResultsError)

  """
  def get_user!(id), do: Repo.get!(User, id)

  @doc """
  Creates a user.

  ## Examples

      iex> create_user(%{field: value})
      {:ok, %User{}}

      iex> create_user(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_user(attrs \\ %{}) do
    # %User{}
    # |> User.changeset(attrs)
    # |> Repo.insert()
    Postgrex.Types.define(Mymapsv1.PostgresTypes, [Geo.PostGIS.Extension], [])
    opts = [hostname: "localhost", username: "postgres",password: "postgres", database: "mymapsv1_dev", types: Mymapsv1.PostgresTypes]
    {:ok, pid} = Postgrex.start_link(opts)
    geo = %Geo.Point{coordinates: {30, -90}, srid: 4326}

    {:ok, _} = Postgrex.query(pid, "INSERT INTO point_test VALUES ($1, $2)", ["sprio", geo])
  end

  @doc """
  Updates a user.

  ## Examples

      iex> update_user(user, %{field: new_value})
      {:ok, %User{}}

      iex> update_user(user, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_user(%User{} = user, attrs) do
    user
    |> User.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a User.

  ## Examples

      iex> delete_user(user)
      {:ok, %User{}}

      iex> delete_user(user)
      {:error, %Ecto.Changeset{}}

  """
  def delete_user(%User{} = user) do
    Repo.delete(user)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking user changes.

  ## Examples

      iex> change_user(user)
      %Ecto.Changeset{source: %User{}}

  """
  def change_user(%User{} = user) do
    User.changeset(user, %{})
  end

  alias Mymapsv1.Maps.Consumer

  @doc """
  Returns the list of consumers.

  ## Examples

      iex> list_consumers()
      [%Consumer{}, ...]

  """
  def list_consumers do
    Repo.all(Consumer)
  end

  @doc """
  Gets a single consumer.

  Raises `Ecto.NoResultsError` if the Consumer does not exist.

  ## Examples

      iex> get_consumer!(123)
      %Consumer{}

      iex> get_consumer!(456)
      ** (Ecto.NoResultsError)

  """
  def get_consumer!(id), do: Repo.get!(Consumer, id)

  @doc """
  Creates a consumer.

  ## Examples

      iex> create_consumer(%{field: value})
      {:ok, %Consumer{}}

      iex> create_consumer(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_consumer(attrs \\ %{}) do
    # %Consumer{}
    # |> Consumer.changeset(attrs)
    # |> Repo.insert()

    Postgrex.Types.define(Mymapsv1.PostgresTypes, [Geo.PostGIS.Extension], [])
    opts = [hostname: "localhost", username: "postgres",password: "postgres", database: "mymapsv1_dev", types: Mymapsv1.PostgresTypes]
    {:ok, pid} = Postgrex.start_link(opts)
    geo = %Geo.Point{coordinates: {30, -90}, srid: 4326}

    {:ok, _} = Postgrex.query(pid, "INSERT INTO consumers VALUES ($1, $2)", [2121, geo])
  end

  @doc """
  Updates a consumer.

  ## Examples

      iex> update_consumer(consumer, %{field: new_value})
      {:ok, %Consumer{}}

      iex> update_consumer(consumer, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_consumer(%Consumer{} = consumer, attrs) do
    consumer
    |> Consumer.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Consumer.

  ## Examples

      iex> delete_consumer(consumer)
      {:ok, %Consumer{}}

      iex> delete_consumer(consumer)
      {:error, %Ecto.Changeset{}}

  """
  def delete_consumer(%Consumer{} = consumer) do
    Repo.delete(consumer)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking consumer changes.

  ## Examples

      iex> change_consumer(consumer)
      %Ecto.Changeset{source: %Consumer{}}

  """
  def change_consumer(%Consumer{} = consumer) do
    Consumer.changeset(consumer, %{})
  end

  alias Mymapsv1.Maps.Customer

  @doc """
  Returns the list of customers.

  ## Examples

      iex> list_customers()
      [%Customer{}, ...]

  """
  def list_customers do
    Repo.all(Customer)
  end

  @doc """
  Gets a single customer.

  Raises `Ecto.NoResultsError` if the Customer does not exist.

  ## Examples

      iex> get_customer!(123)
      %Customer{}

      iex> get_customer!(456)
      ** (Ecto.NoResultsError)

  """
  def get_customer!(id), do: Repo.get!(Customer, id)

  @doc """
  Creates a customer.

  ## Examples

      iex> create_customer(%{field: value})
      {:ok, %Customer{}}

      iex> create_customer(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_customer(attrs \\ %{}) do
    # %Customer{}
    # |> Customer.changeset(attrs)
    # |> Repo.insert()
    Postgrex.Types.define(Mymapsv1.PostgresTypes, [Geo.PostGIS.Extension], [])
    opts = [hostname: "localhost", username: "postgres",password: "postgres", database: "mymapsv1_dev", types: Mymapsv1.PostgresTypes]
    {:ok, pid} = Postgrex.start_link(opts)
    geo = %Geo.Point{coordinates: {30, -90}, srid: 4326}

    {:ok, _} = Postgrex.query(pid, "INSERT INTO employees(geom) VALUES ($1)", [geo])
    #Postgrex.execute(conn, "INSERT INTO customers VALUES ($1, $2)",[2,geo])
  end

  @doc """
  Updates a customer.

  ## Examples

      iex> update_customer(customer, %{field: new_value})
      {:ok, %Customer{}}

      iex> update_customer(customer, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_customer(%Customer{} = customer, attrs) do
    customer
    |> Customer.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Customer.

  ## Examples

      iex> delete_customer(customer)
      {:ok, %Customer{}}

      iex> delete_customer(customer)
      {:error, %Ecto.Changeset{}}

  """
  def delete_customer(%Customer{} = customer) do
    Repo.delete(customer)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking customer changes.

  ## Examples

      iex> change_customer(customer)
      %Ecto.Changeset{source: %Customer{}}

  """
  def change_customer(%Customer{} = customer) do
    Customer.changeset(customer, %{})
  end

  def all_employees(attrs \\ %{}) do

    Postgrex.Types.define(Mymapsv1.PostgresTypes, [Geo.PostGIS.Extension], [])
    opts = [hostname: "localhost", username: "postgres",password: "postgres", database: "mymapsv1_dev", types: Mymapsv1.PostgresTypes]
    {:ok, pid} = Postgrex.start_link(opts)
    {:ok, data} = Postgrex.query(pid, "SELECT * FROM employees",[])
    datas = data.rows
    map_data = datas |> Enum.map(fn [id, %Geo.Point{coordinates: {lat, long}}]-> %{id: id, lat: lat, long: long} end)
  end

  def distance_check() do
    alias :math, as: Math

    #pi
    #pi = 3.141592653589793
    #me
    lat1 = (Math.pi * 22.573128) /180
    lon1 = (Math.pi * 88.433867) /180
    #user
    lat2 = (Math.pi * 22.573584) /180
    lon2 = (Math.pi * 88.437781) /180

    #earth radius
    e_r = 6371;
    x = (lon2-lon1) * Math.cos((lat1+lat2)/2);
    y = (lat2-lat1);
    d = Math.sqrt(x*x + y*y) * e_r;

    IO.puts(d*1000)
  end
end
