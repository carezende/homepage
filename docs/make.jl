import Pkg
Pkg.add("Documenter")
using Documenter
push!(LOAD_PATH,"../src/")
makedocs(
    #modules=[Home],
    sitename="LaQuiMoBio",
    pages = [
        "Home" => "index.md",
        "Motivation" => "motivation.md",
        "People" => "people.md",
        "Publications" => "publications.md",
        "Patents" => "patents.md",
        "Videos" => "videos.md",
        "Contact" => "contact.md",
    ],
    format = Documenter.HTML(canonical="https://carezende.github.io/home/stable",
                             edit_link=nothing,),

)
deploydocs(
    repo = "github.com/carezende/home.git",
    target = "build",
    branch = "gh-pages",
    versions = ["stable" => "v^", "v#.#" ],
)
