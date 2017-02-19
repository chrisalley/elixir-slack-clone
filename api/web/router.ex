defmodule SlackClone.Router do
  use SlackClone.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SlackClone do
    pipe_through :api
  end
end
