defmodule Apollunaire.User do
  use Apollunaire.Web, :model

  schema "users" do
    field :username, :string
    field :email, :string
    field :password, :string
    field :verification_token, :string
    field :name, :string
    field :avatar, :string
    field :is_deleted, :boolean
    field :is_verified, :boolean

    field :website, :string
    field :bio, :string
    field :gender, :string
    field :birth_year, :string
    field :accent_color, :string
    field :country, :string
    field :is_birth_year_private, :boolean
    field :is_gender_private, :boolean

    field :steam_username, :string
    field :twitter_username, :string
    field :github_username, :string
    field :youtube_username, :string
    field :twitch_username, :string
    field :battletag, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:username, :email, :password, :name, :avatar, :website, :bio, :twitter_username, :youtube_username, :twitch_username, :gender, :birth_year, :steam_username, :battletag, :accent_color, :country, :github_username, :verification_token])
    |> validate_required([:username, :email, :password, :name, :avatar, :website, :bio, :twitter_username, :youtube_username, :twitch_username, :gender, :birth_year, :steam_username, :battletag, :accent_color, :country, :github_username, :verification_token])
  end
end
