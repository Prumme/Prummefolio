defmodule PrummefolioWeb.Components.Card.Flipping do
  use Phoenix.LiveComponent
  use Phoenix.HTML


  def mount() do

  end

  def render(assigns) do
    ~H"""
    <div class="group h-96 w-64 [perspective:1000px]">
    <div class="relative h-full w-full rounded-xl shadow-xl transition-all duration-500 ease-in [transform-style:preserve-3d] group-hover:[transform:rotateY(180deg)]">
      <div class="absolute inset-0">
        <img class={"h-full w-full rounded-xl shadow-xl shadow-black/40 " <> @stack.class} src={@stack.img}>
      </div>

      <div class="absolute inset-0 w-full h-full rounded-xl bg-black/70 px-12 text-center text-slate-200 [transform:rotateY(180deg)] [backface-visibility:hidden]">
        <div class="flex flex-col justify-center h-full">
          <h2 class="text-3xl font-bold"><%= @stack.title %></h2>
          <p class="mt-2 text-sm text-center"><%= @stack.description %></p>
          <div class="flex justify-center mt-4">
            <a href={@stack.link} class="px-4 py-2 text-sm font-medium text-white bg-gray-700 rounded hover:bg-gray-600">Voir la documentation</a>
          </div>
        </div>
      </div>
    </div>
    </div>
    """
  end

end
