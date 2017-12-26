defmodule MastaniServer.CMS.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias MastaniServer.CMS.{Post, Author}

  schema "cms_posts" do
    field(:body, :string)
    field(:isRefined, :boolean, default: false)
    field(:isSticky, :boolean, default: false)
    field(:title, :string)
    field(:viewerCanCollect, :boolean, default: false)
    field(:viewerCanStar, :boolean, default: false)
    field(:viewerCanWatch, :boolean, default: false)
    field(:viewsCount, :integer)
    belongs_to(:author, Author)

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [
      :title,
      :body
      # :viewsCount
      # :isRefined,
      # :isSticky,
      # :viewerCanStar,
      # :viewerCanWatch,
      # :viewerCanCollect
    ])
    |> validate_required([
      :title,
      :body
    ])
  end
end