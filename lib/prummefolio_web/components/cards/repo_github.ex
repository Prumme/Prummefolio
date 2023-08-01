defmodule PrummefolioWeb.Components.Card.RepoGithub do
  use Phoenix.LiveComponent
  use Phoenix.HTML

  def mount() do
  end

  def render(assigns) do
    ~H"""
    <div class="relative group hover:scale-105 transition duration-300 h-52">
      <div class="absolute -inset-1.5 bg-gradient-to-bl from-purple-600 via-red-400 to-orange-300 opacity-75 group-hover:opacity-100 rounded-lg blur transition duration-300 ">
      </div>
      <article class="relative min-w-full min-h-full dark:bg-slate-700 bg-white rounded-lg">
        <div class="flex items-center justify-center h-full">
          <div class="max-w-2xl max-h-2xl min-w-full min-h-full px-4 py-8 bg-white dark:bg-slate-700 rounded-lg">
            <div class="flex justify-center -mt-16 md:justify-end">
              <img
                class="object-cover w-20 h-20 border-2 border-white rounded-full"
                src="https://avatars.githubusercontent.com/u/10000000?v=4"
                alt="Avatar"
              />
            </div>
            <div>
              <h2 class="mt-2 text-3xl font-bold text-center text-gray-800 dark:text-white">
                <%= unslugify(@name) %>
              </h2>
              <p class="mt-2 text-sm text-gray-600 dark:text-white text-center">
                <%= @description %>
              </p>
            </div>
            <div class="flex justify-center mt-4 absolute inset-x-0 bottom-6 ">
              <%= link to: @link, class: "px-4 py-2 text-sm font-medium text-white dark:bg-white bg-gray-700 rounded dark:text-slate-700 hover:bg-gray-500 duration-300" do %>
                View
              <% end %>
            </div>
          </div>
        </div>
      </article>
    </div>
    """
  end

  defp unslugify(slug) do
    slug
    |> String.replace("_", " ")
    |> String.capitalize()
  end
end
