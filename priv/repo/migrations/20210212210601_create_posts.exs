defmodule Reno.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :content, :text

      timestamps()
    end

    create unique_index(:posts, :title)
  end

  post_to_insert = [
    [
      title: "Post 1",
      content: "Hello i'm post 1",
      inserted_at: DateTime.utc_now(),
      updated_at: DateTime.utc_now()
    ],
    [
      title: "Post 2",
      content: "hello i'm post 2",
      inserted_at: DateTime.utc_now(),
      updated_at: DateTime.utc_now()
    ]
  ]
end
