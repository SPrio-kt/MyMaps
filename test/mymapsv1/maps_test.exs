defmodule Mymapsv1.MapsTest do
  use Mymapsv1.DataCase

  alias Mymapsv1.Maps

  describe "users" do
    alias Mymapsv1.Maps.User

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def user_fixture(attrs \\ %{}) do
      {:ok, user} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Maps.create_user()

      user
    end

    test "list_users/0 returns all users" do
      user = user_fixture()
      assert Maps.list_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Maps.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      assert {:ok, %User{} = user} = Maps.create_user(@valid_attrs)
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Maps.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()
      assert {:ok, %User{} = user} = Maps.update_user(user, @update_attrs)
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = Maps.update_user(user, @invalid_attrs)
      assert user == Maps.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = Maps.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Maps.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = Maps.change_user(user)
    end
  end

  describe "consumers" do
    alias Mymapsv1.Maps.Consumer

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def consumer_fixture(attrs \\ %{}) do
      {:ok, consumer} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Maps.create_consumer()

      consumer
    end

    test "list_consumers/0 returns all consumers" do
      consumer = consumer_fixture()
      assert Maps.list_consumers() == [consumer]
    end

    test "get_consumer!/1 returns the consumer with given id" do
      consumer = consumer_fixture()
      assert Maps.get_consumer!(consumer.id) == consumer
    end

    test "create_consumer/1 with valid data creates a consumer" do
      assert {:ok, %Consumer{} = consumer} = Maps.create_consumer(@valid_attrs)
    end

    test "create_consumer/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Maps.create_consumer(@invalid_attrs)
    end

    test "update_consumer/2 with valid data updates the consumer" do
      consumer = consumer_fixture()
      assert {:ok, %Consumer{} = consumer} = Maps.update_consumer(consumer, @update_attrs)
    end

    test "update_consumer/2 with invalid data returns error changeset" do
      consumer = consumer_fixture()
      assert {:error, %Ecto.Changeset{}} = Maps.update_consumer(consumer, @invalid_attrs)
      assert consumer == Maps.get_consumer!(consumer.id)
    end

    test "delete_consumer/1 deletes the consumer" do
      consumer = consumer_fixture()
      assert {:ok, %Consumer{}} = Maps.delete_consumer(consumer)
      assert_raise Ecto.NoResultsError, fn -> Maps.get_consumer!(consumer.id) end
    end

    test "change_consumer/1 returns a consumer changeset" do
      consumer = consumer_fixture()
      assert %Ecto.Changeset{} = Maps.change_consumer(consumer)
    end
  end

  describe "customers" do
    alias Mymapsv1.Maps.Customer

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def customer_fixture(attrs \\ %{}) do
      {:ok, customer} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Maps.create_customer()

      customer
    end

    test "list_customers/0 returns all customers" do
      customer = customer_fixture()
      assert Maps.list_customers() == [customer]
    end

    test "get_customer!/1 returns the customer with given id" do
      customer = customer_fixture()
      assert Maps.get_customer!(customer.id) == customer
    end

    test "create_customer/1 with valid data creates a customer" do
      assert {:ok, %Customer{} = customer} = Maps.create_customer(@valid_attrs)
    end

    test "create_customer/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Maps.create_customer(@invalid_attrs)
    end

    test "update_customer/2 with valid data updates the customer" do
      customer = customer_fixture()
      assert {:ok, %Customer{} = customer} = Maps.update_customer(customer, @update_attrs)
    end

    test "update_customer/2 with invalid data returns error changeset" do
      customer = customer_fixture()
      assert {:error, %Ecto.Changeset{}} = Maps.update_customer(customer, @invalid_attrs)
      assert customer == Maps.get_customer!(customer.id)
    end

    test "delete_customer/1 deletes the customer" do
      customer = customer_fixture()
      assert {:ok, %Customer{}} = Maps.delete_customer(customer)
      assert_raise Ecto.NoResultsError, fn -> Maps.get_customer!(customer.id) end
    end

    test "change_customer/1 returns a customer changeset" do
      customer = customer_fixture()
      assert %Ecto.Changeset{} = Maps.change_customer(customer)
    end
  end

  describe "employees" do
    alias Mymapsv1.Maps.Employee

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def employee_fixture(attrs \\ %{}) do
      {:ok, employee} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Maps.create_employee()

      employee
    end

    test "list_employees/0 returns all employees" do
      employee = employee_fixture()
      assert Maps.list_employees() == [employee]
    end

    test "get_employee!/1 returns the employee with given id" do
      employee = employee_fixture()
      assert Maps.get_employee!(employee.id) == employee
    end

    test "create_employee/1 with valid data creates a employee" do
      assert {:ok, %Employee{} = employee} = Maps.create_employee(@valid_attrs)
    end

    test "create_employee/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Maps.create_employee(@invalid_attrs)
    end

    test "update_employee/2 with valid data updates the employee" do
      employee = employee_fixture()
      assert {:ok, %Employee{} = employee} = Maps.update_employee(employee, @update_attrs)
    end

    test "update_employee/2 with invalid data returns error changeset" do
      employee = employee_fixture()
      assert {:error, %Ecto.Changeset{}} = Maps.update_employee(employee, @invalid_attrs)
      assert employee == Maps.get_employee!(employee.id)
    end

    test "delete_employee/1 deletes the employee" do
      employee = employee_fixture()
      assert {:ok, %Employee{}} = Maps.delete_employee(employee)
      assert_raise Ecto.NoResultsError, fn -> Maps.get_employee!(employee.id) end
    end

    test "change_employee/1 returns a employee changeset" do
      employee = employee_fixture()
      assert %Ecto.Changeset{} = Maps.change_employee(employee)
    end
  end
end
