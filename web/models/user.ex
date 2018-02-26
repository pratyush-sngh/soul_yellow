defmodule SoulYellow.User do
  use SoulYellow.Web, :model

  schema "users" do
    field :first_name, :string
    field :last_name, :string
    field :mobile, :string
    field :email, :string
    field :encrypted_password, :string
    field :about, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:first_name, :last_name, :mobile, :email, :encrypted_password, :about])
    |> validate_required([:first_name, :last_name, :mobile, :email, :encrypted_password, :about])
  end
end
