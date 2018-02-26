defmodule SoulYellow.UserTest do
  use SoulYellow.ModelCase

  alias SoulYellow.User

  @valid_attrs %{about: "some content", email: "some content", encrypted_password: "some content", first_name: "some content", last_name: "some content", mobile: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
