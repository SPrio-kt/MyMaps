defmodule Mymapsv1Web.Router do
  use Mymapsv1Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Mymapsv1Web do
    pipe_through :browser

    resources "/users", UserController
    resources "/consumers", ConsumerController
    resources "/customers", CustomerController
    resources "/employees", EmployeeController
    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Mymapsv1Web do
  #   pipe_through :api
  # end
end
