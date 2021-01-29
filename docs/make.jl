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
        "Contact" => "contact.md",
    ]
)
deploydocs(
    repo = "github.com/carezende/home.git",
    target = "build",
    branch = "gh-pages",
    versions = ["stable" => "v^", "v#.#" ],
)
