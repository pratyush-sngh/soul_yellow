defmodule SoulYellow.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :first_name, :string, null: false
      add :last_name, :string, null: false
      add :mobile, :string
      add :email, :string, null: false
      add :encrypted_password, :string
      add :about, :text
      add :reset_password_token, :string
      add :reset_password_sent_at, :naive_datetime
      add :remember_created_at, :naive_datetime
      add :sign_in_count, :integer
      add :current_sign_in_at, :naive_datetime
      add :last_sign_in_at, :naive_datetime
      add :current_sign_in_ip, :string
      add :last_sign_in_ip, :string
      timestamps()
    end
    create unique_index(:users, [:email])
  end
end
