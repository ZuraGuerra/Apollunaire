defmodule Apollunaire.UserTest do
  use Apollunaire.ModelCase

  alias Apollunaire.User

  @valid_attrs %{accent_color: "some content", avatar: "some content", battletag: "some content", bio: "some content", birth_year: "some content", country: "some content", email: "some content", gender: "some content", github_username: "some content", name: "some content", password: "some content", steam_username: "some content", twitch_username: "some content", twitter_username: "some content", username: "some content", verification_token: "some content", website: "some content", youtube_username: "some content"}
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
