defmodule SlackClone.UserRoomTest do
  use SlackClone.ModelCase

  alias SlackClone.UserRoom

  @valid_attrs %{}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = UserRoom.changeset(%UserRoom{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = UserRoom.changeset(%UserRoom{}, @invalid_attrs)
    refute changeset.valid?
  end
end
