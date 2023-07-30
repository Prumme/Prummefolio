defmodule PrummefolioWeb.StackLive do
  use PrummefolioWeb, :live_view

  def mount(_params, _session, socket) do
    stacks = stacks()

    socket =
      socket
      |> assign(:stacks, stacks)

    {:ok, socket}
  end

  defp stacks() do
    [
      %{
        title: "Phoenix",
        link: "https://www.phoenixframework.org/",
        img:
          "https://res.cloudinary.com/blog-prod/image/upload/f_auto,q_auto,w_1920/articles/uuqrzwul567go33fbcjw",
        description:
          "Phoenix est un framework de développement Web écrit dans le langage de programmation fonctionnel Elixir. Phoenix utilise un modèle modèle-vue-contrôleur (MVC) côté serveur.",
        class: "object-cover"
      },
      %{
        title: "Elixir",
        link: "https://elixir-lang.org/",
        img: "https://cdn.icon-icons.com/icons2/2699/PNG/512/elixir_lang_logo_icon_169207.png",
        description:
          "Elixir est un langage de programmation fonctionnel conçu pour créer des applications évolutives et maintenables.",
        class: "object-cover"
      },
      %{
        title: "Postgres",
        link: "https://www.postgresql.org/",
        img:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Postgresql_elephant.svg/1200px-Postgresql_elephant.svg.png",
        description:
          "PostgreSQL est un système de gestion de base de données relationnelle et objet (SGBDRO).",
        class: "object-contain"
      },
      %{
        title: "Github",
        link: "https://docs.github.com/fr",
        img: "https://cdn.pixabay.com/photo/2022/01/30/13/33/github-6980894_1280.png",
        description:
          "GitHub est une plateforme de développement inspirée par la façon dont vous travaillez. De l'open source aux entreprises, vous pouvez héberger et revoir du code, gérer des projets et créer des logiciels aux côtés de millions d'autres développeurs.",
        class: "object-cover"
      }
    ]
  end
end
