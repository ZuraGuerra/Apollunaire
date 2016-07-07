defmodule Apollunaire.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :username, :string
      add :email, :string
      add :password, :string
      add :name, :string
      add :avatar, :string
      add :website, :string
      add :bio, :string
      add :twitter_username, :string
      add :youtube_username, :string
      add :twitch_username, :string
      add :gender, :string
      add :birth_year, :string
      add :steam_username, :string
      add :battletag, :string
      add :accent_color, :string
      add :country, :string
      add :github_username, :string
      add :verification_token, :string
      add :is_verified, :boolean
      add :is_deleted, :boolean
      add :is_birth_year_private, :boolean
      add :is_gender_private, :boolean

      timestamps()
    end

  end
end
