using Documenter

makedocs(
    sitename="PersonalPlaygound.jl",
    pages = [
        "index.md",
    ]
)

deploydocs(
    repo = "github.com/Mizu49/PersonalPlayground.jl.git",
    devbranch = "develop",
    push_preview = true,
)
